Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/arena?download=true
inline.NumInlined: 135
inline.NumDeleted: 47
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.google::protobuf::internal::ArenaImpl::CacheAlignedLifecycleIdGenerator" = type { %"struct.std::atomic", [56 x i8] }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i64 }
%"struct.google::protobuf::internal::ArenaImpl::ThreadCache" = type { i64, i64, ptr, [40 x i8] }
%"class.google::protobuf::internal::LogMessage" = type { i32, ptr, i32, %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.google::protobuf::internal::LogFinisher" = type { i8 }

$__clang_call_terminate = comdat any

@_ZN6google8protobuf12ArenaOptions18kDefaultBlockAllocE = local_unnamed_addr constant ptr @_Znwm, align 8
@_ZN6google8protobuf8internal9ArenaImpl23lifecycle_id_generator_E = global %"struct.google::protobuf::internal::ArenaImpl::CacheAlignedLifecycleIdGenerator" zeroinitializer, align 64
@_ZN6google8protobuf8internal9ArenaImpl13thread_cache_E = thread_local global %"struct.google::protobuf::internal::ArenaImpl::ThreadCache" { i64 0, i64 -1, ptr null, [40 x i8] undef }, align 64
@.str = private unnamed_addr constant [35 x i8] c"third_party/protobuf-lite/arena.cc\00", align 1
@.str.3 = private unnamed_addr constant [87 x i8] c"CHECK failed: (min_bytes) <= (std::numeric_limits<size_t>::max() - kBlockHeaderSize): \00", align 1
@_ZTVN6google8protobuf8internal21ArenaMetricsCollectorE = local_unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6google8protobuf8internal21ArenaMetricsCollectorE, ptr @_ZN6google8protobuf8internal21ArenaMetricsCollectorD1Ev, ptr @_ZN6google8protobuf8internal21ArenaMetricsCollectorD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN6google8protobuf8internal21ArenaMetricsCollectorE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6google8protobuf8internal21ArenaMetricsCollectorE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6google8protobuf8internal21ArenaMetricsCollectorE = constant [51 x i8] c"N6google8protobuf8internal21ArenaMetricsCollectorE\00", align 1

@_ZN6google8protobuf8internal9ArenaImplC1ERKNS0_12ArenaOptionsE = unnamed_addr alias void (ptr, ptr), ptr @_ZN6google8protobuf8internal9ArenaImplC2ERKNS0_12ArenaOptionsE
@_ZN6google8protobuf8internal9ArenaImplD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6google8protobuf8internal9ArenaImplD2Ev
@_ZN6google8protobuf8internal21ArenaMetricsCollectorD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6google8protobuf8internal21ArenaMetricsCollectorD2Ev

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #0

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf8internal9ArenaFreeEPvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef %1) #21
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal9ArenaImplC2ERKNS0_12ArenaOptionsE(ptr noundef nonnull align 8 dereferenceable(40) initializes((24, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr %i.c()             ; 4 uses
  %.not34 = icmp eq ptr %i.d, null
  br i1 %.not34, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.i = zext i1 %i.h to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.027 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.i, %bb.c ]
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.d, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !68   ; 2 uses
  %i.o = icmp ult i64 %i.n, 136
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = load i64, ptr %1, align 8, !tbaa !69
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.p, i64 136) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.s = tail call noundef ptr %i.r(i64 noundef %.sroa.speculated) ; 2 uses
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.t = icmp eq ptr %i.s, %.pre
  %i.u = select i1 %i.t, i64 3, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi i64 [ %i.u, %bb.f ], [ 3, %bb.e ]
  %.029 = phi i64 [ %.sroa.speculated, %bb.f ], [ %i.n, %bb.e ]
  %.028 = phi ptr [ %i.s, %bb.f ], [ %i.k, %bb.e ] ; 10 uses
  store i64 %i.v, ptr %.028, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %.028, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.028, i64 16 ; 3 uses
  store i64 %.029, ptr %i.x, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %.028, i64 24 ; 2 uses
  store ptr %i.y, ptr %i.a, align 8, !tbaa !22
  %i.z = load <2 x i64>, ptr %1, align 8, !tbaa !69
  store <2 x i64> %i.z, ptr %i.y, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %.028, i64 40
  %i.ac = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !71
  store <2 x ptr> %i.ac, ptr %i.ab, align 8, !tbaa !71
  %i.ad = getelementptr inbounds nuw i8, ptr %.028, i64 56
  store ptr %.0, ptr %i.ad, align 8, !tbaa !31
  store i64 64, ptr %i.w, align 8, !tbaa !32
  %i.ae = tail call noundef nonnull align 64 dereferenceable(64) ptr @llvm.threadlocal.address.p0(ptr align 64 @_ZN6google8protobuf8internal9ArenaImpl13thread_cache_E) ; 5 uses
  %i.af = load i64, ptr %i.ae, align 64, !tbaa !34 ; 2 uses
  %i.ag = and i64 %i.af, 511
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %_ZN6google8protobuf8internal9ArenaImpl4InitEb.exit, !prof !35

bb.h:                                             ; preds = %bb.g
  %i.ai = atomicrmw add ptr @_ZN6google8protobuf8internal9ArenaImpl23lifecycle_id_generator_E, i64 512 monotonic, align 8
  br label %_ZN6google8protobuf8internal9ArenaImpl4InitEb.exit

_ZN6google8protobuf8internal9ArenaImpl4InitEb.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi i64 [ %i.ai, %bb.h ], [ %i.af, %bb.g ] ; 2 uses
  %i.aj = add i64 %.0.i, 2
  store i64 %i.aj, ptr %i.ae, align 64, !tbaa !34
  %i.ak = or i64 %.0.i, %.027
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store atomic ptr null, ptr %i.am monotonic, align 8
  store atomic ptr null, ptr %0 monotonic, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store atomic i64 0, ptr %i.an monotonic, align 8
  %i.ao = load i64, ptr %i.w, align 8, !tbaa !32  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.028, i64 %i.ao ; 10 uses
  %i.aq = add i64 %i.ao, 72                       ; 2 uses
  store i64 %i.aq, ptr %i.w, align 8, !tbaa !32
  store ptr %0, ptr %i.ap, align 8, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ae, ptr %i.ar, align 8, !tbaa !43
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %.028, ptr %i.as, align 8, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %.028, i64 %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store ptr %i.at, ptr %i.au, align 8, !tbaa !45
  %i.av = load i64, ptr %i.x, align 8, !tbaa !28
  %i.aw = getelementptr inbounds nuw i8, ptr %.028, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store atomic ptr %i.ap, ptr %0 monotonic, align 8
  %i.ba = load i64, ptr %i.x, align 8, !tbaa !28
  store atomic i64 %i.ba, ptr %i.an monotonic, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ap, ptr %i.bb, align 16, !tbaa !47
  %i.bc = load i64, ptr %i.al, align 8, !tbaa !36
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !48
  store atomic ptr %i.ap, ptr %i.am release, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZN6google8protobuf8internal10LogMessageC1ENS0_8LogLevelEPKci(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6google8protobuf8internal9ArenaImpl4InitEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((24, 32)) %0, i1 noundef zeroext %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 64 dereferenceable(64) ptr @llvm.threadlocal.address.p0(ptr align 64 @_ZN6google8protobuf8internal9ArenaImpl13thread_cache_E) ; 2 uses
  %i.b = load i64, ptr %i.a, align 64, !tbaa !34  ; 2 uses
  %i.c = and i64 %i.b, 511
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.e = atomicrmw add ptr @_ZN6google8protobuf8internal9ArenaImpl23lifecycle_id_generator_E, i64 512 monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.b, %bb.a ]  ; 2 uses
  %i.f = add i64 %.0, 2
  store i64 %i.f, ptr %i.a, align 64, !tbaa !34
  %i.g = zext i1 %1 to i64
  %i.h = or i64 %.0, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.h, ptr %i.i, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store atomic ptr null, ptr %i.j monotonic, align 8
  store atomic ptr null, ptr %0 monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i64 0, ptr %i.k monotonic, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN6google8protobuf8internal9ArenaImpl15SetInitialBlockEPNS1_11SerialArena5BlockE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 64 dereferenceable(64) ptr @llvm.threadlocal.address.p0(ptr align 64 @_ZN6google8protobuf8internal9ArenaImpl13thread_cache_E) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 10 uses
  %i.e = add i64 %i.c, 72                         ; 2 uses
  store i64 %i.e, ptr %i.b, align 8, !tbaa !32
  store ptr %0, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %1, ptr %i.g, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.h, ptr %i.i, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.l, ptr %i.m, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store atomic ptr %i.d, ptr %0 monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.j, align 8, !tbaa !28
  store atomic i64 %i.q, ptr %i.p monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.r, align 16, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !48
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store atomic ptr %i.d, ptr %i.v release, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @_ZN6google8protobuf8internal11SerialArena3NewEPNS2_5BlockEPvPNS1_9ArenaImplE(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 8 uses
  %i.d = add i64 %i.b, 72                         ; 2 uses
  store i64 %i.d, ptr %i.a, align 8, !tbaa !32
  store ptr %2, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %0, ptr %i.f, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.g, ptr %i.h, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.k, ptr %i.l, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr null, ptr %i.m, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf8internal9ArenaImplD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 monotonic, align 8 ; 2 uses
  %.not4.i = icmp eq ptr %i.a, null
  br i1 %.not4.i, label %_ZN6google8protobuf8internal9ArenaImpl11CleanupListEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6google8protobuf8internal11SerialArena11CleanupListEv.exit.i
  %.05.i = phi ptr [ %i.u, %_ZN6google8protobuf8internal11SerialArena11CleanupListEv.exit.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal11SerialArena11CleanupListEv.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.014.i.i.i = phi i64 [ %i.j, %bb.b ], [ %i.s, %bb.d ] ; 2 uses
  %.013.i.i.i = phi ptr [ %i.c, %bb.b ], [ %i.l, %bb.d ] ; 2 uses
  %.not18.i.i.i = icmp eq i64 %.014.i.i.i, 0
  br i1 %.not18.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN6google8protobuf8internal11SerialArena11CleanupListEv.exit.i, label %bb.d

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.noexc
  %.01219.i.i.i = phi i64 [ %i.r, %.noexc ], [ %.014.i.i.i, %bb.c ] ; 2 uses
  %i.n = getelementptr [16 x i8], ptr %.013.i.i.i, i64 %.01219.i.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !55
  invoke void %i.p(ptr noundef %i.q)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit, !inline_history !75

.noexc:                                           ; preds = %.lr.ph.i.i.i
  %i.r = add i64 %.01219.i.i.i, -1                ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i64, ptr %i.l, align 8, !tbaa !57
  br label %bb.c

_ZN6google8protobuf8internal11SerialArena11CleanupListEv.exit.i: ; preds = %._crit_edge.i.i.i, %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !58   ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN6google8protobuf8internal9ArenaImpl11CleanupListEv.exit, label %.lr.ph.i, !llvm.loop !1

_ZN6google8protobuf8internal9ArenaImpl11CleanupListEv.exit: ; preds = %_ZN6google8protobuf8internal11SerialArena11CleanupListEv.exit.i, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22   ; 3 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal9ArenaImpl11CleanupListEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6google8protobuf8internal9ArenaImpl11CleanupListEv.exit
  %.04 = phi ptr [ %i.aa, %bb.e ], [ @_ZN6google8protobuf8internal9ArenaFreeEPvm, %_ZN6google8protobuf8internal9ArenaImpl11CleanupListEv.exit ]
  %.0 = phi ptr [ %i.y, %bb.e ], [ null, %_ZN6google8protobuf8internal9ArenaImpl11CleanupListEv.exit ] ; 3 uses
  %i.ab = load atomic ptr, ptr %0 monotonic, align 8 ; 2 uses
  %.not13.i = icmp eq ptr %i.ab, null
  br i1 %.not13.i, label %"_ZN6google8protobuf8internal9ArenaImpl8PerBlockIZNS2_D1EvE3$_0EEvT_.exit", label %.lr.ph15.i

.loopexit.i:                                      ; preds = %"_ZZN6google8protobuf8internal9ArenaImplD1EvENK3$_0clEPNS1_11SerialArena5BlockE.exit.i", %.lr.ph15.i
  %.not.i9 = icmp eq ptr %i.ad, null
  br i1 %.not.i9, label %"_ZN6google8protobuf8internal9ArenaImpl8PerBlockIZNS2_D1EvE3$_0EEvT_.exit", label %.lr.ph15.i, !llvm.loop !72

.lr.ph15.i:                                       ; preds = %bb.f, %.loopexit.i
  %.014.i = phi ptr [ %i.ad, %.loopexit.i ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !44 ; 2 uses
  %.not1011.i = icmp eq ptr %i.af, null
  br i1 %.not1011.i, label %.loopexit.i, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %.lr.ph15.i, %"_ZZN6google8protobuf8internal9ArenaImplD1EvENK3$_0clEPNS1_11SerialArena5BlockE.exit.i"
  %.0912.i = phi ptr [ %i.ai, %"_ZZN6google8protobuf8internal9ArenaImplD1EvENK3$_0clEPNS1_11SerialArena5BlockE.exit.i" ], [ %i.af, %.lr.ph15.i ] ; 3 uses
  %i.ag = load i64, ptr %.0912.i, align 8, !tbaa !27 ; 2 uses
  %i.ah = and i64 %i.ag, -4                       ; 2 uses
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = and i64 %i.ag, 2
  %.not.i.i8 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i8, label %bb.g, label %"_ZZN6google8protobuf8internal9ArenaImplD1EvENK3$_0clEPNS1_11SerialArena5BlockE.exit.i"

bb.g:                                             ; preds = %.lr.ph.i7
  %i.ak = getelementptr inbounds nuw i8, ptr %.0912.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !28
  invoke void %.04(ptr noundef nonnull %.0912.i, i64 noundef %i.al)
          to label %"_ZZN6google8protobuf8internal9ArenaImplD1EvENK3$_0clEPNS1_11SerialArena5BlockE.exit.i" unwind label %.loopexit, !inline_history !73

"_ZZN6google8protobuf8internal9ArenaImplD1EvENK3$_0clEPNS1_11SerialArena5BlockE.exit.i": ; preds = %bb.g, %.lr.ph.i7
  %.not10.i = icmp eq i64 %i.ah, 0
  br i1 %.not10.i, label %.loopexit.i, label %.lr.ph.i7, !llvm.loop !74

"_ZN6google8protobuf8internal9ArenaImpl8PerBlockIZNS2_D1EvE3$_0EEvT_.exit": ; preds = %.loopexit.i, %bb.f
  %.not6 = icmp eq ptr %.0, null
  br i1 %.not6, label %bb.i, label %bb.h

bb.h:                                             ; preds = %"_ZN6google8protobuf8internal9ArenaImpl8PerBlockIZNS2_D1EvE3$_0EEvT_.exit"
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load atomic i64, ptr %i.am monotonic, align 8
  %i.ao = load ptr, ptr %.0, align 8, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %.0, i64 noundef %i.an)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h, %"_ZN6google8protobuf8internal9ArenaImpl8PerBlockIZNS2_D1EvE3$_0EEvT_.exit"
  ret void

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i.i
  %lpad.loopexit11 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.h
  %lpad.loopexit.split-lp12 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit11, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp12, %.loopexit.split-lp.loopexit.split-lp ]
  %i.ar = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal9ArenaImpl11CleanupListEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load atomic ptr, ptr %0 monotonic, align 8 ; 2 uses
  %.not4 = icmp eq ptr %i.a, null
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN6google8protobuf8internal11SerialArena11CleanupListEv.exit
  %.05 = phi ptr [ %i.u, %_ZN6google8protobuf8internal11SerialArena11CleanupListEv.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN6google8protobuf8internal11SerialArena11CleanupListEv.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.05, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.014.i.i = phi i64 [ %i.j, %bb.b ], [ %i.s, %bb.d ] ; 2 uses
  %.013.i.i = phi ptr [ %i.c, %bb.b ], [ %i.l, %bb.d ] ; 2 uses
  %.not18.i.i = icmp eq i64 %.014.i.i, 0
  br i1 %.not18.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN6google8protobuf8internal11SerialArena11CleanupListEv.exit, label %bb.d

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.01219.i.i = phi i64 [ %i.r, %.lr.ph.i.i ], [ %.014.i.i, %bb.c ] ; 2 uses
  %i.n = getelementptr [16 x i8], ptr %.013.i.i, i64 %.01219.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !55
  tail call void %i.p(ptr noundef %i.q), !inline_history !76
  %i.r = add i64 %.01219.i.i, -1                  ; 2 uses
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.s = load i64, ptr %i.l, align 8, !tbaa !57
  br label %bb.c

_ZN6google8protobuf8internal11SerialArena11CleanupListEv.exit: ; preds = %._crit_edge.i.i, %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.05, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !58   ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1

._crit_edge:                                      ; preds = %_ZN6google8protobuf8internal11SerialArena11CleanupListEv.exit, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i64 @_ZNK6google8protobuf8internal9ArenaImpl14SpaceAllocatedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6google8protobuf8internal9ArenaImpl5ResetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 3 uses
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load atomic i64, ptr %i.e monotonic, align 8
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = load atomic ptr, ptr %0 monotonic, align 8 ; 2 uses
  %.not4.i = icmp eq ptr %i.j, null
  br i1 %.not4.i, label %_ZN6google8protobuf8internal9ArenaImpl11CleanupListEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %_ZN6google8protobuf8internal11SerialArena11CleanupListEv.exit.i
  %.05.i = phi ptr [ %i.ad, %_ZN6google8protobuf8internal11SerialArena11CleanupListEv.exit.i ], [ %i.j, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49   ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal11SerialArena11CleanupListEv.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.014.i.i.i = phi i64 [ %i.s, %bb.e ], [ %i.ab, %bb.g ] ; 2 uses
  %.013.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.u, %bb.g ] ; 2 uses
  %.not18.i.i.i = icmp eq i64 %.014.i.i.i, 0
  br i1 %.not18.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52   ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN6google8protobuf8internal11SerialArena11CleanupListEv.exit.i, label %bb.g

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.01219.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i ], [ %.014.i.i.i, %bb.f ] ; 2 uses
  %i.w = getelementptr [16 x i8], ptr %.013.i.i.i, i64 %.01219.i.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !55
  tail call void %i.y(ptr noundef %i.z), !inline_history !80
  %i.aa = add i64 %.01219.i.i.i, -1               ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !57
  br label %bb.f

_ZN6google8protobuf8internal11SerialArena11CleanupListEv.exit.i: ; preds = %._crit_edge.i.i.i, %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZN6google8protobuf8internal9ArenaImpl11CleanupListEv.exit, label %.lr.ph.i, !llvm.loop !1

_ZN6google8protobuf8internal9ArenaImpl11CleanupListEv.exit: ; preds = %_ZN6google8protobuf8internal11SerialArena11CleanupListEv.exit.i, %bb.d
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %.not6 = icmp eq ptr %i.ae, null
  br i1 %.not6, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf8internal9ArenaImpl11CleanupListEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !59
  br label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal9ArenaImpl11CleanupListEv.exit, %bb.h
  %i.ah = phi ptr [ %i.ag, %bb.h ], [ @_ZN6google8protobuf8internal9ArenaFreeEPvm, %_ZN6google8protobuf8internal9ArenaImpl11CleanupListEv.exit ]
  %i.ai = load atomic ptr, ptr %0 monotonic, align 8 ; 2 uses
  %.not13.i = icmp eq ptr %i.ai, null
  br i1 %.not13.i, label %"_ZN6google8protobuf8internal9ArenaImpl8PerBlockIZNS2_5ResetEvE3$_0EEvT_.exit", label %.lr.ph15.i

.loopexit.i:                                      ; preds = %"_ZZN6google8protobuf8internal9ArenaImpl5ResetEvENK3$_0clEPNS1_11SerialArena5BlockE.exit.i", %.lr.ph15.i
  %.217 = phi i64 [ %.015, %.lr.ph15.i ], [ %i.as, %"_ZZN6google8protobuf8internal9ArenaImpl5ResetEvENK3$_0clEPNS1_11SerialArena5BlockE.exit.i" ] ; 2 uses
  %.3 = phi ptr [ %.0, %.lr.ph15.i ], [ %.2, %"_ZZN6google8protobuf8internal9ArenaImpl5ResetEvENK3$_0clEPNS1_11SerialArena5BlockE.exit.i" ] ; 2 uses
  %.not.i10 = icmp eq ptr %i.ak, null
  br i1 %.not.i10, label %"_ZN6google8protobuf8internal9ArenaImpl8PerBlockIZNS2_5ResetEvE3$_0EEvT_.exit", label %.lr.ph15.i, !llvm.loop !77

.lr.ph15.i:                                       ; preds = %bb.i, %.loopexit.i
  %.015 = phi i64 [ %.217, %.loopexit.i ], [ 0, %bb.i ] ; 2 uses
  %.0 = phi ptr [ %.3, %.loopexit.i ], [ null, %bb.i ] ; 2 uses
  %.014.i = phi ptr [ %i.ak, %.loopexit.i ], [ %i.ai, %bb.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.014.i, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !58 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.014.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44 ; 2 uses
  %.not1011.i = icmp eq ptr %i.am, null
  br i1 %.not1011.i, label %.loopexit.i, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.lr.ph15.i, %"_ZZN6google8protobuf8internal9ArenaImpl5ResetEvENK3$_0clEPNS1_11SerialArena5BlockE.exit.i"
  %.116 = phi i64 [ %i.as, %"_ZZN6google8protobuf8internal9ArenaImpl5ResetEvENK3$_0clEPNS1_11SerialArena5BlockE.exit.i" ], [ %.015, %.lr.ph15.i ]
  %.1 = phi ptr [ %.2, %"_ZZN6google8protobuf8internal9ArenaImpl5ResetEvENK3$_0clEPNS1_11SerialArena5BlockE.exit.i" ], [ %.0, %.lr.ph15.i ]
  %.0912.i = phi ptr [ %i.ap, %"_ZZN6google8protobuf8internal9ArenaImpl5ResetEvENK3$_0clEPNS1_11SerialArena5BlockE.exit.i" ], [ %i.am, %.lr.ph15.i ] ; 4 uses
  %i.an = load i64, ptr %.0912.i, align 8, !tbaa !27 ; 2 uses
  %i.ao = and i64 %i.an, -4                       ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %.0912.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !28 ; 2 uses
  %i.as = add i64 %i.ar, %.116                    ; 2 uses
  %i.at = trunc i64 %i.an to i1
  br i1 %i.at, label %"_ZZN6google8protobuf8internal9ArenaImpl5ResetEvENK3$_0clEPNS1_11SerialArena5BlockE.exit.i", label %bb.j

bb.j:                                             ; preds = %.lr.ph.i9
  tail call void %i.ah(ptr noundef nonnull %.0912.i, i64 noundef %i.ar), !inline_history !78
  br label %"_ZZN6google8protobuf8internal9ArenaImpl5ResetEvENK3$_0clEPNS1_11SerialArena5BlockE.exit.i"

"_ZZN6google8protobuf8internal9ArenaImpl5ResetEvENK3$_0clEPNS1_11SerialArena5BlockE.exit.i": ; preds = %.lr.ph.i9, %bb.j
  %.2 = phi ptr [ %.1, %bb.j ], [ %.0912.i, %.lr.ph.i9 ] ; 2 uses
  %.not10.i = icmp eq i64 %i.ao, 0
  br i1 %.not10.i, label %.loopexit.i, label %.lr.ph.i9, !llvm.loop !79

"_ZN6google8protobuf8internal9ArenaImpl8PerBlockIZNS2_5ResetEvE3$_0EEvT_.exit": ; preds = %.loopexit.i, %bb.i
  %.318 = phi i64 [ 0, %bb.i ], [ %.217, %.loopexit.i ]
  %.4 = phi ptr [ null, %bb.i ], [ %.3, %.loopexit.i ] ; 9 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !36
  %i.aw = tail call noundef nonnull align 64 dereferenceable(64) ptr @llvm.threadlocal.address.p0(ptr align 64 @_ZN6google8protobuf8internal9ArenaImpl13thread_cache_E) ; 5 uses
  %i.ax = load i64, ptr %i.aw, align 64, !tbaa !34 ; 2 uses
  %i.ay = and i64 %i.ax, 511
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.k, label %_ZN6google8protobuf8internal9ArenaImpl4InitEb.exit, !prof !35

bb.k:                                             ; preds = %"_ZN6google8protobuf8internal9ArenaImpl8PerBlockIZNS2_5ResetEvE3$_0EEvT_.exit"
  %i.ba = atomicrmw add ptr @_ZN6google8protobuf8internal9ArenaImpl23lifecycle_id_generator_E, i64 512 monotonic, align 8
  br label %_ZN6google8protobuf8internal9ArenaImpl4InitEb.exit

_ZN6google8protobuf8internal9ArenaImpl4InitEb.exit: ; preds = %"_ZN6google8protobuf8internal9ArenaImpl8PerBlockIZNS2_5ResetEvE3$_0EEvT_.exit", %bb.k
  %.0.i = phi i64 [ %i.ba, %bb.k ], [ %i.ax, %"_ZN6google8protobuf8internal9ArenaImpl8PerBlockIZNS2_5ResetEvE3$_0EEvT_.exit" ] ; 2 uses
  %i.bb = add i64 %.0.i, 2
  store i64 %i.bb, ptr %i.aw, align 64, !tbaa !34
  %i.bc = and i64 %i.av, 1
  %i.bd = or i64 %.0.i, %i.bc
  store i64 %i.bd, ptr %i.au, align 8, !tbaa !36
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store atomic ptr null, ptr %i.be monotonic, align 8
  store atomic ptr null, ptr %0 monotonic, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store atomic i64 0, ptr %i.bf monotonic, align 8
  %.not7 = icmp eq ptr %.4, null
  br i1 %.not7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal9ArenaImpl4InitEb.exit
  %i.bg = load i64, ptr %.4, align 8, !tbaa !27
  %i.bh = and i64 %i.bg, 3
  store i64 %i.bh, ptr %.4, align 8, !tbaa !27
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !22
  %.not8 = icmp eq ptr %i.bi, null
  %i.bj = select i1 %.not8, i64 24, i64 64        ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.4, i64 %i.bj ; 10 uses
  %i.bm = add nuw nsw i64 %i.bj, 72               ; 2 uses
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !32
  store ptr %0, ptr %i.bl, align 8, !tbaa !42
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.aw, ptr %i.bn, align 8, !tbaa !43
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %.4, ptr %i.bo, align 8, !tbaa !44
  %i.bp = getelementptr inbounds nuw i8, ptr %.4, i64 %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !45
  %i.br = getelementptr inbounds nuw i8, ptr %.4, i64 16 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !28
  %i.bt = getelementptr inbounds nuw i8, ptr %.4, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  store atomic ptr %i.bl, ptr %0 monotonic, align 8
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !28
  store atomic i64 %i.bx, ptr %i.bf monotonic, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.bl, ptr %i.by, align 16, !tbaa !47
  %i.bz = load i64, ptr %i.au, align 8, !tbaa !36
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !48
  store atomic ptr %i.bl, ptr %i.be release, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6google8protobuf8internal9ArenaImpl4InitEb.exit
  ret i64 %.318
}

; Function Attrs: mustprogress uwtable
define { ptr, i64 } @_ZN6google8protobuf8internal9ArenaImpl9NewBufferEmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::protobuf::internal::LogMessage", align 8 ; 7 uses
  %4 = alloca %"class.google::protobuf::internal::LogFinisher", align 1 ; 5 uses
  %.not = icmp eq i64 %1, -1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 5 uses
  %.not17 = icmp eq ptr %i.b, null                ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !81
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.e = phi i64 [ %i.d, %bb.c ], [ 8192, %bb.b ]
  %i.f = shl i64 %1, 1
  %.sroa.speculated29 = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.f)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load i64, ptr %i.b, align 8, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.h = phi ptr [ %i.b, %bb.d ], [ %i.b, %bb.f ], [ null, %bb.e ]
  %.0 = phi i64 [ %.sroa.speculated29, %bb.d ], [ %i.g, %bb.f ], [ 256, %bb.e ]
  %.not19 = icmp ugt i64 %2, -25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  br i1 %.not19, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN6google8protobuf8internal10LogMessageC1ENS0_8LogLevelEPKci(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 245)
  %i.i = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str.3)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %bb.k unwind label %bb.p

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.critedge23

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %.critedge23

.critedge23:                                      ; preds = %bb.j, %bb.k
  %i.j = phi ptr [ %i.h, %bb.j ], [ %.pre, %bb.k ] ; 2 uses
  %i.k = add i64 %2, 24
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %.0, i64 %i.k) ; 4 uses
  %.not21 = icmp eq ptr %i.j, null
  br i1 %.not21, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge23
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61
  %i.n = call noundef ptr %i.m(i64 noundef %.sroa.speculated)
  br label %bb.n

bb.m:                                             ; preds = %.critedge23
  %i.o = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.sroa.speculated) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.p = phi ptr [ %i.n, %bb.l ], [ %i.o, %bb.m ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = atomicrmw add ptr %i.q, i64 %.sroa.speculated monotonic, align 8 ; 0 uses
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.p, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.speculated, 1
  ret { ptr, i64 } %.fca.1.insert

bb.o:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.pn = phi { ptr, i32 } [ %i.t, %bb.p ], [ %i.s, %bb.o ]
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal11SerialArena8NewBlockEPNS2_5BlockEmPNS1_9ArenaImplE(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.b, %bb.b ], [ -1, %bb.a ]
  %i.d = tail call { ptr, i64 } @_ZN6google8protobuf8internal9ArenaImpl9NewBufferEmm(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 noundef %i.c, i64 noundef %1) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 4 uses
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  %i.g = ptrtoint ptr %0 to i64
  store i64 %i.g, ptr %i.e, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 24, ptr %i.h, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.f, ptr %i.i, align 8, !tbaa !28
  ret ptr %i.e
}

; Function Attrs: mustprogress noinline uwtable
define void @_ZN6google8protobuf8internal11SerialArena18AddCleanupFallbackEPvPFvS3_E(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !49
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit, %bb.a
  %i.f = phi ptr [ %.0.i, %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit ], [ %.pre, %bb.a ] ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.g = load i64, ptr %i.f, align 8, !tbaa !57
  %.fr14 = freeze i64 %i.g
  %i.h = shl i64 %.fr14, 1
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.h, i64 64)
  br label %.thread

.thread:                                          ; preds = %bb.b, %tailrecurse
  %i.i = phi i64 [ 8, %tailrecurse ], [ %spec.select, %bb.b ] ; 3 uses
  %i.j = shl nuw nsw i64 %i.i, 4                  ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 16                 ; 3 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !45   ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %.not.i = icmp ugt i64 %i.k, %i.p
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !35

bb.c:                                             ; preds = %.thread
  %i.q = tail call noundef ptr @_ZN6google8protobuf8internal11SerialArena23AllocateAlignedFallbackEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.k), !inline_history !2
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !49
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit

bb.d:                                             ; preds = %.thread
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store ptr %i.r, ptr %i.c, align 8, !tbaa !45
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit

_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit: ; preds = %bb.c, %bb.d
  %i.s = phi ptr [ %.pre18, %bb.c ], [ %i.f, %bb.d ]
  %.0.i = phi ptr [ %i.q, %bb.c ], [ %i.m, %bb.d ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !52
  store i64 %i.i, ptr %.0.i, align 8, !tbaa !57
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 3 uses
  store ptr %i.u, ptr %i.d, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.j
  store ptr %i.v, ptr %i.e, align 8, !tbaa !62
  %i.w = icmp eq i64 %i.i, 0
  br i1 %i.w, label %tailrecurse, label %_ZN6google8protobuf8internal11SerialArena10AddCleanupEPvPFvS3_E.exit, !prof !35

_ZN6google8protobuf8internal11SerialArena10AddCleanupEPvPFvS3_E.exit: ; preds = %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit
  store ptr %1, ptr %i.u, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %2, ptr %i.x, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store ptr %i.y, ptr %i.d, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal9ArenaImpl28AllocateAlignedAndAddCleanupEmPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 64 dereferenceable(64) ptr @llvm.threadlocal.address.p0(ptr align 64 @_ZN6google8protobuf8internal9ArenaImpl13thread_cache_E) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit.thread, label %_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit, !prof !63

_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit.thread: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !47
  br label %bb.c

_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load atomic ptr, ptr %i.i acquire, align 8 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN6google8protobuf8internal9ArenaImpl18GetSerialArenaFastEPPNS1_11SerialArenaE.exit, label %bb.b, !prof !35

bb.b:                                             ; preds = %_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.m = icmp eq ptr %i.l, %i.a
  br i1 %i.m, label %bb.c, label %_ZN6google8protobuf8internal9ArenaImpl18GetSerialArenaFastEPPNS1_11SerialArenaE.exit, !prof !64

bb.c:                                             ; preds = %bb.b, %_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit.thread
  %.05.ph = phi ptr [ %i.h, %_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit.thread ], [ %i.j, %bb.b ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.ph, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %.05.ph, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45   ; 3 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %.not.i.i = icmp ugt i64 %1, %i.t
  br i1 %.not.i.i, label %bb.d, label %bb.e, !prof !35

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef ptr @_ZN6google8protobuf8internal11SerialArena23AllocateAlignedFallbackEm(ptr noundef nonnull align 8 dereferenceable(72) %.05.ph, i64 noundef %1), !inline_history !2
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit.i

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %1
  store ptr %i.v, ptr %i.p, align 8, !tbaa !45
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit.i

_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.u, %bb.d ], [ %i.q, %bb.e ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.ph, i64 56 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05.ph, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !62
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !35

bb.f:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit.i
  tail call void @_ZN6google8protobuf8internal11SerialArena18AddCleanupFallbackEPvPFvS3_E(ptr noundef nonnull align 8 dereferenceable(72) %.05.ph, ptr noundef %.0.i.i, ptr noundef %2), !inline_history !3
  br label %_ZN6google8protobuf8internal11SerialArena28AllocateAlignedAndAddCleanupEmPFvPvE.exit

bb.g:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit.i
  store ptr %.0.i.i, ptr %i.x, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %2, ptr %i.ab, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ac, ptr %i.w, align 8, !tbaa !50
  br label %_ZN6google8protobuf8internal11SerialArena28AllocateAlignedAndAddCleanupEmPFvPvE.exit

_ZN6google8protobuf8internal9ArenaImpl18GetSerialArenaFastEPPNS1_11SerialArenaE.exit: ; preds = %_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit, %bb.b
  %i.ad = tail call noundef ptr @_ZN6google8protobuf8internal9ArenaImpl36AllocateAlignedAndAddCleanupFallbackEmPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef %2)
  br label %_ZN6google8protobuf8internal11SerialArena28AllocateAlignedAndAddCleanupEmPFvPvE.exit

_ZN6google8protobuf8internal11SerialArena28AllocateAlignedAndAddCleanupEmPFvPvE.exit: ; preds = %bb.g, %bb.f, %_ZN6google8protobuf8internal9ArenaImpl18GetSerialArenaFastEPPNS1_11SerialArenaE.exit
  %.0 = phi ptr [ %i.ad, %_ZN6google8protobuf8internal9ArenaImpl18GetSerialArenaFastEPPNS1_11SerialArenaE.exit ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal9ArenaImpl36AllocateAlignedAndAddCleanupFallbackEmPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 64 dereferenceable(64) ptr @llvm.threadlocal.address.p0(ptr align 64 @_ZN6google8protobuf8internal9ArenaImpl13thread_cache_E)
  %i.b = tail call noundef ptr @_ZN6google8protobuf8internal9ArenaImpl22GetSerialArenaFallbackEPv(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %.not.i.i = icmp ugt i64 %1, %i.i
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN6google8protobuf8internal11SerialArena23AllocateAlignedFallbackEm(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 noundef %1), !inline_history !2
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit.i

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %1
  store ptr %i.k, ptr %i.e, align 8, !tbaa !45
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit.i

_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.c ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.d, label %bb.e, !prof !35

bb.d:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit.i
  tail call void @_ZN6google8protobuf8internal11SerialArena18AddCleanupFallbackEPvPFvS3_E(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef %.0.i.i, ptr noundef %2), !inline_history !3
  br label %_ZN6google8protobuf8internal11SerialArena28AllocateAlignedAndAddCleanupEmPFvPvE.exit

bb.e:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit.i
  store ptr %.0.i.i, ptr %i.m, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.r, ptr %i.l, align 8, !tbaa !50
  br label %_ZN6google8protobuf8internal11SerialArena28AllocateAlignedAndAddCleanupEmPFvPvE.exit

_ZN6google8protobuf8internal11SerialArena28AllocateAlignedAndAddCleanupEmPFvPvE.exit: ; preds = %bb.d, %bb.e
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal9ArenaImpl10AddCleanupEPvPFvS3_E(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 64 dereferenceable(64) ptr @llvm.threadlocal.address.p0(ptr align 64 @_ZN6google8protobuf8internal9ArenaImpl13thread_cache_E) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit.thread, label %_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit, !prof !63

_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit.thread: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !47
  br label %bb.c

_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load atomic ptr, ptr %i.i acquire, align 8 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN6google8protobuf8internal9ArenaImpl18GetSerialArenaFastEPPNS1_11SerialArenaE.exit, label %bb.b, !prof !35

bb.b:                                             ; preds = %_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.m = icmp eq ptr %i.l, %i.a
  br i1 %i.m, label %bb.c, label %_ZN6google8protobuf8internal9ArenaImpl18GetSerialArenaFastEPPNS1_11SerialArenaE.exit, !prof !64

bb.c:                                             ; preds = %bb.b, %_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit.thread
  %.0.ph = phi ptr [ %i.h, %_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit.thread ], [ %i.j, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.ph, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.ph, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.d, label %bb.e, !prof !35

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6google8protobuf8internal11SerialArena18AddCleanupFallbackEPvPFvS3_E(ptr noundef nonnull align 8 dereferenceable(72) %.0.ph, ptr noundef %1, ptr noundef %2), !inline_history !3
  br label %_ZN6google8protobuf8internal11SerialArena10AddCleanupEPvPFvS3_E.exit

bb.e:                                             ; preds = %bb.c
  store ptr %1, ptr %i.o, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %2, ptr %i.s, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.t, ptr %i.n, align 8, !tbaa !50
  br label %_ZN6google8protobuf8internal11SerialArena10AddCleanupEPvPFvS3_E.exit

_ZN6google8protobuf8internal9ArenaImpl18GetSerialArenaFastEPPNS1_11SerialArenaE.exit: ; preds = %_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit, %bb.b
  tail call void @_ZN6google8protobuf8internal9ArenaImpl18AddCleanupFallbackEPvPFvS3_E(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2)
  br label %_ZN6google8protobuf8internal11SerialArena10AddCleanupEPvPFvS3_E.exit

_ZN6google8protobuf8internal11SerialArena10AddCleanupEPvPFvS3_E.exit: ; preds = %bb.e, %bb.d, %_ZN6google8protobuf8internal9ArenaImpl18GetSerialArenaFastEPPNS1_11SerialArenaE.exit
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define void @_ZN6google8protobuf8internal9ArenaImpl18AddCleanupFallbackEPvPFvS3_E(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 64 dereferenceable(64) ptr @llvm.threadlocal.address.p0(ptr align 64 @_ZN6google8protobuf8internal9ArenaImpl13thread_cache_E)
  %i.b = tail call noundef ptr @_ZN6google8protobuf8internal9ArenaImpl22GetSerialArenaFallbackEPv(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.a) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf8internal11SerialArena18AddCleanupFallbackEPvPFvS3_E(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef %1, ptr noundef %2), !inline_history !3
  br label %_ZN6google8protobuf8internal11SerialArena10AddCleanupEPvPFvS3_E.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %i.d, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %i.h, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.i, ptr %i.c, align 8, !tbaa !50
  br label %_ZN6google8protobuf8internal11SerialArena10AddCleanupEPvPFvS3_E.exit

_ZN6google8protobuf8internal11SerialArena10AddCleanupEPvPFvS3_E.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal9ArenaImpl23AllocateAlignedFallbackEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 64 dereferenceable(64) ptr @llvm.threadlocal.address.p0(ptr align 64 @_ZN6google8protobuf8internal9ArenaImpl13thread_cache_E)
  %i.b = tail call noundef ptr @_ZN6google8protobuf8internal9ArenaImpl22GetSerialArenaFallbackEPv(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.a) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %.not.i = icmp ugt i64 %1, %i.i
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN6google8protobuf8internal11SerialArena23AllocateAlignedFallbackEm(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 noundef %1), !inline_history !2
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %1
  store ptr %i.k, ptr %i.e, align 8, !tbaa !45
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit

_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress noinline uwtable
define noundef nonnull ptr @_ZN6google8protobuf8internal9ArenaImpl22GetSerialArenaFallbackEPv(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not24 = icmp eq ptr %i.a, null
  br i1 %.not24, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.025 = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.025, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = icmp eq ptr %i.c, %1
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.025, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !82

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 3 uses
  %.not17.i = icmp eq ptr %i.h, null
  br i1 %.not17.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 96) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.l = tail call noundef ptr %i.k(i64 noundef %.sroa.speculated.i), !inline_history !84
  br label %_ZN6google8protobuf8internal9ArenaImpl9NewBufferEmm.exit

bb.d:                                             ; preds = %.critedge
  %i.m = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #23
  br label %_ZN6google8protobuf8internal9ArenaImpl9NewBufferEmm.exit

_ZN6google8protobuf8internal9ArenaImpl9NewBufferEmm.exit: ; preds = %bb.c, %bb.d
  %.sroa.speculated.i18 = phi i64 [ %.sroa.speculated.i, %bb.c ], [ 256, %bb.d ] ; 3 uses
  %i.n = phi ptr [ %i.l, %bb.c ], [ %i.m, %bb.d ] ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = atomicrmw add ptr %i.o, i64 %.sroa.speculated.i18 monotonic, align 8 ; 0 uses
  store i64 0, ptr %i.n, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.speculated.i18, ptr %i.r, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 5 uses
  store i64 96, ptr %i.q, align 8, !tbaa !32
  store ptr %0, ptr %i.s, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %1, ptr %i.t, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.n, ptr %i.u, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr %i.v, ptr %i.w, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.speculated.i18
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store ptr %i.x, ptr %i.y, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr null, ptr %i.z, align 8, !tbaa !49
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ab = load atomic ptr, ptr %0 monotonic, align 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !58
  %i.ad = cmpxchg weak ptr %0, ptr %i.ab, ptr %i.s release monotonic, align 8 ; 2 uses
  %i.ae = extractvalue { ptr, i1 } %i.ad, 1
  br i1 %i.ae, label %.loopexit, label %_ZNSt6atomicIPN6google8protobuf8internal11SerialArenaEE21compare_exchange_weakERS4_S4_St12memory_orderS7_.exit

_ZNSt6atomicIPN6google8protobuf8internal11SerialArenaEE21compare_exchange_weakERS4_S4_St12memory_orderS7_.exit: ; preds = %_ZN6google8protobuf8internal9ArenaImpl9NewBufferEmm.exit, %_ZNSt6atomicIPN6google8protobuf8internal11SerialArenaEE21compare_exchange_weakERS4_S4_St12memory_orderS7_.exit
  %i.af = phi { ptr, i1 } [ %i.ah, %_ZNSt6atomicIPN6google8protobuf8internal11SerialArenaEE21compare_exchange_weakERS4_S4_St12memory_orderS7_.exit ], [ %i.ad, %_ZN6google8protobuf8internal9ArenaImpl9NewBufferEmm.exit ]
  %i.ag = extractvalue { ptr, i1 } %i.af, 0       ; 2 uses
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !58
  %i.ah = cmpxchg weak ptr %0, ptr %i.ag, ptr %i.s release monotonic, align 8 ; 2 uses
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1
  br i1 %i.ai, label %.loopexit, label %_ZNSt6atomicIPN6google8protobuf8internal11SerialArenaEE21compare_exchange_weakERS4_S4_St12memory_orderS7_.exit, !llvm.loop !83

.loopexit:                                        ; preds = %.lr.ph, %_ZNSt6atomicIPN6google8protobuf8internal11SerialArenaEE21compare_exchange_weakERS4_S4_St12memory_orderS7_.exit, %_ZN6google8protobuf8internal9ArenaImpl9NewBufferEmm.exit
  %.1 = phi ptr [ %i.s, %_ZN6google8protobuf8internal9ArenaImpl9NewBufferEmm.exit ], [ %i.s, %_ZNSt6atomicIPN6google8protobuf8internal11SerialArenaEE21compare_exchange_weakERS4_S4_St12memory_orderS7_.exit ], [ %.025, %.lr.ph ] ; 3 uses
  %i.aj = tail call noundef nonnull align 64 dereferenceable(64) ptr @llvm.threadlocal.address.p0(ptr align 64 @_ZN6google8protobuf8internal9ArenaImpl13thread_cache_E) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %.1, ptr %i.ak, align 16, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store atomic ptr %.1, ptr %i.ao release, align 8
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define noundef nonnull ptr @_ZN6google8protobuf8internal11SerialArena23AllocateAlignedFallbackEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal11SerialArena8NewBlockEPNS2_5BlockEmPNS1_9ArenaImplE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre6 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !28
  %.pre7 = load ptr, ptr %i.b, align 8, !tbaa !46
  %.pre8 = load ptr, ptr %i.c, align 8, !tbaa !45
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %_ZN6google8protobuf8internal11SerialArena8NewBlockEPNS2_5BlockEmPNS1_9ArenaImplE.exit
  %i.d = phi ptr [ %i.s, %tailrecurse ], [ %.pre8, %_ZN6google8protobuf8internal11SerialArena8NewBlockEPNS2_5BlockEmPNS1_9ArenaImplE.exit ]
  %i.e = phi ptr [ %i.t, %tailrecurse ], [ %.pre7, %_ZN6google8protobuf8internal11SerialArena8NewBlockEPNS2_5BlockEmPNS1_9ArenaImplE.exit ]
  %i.f = phi i64 [ %i.o, %tailrecurse ], [ %.pre6, %_ZN6google8protobuf8internal11SerialArena8NewBlockEPNS2_5BlockEmPNS1_9ArenaImplE.exit ] ; 2 uses
  %i.g = phi ptr [ %i.n, %tailrecurse ], [ %.pre, %_ZN6google8protobuf8internal11SerialArena8NewBlockEPNS2_5BlockEmPNS1_9ArenaImplE.exit ] ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.d to i64
  %.neg = sub i64 %i.f, %i.h
  %i.j = add i64 %.neg, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !32
  %i.l = load ptr, ptr %0, align 8, !tbaa !42
  %i.m = tail call { ptr, i64 } @_ZN6google8protobuf8internal9ArenaImpl9NewBufferEmm(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 noundef %i.f, i64 noundef %1) ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0        ; 7 uses
  %i.o = extractvalue { ptr, i64 } %i.m, 1        ; 4 uses
  %i.p = ptrtoint ptr %i.g to i64
  store i64 %i.p, ptr %i.n, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 24, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.o, ptr %i.r, align 8, !tbaa !28
  store ptr %i.n, ptr %i.a, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 4 uses
  store ptr %i.s, ptr %i.c, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 2 uses
  store ptr %i.t, ptr %i.b, align 8, !tbaa !46
  %gepdiff = add nsw i64 %i.o, -24
  %.not = icmp ugt i64 %1, %gepdiff
  br i1 %.not, label %tailrecurse, label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit, !prof !35

_ZN6google8protobuf8internal11SerialArena15AllocateAlignedEm.exit: ; preds = %tailrecurse
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  store ptr %i.u, ptr %i.c, align 8, !tbaa !45
  ret ptr %i.s
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define noundef i64 @_ZNK6google8protobuf8internal9ArenaImpl9SpaceUsedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not8 = icmp eq ptr %i.a, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNK6google8protobuf8internal11SerialArena9SpaceUsedEv.exit
  %.010 = phi i64 [ %i.o, %_ZNK6google8protobuf8internal11SerialArena9SpaceUsedEv.exit ], [ 0, %bb.a ]
  %.069 = phi ptr [ %i.q, %_ZNK6google8protobuf8internal11SerialArena9SpaceUsedEv.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.069, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %.069, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %.0.in.in7.i = load i64, ptr %i.e, align 8, !tbaa !27
  %.0.in8.i = and i64 %.0.in.in7.i, -4            ; 2 uses
  %.not9.i = icmp eq i64 %.0.in8.i, 0
  br i1 %.not9.i, label %_ZNK6google8protobuf8internal11SerialArena9SpaceUsedEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.0.in11.i = phi i64 [ %.0.in.i, %.lr.ph.i ], [ %.0.in8.i, %.lr.ph ]
  %.0610.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.i, %.lr.ph ]
  %.0.i = inttoptr i64 %.0.in11.i to ptr          ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32
  %i.l = add i64 %.0610.i, -24
  %i.m = add i64 %i.l, %i.k                       ; 2 uses
  %.0.in.in.i = load i64, ptr %.0.i, align 8, !tbaa !27
  %.0.in.i = and i64 %.0.in.in.i, -4              ; 2 uses
  %.not.i = icmp eq i64 %.0.in.i, 0
  br i1 %.not.i, label %_ZNK6google8protobuf8internal11SerialArena9SpaceUsedEv.exit, label %.lr.ph.i, !llvm.loop !4

_ZNK6google8protobuf8internal11SerialArena9SpaceUsedEv.exit: ; preds = %.lr.ph.i, %.lr.ph
  %.06.lcssa.i = phi i64 [ %i.i, %.lr.ph ], [ %i.m, %.lr.ph.i ]
  %i.n = add i64 %.010, -72
  %i.o = add i64 %i.n, %.06.lcssa.i               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.069, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58   ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !85

._crit_edge:                                      ; preds = %_ZNK6google8protobuf8internal11SerialArena9SpaceUsedEv.exit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.o, %_ZNK6google8protobuf8internal11SerialArena9SpaceUsedEv.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22
  %.not7 = icmp eq ptr %i.s, null
  %i.t = add i64 %.0.lcssa, -40
  %spec.select = select i1 %.not7, i64 %.0.lcssa, i64 %i.t
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK6google8protobuf8internal11SerialArena9SpaceUsedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %.0.in.in7 = load i64, ptr %i.d, align 8, !tbaa !27
  %.0.in8 = and i64 %.0.in.in7, -4                ; 2 uses
  %.not9 = icmp eq i64 %.0.in8, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.06.lcssa = phi i64 [ %i.h, %bb.a ], [ %i.m, %.lr.ph ]
  %i.i = add i64 %.06.lcssa, -72
  ret i64 %i.i

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.in11 = phi i64 [ %.0.in, %.lr.ph ], [ %.0.in8, %bb.a ]
  %.0610 = phi i64 [ %i.m, %.lr.ph ], [ %i.h, %bb.a ]
  %.0 = inttoptr i64 %.0.in11 to ptr              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32
  %i.l = add i64 %.0610, -24
  %i.m = add i64 %i.l, %i.k                       ; 2 uses
  %.0.in.in = load i64, ptr %.0, align 8, !tbaa !27
  %.0.in = and i64 %.0.in.in, -4                  ; 2 uses
  %.not = icmp eq i64 %.0.in, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal11SerialArena11CleanupListEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN6google8protobuf8internal11SerialArena19CleanupListFallbackEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.014.i = phi i64 [ %i.i, %bb.b ], [ %i.r, %bb.d ] ; 2 uses
  %.013.i = phi ptr [ %i.b, %bb.b ], [ %i.k, %bb.d ] ; 2 uses
  %.not18.i = icmp eq i64 %.014.i, 0
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN6google8protobuf8internal11SerialArena19CleanupListFallbackEv.exit, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.01219.i = phi i64 [ %i.q, %.lr.ph.i ], [ %.014.i, %bb.c ] ; 2 uses
  %i.m = getelementptr [16 x i8], ptr %.013.i, i64 %.01219.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !55
  tail call void %i.o(ptr noundef %i.p), !inline_history !86
  %i.q = add i64 %.01219.i, -1                    ; 2 uses
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

bb.d:                                             ; preds = %._crit_edge.i
  %i.r = load i64, ptr %i.k, align 8, !tbaa !57
  br label %bb.c

_ZN6google8protobuf8internal11SerialArena19CleanupListFallbackEv.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal11SerialArena19CleanupListFallbackEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.014 = phi i64 [ %i.i, %bb.a ], [ %i.r, %bb.c ] ; 2 uses
  %.013 = phi ptr [ %i.d, %bb.a ], [ %i.k, %bb.c ] ; 2 uses
  %.not18 = icmp eq i64 %.014, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.01219 = phi i64 [ %i.q, %.lr.ph ], [ %.014, %bb.b ] ; 2 uses
  %i.m = getelementptr [16 x i8], ptr %.013, i64 %.01219 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !55
  tail call void %i.o(ptr noundef %i.p)
  %i.q = add i64 %.01219, -1                      ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

bb.c:                                             ; preds = %._crit_edge
  %i.r = load i64, ptr %i.k, align 8, !tbaa !57
  br label %bb.b

bb.d:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6google8protobuf8internal21ArenaMetricsCollectorD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #15 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN6google8protobuf8internal21ArenaMetricsCollectorD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #17

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf5Arena21AllocateAlignedNoHookEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #3 align 32 prefalign(32) personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 64 dereferenceable(64) ptr @llvm.threadlocal.address.p0(ptr align 64 @_ZN6google8protobuf8internal9ArenaImpl13thread_cache_E) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit.thread.i, label %_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit.i, !prof !63

_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit.thread.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !47
  br label %bb.c

_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load atomic ptr, ptr %i.i acquire, align 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal9ArenaImpl18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i, label %bb.b, !prof !35

bb.b:                                             ; preds = %_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.m = icmp eq ptr %i.l, %i.a
  br i1 %i.m, label %bb.c, label %_ZN6google8protobuf8internal9ArenaImpl18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i, !prof !64

bb.c:                                             ; preds = %bb.b, %_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit.thread.i
  %.04.ph.i = phi ptr [ %i.h, %_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit.thread.i ], [ %i.j, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.04.ph.i, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %.04.ph.i, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45   ; 3 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %.not.i3.i = icmp ugt i64 %1, %i.t
  br i1 %.not.i3.i, label %bb.d, label %bb.e, !prof !35

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef ptr @_ZN6google8protobuf8internal11SerialArena23AllocateAlignedFallbackEm(ptr noundef nonnull align 8 dereferenceable(72) %.04.ph.i, i64 noundef %1), !inline_history !2
  br label %_ZN6google8protobuf8internal9ArenaImpl15AllocateAlignedEm.exit

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %1
  store ptr %i.v, ptr %i.p, align 8, !tbaa !45
  br label %_ZN6google8protobuf8internal9ArenaImpl15AllocateAlignedEm.exit

_ZN6google8protobuf8internal9ArenaImpl18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i: ; preds = %bb.b, %_ZN6google8protobuf8internal9ArenaImpl29GetSerialArenaFromThreadCacheEPPNS1_11SerialArenaE.exit.i
  %i.w = tail call noundef ptr @_ZN6google8protobuf8internal9ArenaImpl23AllocateAlignedFallbackEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1)
  br label %_ZN6google8protobuf8internal9ArenaImpl15AllocateAlignedEm.exit

_ZN6google8protobuf8internal9ArenaImpl15AllocateAlignedEm.exit: ; preds = %bb.d, %bb.e, %_ZN6google8protobuf8internal9ArenaImpl18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i
  %.0.i = phi ptr [ %i.w, %_ZN6google8protobuf8internal9ArenaImpl18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i ], [ %i.u, %bb.d ], [ %i.q, %bb.e ]
  ret ptr %.0.i
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

attributes #0 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !56}
!1 = distinct !{!1, !56}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{!4, !56}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTSN6google8protobuf8internal11SerialArenaE", !13, i64 0}
!15 = !{!"_ZTSSt13__atomic_baseIPN6google8protobuf8internal11SerialArenaEE", !14, i64 0}
!16 = !{!"_ZTSSt6atomicIPN6google8protobuf8internal11SerialArenaEE", !15, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!"_ZTSSt13__atomic_baseImE", !17, i64 0}
!19 = !{!"_ZTSSt6atomicImE", !18, i64 0}
!20 = !{!"p1 _ZTSN6google8protobuf8internal9ArenaImpl7OptionsE", !13, i64 0}
!21 = !{!"_ZTSN6google8protobuf8internal9ArenaImplE", !16, i64 0, !16, i64 8, !19, i64 16, !17, i64 24, !20, i64 32}
!22 = !{!21, !20, i64 32}
!23 = !{!"p1 omnipotent char", !13, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"_ZTSN6google8protobuf8internal11SerialArena5BlockE", !17, i64 0, !17, i64 8, !17, i64 16}
!27 = !{!26, !17, i64 0}
!28 = !{!26, !17, i64 16}
!29 = !{!"p1 _ZTSN6google8protobuf8internal21ArenaMetricsCollectorE", !13, i64 0}
!30 = !{!"_ZTSN6google8protobuf8internal9ArenaImpl7OptionsE", !17, i64 0, !17, i64 8, !13, i64 16, !13, i64 24, !29, i64 32}
!31 = !{!30, !29, i64 32}
!32 = !{!26, !17, i64 8}
!33 = !{!"_ZTSN6google8protobuf8internal9ArenaImpl11ThreadCacheE", !17, i64 0, !17, i64 8, !14, i64 16}
!34 = !{!33, !17, i64 0}
!35 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!36 = !{!21, !17, i64 24}
!37 = !{!"p1 _ZTSN6google8protobuf8internal9ArenaImplE", !13, i64 0}
!38 = !{!"p1 _ZTSN6google8protobuf8internal11SerialArena5BlockE", !13, i64 0}
!39 = !{!"p1 _ZTSN6google8protobuf8internal11SerialArena12CleanupChunkE", !13, i64 0}
!40 = !{!"p1 _ZTSN6google8protobuf8internal11SerialArena11CleanupNodeE", !13, i64 0}
!41 = !{!"_ZTSN6google8protobuf8internal11SerialArenaE", !37, i64 0, !13, i64 8, !38, i64 16, !39, i64 24, !14, i64 32, !23, i64 40, !23, i64 48, !40, i64 56, !40, i64 64}
!42 = !{!41, !37, i64 0}
!43 = !{!41, !13, i64 8}
!44 = !{!41, !38, i64 16}
!45 = !{!41, !23, i64 40}
!46 = !{!41, !23, i64 48}
!47 = !{!33, !14, i64 16}
!48 = !{!33, !17, i64 8}
!49 = !{!41, !39, i64 24}
!50 = !{!41, !40, i64 56}
!51 = !{!"_ZTSN6google8protobuf8internal11SerialArena12CleanupChunkE", !17, i64 0, !39, i64 8, !9, i64 16}
!52 = !{!51, !39, i64 8}
!53 = !{!"_ZTSN6google8protobuf8internal11SerialArena11CleanupNodeE", !13, i64 0, !13, i64 8}
!54 = !{!53, !13, i64 8}
!55 = !{!53, !13, i64 0}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!51, !17, i64 0}
!58 = !{!41, !14, i64 32}
!59 = !{!30, !13, i64 24}
!60 = !{!30, !17, i64 0}
!61 = !{!30, !13, i64 16}
!62 = !{!41, !40, i64 64}
!63 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!64 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!65 = !{!"_ZTSN6google8protobuf12ArenaOptionsE", !17, i64 0, !17, i64 8, !23, i64 16, !17, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!66 = !{!65, !13, i64 48}
!67 = !{!65, !23, i64 16}
!68 = !{!65, !17, i64 24}
!69 = !{!17, !17, i64 0}
!70 = !{!65, !13, i64 32}
!71 = !{!13, !13, i64 0}
!72 = distinct !{!72, !56}
!73 = distinct !{null}
!74 = distinct !{!74, !56}
!75 = !{ptr @_ZN6google8protobuf8internal9ArenaImpl11CleanupListEv}
!76 = !{ptr @_ZN6google8protobuf8internal11SerialArena11CleanupListEv, ptr @_ZN6google8protobuf8internal11SerialArena19CleanupListFallbackEv}
!77 = distinct !{!77, !56}
!78 = distinct !{null, null}
!79 = distinct !{!79, !56}
!80 = !{ptr @_ZN6google8protobuf8internal9ArenaImpl11CleanupListEv, ptr @_ZN6google8protobuf8internal11SerialArena11CleanupListEv, ptr @_ZN6google8protobuf8internal11SerialArena19CleanupListFallbackEv}
!81 = !{!30, !17, i64 8}
!82 = distinct !{!82, !56}
!83 = distinct !{!83, !56}
!84 = !{ptr @_ZN6google8protobuf8internal9ArenaImpl9NewBufferEmm}
!85 = distinct !{!85, !56}
!86 = !{ptr @_ZN6google8protobuf8internal11SerialArena19CleanupListFallbackEv}
end_hunk_0
