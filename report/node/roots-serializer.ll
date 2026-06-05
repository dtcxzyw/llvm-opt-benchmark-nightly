inline.NumInlined: 214
inline.NumDeleted: 169
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.v8::internal::detail::TaggedOperatorArrowRef" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::HeapObject" = type { %"class.v8::internal::TaggedImpl" }
%"class.v8::internal::TaggedImpl" = type { i64 }

$_ZN2v88internal15RootsSerializerD2Ev = comdat any

$_ZN2v88internal15RootsSerializerD0Ev = comdat any

$_ZN2v88internal11RootVisitor16VisitRootPointerENS0_4RootEPKcNS0_14FullObjectSlotE = comdat any

$_ZN2v88internal11RootVisitor17VisitRootPointersENS0_4RootEPKcNS0_21OffHeapFullObjectSlotES5_ = comdat any

$_ZN2v88internal11RootVisitor16VisitRunningCodeENS0_14FullObjectSlotES2_ = comdat any

$_ZNK2v88internal11RootVisitor9collectorEv = comdat any

$_ZN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEED2Ev = comdat any

$_ZN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEED0Ev = comdat any

$_ZN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEE15NewPointerArrayEmm = comdat any

$_ZN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEE18DeletePointerArrayEPmm = comdat any

$_ZN2v88internal10SerializerD2Ev = comdat any

$_ZN2v88internal11IdentityMapIPSt6vectorIiSaIiEENS_4base23DefaultAllocationPolicyEED2Ev = comdat any

$_ZN2v88internal11IdentityMapIPSt6vectorIiSaIiEENS_4base23DefaultAllocationPolicyEED0Ev = comdat any

$_ZN2v88internal11IdentityMapIPSt6vectorIiSaIiEENS_4base23DefaultAllocationPolicyEE15NewPointerArrayEmm = comdat any

$_ZN2v88internal11IdentityMapIPSt6vectorIiSaIiEENS_4base23DefaultAllocationPolicyEE18DeletePointerArrayEPmm = comdat any

$_ZN2v88internal11IdentityMapINS0_19SerializerReferenceENS_4base23DefaultAllocationPolicyEED2Ev = comdat any

$_ZN2v88internal11IdentityMapINS0_19SerializerReferenceENS_4base23DefaultAllocationPolicyEED0Ev = comdat any

$_ZN2v88internal11IdentityMapINS0_19SerializerReferenceENS_4base23DefaultAllocationPolicyEE15NewPointerArrayEmm = comdat any

$_ZN2v88internal11IdentityMapINS0_19SerializerReferenceENS_4base23DefaultAllocationPolicyEE18DeletePointerArrayEPmm = comdat any

$_ZTVN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEEE = comdat any

$_ZTVN2v88internal11IdentityMapIPSt6vectorIiSaIiEENS_4base23DefaultAllocationPolicyEEE = comdat any

$_ZTVN2v88internal11IdentityMapINS0_19SerializerReferenceENS_4base23DefaultAllocationPolicyEEE = comdat any

@_ZTVN2v88internal15RootsSerializerE = hidden unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal15RootsSerializerD2Ev, ptr @_ZN2v88internal15RootsSerializerD0Ev, ptr @_ZN2v88internal15RootsSerializer17VisitRootPointersENS0_4RootEPKcNS0_14FullObjectSlotES5_, ptr @_ZN2v88internal11RootVisitor16VisitRootPointerENS0_4RootEPKcNS0_14FullObjectSlotE, ptr @_ZN2v88internal11RootVisitor17VisitRootPointersENS0_4RootEPKcNS0_21OffHeapFullObjectSlotES5_, ptr @_ZN2v88internal11RootVisitor16VisitRunningCodeENS0_14FullObjectSlotES2_, ptr @_ZN2v88internal15RootsSerializer11SynchronizeENS0_22VisitorSynchronization7SyncTagE, ptr @_ZNK2v88internal11RootVisitor9collectorEv, ptr @__cxa_pure_virtual, ptr @_ZN2v88internal10Serializer14MustBeDeferredENS0_6TaggedINS0_10HeapObjectEEE] }, align 8
@_ZTVN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEEE = linkonce_odr hidden unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEED2Ev, ptr @_ZN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEED0Ev, ptr @_ZN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEE15NewPointerArrayEmm, ptr @_ZN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEE18DeletePointerArrayEPmm] }, comdat, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN2v88internal10SerializerE = external unnamed_addr constant { [12 x ptr] }, align 8
@_ZTVN2v88internal11IdentityMapIPSt6vectorIiSaIiEENS_4base23DefaultAllocationPolicyEEE = linkonce_odr hidden unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal11IdentityMapIPSt6vectorIiSaIiEENS_4base23DefaultAllocationPolicyEED2Ev, ptr @_ZN2v88internal11IdentityMapIPSt6vectorIiSaIiEENS_4base23DefaultAllocationPolicyEED0Ev, ptr @_ZN2v88internal11IdentityMapIPSt6vectorIiSaIiEENS_4base23DefaultAllocationPolicyEE15NewPointerArrayEmm, ptr @_ZN2v88internal11IdentityMapIPSt6vectorIiSaIiEENS_4base23DefaultAllocationPolicyEE18DeletePointerArrayEPmm] }, comdat, align 8
@_ZTVN2v88internal11IdentityMapINS0_19SerializerReferenceENS_4base23DefaultAllocationPolicyEEE = linkonce_odr hidden unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal11IdentityMapINS0_19SerializerReferenceENS_4base23DefaultAllocationPolicyEED2Ev, ptr @_ZN2v88internal11IdentityMapINS0_19SerializerReferenceENS_4base23DefaultAllocationPolicyEED0Ev, ptr @_ZN2v88internal11IdentityMapINS0_19SerializerReferenceENS_4base23DefaultAllocationPolicyEE15NewPointerArrayEmm, ptr @_ZN2v88internal11IdentityMapINS0_19SerializerReferenceENS_4base23DefaultAllocationPolicyEE18DeletePointerArrayEPmm] }, comdat, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"bitset::set\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"%s: __position (which is %zu) >= _Nb (which is %zu)\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15RootsSerializerC2EPNS0_7IsolateENS_4base5FlagsINS0_8Snapshot14SerializerFlagEiiEENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(833) %0, ptr noundef %1, i32 %2, i16 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal10SerializerC2EPNS0_7IsolateENS_4base5FlagsINS0_8Snapshot14SerializerFlagEiiEE(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef %1, i32 %2) #14
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN2v88internal15RootsSerializerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i16 %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, i8 0, i64 144, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 55464
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 768
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 776
  store i32 -1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 780
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(37) %i.g, i8 0, i64 37, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEEE, i64 16), ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 824
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 832
  store i8 1, ptr %i.i, align 8
  %i.j = zext i16 %3 to i64                       ; 2 uses
  %.not = icmp eq i16 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.j, 1
  %i.k = icmp eq i16 %3, 1
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.j, 65534
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.08.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod9 = trunc i16 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.l = lshr i64 %.08.epil.init, 6
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.l ; 2 uses
  %i.n = and i64 %.08.epil.init, 63
  %i.o = shl nuw i64 1, %i.n
  %i.p = load i64, ptr %i.m, align 8
  %i.q = or i64 %i.p, %i.o
  store i64 %i.q, ptr %i.m, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.08 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.r = lshr i64 %.08, 6
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.r ; 2 uses
  %i.t = and i64 %.08, 62
  %i.u = shl nuw nsw i64 1, %i.t
  %i.v = load i64, ptr %i.s, align 8
  %i.w = or i64 %i.v, %i.u
  store i64 %i.w, ptr %i.s, align 8
  %i.x = lshr i64 %.08, 6
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.x ; 2 uses
  %i.z = and i64 %.08, 62
  %i.aa = shl nuw i64 2, %i.z
  %i.ab = load i64, ptr %i.y, align 8
  %i.ac = or i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %i.y, align 8
  %i.ad = add nuw nsw i64 %.08, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !5
}

declare void @_ZN2v88internal10SerializerC2EPNS0_7IsolateENS_4base5FlagsINS0_8Snapshot14SerializerFlagEiiEE(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef, i32) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal15RootsSerializer22SerializeInObjectCacheENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(833) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.b = load i64, ptr %1, align 8
  %i.c = tail call { ptr, i8 } @_ZN2v88internal15IdentityMapBase17FindOrInsertEntryEm(ptr noundef nonnull align 8 dereferenceable(76) %i.a, i64 noundef %i.b) #14 ; 2 uses
  %i.d = extractvalue { ptr, i8 } %i.c, 1
  %i.e = extractvalue { ptr, i8 } %i.c, 0         ; 2 uses
  %i.f = trunc i8 %i.d to i1
  br i1 %i.f, label %_ZN2v88internal19ObjectCacheIndexMap14LookupOrInsertENS0_6TaggedINS0_10HeapObjectEEEPi.exit.thread, label %bb.b

_ZN2v88internal19ObjectCacheIndexMap14LookupOrInsertENS0_6TaggedINS0_10HeapObjectEEEPi.exit.thread: ; preds = %bb.a
  %.pre.i = load i32, ptr %i.e, align 4
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 3 uses
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8
  store i32 %i.h, ptr %i.e, align 4
  tail call void @_ZN2v88internal10Serializer15SerializeObjectENS0_6HandleINS0_10HeapObjectEEENS0_22SerializerDeserializer8SlotTypeE(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr nonnull %1, i32 noundef 0) #14
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal19ObjectCacheIndexMap14LookupOrInsertENS0_6TaggedINS0_10HeapObjectEEEPi.exit.thread, %bb.b
  %i.j = phi i32 [ %.pre.i, %_ZN2v88internal19ObjectCacheIndexMap14LookupOrInsertENS0_6TaggedINS0_10HeapObjectEEEPi.exit.thread ], [ %i.h, %bb.b ]
  ret i32 %i.j
}

declare void @_ZN2v88internal10Serializer15SerializeObjectENS0_6HandleINS0_10HeapObjectEEENS0_22SerializerDeserializer8SlotTypeE(ptr noundef nonnull align 8 dereferenceable(600), ptr, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15RootsSerializer11SynchronizeENS0_22VisitorSynchronization7SyncTagE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(833) %0, i32 %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 11, ptr %i.c, align 1
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %i.b, align 8
  br label %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 8 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #15
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i, %i.k  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #16 ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 %i.k ; 2 uses
  store i8 11, ptr %3, align 1
  %4 = icmp sgt i64 %i.k, 0
  br i1 %4, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr align 1 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #17
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %2, ptr %i.a, align 8
  store ptr %i.q, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  store ptr %i.r, ptr %i.d, align 8
  br label %_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit

_ZN2v88internal16SnapshotByteSink3PutEhPKc.exit:  ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15RootsSerializer17VisitRootPointersENS0_4RootEPKcNS0_14FullObjectSlotES5_(ptr noundef nonnull align 8 dereferenceable(833) %0, i32 noundef %1, ptr noundef %2, i64 %3, i64 %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.f = load i16, ptr %i.e, align 8
  %i.g = zext i16 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = add i64 %i.h, %i.d
  %i.j = icmp eq i64 %3, %i.i
  br i1 %i.j, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.k = icmp ult i64 %3, %4
  br i1 %i.k, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 608
  tail call void @_ZN2v88internal10Serializer19SerializeRootObjectENS0_14FullObjectSlotE(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 %3) #14
  %i.m = sub i64 %3, %i.d                         ; 3 uses
  %i.n = lshr i64 %i.m, 3                         ; 2 uses
  %i.o = icmp ugt i64 %i.m, 9199
  br i1 %i.o, label %._crit_edge, label %_ZNSt6bitsetILm1150EE3setEmb.exit

bb.b:                                             ; preds = %_ZNSt6bitsetILm1150EE3setEmb.exit
  tail call void @_ZN2v88internal10Serializer19SerializeRootObjectENS0_14FullObjectSlotE(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 %i.aa) #14
  %i.p = sub i64 %i.aa, %i.d                      ; 3 uses
  %i.q = lshr i64 %i.p, 3                         ; 2 uses
  %i.r = icmp ugt i64 %i.p, 9199
  br i1 %i.r, label %._crit_edge, label %_ZNSt6bitsetILm1150EE3setEmb.exit, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.n, %.lr.ph ], [ %i.q, %bb.b ]
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i64 noundef %.lcssa, i64 noundef 1150) #15
  unreachable

_ZNSt6bitsetILm1150EE3setEmb.exit:                ; preds = %.lr.ph, %bb.b
  %i.s = phi i64 [ %i.q, %bb.b ], [ %i.n, %.lr.ph ]
  %i.t = phi i64 [ %i.p, %bb.b ], [ %i.m, %.lr.ph ]
  %.sroa.07.01825 = phi i64 [ %i.aa, %bb.b ], [ %3, %.lr.ph ]
  %i.u = and i64 %i.s, 63
  %i.v = shl nuw i64 1, %i.u
  %i.w = lshr i64 %i.t, 9
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = or i64 %i.y, %i.v
  store i64 %i.z, ptr %i.x, align 8
  %i.aa = add i64 %.sroa.07.01825, 8              ; 4 uses
  %i.ab = icmp ult i64 %i.aa, %4
  br i1 %i.ab, label %bb.b, label %.loopexit, !llvm.loop !7

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal10Serializer17VisitRootPointersENS0_4RootEPKcNS0_14FullObjectSlotES5_(ptr noundef nonnull align 8 dereferenceable(600) %0, i32 noundef %1, ptr noundef %2, i64 %3, i64 %4) #14
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6bitsetILm1150EE3setEmb.exit, %.preheader, %bb.c
  ret void
}

declare void @_ZN2v88internal10Serializer19SerializeRootObjectENS0_14FullObjectSlotE(ptr noundef nonnull align 8 dereferenceable(600), i64) local_unnamed_addr #1

declare void @_ZN2v88internal10Serializer17VisitRootPointersENS0_4RootEPKcNS0_14FullObjectSlotES5_(ptr noundef nonnull align 8 dereferenceable(600), i32 noundef, ptr noundef, i64, i64) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15RootsSerializer18CheckRehashabilityENS0_6TaggedINS0_10HeapObjectEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(833) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !8, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store i64 %1, ptr %2, align 8
  %i.d = call noundef zeroext i1 @_ZNK2v88internal10HeapObject14NeedsRehashingENS0_16PtrComprCageBaseE(ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i64 %1, ptr %3, align 8
  %i.e = call noundef zeroext i1 @_ZNK2v88internal10HeapObject13CanBeRehashedENS0_16PtrComprCageBaseE(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  ret void
}

declare noundef zeroext i1 @_ZNK2v88internal10HeapObject14NeedsRehashingENS0_16PtrComprCageBaseE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v88internal10HeapObject13CanBeRehashedENS0_16PtrComprCageBaseE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15RootsSerializerD2Ev(ptr noundef nonnull align 8 dereferenceable(833) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN2v88internal15RootsSerializerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEEE, i64 16), ptr %i.a, align 8
  tail call void @_ZN2v88internal15IdentityMapBase5ClearEv(ptr noundef nonnull align 8 dereferenceable(76) %i.a) #14, !inline_history !10
  tail call void @_ZN2v88internal15IdentityMapBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(76) %i.a) #14, !inline_history !10
  tail call void @_ZN2v88internal10SerializerD2Ev(ptr noundef nonnull align 8 dereferenceable(600) %0) #14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15RootsSerializerD0Ev(ptr noundef nonnull align 8 dereferenceable(833) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #15
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11RootVisitor16VisitRootPointerENS0_4RootEPKcNS0_14FullObjectSlotE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add i64 %3, 8
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, i64 %3, i64 %i.a) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11RootVisitor17VisitRootPointersENS0_4RootEPKcNS0_21OffHeapFullObjectSlotES5_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, i64 %3, i64 %4) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2) #15
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11RootVisitor16VisitRunningCodeENS0_14FullObjectSlotES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 18, ptr noundef null, i64 %2) #14
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 18, ptr noundef null, i64 %1) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2v88internal11RootVisitor9collectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 1
}

declare void @__cxa_pure_virtual() unnamed_addr

declare noundef zeroext i1 @_ZN2v88internal10Serializer14MustBeDeferredENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(600), i64) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEED2Ev(ptr noundef nonnull align 8 dereferenceable(66) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEEE, i64 16), ptr %0, align 8
  tail call void @_ZN2v88internal15IdentityMapBase5ClearEv(ptr noundef nonnull align 8 dereferenceable(66) %0) #14
  tail call void @_ZN2v88internal15IdentityMapBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEED0Ev(ptr noundef nonnull align 8 dereferenceable(66) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEEE, i64 16), ptr %0, align 8
  tail call void @_ZN2v88internal15IdentityMapBase5ClearEv(ptr noundef nonnull align 8 dereferenceable(66) %0) #14, !inline_history !10
  tail call void @_ZN2v88internal15IdentityMapBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(66) %0) #14, !inline_history !10
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEE15NewPointerArrayEmm(ptr noundef nonnull align 8 dereferenceable(66) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl i64 %1, 3                            ; 3 uses
  %i.b = tail call noalias noundef ptr @malloc(i64 noundef %i.a) #18 ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZSt20uninitialized_fill_nIPmmmET_S1_T0_RKT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.a
  %i.e = add i64 %i.a, -8                         ; 2 uses
  %i.f = lshr exact i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.g, 4611686018427387900      ; 3 uses
  %i.h = shl i64 %n.vec, 3
  %i.i = getelementptr i8, ptr %i.b, i64 %i.h
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.j ; 2 uses
  %i.k = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.k, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt20uninitialized_fill_nIPmmmET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b, %middle.block
  %.06.i.i.i.i.i.i.ph = phi ptr [ %i.b, %bb.b ], [ %i.i, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %2, ptr %.06.i.i.i.i.i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZSt20uninitialized_fill_nIPmmmET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !14

_ZSt20uninitialized_fill_nIPmmmET_S1_T0_RKT1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11IdentityMapIiNS_4base23DefaultAllocationPolicyEE18DeletePointerArrayEPmm(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @free(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v88internal15IdentityMapBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65)) unnamed_addr #5

declare void @_ZN2v88internal15IdentityMapBase5ClearEv(ptr noundef nonnull align 8 dereferenceable(65)) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare { ptr, i8 } @_ZN2v88internal15IdentityMapBase17FindOrInsertEntryEm(ptr noundef nonnull align 8 dereferenceable(65), i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

end_hunk_0
