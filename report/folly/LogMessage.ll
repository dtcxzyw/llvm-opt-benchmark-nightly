Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/LogMessage?download=true
inline.NumInlined: 137
inline.NumDeleted: 58
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.folly::Range" = type { ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::array" = type { [4 x i8] }
%"class.std::out_of_range" = type { %"class.std::logic_error" }
%"class.std::logic_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.55 }
%union.anon.55 = type { ptr }

$_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionISt12out_of_rangeEEvOT_ = comdat any

$_ZNSt12out_of_rangeC2EOS_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

@.str = private unnamed_addr constant [19 x i8] c"index out of range\00", align 1
@_ZTISt12out_of_range = external constant ptr
@_ZTVSt12out_of_range = external constant { [5 x ptr] }, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

@_ZN5folly10LogMessageC1EPKNS_11LogCategoryENS_8LogLevelENS_5RangeIPKcEEjS8_ONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = unnamed_addr alias void (ptr, ptr, i32, ptr, ptr, i32, ptr, ptr), ptr @_ZN5folly10LogMessageC2EPKNS_11LogCategoryENS_8LogLevelENS_5RangeIPKcEEjS8_ONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN5folly10LogMessageC1EPKNS_11LogCategoryENS_8LogLevelENSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEENS_5RangeIPKcEEjSH_ONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = unnamed_addr alias void (ptr, ptr, i32, i64, ptr, ptr, i32, ptr, ptr), ptr @_ZN5folly10LogMessageC2EPKNS_11LogCategoryENS_8LogLevelENSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEENS_5RangeIPKcEEjSH_ONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10LogMessageC2EPKNS_11LogCategoryENS_8LogLevelENS_5RangeIPKcEEjS8_ONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(176) initializes((0, 12), (16, 52), (56, 80)) %0, ptr noundef %1, i32 noundef %2, ptr %3, ptr %4, i32 noundef %5, ptr nofree noundef readonly byval(%"class.folly::Range") align 8 captures(none) %6, ptr noundef nonnull align 8 dereferenceable(32) %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.a, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call noundef i64 @_ZN5folly13getOSThreadIDEv()
  store i64 %i.c, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #12
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %i.f, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %5, ptr %i.g, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.i, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !23
  %i.l = getelementptr i8, ptr %i.k, i64 88
  %.val = load ptr, ptr %i.l, align 8, !tbaa !48
  tail call void @_ZNK5folly8LoggerDB16getContextStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.j, ptr noundef nonnull align 8 dereferenceable(232) %.val)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !49
  %i.o = load ptr, ptr %7, align 8, !tbaa !50     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !51   ; 2 uses
  %i.t = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.o, ptr %i.m, align 8, !tbaa !50
  %i.v = load i64, ptr %i.p, align 8, !tbaa !52
  store i64 %i.v, ptr %i.n, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.x, ptr %i.y, align 8, !tbaa !51
  store ptr %i.p, ptr %7, align 8, !tbaa !50
  store i64 0, ptr %i.w, align 8, !tbaa !51
  store i8 0, ptr %i.p, align 8, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.ab, align 8, !tbaa !51
  store i8 0, ptr %i.aa, align 8, !tbaa !52
  invoke void @_ZN5folly10LogMessage15sanitizeMessageEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  ret void

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !50  ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.aa
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !52
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !50  ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.n
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = load i64, ptr %i.n, align 8, !tbaa !52
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !50  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !52
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  resume { ptr, i32 } %i.ac
}

declare noundef i64 @_ZN5folly13getOSThreadIDEv() local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10LogMessage15sanitizeMessageEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::array", align 4       ; 8 uses
  %2 = alloca %"struct.std::array", align 4       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !51   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = icmp samesign eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %3, align 8, !tbaa !29
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.k
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.1, ptr %i.g, align 8, !tbaa !29
  %i.h = icmp eq i64 %.131, %i.d
  br i1 %i.h, label %.loopexit, label %bb.l

.lr.ph:                                           ; preds = %bb.a, %bb.k
  %.064 = phi i64 [ %.1, %bb.k ], [ 0, %bb.a ]    ; 6 uses
  %.03063 = phi i64 [ %.131, %bb.k ], [ 0, %bb.a ] ; 6 uses
  %.sroa.059.062 = phi ptr [ %i.t, %bb.k ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = load i8, ptr %.sroa.059.062, align 1, !tbaa !52 ; 4 uses
  %i.j = icmp eq i8 %i.i, 92
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.k = add i64 %.03063, 2
  br label %bb.k

bb.c:                                             ; preds = %.lr.ph
  %i.l = icmp ult i8 %i.i, 32
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  switch i8 %i.i, label %bb.g [
    i8 10, label %bb.e
    i8 9, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = add i64 %.03063, 1
  %i.n = add i64 %.064, 1
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.o = add i64 %.03063, 1
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.p = add i64 %.03063, 4
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.q = icmp eq i8 %i.i, 127
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = add i64 %.03063, 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.s = add i64 %.03063, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.j, %bb.i, %bb.b
  %.131 = phi i64 [ %i.k, %bb.b ], [ %i.m, %bb.e ], [ %i.o, %bb.f ], [ %i.p, %bb.g ], [ %i.r, %bb.i ], [ %i.s, %bb.j ] ; 3 uses
  %.1 = phi i64 [ %.064, %bb.b ], [ %i.n, %bb.e ], [ %.064, %bb.f ], [ %.064, %bb.g ], [ %.064, %bb.i ], [ %.064, %bb.j ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.059.062, i64 1 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.e
  br i1 %i.u, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 23 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %.131)
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.x = load i64, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  %i.z = icmp samesign eq i64 %i.x, 0
  br i1 %i.z, label %.loopexit, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 12 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 3
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph68, %bb.af
  %.sroa.055.066 = phi ptr [ %i.w, %.lr.ph68 ], [ %i.do, %bb.af ] ; 2 uses
  %i.af = load i8, ptr %.sroa.055.066, align 1, !tbaa !52 ; 7 uses
  %i.ag = sext i8 %i.af to i32                    ; 2 uses
  %i.ah = icmp eq i8 %i.af, 92
  br i1 %i.ah, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !51 ; 4 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !50  ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ab
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.n
  %i.am = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.am)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.an = load i64, ptr %i.ab, align 8, !tbaa !52
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ao = phi i64 [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.ap = icmp ugt i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ai, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.o
  %i.aq = phi ptr [ %.pre.i, %bb.o ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store i8 92, ptr %i.ar, align 1, !tbaa !52
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !51
  %i.as = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aj
  store i8 0, ptr %i.at, align 1, !tbaa !52
  %i.au = load i64, ptr %i.aa, align 8, !tbaa !51 ; 4 uses
  %i.av = add i64 %i.au, 1                        ; 3 uses
  %i.aw = load ptr, ptr %i.v, align 8, !tbaa !50  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ab
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %i.ay = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.ay)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %i.az = load i64, ptr %i.ab, align 8, !tbaa !52
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i37
  %i.ba = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i37 ]
  %i.bb = icmp ugt i64 %i.av, %i.ba
  br i1 %i.bb, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit38

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i35
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.au, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i36 = load ptr, ptr %i.v, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i35, %bb.p
  %i.bc = phi ptr [ %.pre.i36, %bb.p ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i35 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.au
  store i8 92, ptr %i.bd, align 1, !tbaa !52
  store i64 %i.av, ptr %i.aa, align 8, !tbaa !51
  %i.be = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.av
  store i8 0, ptr %i.bf, align 1, !tbaa !52
  br label %bb.af

bb.q:                                             ; preds = %bb.m
  %i.bg = icmp ult i8 %i.af, 32
  br i1 %i.bg, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.bh = add nsw i8 %i.af, -9
  %or.cond = icmp ult i8 %i.bh, 2
  br i1 %or.cond, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bi = load i64, ptr %i.aa, align 8, !tbaa !51 ; 4 uses
  %i.bj = add i64 %i.bi, 1                        ; 3 uses
  %i.bk = load ptr, ptr %i.v, align 8, !tbaa !50  ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ab
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i42: ; preds = %bb.s
  %i.bm = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.s
  %i.bn = load i64, ptr %i.ab, align 8, !tbaa !52
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i42
  %i.bo = phi i64 [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i42 ]
  %i.bp = icmp ugt i64 %i.bj, %i.bo
  br i1 %i.bp, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit43

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i40
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.bi, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i41 = load ptr, ptr %i.v, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i40, %bb.t
  %i.bq = phi ptr [ %.pre.i41, %bb.t ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i40 ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bi
  store i8 %i.af, ptr %i.br, align 1, !tbaa !52
  store i64 %i.bj, ptr %i.aa, align 8, !tbaa !51
  %i.bs = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bj
  store i8 0, ptr %i.bt, align 1, !tbaa !52
  br label %bb.af

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  store i8 92, ptr %1, align 4, !tbaa !52
  store i8 120, ptr %i.ac, align 1, !tbaa !52
  %i.bu = lshr i32 %i.ag, 4
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !52
  store i8 %i.bx, ptr %i.ad, align 2, !tbaa !52
  %i.by = and i32 %i.ag, 15
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !52
  store i8 %i.cb, ptr %i.ae, align 1, !tbaa !52
  %i.cc = load i64, ptr %i.aa, align 8, !tbaa !51 ; 5 uses
  %i.cd = and i64 %i.cc, -4
  %i.ce = icmp eq i64 %i.cd, 9223372036854775804
  br i1 %i.ce, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #14
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.u
  %i.cf = add nsw i64 %i.cc, 4                    ; 3 uses
  %i.cg = load ptr, ptr %i.v, align 8, !tbaa !50  ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.ab
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ci = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.ci)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.cj = load i64, ptr %i.ab, align 8, !tbaa !52
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ck = phi i64 [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.cf, %i.ck
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cc
  %i.cm = load i32, ptr %1, align 4
  store i32 %i.cm, ptr %i.cl, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.cc, i64 noundef 0, ptr noundef nonnull %1, i64 noundef 4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.w, %bb.x
  store i64 %i.cf, ptr %i.aa, align 8, !tbaa !51
  %i.cn = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cf
  store i8 0, ptr %i.co, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.af

bb.y:                                             ; preds = %bb.q
  %i.cp = icmp eq i8 %i.af, 127
  br i1 %i.cp, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i32 1714911324, ptr %2, align 4
  %i.cq = load i64, ptr %i.aa, align 8, !tbaa !51 ; 5 uses
  %i.cr = and i64 %i.cq, -4
  %i.cs = icmp eq i64 %i.cr, 9223372036854775804
  br i1 %i.cs, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i44

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #14
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i44: ; preds = %bb.z
  %i.ct = add nsw i64 %i.cq, 4                    ; 3 uses
  %i.cu = load ptr, ptr %i.v, align 8, !tbaa !50  ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ab
  br i1 %i.cv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i48: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i44
  %i.cw = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.cw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i44
  %i.cx = load i64, ptr %i.ab, align 8, !tbaa !52
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i48
  %i.cy = phi i64 [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i48 ]
  %.not.i.i47 = icmp ugt i64 %i.ct, %i.cy
  br i1 %.not.i.i47, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i46
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cq
  store i32 1714911324, ptr %i.cz, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit49

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i46
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.cq, i64 noundef 0, ptr noundef nonnull %2, i64 noundef 4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit49: ; preds = %bb.ab, %bb.ac
  store i64 %i.ct, ptr %i.aa, align 8, !tbaa !51
  %i.da = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ct
  store i8 0, ptr %i.db, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.af

bb.ad:                                            ; preds = %bb.y
  %i.dc = load i64, ptr %i.aa, align 8, !tbaa !51 ; 4 uses
  %i.dd = add i64 %i.dc, 1                        ; 3 uses
  %i.de = load ptr, ptr %i.v, align 8, !tbaa !50  ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.ab
  br i1 %i.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53: ; preds = %bb.ad
  %i.dg = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.ad
  %i.dh = load i64, ptr %i.ab, align 8, !tbaa !52
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i51: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53
  %i.di = phi i64 [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53 ]
  %i.dj = icmp ugt i64 %i.dd, %i.di
  br i1 %i.dj, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit54

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i51
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.dc, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i52 = load ptr, ptr %i.v, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit54: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i51, %bb.ae
  %i.dk = phi ptr [ %.pre.i52, %bb.ae ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i51 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dc
  store i8 %i.af, ptr %i.dl, align 1, !tbaa !52
  store i64 %i.dd, ptr %i.aa, align 8, !tbaa !51
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dd
  store i8 0, ptr %i.dn, align 1, !tbaa !52
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit38
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.055.066, i64 1 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.y
  br i1 %i.dp, label %.loopexit, label %bb.m

.loopexit:                                        ; preds = %bb.af, %._crit_edge.thread, %bb.l, %._crit_edge
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZNK5folly8LoggerDB16getContextStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(232)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10LogMessageC2EPKNS_11LogCategoryENS_8LogLevelENSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEENS_5RangeIPKcEEjSH_ONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(176) initializes((0, 12), (16, 52), (56, 80)) %0, ptr noundef %1, i32 noundef %2, i64 %3, ptr %4, ptr %5, i32 noundef %6, ptr nofree noundef readonly byval(%"class.folly::Range") align 8 captures(none) %7, ptr noundef nonnull align 8 dereferenceable(32) %8) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.a, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call noundef i64 @_ZN5folly13getOSThreadIDEv()
  store i64 %i.c, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %i.d, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %4, ptr %i.e, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %5, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %6, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.h, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !23
  %i.k = getelementptr i8, ptr %i.j, i64 88
  %.val = load ptr, ptr %i.k, align 8, !tbaa !48
  tail call void @_ZNK5folly8LoggerDB16getContextStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.i, ptr noundef nonnull align 8 dereferenceable(232) %.val)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !49
  %i.n = load ptr, ptr %8, align 8, !tbaa !50     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !51   ; 2 uses
  %i.s = icmp ult i64 %i.r, 16
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.r, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.n, ptr %i.l, align 8, !tbaa !50
  %i.u = load i64, ptr %i.o, align 8, !tbaa !52
  store i64 %i.u, ptr %i.m, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.w, ptr %i.x, align 8, !tbaa !51
  store ptr %i.o, ptr %8, align 8, !tbaa !50
  store i64 0, ptr %i.v, align 8, !tbaa !51
  store i8 0, ptr %i.o, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !49
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.aa, align 8, !tbaa !51
  store i8 0, ptr %i.z, align 8, !tbaa !52
  invoke void @_ZN5folly10LogMessage15sanitizeMessageEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  ret void

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !50  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.z
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !52
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !50  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.m
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = load i64, ptr %i.m, align 8, !tbaa !52
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !50  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.an = load i64, ptr %i.al, align 8, !tbaa !52
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK5folly10LogMessage15getFileBaseNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !26 ; 4 uses
  %.sroa.2.0..0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..0..sroa_idx.i.i, align 8, !tbaa !26 ; 3 uses
  %i.b = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.2.0.copyload.i.i
  br i1 %i.b, label %_ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %.sroa.2.0.copyload.i.i to i64
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = tail call noundef ptr @_ZN5folly7memrchrEPKvim(ptr noundef %.sroa.0.0.copyload.i.i, i32 noundef 47, i64 noundef %i.e) #12 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %._ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread_crit_edge, label %_ZNK5folly5RangeIPKcE5rfindERS1_.exit

._ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread_crit_edge: ; preds = %bb.b
  %.sroa.0.0.copyload.pre = load ptr, ptr %i.a, align 8, !tbaa !26
  %.sroa.3.0.copyload.pre = load ptr, ptr %.sroa.2.0..0..sroa_idx.i.i, align 8, !tbaa !26
  br label %_ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread

_ZNK5folly5RangeIPKcE5rfindERS1_.exit:            ; preds = %bb.b
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.h, %i.d                       ; 3 uses
  %i.j = icmp eq i64 %i.i, -1
  %.sroa.0.0.copyload.pre4 = load ptr, ptr %i.a, align 8, !tbaa !26 ; 4 uses
  %.sroa.3.0.copyload.pre6 = load ptr, ptr %.sroa.2.0..0..sroa_idx.i.i, align 8, !tbaa !26 ; 2 uses
  br i1 %i.j, label %_ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5folly5RangeIPKcE5rfindERS1_.exit
  %i.k = ptrtoint ptr %.sroa.3.0.copyload.pre6 to i64
  %i.l = ptrtoint ptr %.sroa.0.0.copyload.pre4 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %.not = icmp ult i64 %i.i, %i.m
  br i1 %.not, label %_ZNK5folly5RangeIPKcE8subpieceEmm.exit, label %bb.d, !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str) #7
  unreachable

_ZNK5folly5RangeIPKcE8subpieceEmm.exit:           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre4, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre4, i64 %i.m
  br label %_ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread

_ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread:     ; preds = %_ZNK5folly5RangeIPKcE5rfindERS1_.exit, %bb.a, %._ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread_crit_edge, %_ZNK5folly5RangeIPKcE8subpieceEmm.exit
  %.sroa.0.0.copyload.pn = phi ptr [ %i.o, %_ZNK5folly5RangeIPKcE8subpieceEmm.exit ], [ %.sroa.0.0.copyload.pre, %._ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread_crit_edge ], [ %.sroa.0.0.copyload.i.i, %bb.a ], [ %.sroa.0.0.copyload.pre4, %_ZNK5folly5RangeIPKcE5rfindERS1_.exit ]
  %.sroa.3.0.copyload.pn = phi ptr [ %i.p, %_ZNK5folly5RangeIPKcE8subpieceEmm.exit ], [ %.sroa.3.0.copyload.pre, %._ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread_crit_edge ], [ %.sroa.2.0.copyload.i.i, %bb.a ], [ %.sroa.3.0.copyload.pre6, %_ZNK5folly5RangeIPKcE5rfindERS1_.exit ]
  %.pn = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.copyload.pn, 0
  %.fca.1.insert.merged = insertvalue { ptr, ptr } %.pn, ptr %.sroa.3.0.copyload.pn, 1
  ret { ptr, ptr } %.fca.1.insert.merged
}

; Function Attrs: nounwind
declare noundef ptr @_ZN5folly7memrchrEPKvim(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0)
  invoke void @_ZN5folly15throw_exceptionISt12out_of_rangeEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #7
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #12
end_hunk_0
