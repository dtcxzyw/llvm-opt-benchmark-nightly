inline.NumInlined: 409
inline.NumDeleted: 248
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.cppgc::HeapStatistics" = type { i64, i64, i64, i64, i8, %"class.std::vector", %"class.std::vector.0" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<cppgc::HeapStatistics::SpaceStatistics, std::allocator<cppgc::HeapStatistics::SpaceStatistics>>::_Vector_impl" }
%"struct.std::_Vector_base<cppgc::HeapStatistics::SpaceStatistics, std::allocator<cppgc::HeapStatistics::SpaceStatistics>>::_Vector_impl" = type { %"struct.std::_Vector_base<cppgc::HeapStatistics::SpaceStatistics, std::allocator<cppgc::HeapStatistics::SpaceStatistics>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cppgc::HeapStatistics::SpaceStatistics, std::allocator<cppgc::HeapStatistics::SpaceStatistics>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cppgc::internal::ClassNameAsHeapObjectNameScope" = type <{ ptr, i8, [7 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.cppgc::internal::NormalPage::IteratorImpl" = type { ptr, ptr, i64 }

$_ZN5cppgc14HeapStatistics15SpaceStatisticsD2Ev = comdat any

$_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZN5cppgc8internal11HeapVisitorINS0_23HeapStatisticsCollectorEE8TraverseERNS0_8BasePageE = comdat any

@.str = private unnamed_addr constant [15 x i8] c"LargePageSpace\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"NormalPageSpace\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"CustomSpace\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal23HeapStatisticsCollector25CollectDetailedStatisticsEPNS0_8HeapBaseE(ptr dead_on_unwind noalias writable sret(%"struct.cppgc::HeapStatistics") align 8 initializes((0, 33), (40, 88)) %0, ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 8)) %1, ptr noundef nonnull %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.cppgc::internal::ClassNameAsHeapObjectNameScope", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.b, align 8
  store ptr %0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZN5cppgc8internal30ClassNameAsHeapObjectNameScopeC1ERNS0_8HeapBaseE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(512) %2) #14
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZN5cppgc8internal11HeapVisitorINS0_23HeapStatisticsCollectorEE8TraverseERNS0_7RawHeapE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5cppgc8internal11HeapVisitorINS0_23HeapStatisticsCollectorEE8TraverseERNS0_9BaseSpaceE.exit.i
  %.sroa.06.09.i = phi ptr [ %i.v, %_ZN5cppgc8internal11HeapVisitorINS0_23HeapStatisticsCollectorEE8TraverseERNS0_9BaseSpaceE.exit.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.06.09.i, align 8    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = call noundef zeroext i1 @_ZN5cppgc8internal23HeapStatisticsCollector19VisitLargePageSpaceERNS0_14LargePageSpaceE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nonnull align 8 poison) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = call noundef zeroext i1 @_ZN5cppgc8internal23HeapStatisticsCollector20VisitNormalPageSpaceERNS0_15NormalPageSpaceE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(360) %i.h) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %_ZN5cppgc8internal11HeapVisitorINS0_23HeapStatisticsCollectorEE8TraverseERNS0_9BaseSpaceE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.08.011.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.s = load ptr, ptr %.sroa.08.011.i.i, align 8
  call void @_ZN5cppgc8internal11HeapVisitorINS0_23HeapStatisticsCollectorEE8TraverseERNS0_8BasePageE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i, i64 8 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.q
  br i1 %i.u, label %_ZN5cppgc8internal11HeapVisitorINS0_23HeapStatisticsCollectorEE8TraverseERNS0_9BaseSpaceE.exit.i, label %.lr.ph.i.i

_ZN5cppgc8internal11HeapVisitorINS0_23HeapStatisticsCollectorEE8TraverseERNS0_9BaseSpaceE.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 8 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.f
  br i1 %i.w, label %_ZN5cppgc8internal11HeapVisitorINS0_23HeapStatisticsCollectorEE8TraverseERNS0_7RawHeapE.exit, label %.lr.ph.i

_ZN5cppgc8internal11HeapVisitorINS0_23HeapStatisticsCollectorEE8TraverseERNS0_7RawHeapE.exit: ; preds = %_ZN5cppgc8internal11HeapVisitorINS0_23HeapStatisticsCollectorEE8TraverseERNS0_9BaseSpaceE.exit.i, %bb.a
  %i.x = load ptr, ptr %1, align 8                ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5cppgc8internal11HeapVisitorINS0_23HeapStatisticsCollectorEE8TraverseERNS0_7RawHeapE.exit
  %i.ab = load ptr, ptr %i.y, align 8             ; 3 uses
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = add i64 %i.ae, %i.ac
  store i64 %i.af, ptr %i.ad, align 8
  %i.ag = load ptr, ptr %i.z, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = add i64 %i.ak, %i.ai
  store i64 %i.al, ptr %i.aj, align 8
  %i.am = load ptr, ptr %i.z, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = add i64 %i.aq, %i.ao
  store i64 %i.ar, ptr %i.ap, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i

_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i: ; preds = %bb.e, %_ZN5cppgc8internal11HeapVisitorINS0_23HeapStatisticsCollectorEE8TraverseERNS0_7RawHeapE.exit
  store ptr null, ptr %i.z, align 8
  %i.as = load ptr, ptr %i.y, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_ZN5cppgc8internal12_GLOBAL__N_113FinalizeSpaceEPNS_14HeapStatisticsEPPNS2_15SpaceStatisticsEPPNS2_14PageStatisticsE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load i64, ptr %i.at, align 8
  %i.av = load i64, ptr %i.x, align 8
  %i.aw = add i64 %i.av, %i.au
  store i64 %i.aw, ptr %i.x, align 8
  %i.ax = load ptr, ptr %i.y, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = add i64 %i.bb, %i.az
  store i64 %i.bc, ptr %i.ba, align 8
  %i.bd = load ptr, ptr %i.y, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = add i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.bg, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_113FinalizeSpaceEPNS_14HeapStatisticsEPPNS2_15SpaceStatisticsEPPNS2_14PageStatisticsE.exit

_ZN5cppgc8internal12_GLOBAL__N_113FinalizeSpaceEPNS_14HeapStatisticsEPPNS2_15SpaceStatisticsEPPNS2_14PageStatisticsE.exit: ; preds = %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i, %bb.f
  store ptr null, ptr %i.y, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = call noundef i64 @_ZNK5cppgc8internal20NormalPageMemoryPool12PooledMemoryEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bl) #14 ; 2 uses
  %i.bn = load <2 x i64>, ptr %0, align 8
  %i.bo = insertelement <2 x i64> poison, i64 %i.bm, i64 0
  %i.bp = shufflevector <2 x i64> %i.bo, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bq = add <2 x i64> %i.bn, %i.bp
  store <2 x i64> %i.bq, ptr %0, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bm, ptr %i.br, align 8
  call void @_ZN5cppgc8internal30ClassNameAsHeapObjectNameScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN5cppgc8internal30ClassNameAsHeapObjectNameScopeC1ERNS0_8HeapBaseE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(512)) unnamed_addr #2

declare noundef i64 @_ZNK5cppgc8internal20NormalPageMemoryPool12PooledMemoryEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @_ZN5cppgc8internal30ClassNameAsHeapObjectNameScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN5cppgc8internal23HeapStatisticsCollector20VisitNormalPageSpaceERNS0_15NormalPageSpaceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.f = load i64, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = add i64 %i.h, %i.f
  store i64 %i.i, ptr %i.g, align 8
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, %i.l
  store i64 %i.o, ptr %i.m, align 8
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, %i.r
  store i64 %i.u, ptr %i.s, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i

_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i: ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.c, align 8
  %i.v = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN5cppgc8internal12_GLOBAL__N_113FinalizeSpaceEPNS_14HeapStatisticsEPPNS2_15SpaceStatisticsEPPNS2_14PageStatisticsE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i64, ptr %i.w, align 8
  %i.y = load i64, ptr %i.a, align 8
  %i.z = add i64 %i.y, %i.x
  store i64 %i.z, ptr %i.a, align 8
  %i.aa = load ptr, ptr %i.b, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = add i64 %i.ae, %i.ac
  store i64 %i.af, ptr %i.ad, align 8
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = add i64 %i.ak, %i.ai
  store i64 %i.al, ptr %i.aj, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_113FinalizeSpaceEPNS_14HeapStatisticsEPPNS2_15SpaceStatisticsEPPNS2_14PageStatisticsE.exit

_ZN5cppgc8internal12_GLOBAL__N_113FinalizeSpaceEPNS_14HeapStatisticsEPPNS2_15SpaceStatisticsEPPNS2_14PageStatisticsE.exit: ; preds = %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i, %bb.c
  store ptr null, ptr %i.b, align 8
  %i.am = load ptr, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load i64, ptr %i.an, align 8            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %i.ap = icmp ult i64 %i.ao, 5
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit10, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit10: ; preds = %_ZN5cppgc8internal12_GLOBAL__N_113FinalizeSpaceEPNS_14HeapStatisticsEPPNS2_15SpaceStatisticsEPPNS2_14PageStatisticsE.exit
  %i.aq = trunc nuw nsw i64 %i.ao to i8
  %i.ar = or disjoint i8 %i.aq, 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %i.as = tail call noalias noundef nonnull dereferenceable(31) ptr @_Znwm(i64 noundef 31) #15, !noalias !11 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.as, ptr noundef nonnull align 1 dereferenceable(15) @.str.2, i64 15, i1 false), !noalias !11
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 15
  store i8 %i.ar, ptr %i.at, align 1, !noalias !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i8 0, ptr %i.au, align 1, !noalias !11
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.as, ptr %3, align 8, !alias.scope !11
  store i64 30, ptr %i.av, align 8, !alias.scope !11
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 16, ptr %i.aw, align 8, !alias.scope !11
  br label %_ZN5cppgc8internal12_GLOBAL__N_122GetNormalPageSpaceNameB5cxx11Em.exit

bb.d:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_113FinalizeSpaceEPNS_14HeapStatisticsEPPNS2_15SpaceStatisticsEPPNS2_14PageStatisticsE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14, !noalias !5
  %i.ax = add i64 %i.ao, -5                       ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.ay = icmp ult i64 %i.ax, 10
  br i1 %i.ay, label %.thread.i17.i, label %.lr.ph.i.i4.i

.thread.i17.i:                                    ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.az, ptr %2, align 8, !alias.scope !12, !noalias !5
  br label %bb.m

.lr.ph.i.i4.i:                                    ; preds = %bb.d, %bb.j
  %.02229.i.i5.i = phi i64 [ %i.bg, %bb.j ], [ %i.ax, %bb.d ] ; 5 uses
  %.02328.i.i6.i = phi i32 [ %i.bh, %bb.j ], [ 1, %bb.d ] ; 4 uses
  %i.ba = icmp ult i64 %.02229.i.i5.i, 100
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i4.i
  %i.bb = add i32 %.02328.i.i6.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i7.i

bb.f:                                             ; preds = %.lr.ph.i.i4.i
  %i.bc = icmp ult i64 %.02229.i.i5.i, 1000
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = add i32 %.02328.i.i6.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i7.i

bb.h:                                             ; preds = %bb.f
  %i.be = icmp ult i64 %.02229.i.i5.i, 10000
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = add i32 %.02328.i.i6.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i7.i

bb.j:                                             ; preds = %bb.h
  %i.bg = udiv i64 %.02229.i.i5.i, 10000
  %i.bh = add i32 %.02328.i.i6.i, 4               ; 2 uses
  %i.bi = icmp ult i64 %.02229.i.i5.i, 100000
  br i1 %i.bi, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i7.i, label %.lr.ph.i.i4.i, !llvm.loop !15

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i7.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.e
  %.0.i.i8.i = phi i32 [ %i.bf, %bb.i ], [ %i.bb, %bb.e ], [ %i.bd, %bb.g ], [ %i.bh, %bb.j ] ; 3 uses
  %i.bj = zext i32 %.0.i.i8.i to i64              ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.bk, ptr %2, align 8, !alias.scope !12, !noalias !5
  %i.bl = icmp ugt i32 %.0.i.i8.i, 15
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i7.i
  %i.bm = add nuw nsw i64 %i.bj, 1
  %i.bn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #15, !noalias !5 ; 2 uses
  store ptr %i.bn, ptr %2, align 8, !alias.scope !12, !noalias !5
  store i64 %i.bj, ptr %i.bk, align 8, !alias.scope !12, !noalias !5
  br label %bb.n

bb.l:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i7.i
  switch i32 %.0.i.i8.i, label %bb.n [
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i9.i
    i32 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %.thread.i17.i
  %i.bo = phi ptr [ %i.az, %.thread.i17.i ], [ %i.bk, %bb.l ] ; 2 uses
  store i8 0, ptr %i.bo, align 1, !alias.scope !12, !noalias !5
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i9.i

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bp = phi ptr [ %i.bn, %bb.k ], [ %i.bk, %bb.l ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bp, i8 0, i64 %i.bj, i1 false), !noalias !5
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i9.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.bq = phi i64 [ 0, %bb.l ], [ 1, %bb.m ], [ %i.bj, %bb.n ] ; 2 uses
  %i.br = phi ptr [ %i.bk, %bb.l ], [ %i.bo, %bb.m ], [ %i.bp, %bb.n ]
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.bq, ptr %i.bs, align 8, !alias.scope !12, !noalias !5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !noalias !5
  %i.bu = load ptr, ptr %2, align 8, !alias.scope !12, !noalias !5 ; 4 uses
  %i.bv = icmp ugt i64 %i.ax, 99
  br i1 %i.bv, label %.lr.ph.preheader.i.i13.i, label %._crit_edge.i.i10.i

.lr.ph.preheader.i.i13.i:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i9.i
  %i.bw = load i64, ptr %i.bs, align 8, !alias.scope !12, !noalias !5
  %i.bx = trunc i64 %i.bw to i32
  %i.by = add i32 %i.bx, -1
  br label %.lr.ph.i2.i14.i

.lr.ph.i2.i14.i:                                  ; preds = %.lr.ph.i2.i14.i, %.lr.ph.preheader.i.i13.i
  %.020.i.i15.i = phi i64 [ %i.cb, %.lr.ph.i2.i14.i ], [ %i.ax, %.lr.ph.preheader.i.i13.i ] ; 3 uses
  %.01819.i.i16.i = phi i32 [ %i.cl, %.lr.ph.i2.i14.i ], [ %i.by, %.lr.ph.preheader.i.i13.i ] ; 3 uses
  %i.bz = urem i64 %.020.i.i15.i, 100
  %i.ca = shl nuw nsw i64 %i.bz, 1
  %i.cb = udiv i64 %.020.i.i15.i, 100             ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ca ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !17
  %i.cf = zext i32 %.01819.i.i16.i to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.cf
  store i8 %i.ce, ptr %i.cg, align 1, !noalias !5
  %i.ch = load i8, ptr %i.cc, align 2, !noalias !17
  %i.ci = add i32 %.01819.i.i16.i, -1
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.cj
  store i8 %i.ch, ptr %i.ck, align 1, !noalias !5
  %i.cl = add i32 %.01819.i.i16.i, -2
  %i.cm = icmp ugt i64 %.020.i.i15.i, 9999
  br i1 %i.cm, label %.lr.ph.i2.i14.i, label %._crit_edge.i.i10.i, !llvm.loop !18

end_hunk_0
begin_hunk_1_@_ZN5cppgc8internal23HeapStatisticsCollector20VisitNormalPageSpaceERNS0_15NormalPageSpaceE:bb.a

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dt, ptr align 1 %i.cz, i64 %i.cw, i1 false), !noalias !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i: ; preds = %bb.ac, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.dv = icmp ult i64 %i.cw, 16
  call void @llvm.assume(i1 %i.dv), !noalias !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.dw = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dw) #18, !noalias !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  store ptr %i.ds, ptr %2, align 8, !noalias !22
  store i64 %.0.i, ptr %i.da, align 8, !noalias !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit
  store i64 %i.cy, ptr %i.bs, align 8, !noalias !22
  %i.dx = load ptr, ptr %2, align 8, !noalias !22
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.cy
  store i8 0, ptr %i.dy, align 1, !noalias !22
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.dz, ptr %3, align 8, !alias.scope !22
  %i.ea = load ptr, ptr %2, align 8               ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.da
  br i1 %i.eb, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit
  %i.ec = load i64, ptr %i.bs, align 8            ; 3 uses
  %i.ed = icmp ult i64 %i.ec, 16
  call void @llvm.assume(i1 %i.ed)
  %i.ee = add nuw nsw i64 %i.ec, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dz, ptr noundef nonnull align 8 dereferenceable(1) %i.da, i64 %i.ee, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit
  store ptr %i.ea, ptr %3, align 8, !alias.scope !22
  %i.ef = load i64, ptr %i.da, align 8
  store i64 %i.ef, ptr %i.dz, align 8, !alias.scope !22
  %.pre.i21.i = load i64, ptr %i.bs, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i, %bb.ad
  %i.eg = phi i64 [ %i.ec, %bb.ad ], [ %.pre.i21.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i ]
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.eg, ptr %i.eh, align 8, !alias.scope !22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14, !noalias !5
  br label %_ZN5cppgc8internal12_GLOBAL__N_122GetNormalPageSpaceNameB5cxx11Em.exit

_ZN5cppgc8internal12_GLOBAL__N_122GetNormalPageSpaceNameB5cxx11Em.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i
  %i.ei = call fastcc noundef ptr @_ZN5cppgc8internal12_GLOBAL__N_115InitializeSpaceEPNS_14HeapStatisticsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %i.am, ptr noundef %3) ; 2 uses
  store ptr %i.ei, ptr %i.b, align 8
  %i.ej = load ptr, ptr %3, align 8               ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5cppgc8internal12_GLOBAL__N_122GetNormalPageSpaceNameB5cxx11Em.exit
  %i.em = load i64, ptr %i.ek, align 8
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #18
  %.pre = load ptr, ptr %i.b, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5cppgc8internal12_GLOBAL__N_122GetNormalPageSpaceNameB5cxx11Em.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.eo = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ei, %_ZN5cppgc8internal12_GLOBAL__N_122GetNormalPageSpaceNameB5cxx11Em.exit ]
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 80
  call void @_ZN5cppgc8internal8FreeList17CollectStatisticsERNS_14HeapStatistics18FreeListStatisticsE(ptr noundef nonnull align 8 dereferenceable(280) %i.ep, ptr noundef nonnull align 8 dereferenceable(72) %i.eq) #14
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull ptr @_ZN5cppgc8internal12_GLOBAL__N_115InitializeSpaceEPNS_14HeapStatisticsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, i8 0, i64 120, i1 false)
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 152 ; 2 uses
  store ptr %i.i, ptr %i.a, align 8
  br label %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr %i.b)
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %.pre, %bb.c ] ; 5 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -152 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -136 ; 4 uses
  %i.o = icmp eq ptr %i.m, %i.n
  %i.p = load ptr, ptr %1, align 8                ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.r = icmp eq ptr %i.p, %i.q                   ; 2 uses
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  br i1 %i.r, label %bb.d, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  br i1 %i.r, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %.not21.i = icmp eq ptr %1, %i.l
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.e, !prof !24

bb.e:                                             ; preds = %bb.d
  switch i64 %i.t, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.p, align 1
  store i8 %i.v, ptr %i.m, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.w = load i64, ptr %i.s, align 8              ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.k, i64 -144
  store i64 %i.w, ptr %i.x, align 8
  %i.y = load ptr, ptr %i.l, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1
  %.pre.i5 = load ptr, ptr %1, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = getelementptr inbounds i8, ptr %i.k, i64 -144
  store ptr %i.p, ptr %i.l, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  store i64 %i.ac, ptr %i.aa, align 8
  %i.ad = load i64, ptr %i.q, align 8
  store i64 %i.ad, ptr %i.n, align 8
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ae = load i64, ptr %i.n, align 8
  store ptr %i.p, ptr %i.l, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %i.k, i64 -144
  store i64 %i.ag, ptr %i.ah, align 8
  %i.ai = load i64, ptr %i.q, align 8
  store i64 %i.ai, ptr %i.n, align 8
  %.not.i4 = icmp eq ptr %i.m, null
  br i1 %.not.i4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.m, ptr %1, align 8
  store i64 %i.ae, ptr %i.q, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.q, ptr %1, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.h, %bb.i
  %i.aj = phi ptr [ %i.m, %bb.h ], [ %i.q, %bb.i ], [ %i.p, %bb.d ], [ %.pre.i5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %i.aj, align 1
  ret ptr %i.l
}

declare void @_ZN5cppgc8internal8FreeList17CollectStatisticsERNS_14HeapStatistics18FreeListStatisticsE(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN5cppgc8internal23HeapStatisticsCollector19VisitLargePageSpaceERNS0_14LargePageSpaceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree nonnull readnone align 8 captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.f = load i64, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = add i64 %i.h, %i.f
  store i64 %i.i, ptr %i.g, align 8
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, %i.l
  store i64 %i.o, ptr %i.m, align 8
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, %i.r
  store i64 %i.u, ptr %i.s, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i

_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i: ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.c, align 8
  %i.v = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN5cppgc8internal12_GLOBAL__N_113FinalizeSpaceEPNS_14HeapStatisticsEPPNS2_15SpaceStatisticsEPPNS2_14PageStatisticsE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i64, ptr %i.w, align 8
  %i.y = load i64, ptr %i.a, align 8
  %i.z = add i64 %i.y, %i.x
  store i64 %i.z, ptr %i.a, align 8
  %i.aa = load ptr, ptr %i.b, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = add i64 %i.ae, %i.ac
  store i64 %i.af, ptr %i.ad, align 8
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = add i64 %i.ak, %i.ai
  store i64 %i.al, ptr %i.aj, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_113FinalizeSpaceEPNS_14HeapStatisticsEPPNS2_15SpaceStatisticsEPPNS2_14PageStatisticsE.exit

_ZN5cppgc8internal12_GLOBAL__N_113FinalizeSpaceEPNS_14HeapStatisticsEPPNS2_15SpaceStatisticsEPPNS2_14PageStatisticsE.exit: ; preds = %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i, %bb.c
  store ptr null, ptr %i.b, align 8
  %i.am = load ptr, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.an, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.an, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 14, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 30
  store i8 0, ptr %i.ap, align 2
  %i.aq = call fastcc noundef ptr @_ZN5cppgc8internal12_GLOBAL__N_115InitializeSpaceEPNS_14HeapStatisticsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %i.am, ptr noundef %2)
  store ptr %i.aq, ptr %i.b, align 8
  %i.ar = load ptr, ptr %2, align 8               ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.an
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5cppgc8internal12_GLOBAL__N_113FinalizeSpaceEPNS_14HeapStatisticsEPPNS2_15SpaceStatisticsEPPNS2_14PageStatisticsE.exit
  %i.at = load i64, ptr %i.an, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5cppgc8internal12_GLOBAL__N_113FinalizeSpaceEPNS_14HeapStatisticsEPPNS2_15SpaceStatisticsEPPNS2_14PageStatisticsE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN5cppgc8internal23HeapStatisticsCollector15VisitNormalPageERNS0_10NormalPageE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.e = load i64, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, %i.k
  store i64 %i.n, ptr %i.l, align 8
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, %i.q
  store i64 %i.t, ptr %i.r, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit

_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit: ; preds = %bb.a, %bb.b
  store ptr null, ptr %i.b, align 8
  %i.u = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.y = load ptr, ptr %i.x, align 8
  %.not.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, i8 0, i64 48, i1 false)
  %i.z = load ptr, ptr %i.v, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  store ptr %i.aa, ptr %i.v, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_114InitializePageEPNS_14HeapStatistics15SpaceStatisticsE.exit

bb.d:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  tail call void @_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr %i.w)
  %.pre.i = load ptr, ptr %i.v, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_114InitializePageEPNS_14HeapStatistics15SpaceStatisticsE.exit

_ZN5cppgc8internal12_GLOBAL__N_114InitializePageEPNS_14HeapStatistics15SpaceStatisticsE.exit: ; preds = %bb.c, %bb.d
  %i.ac = phi ptr [ %i.aa, %bb.c ], [ %.pre.i, %bb.d ]
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -48 ; 2 uses
  store ptr %i.ad, ptr %i.b, align 8
  store i64 131072, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = sub i64 131072, %i.af
  %i.ah = load ptr, ptr %i.b, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ag, ptr %i.ai, align 8
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN5cppgc8internal23HeapStatisticsCollector14VisitLargePageERNS0_9LargePageE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.e = load i64, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, %i.k
  store i64 %i.n, ptr %i.l, align 8
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, %i.q
  store i64 %i.t, ptr %i.r, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit

_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit: ; preds = %bb.a, %bb.b
  store ptr null, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i64, ptr %i.u, align 8
  %i.w = tail call noundef i64 @_ZN5cppgc8internal9LargePage14AllocationSizeEm(i64 noundef %i.v) #14 ; 2 uses
  %i.x = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, i8 0, i64 48, i1 false)
  %i.ac = load ptr, ptr %i.y, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 2 uses
  store ptr %i.ad, ptr %i.y, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_114InitializePageEPNS_14HeapStatistics15SpaceStatisticsE.exit

bb.d:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  tail call void @_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr %i.z)
  %.pre.i = load ptr, ptr %i.y, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_114InitializePageEPNS_14HeapStatistics15SpaceStatisticsE.exit

_ZN5cppgc8internal12_GLOBAL__N_114InitializePageEPNS_14HeapStatistics15SpaceStatisticsE.exit: ; preds = %bb.c, %bb.d
  %i.af = phi ptr [ %i.ad, %bb.c ], [ %.pre.i, %bb.d ]
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -48 ; 2 uses
  store ptr %i.ag, ptr %i.b, align 8
  store i64 %i.w, ptr %i.ag, align 8
  %i.ah = load ptr, ptr %i.b, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.w, ptr %i.ai, align 8
  ret i1 false
}

declare noundef i64 @_ZN5cppgc8internal9LargePage14AllocationSizeEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN5cppgc8internal23HeapStatisticsCollector21VisitHeapObjectHeaderERNS0_16HeapObjectHeaderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i16, ptr %i.a, align 4
  %i.c = icmp ult i16 %i.b, 4
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.e = load i16, ptr %i.d, align 2              ; 2 uses
  %i.f = icmp ult i16 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %1 to i64
  %i.h = and i64 %i.g, -131072
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load i64, ptr %i.j, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = lshr i16 %i.e, 1
  %i.m = zext nneg i16 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi i64 [ %i.k, %bb.c ], [ %i.n, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, %i.o
  store i64 %i.t, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret i1 true
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5cppgc14HeapStatistics15SpaceStatisticsD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #18
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorImSaImEED2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #18
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i

_ZNSt6vectorImSaImEED2Ev.exit2.i:                 ; preds = %bb.c, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.p = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3.i, label %_ZN5cppgc14HeapStatistics18FreeListStatisticsD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #18
  br label %_ZN5cppgc14HeapStatistics18FreeListStatisticsD2Ev.exit

_ZN5cppgc14HeapStatistics18FreeListStatisticsD2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5cppgc14HeapStatistics14PageStatisticsEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5cppgc14HeapStatistics18FreeListStatisticsD2Ev.exit, %_ZSt8_DestroyIN5cppgc14HeapStatistics14PageStatisticsEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ag, %_ZSt8_DestroyIN5cppgc14HeapStatistics14PageStatisticsEEvPT_.exit.i.i.i ], [ %i.w, %_ZN5cppgc14HeapStatistics18FreeListStatisticsD2Ev.exit ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5cppgc14HeapStatistics14PageStatisticsEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #18
  br label %_ZSt8_DestroyIN5cppgc14HeapStatistics14PageStatisticsEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5cppgc14HeapStatistics14PageStatisticsEEvPT_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %i.y
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5cppgc14HeapStatistics14PageStatisticsEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN5cppgc14HeapStatistics14PageStatisticsEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5cppgc14HeapStatistics14PageStatisticsEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.v, align 8
  br label %_ZSt8_DestroyIPN5cppgc14HeapStatistics14PageStatisticsEEvT_S4_.exit.i

_ZSt8_DestroyIPN5cppgc14HeapStatistics14PageStatisticsEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN5cppgc14HeapStatistics14PageStatisticsEEvT_S4_.exitthread-pre-split.i, %_ZN5cppgc14HeapStatistics18FreeListStatisticsD2Ev.exit
  %i.ah = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5cppgc14HeapStatistics14PageStatisticsEEvT_S4_.exitthread-pre-split.i ], [ %i.w, %_ZN5cppgc14HeapStatistics18FreeListStatisticsD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN5cppgc14HeapStatistics14PageStatisticsEEvT_S4_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #18
  br label %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EED2Ev.exit

_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5cppgc14HeapStatistics14PageStatisticsEEvT_S4_.exit.i, %bb.f
  %i.an = load ptr, ptr %0, align 8               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775752
  br i1 %i.g, label %bb.b, label %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_M_allocateEm.exit: ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 152                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %2, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %2        ; 2 uses
  %4 = icmp ult i64 %3, %2
  %5 = tail call i64 @llvm.umin.i64(i64 %3, i64 60680079189834051)
  %6 = select i1 %4, i64 60680079189834051, i64 %5 ; 3 uses
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %7, %i.e
  %.not.i = icmp ne i64 %6, 0
  tail call void @llvm.assume(i1 %.not.i)
  %9 = mul nuw nsw i64 %6, 152
  %10 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %9) #15 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 %8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.k, i8 0, i64 120, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %10, %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_M_allocateEm.exit ] ; 14 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_M_allocateEm.exit ] ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.l, ptr %.012.i.i.i, align 8, !alias.scope !26, !noalias !29
  %i.m = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !29, !noalias !26 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !29, !noalias !26 ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false), !alias.scope !31
  br label %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.m, ptr %.012.i.i.i, align 8, !alias.scope !26, !noalias !29
  %i.t = load i64, ptr %i.n, align 8, !alias.scope !29, !noalias !26
  store i64 %i.t, ptr %i.l, align 8, !alias.scope !26, !noalias !29
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !29, !noalias !26
  br label %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.c
  %i.u = phi i64 [ %i.q, %bb.c ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.u, ptr %i.w, align 8, !alias.scope !26, !noalias !29
  store ptr %i.n, ptr %.0911.i.i.i, align 8, !alias.scope !29, !noalias !26
  store i64 0, ptr %i.v, align 8, !alias.scope !29, !noalias !26
  store i8 0, ptr %i.n, align 8, !alias.scope !29, !noalias !26
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !alias.scope !31
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !alias.scope !29, !noalias !26
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !alias.scope !26, !noalias !29
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !29, !noalias !26
  store ptr %i.ae, ptr %i.ac, align 8, !alias.scope !26, !noalias !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false), !alias.scope !29, !noalias !26
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.ag, align 8, !alias.scope !29, !noalias !26
  store <2 x ptr> %i.ah, ptr %i.af, align 8, !alias.scope !26, !noalias !29
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !29, !noalias !26
  store ptr %i.ak, ptr %i.ai, align 8, !alias.scope !26, !noalias !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, i8 0, i64 24, i1 false), !alias.scope !29, !noalias !26
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104 ; 2 uses
  %i.an = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !29, !noalias !26
  store <2 x ptr> %i.an, ptr %i.al, align 8, !alias.scope !26, !noalias !29
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 120
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !29, !noalias !26
  store ptr %i.aq, ptr %i.ao, align 8, !alias.scope !26, !noalias !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false), !alias.scope !29, !noalias !26
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 128
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 128 ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.as, align 8, !alias.scope !29, !noalias !26
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !alias.scope !26, !noalias !29
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 144
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 144
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !29, !noalias !26
  store ptr %i.aw, ptr %i.au, align 8, !alias.scope !26, !noalias !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false), !alias.scope !29, !noalias !26
  tail call void @_ZN5cppgc14HeapStatistics15SpaceStatisticsD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %.0911.i.i.i) #14
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 152 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 152 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !32

_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i = phi ptr [ %10, %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_M_allocateEm.exit ], [ %i.ay, %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 152 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i17 = phi ptr [ %i.cn, %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.az, %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 14 uses
  %.0911.i.i.i18 = phi ptr [ %i.cm, %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16 ; 3 uses
  store ptr %i.ba, ptr %.012.i.i.i17, align 8, !alias.scope !33, !noalias !36
  %i.bb = load ptr, ptr %.0911.i.i.i18, align 8, !alias.scope !36, !noalias !33 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i19

bb.d:                                             ; preds = %.lr.ph.i.i.i16
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !36, !noalias !33 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false), !alias.scope !38
  br label %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i19: ; preds = %.lr.ph.i.i.i16
  store ptr %i.bb, ptr %.012.i.i.i17, align 8, !alias.scope !33, !noalias !36
  %i.bi = load i64, ptr %i.bc, align 8, !alias.scope !36, !noalias !33
  store i64 %i.bi, ptr %i.ba, align 8, !alias.scope !33, !noalias !36
  %.phi.trans.insert.i.i.i.i20 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %.pre.i.i.i.i21 = load i64, ptr %.phi.trans.insert.i.i.i.i20, align 8, !alias.scope !36, !noalias !33
  br label %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i19, %bb.d
  %i.bj = phi i64 [ %i.bf, %bb.d ], [ %.pre.i.i.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i19 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 8
  store i64 %i.bj, ptr %i.bl, align 8, !alias.scope !33, !noalias !36
  store ptr %i.bc, ptr %.0911.i.i.i18, align 8, !alias.scope !36, !noalias !33
  store i64 0, ptr %i.bk, align 8, !alias.scope !36, !noalias !33
  store i8 0, ptr %i.bc, align 8, !alias.scope !36, !noalias !33
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !alias.scope !38
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 56 ; 2 uses
  %i.bq = load <2 x ptr>, ptr %i.bp, align 8, !alias.scope !36, !noalias !33
  store <2 x ptr> %i.bq, ptr %i.bo, align 8, !alias.scope !33, !noalias !36
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 72
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !36, !noalias !33
  store ptr %i.bt, ptr %i.br, align 8, !alias.scope !33, !noalias !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false), !alias.scope !36, !noalias !33
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 80
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 80 ; 2 uses
  %i.bw = load <2 x ptr>, ptr %i.bv, align 8, !alias.scope !36, !noalias !33
  store <2 x ptr> %i.bw, ptr %i.bu, align 8, !alias.scope !33, !noalias !36
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 96
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 96
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !36, !noalias !33
  store ptr %i.bz, ptr %i.bx, align 8, !alias.scope !33, !noalias !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bv, i8 0, i64 24, i1 false), !alias.scope !36, !noalias !33
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 104
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 104 ; 2 uses
  %i.cc = load <2 x ptr>, ptr %i.cb, align 8, !alias.scope !36, !noalias !33
  store <2 x ptr> %i.cc, ptr %i.ca, align 8, !alias.scope !33, !noalias !36
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 120
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 120
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !36, !noalias !33
  store ptr %i.cf, ptr %i.cd, align 8, !alias.scope !33, !noalias !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i8 0, i64 24, i1 false), !alias.scope !36, !noalias !33
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 128
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 128 ; 2 uses
  %i.ci = load <2 x ptr>, ptr %i.ch, align 8, !alias.scope !36, !noalias !33
  store <2 x ptr> %i.ci, ptr %i.cg, align 8, !alias.scope !33, !noalias !36
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 144
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 144
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !36, !noalias !33
  store ptr %i.cl, ptr %i.cj, align 8, !alias.scope !33, !noalias !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false), !alias.scope !36, !noalias !33
  tail call void @_ZN5cppgc14HeapStatistics15SpaceStatisticsD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %.0911.i.i.i18) #14
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 152 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 152 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.cm, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25, label %.lr.ph.i.i.i16, !llvm.loop !32

_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25: ; preds = %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.az, %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.cn, %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cr) #18
  br label %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25, %bb.e
  store ptr %10, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8
  %i.cs = getelementptr inbounds nuw [152 x i8], ptr %10, i64 %6
  store ptr %i.cs, ptr %i.co, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

_ZNKSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #15 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i8 0, i64 48, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 24, i1 false), !alias.scope !44
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !alias.scope !42, !noalias !39
  store <2 x ptr> %i.t, ptr %i.r, align 8, !alias.scope !39, !noalias !42
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !42, !noalias !39
  store ptr %i.w, ptr %i.u, align 8, !alias.scope !39, !noalias !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false), !alias.scope !42, !noalias !39
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !45

_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.y, %.lr.ph.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.ah, %.lr.ph.i.i.i16 ], [ %i.z, %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i18 = phi ptr [ %i.ag, %.lr.ph.i.i.i16 ], [ %1, %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i17, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i18, i64 24, i1 false), !alias.scope !51
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 24 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !alias.scope !49, !noalias !46
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !alias.scope !46, !noalias !49
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !49, !noalias !46
  store ptr %i.af, ptr %i.ad, align 8, !alias.scope !46, !noalias !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !alias.scope !49, !noalias !46
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 48 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, label %.lr.ph.i.i.i16, !llvm.loop !45

_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21: ; preds = %.lr.ph.i.i.i16, %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i20 = phi ptr [ %i.z, %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ah, %.lr.ph.i.i.i16 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #18
  br label %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i20, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5cppgc8internal11HeapVisitorINS0_23HeapStatisticsCollectorEE8TraverseERNS0_8BasePageE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.cppgc::internal::NormalPage::IteratorImpl", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8
  %i.c = icmp eq i8 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null            ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.h = load i64, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, %i.h
  store i64 %i.k, ptr %i.i, align 8
  %i.l = load ptr, ptr %i.e, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = add i64 %i.p, %i.n
  store i64 %i.q, ptr %i.o, align 8
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = add i64 %i.v, %i.t
  store i64 %i.w, ptr %i.u, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i.i

_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i.i: ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.e, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i64, ptr %i.x, align 8
  %i.z = tail call noundef i64 @_ZN5cppgc8internal9LargePage14AllocationSizeEm(i64 noundef %i.y) #14 ; 2 uses
  %i.aa = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i8 0, i64 48, i1 false)
  %i.af = load ptr, ptr %i.ab, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  store ptr %i.ag, ptr %i.ab, align 8
  br label %bb.f

bb.e:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  tail call void @_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr %i.ac)
  %.pre.i.i.i = load ptr, ptr %i.ab, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ai = phi ptr [ %i.ag, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -48 ; 2 uses
  store ptr %i.aj, ptr %i.e, align 8
  store i64 %i.z, ptr %i.aj, align 8
  %i.ak = load ptr, ptr %i.e, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.z, ptr %i.al, align 8
  %i.am = tail call noundef ptr @_ZN5cppgc8internal9LargePage12ObjectHeaderEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #14 ; 3 uses
end_hunk_1
