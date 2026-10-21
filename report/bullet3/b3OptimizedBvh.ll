Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3OptimizedBvh?download=true
inline.NumInlined: 188
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.QuantizedNodeTriangleCallback = type { %class.b3InternalTriangleIndexCallback, ptr, ptr }
%class.b3InternalTriangleIndexCallback = type { ptr }
%struct.NodeTriangleCallback = type { %class.b3InternalTriangleIndexCallback, ptr }
%class.b3Vector3 = type { %union.anon }
%union.anon = type { [4 x float] }
%class.b3BvhSubtreeInfo = type { %struct.b3BvhSubtreeInfoData }
%struct.b3BvhSubtreeInfoData = type { [3 x i16], [3 x i16], i32, i32, [3 x i32] }
%struct.b3QuantizedBvhNode = type { %struct.b3QuantizedBvhNodeData }
%struct.b3QuantizedBvhNodeData = type { [3 x i16], [3 x i16], i32 }
%struct.b3OptimizedBvhNode = type { %class.b3Vector3, %class.b3Vector3, i32, i32, i32, [20 x i8] }

$_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE6expandERKS0_ = comdat any

$_ZNK14b3QuantizedBvh31calculateSerializeBufferSizeNewEv = comdat any

$_ZNK14b3OptimizedBvh16serializeInPlaceEPvjb = comdat any

$__clang_call_terminate = comdat any

$_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE9push_backERKS0_ = comdat any

$_ZN20b3AlignedObjectArrayI18b3OptimizedBvhNodeE9push_backERKS0_ = comdat any

@_ZTV14b3OptimizedBvh = dso_local constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTI14b3OptimizedBvh, ptr @_ZN14b3OptimizedBvhD2Ev, ptr @_ZN14b3OptimizedBvhD0Ev, ptr @_ZNK14b3QuantizedBvh9serializeEPvjb, ptr @_ZNK14b3QuantizedBvh31calculateSerializeBufferSizeNewEv, ptr @_ZNK14b3QuantizedBvh9serializeEPvP12b3Serializer, ptr @_ZN14b3QuantizedBvh16deSerializeFloatER23b3QuantizedBvhFloatData, ptr @_ZN14b3QuantizedBvh17deSerializeDoubleER24b3QuantizedBvhDoubleData, ptr @_ZNK14b3OptimizedBvh16serializeInPlaceEPvjb] }, align 8
@_ZTI14b3OptimizedBvh = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14b3OptimizedBvh, ptr @_ZTI14b3QuantizedBvh }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS14b3OptimizedBvh = dso_local constant [17 x i8] c"14b3OptimizedBvh\00", align 1
@_ZTI14b3QuantizedBvh = external constant ptr
@_ZTVZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_E29QuantizedNodeTriangleCallback = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_E29QuantizedNodeTriangleCallback, ptr @_ZN31b3InternalTriangleIndexCallbackD2Ev, ptr @_ZZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_EN29QuantizedNodeTriangleCallbackD0Ev, ptr @_ZZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_EN29QuantizedNodeTriangleCallback28internalProcessTriangleIndexEPS2_ii] }, align 8
@_ZTIZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_E29QuantizedNodeTriangleCallback = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_E29QuantizedNodeTriangleCallback, ptr @_ZTI31b3InternalTriangleIndexCallback }, align 8
@_ZTSZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_E29QuantizedNodeTriangleCallback = internal constant [100 x i8] c"ZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_E29QuantizedNodeTriangleCallback\00", align 1
@_ZTI31b3InternalTriangleIndexCallback = external constant ptr
@.str = private unnamed_addr constant [17 x i8] c"b3Error[%s,%d]:\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3Common/b3AlignedObjectArray.h\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"b3AlignedObjectArray reserve out-of-memory\0A\00", align 1
@_ZTVZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_E20NodeTriangleCallback = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_E20NodeTriangleCallback, ptr @_ZN31b3InternalTriangleIndexCallbackD2Ev, ptr @_ZZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_EN20NodeTriangleCallbackD0Ev, ptr @_ZZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_EN20NodeTriangleCallback28internalProcessTriangleIndexEPS2_ii] }, align 8
@_ZTIZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_E20NodeTriangleCallback = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_E20NodeTriangleCallback, ptr @_ZTI31b3InternalTriangleIndexCallback }, align 8
@_ZTSZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_E20NodeTriangleCallback = internal constant [91 x i8] c"ZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_E20NodeTriangleCallback\00", align 1

@_ZN14b3OptimizedBvhC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14b3OptimizedBvhC2Ev
@_ZN14b3OptimizedBvhD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14b3OptimizedBvhD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14b3OptimizedBvhC2Ev(ptr noundef nonnull align 16 dereferenceable(252) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN14b3QuantizedBvhC2Ev(ptr noundef nonnull align 16 dereferenceable(252) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV14b3OptimizedBvh, i64 16), ptr %0, align 16, !tbaa !12
  ret void
}

declare void @_ZN14b3QuantizedBvhC2Ev(ptr noundef nonnull align 16 dereferenceable(252)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN14b3QuantizedBvhD2Ev(ptr noundef nonnull align 16 dead_on_return(252) dereferenceable(252)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14b3OptimizedBvhD2Ev(ptr noundef nonnull align 16 dead_on_return(252) dereferenceable(252) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN14b3QuantizedBvhD2Ev(ptr noundef nonnull align 16 dead_on_return(252) dereferenceable(252) %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14b3OptimizedBvhD0Ev(ptr noundef nonnull align 16 dereferenceable(252) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN14b3QuantizedBvhD2Ev(ptr noundef nonnull align 16 dead_on_return(252) dereferenceable(252) %0) #14
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN14b3OptimizedBvhdlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #15
  unreachable

_ZN14b3OptimizedBvhdlEPv.exit:                    ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_(ptr noundef nonnull align 16 dereferenceable(252) initializes((72, 73)) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.QuantizedNodeTriangleCallback, align 8 ; 9 uses
  %6 = alloca %struct.NodeTriangleCallback, align 8 ; 8 uses
  %7 = alloca %class.b3Vector3, align 16          ; 6 uses
  %8 = alloca %class.b3Vector3, align 16          ; 6 uses
  %9 = alloca %class.b3BvhSubtreeInfo, align 16   ; 3 uses
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 %i.a, ptr %i.b, align 8, !tbaa !27
  br i1 %2, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14b3QuantizedBvh21setQuantizationValuesERK9b3Vector3S2_f(ptr noundef nonnull align 16 dereferenceable(252) %0, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, float noundef 1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_E29QuantizedNodeTriangleCallback, i64 16), ptr %5, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %0, ptr %i.e, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %1, align 16, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull %5, ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) %i.g)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33   ; 3 uses
  %i.m = shl nsw i32 %i.l, 1                      ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !33   ; 2 uses
  %i.p = icmp sgt i32 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !34
  %i.s = icmp slt i32 %i.r, %i.m
  br i1 %i.s, label %bb.e, label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE8allocateEi.exit.i.i: ; preds = %bb.e
  %i.t = sext i32 %i.m to i64
  %i.u = shl nsw i64 %i.t, 4
  %i.v = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.u, i32 noundef 16)
          to label %.noexc unwind label %bb.i     ; 7 uses

.noexc:                                           ; preds = %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE8allocateEi.exit.i.i
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %.noexc
  %i.x = load i32, ptr %i.n, align 4, !tbaa !33   ; 4 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.x to i64 ; 2 uses
  %xtraiter64 = and i64 %wide.trip.count.i.i.i, 1
  %i.aa = icmp eq i32 %i.x, 1
  br i1 %i.aa, label %.epil.preheader63, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter67 = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.f ] ; 4 uses
  %niter68 = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter68.next.1, %bb.f ]
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.i.i.i
  %i.ac = load ptr, ptr %i.z, align 16, !tbaa !35
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, ptr noundef nonnull align 16 dereferenceable(16) %i.ad, i64 16, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i
  %i.af = load ptr, ptr %i.z, align 16, !tbaa !35
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv.next.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ae, ptr noundef nonnull align 16 dereferenceable(16) %i.ag, i64 16, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter68.next.1 = add i64 %niter68, 2           ; 2 uses
  %niter68.ncmp.1 = icmp eq i64 %niter68.next.1, %unroll_iter67
  br i1 %niter68.ncmp.1, label %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.f, !llvm.loop !0

.split7.i.i:                                      ; preds = %.noexc, %bb.e
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
          to label %.noexc23 unwind label %bb.i

.noexc23:                                         ; preds = %.split7.i.i
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
          to label %.noexc24 unwind label %bb.i

.noexc24:                                         ; preds = %.noexc23
  store i32 0, ptr %i.n, align 4, !tbaa !33
  br label %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i, label %.epil.preheader63

.epil.preheader63:                                ; preds = %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod66 = trunc i32 %i.x to i1
  call void @llvm.assume(i1 %lcmp.mod66)
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.epil.init
  %i.ai = load ptr, ptr %i.z, align 16, !tbaa !35
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv.i.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ah, ptr noundef nonnull align 16 dereferenceable(16) %i.aj, i64 16, i1 false)
  br label %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader63, %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.noexc24, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.noexc24 ], [ %i.v, %.split.i.i ], [ %i.v, %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.v, %.epil.preheader63 ]
  %.0.i.i = phi i32 [ 0, %.noexc24 ], [ %i.m, %.split.i.i ], [ %i.m, %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.m, %.epil.preheader63 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !35 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE10deallocateEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.an = load i8, ptr %i.am, align 8, !tbaa !37, !range !38, !noundef !39
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.h, label %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE10deallocateEv.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.al)
          to label %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE10deallocateEv.exit.i.i unwind label %bb.i

_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE10deallocateEv.exit.i.i: ; preds = %bb.h, %bb.g, %_ZNK20b3AlignedObjectArrayI18b3QuantizedBvhNodeE4copyEiiPS0_.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 1, ptr %i.ap, align 8, !tbaa !37
  store ptr %.0.i12.i.i, ptr %i.ak, align 16, !tbaa !35
  store i32 %.0.i.i, ptr %i.q, align 8, !tbaa !34
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE10deallocateEv.exit.i.i, %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.ar = sext i32 %i.o to i64                    ; 4 uses
  %wide.trip.count.i = sext i32 %i.m to i64       ; 3 uses
  %i.as = sub nsw i64 %wide.trip.count.i, %i.ar
  %xtraiter71 = and i64 %i.as, 3                  ; 2 uses
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %.prol.loopexit70, label %.prol.preheader69

.prol.preheader69:                                ; preds = %.lr.ph.i, %.prol.preheader69
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader69 ], [ %i.ar, %.lr.ph.i ] ; 2 uses
  %prol.iter73 = phi i64 [ %prol.iter73.next, %.prol.preheader69 ], [ 0, %.lr.ph.i ]
  %i.at = load ptr, ptr %i.aq, align 16, !tbaa !35
  %i.au = getelementptr inbounds [16 x i8], ptr %i.at, i64 %indvars.iv.i.prol
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter73.next = add i64 %prol.iter73, 1     ; 2 uses
  %prol.iter73.cmp.not = icmp eq i64 %prol.iter73.next, %xtraiter71
  br i1 %prol.iter73.cmp.not, label %.prol.loopexit70, label %.prol.preheader69, !llvm.loop !61

.prol.loopexit70:                                 ; preds = %.prol.preheader69, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.ar, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader69 ]
  %i.av = sub nsw i64 %i.ar, %wide.trip.count.i
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %.loopexit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit70, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit70 ] ; 5 uses
  %i.ax = load ptr, ptr %i.aq, align 16, !tbaa !35
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.ax, i64 %indvars.iv.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.az = load ptr, ptr %i.aq, align 16, !tbaa !35
  %i.ba = getelementptr [16 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %i.bc = load ptr, ptr %i.aq, align 16, !tbaa !35
  %i.bd = getelementptr [16 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.be = getelementptr i8, ptr %i.bd, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bf = load ptr, ptr %i.aq, align 16, !tbaa !35
  %i.bg = getelementptr [16 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.loopexit, label %.lr.ph.i.new, !llvm.loop !62

.loopexit:                                        ; preds = %.prol.loopexit70, %.lr.ph.i.new, %bb.c
  store i32 %i.m, ptr %i.n, align 4, !tbaa !33
  call void @_ZN31b3InternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.r

bb.i:                                             ; preds = %bb.b, %bb.h, %.noexc23, %.split7.i.i, %_ZN20b3AlignedObjectArrayI18b3QuantizedBvhNodeE8allocateEi.exit.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN31b3InternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.x

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_E20NodeTriangleCallback, i64 16), ptr %6, align 8, !tbaa !12
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store <2 x float> splat (float f0xDD5E0B6B), ptr %7, align 16
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> <float f0xDD5E0B6B, float 0.000000e+00>, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store <2 x float> splat (float f0x5D5E0B6B), ptr %8, align 16
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> <float f0x5D5E0B6B, float 0.000000e+00>, ptr %11, align 8
  %i.bl = load ptr, ptr %1, align 16, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull %6, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !41 ; 3 uses
  %i.bq = shl nsw i32 %i.bp, 1                    ; 8 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !41 ; 2 uses
  %i.bt = icmp sgt i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.l, label %.loopexit48

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !42
  %i.bw = icmp slt i32 %i.bv, %i.bq
  br i1 %i.bw, label %bb.m, label %.lr.ph.i26

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i31 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i31, label %.split7.i.i41, label %_ZN20b3AlignedObjectArrayI18b3OptimizedBvhNodeE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI18b3OptimizedBvhNodeE8allocateEi.exit.i.i: ; preds = %bb.m
  %i.bx = sext i32 %i.bq to i64
  %i.by = shl nsw i64 %i.bx, 6
  %i.bz = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.by, i32 noundef 16)
          to label %.noexc42 unwind label %bb.q   ; 7 uses

.noexc42:                                         ; preds = %_ZN20b3AlignedObjectArrayI18b3OptimizedBvhNodeE8allocateEi.exit.i.i
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %.split7.i.i41, label %.split.i.i32

.split.i.i32:                                     ; preds = %.noexc42
  %i.cb = load i32, ptr %i.br, align 4, !tbaa !41 ; 4 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.i.i.i36, label %_ZNK20b3AlignedObjectArrayI18b3OptimizedBvhNodeE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i36:                                   ; preds = %.split.i.i32
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %wide.trip.count.i.i.i37 = zext nneg i32 %i.cb to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i37, 1
  %i.ce = icmp eq i32 %i.cb, 1
  br i1 %i.ce, label %.epil.preheader, label %.lr.ph.i.i.i36.new

.lr.ph.i.i.i36.new:                               ; preds = %.lr.ph.i.i.i36
  %unroll_iter = and i64 %wide.trip.count.i.i.i37, 2147483646
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i36.new
  %indvars.iv.i.i.i38 = phi i64 [ 0, %.lr.ph.i.i.i36.new ], [ %indvars.iv.next.i.i.i39.1, %bb.n ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i36.new ], [ %niter.next.1, %bb.n ]
  %i.cf = getelementptr inbounds nuw [64 x i8], ptr %i.bz, i64 %indvars.iv.i.i.i38
  %i.cg = load ptr, ptr %i.cd, align 16, !tbaa !43
  %i.ch = getelementptr inbounds nuw [64 x i8], ptr %i.cg, i64 %indvars.iv.i.i.i38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cf, ptr noundef nonnull align 16 dereferenceable(64) %i.ch, i64 64, i1 false), !tbaa.struct !46
  %indvars.iv.next.i.i.i39 = or disjoint i64 %indvars.iv.i.i.i38, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [64 x i8], ptr %i.bz, i64 %indvars.iv.next.i.i.i39
  %i.cj = load ptr, ptr %i.cd, align 16, !tbaa !43
  %i.ck = getelementptr inbounds nuw [64 x i8], ptr %i.cj, i64 %indvars.iv.next.i.i.i39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ci, ptr noundef nonnull align 16 dereferenceable(64) %i.ck, i64 64, i1 false), !tbaa.struct !46
  %indvars.iv.next.i.i.i39.1 = add nuw nsw i64 %indvars.iv.i.i.i38, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI18b3OptimizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.n, !llvm.loop !1

.split7.i.i41:                                    ; preds = %.noexc42, %bb.m
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
          to label %.noexc43 unwind label %bb.q

.noexc43:                                         ; preds = %.split7.i.i41
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
          to label %.noexc44 unwind label %bb.q

.noexc44:                                         ; preds = %.noexc43
  store i32 0, ptr %i.br, align 4, !tbaa !41
  br label %_ZNK20b3AlignedObjectArrayI18b3OptimizedBvhNodeE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI18b3OptimizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI18b3OptimizedBvhNodeE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI18b3OptimizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i36
  %indvars.iv.i.i.i38.epil.init = phi i64 [ 0, %.lr.ph.i.i.i36 ], [ %indvars.iv.next.i.i.i39.1, %_ZNK20b3AlignedObjectArrayI18b3OptimizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod60 = trunc i32 %i.cb to i1
  call void @llvm.assume(i1 %lcmp.mod60)
  %i.cl = getelementptr inbounds nuw [64 x i8], ptr %i.bz, i64 %indvars.iv.i.i.i38.epil.init
  %i.cm = load ptr, ptr %i.cd, align 16, !tbaa !43
  %i.cn = getelementptr inbounds nuw [64 x i8], ptr %i.cm, i64 %indvars.iv.i.i.i38.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cl, ptr noundef nonnull align 16 dereferenceable(64) %i.cn, i64 64, i1 false), !tbaa.struct !46
  br label %_ZNK20b3AlignedObjectArrayI18b3OptimizedBvhNodeE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI18b3OptimizedBvhNodeE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI18b3OptimizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.noexc44, %.split.i.i32
  %.0.i12.i.i33 = phi ptr [ null, %.noexc44 ], [ %i.bz, %.split.i.i32 ], [ %i.bz, %_ZNK20b3AlignedObjectArrayI18b3OptimizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.bz, %.epil.preheader ]
  %.0.i.i34 = phi i32 [ 0, %.noexc44 ], [ %i.bq, %.split.i.i32 ], [ %i.bq, %_ZNK20b3AlignedObjectArrayI18b3OptimizedBvhNodeE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.bq, %.epil.preheader ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 16, !tbaa !43 ; 2 uses
  %.not.i10.i.i35 = icmp eq ptr %i.cp, null
  br i1 %.not.i10.i.i35, label %_ZN20b3AlignedObjectArrayI18b3OptimizedBvhNodeE10deallocateEv.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNK20b3AlignedObjectArrayI18b3OptimizedBvhNodeE4copyEiiPS0_.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !47, !range !38, !noundef !39
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.p, label %_ZN20b3AlignedObjectArrayI18b3OptimizedBvhNodeE10deallocateEv.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.cp)
          to label %_ZN20b3AlignedObjectArrayI18b3OptimizedBvhNodeE10deallocateEv.exit.i.i unwind label %bb.q

_ZN20b3AlignedObjectArrayI18b3OptimizedBvhNodeE10deallocateEv.exit.i.i: ; preds = %bb.p, %bb.o, %_ZNK20b3AlignedObjectArrayI18b3OptimizedBvhNodeE4copyEiiPS0_.exit.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 1, ptr %i.ct, align 8, !tbaa !47
  store ptr %.0.i12.i.i33, ptr %i.co, align 16, !tbaa !43
  store i32 %.0.i.i34, ptr %i.bu, align 8, !tbaa !42
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %_ZN20b3AlignedObjectArrayI18b3OptimizedBvhNodeE10deallocateEv.exit.i.i, %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.cv = sext i32 %i.bs to i64                   ; 4 uses
  %wide.trip.count.i27 = sext i32 %i.bq to i64    ; 3 uses
  %i.cw = sub nsw i64 %wide.trip.count.i27, %i.cv
  %xtraiter61 = and i64 %i.cw, 3                  ; 2 uses
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i26, %.prol.preheader
  %indvars.iv.i28.prol = phi i64 [ %indvars.iv.next.i29.prol, %.prol.preheader ], [ %i.cv, %.lr.ph.i26 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i26 ]
  %i.cx = load ptr, ptr %i.cu, align 16, !tbaa !43
  %i.cy = getelementptr inbounds [64 x i8], ptr %i.cx, i64 %indvars.iv.i28.prol
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cy, i8 0, i64 64, i1 false)
  %indvars.iv.next.i29.prol = add nsw i64 %indvars.iv.i28.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter61
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !63

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i26
  %indvars.iv.i28.unr = phi i64 [ %i.cv, %.lr.ph.i26 ], [ %indvars.iv.next.i29.prol, %.prol.preheader ]
  %i.cz = sub nsw i64 %i.cv, %wide.trip.count.i27
  %i.da = icmp ugt i64 %i.cz, -4
  br i1 %i.da, label %.loopexit48, label %.lr.ph.i26.new

.lr.ph.i26.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i26.new
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i29.3, %.lr.ph.i26.new ], [ %indvars.iv.i28.unr, %.prol.loopexit ] ; 5 uses
  %i.db = load ptr, ptr %i.cu, align 16, !tbaa !43
  %i.dc = getelementptr inbounds [64 x i8], ptr %i.db, i64 %indvars.iv.i28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.dc, i8 0, i64 64, i1 false)
  %i.dd = load ptr, ptr %i.cu, align 16, !tbaa !43
  %i.de = getelementptr [64 x i8], ptr %i.dd, i64 %indvars.iv.i28
  %i.df = getelementptr i8, ptr %i.de, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.df, i8 0, i64 64, i1 false)
  %i.dg = load ptr, ptr %i.cu, align 16, !tbaa !43
  %i.dh = getelementptr [64 x i8], ptr %i.dg, i64 %indvars.iv.i28
  %i.di = getelementptr i8, ptr %i.dh, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.di, i8 0, i64 64, i1 false)
  %i.dj = load ptr, ptr %i.cu, align 16, !tbaa !43
  %i.dk = getelementptr [64 x i8], ptr %i.dj, i64 %indvars.iv.i28
  %i.dl = getelementptr i8, ptr %i.dk, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.dl, i8 0, i64 64, i1 false)
  %indvars.iv.next.i29.3 = add nsw i64 %indvars.iv.i28, 4 ; 2 uses
  %exitcond.not.i30.3 = icmp eq i64 %indvars.iv.next.i29.3, %wide.trip.count.i27
  br i1 %exitcond.not.i30.3, label %.loopexit48, label %.lr.ph.i26.new, !llvm.loop !64

.loopexit48:                                      ; preds = %.prol.loopexit, %.lr.ph.i26.new, %bb.k
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN31b3InternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.r

bb.q:                                             ; preds = %bb.j, %bb.p, %.noexc43, %.split7.i.i41, %_ZN20b3AlignedObjectArrayI18b3OptimizedBvhNodeE8allocateEi.exit.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN31b3InternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.x

bb.r:                                             ; preds = %.loopexit48, %.loopexit
  %.017 = phi i32 [ %i.l, %.loopexit ], [ %i.bp, %.loopexit48 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.dn, align 4, !tbaa !48
  call void @_ZN14b3QuantizedBvh9buildTreeEii(ptr noundef nonnull align 16 dereferenceable(252) %0, i32 noundef 0, i32 noundef %.017)
  %i.do = load i8, ptr %i.b, align 8, !tbaa !27, !range !38, !noundef !39
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !49
  %.not = icmp eq i32 %i.dr, 0
  br i1 %.not, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 216
end_hunk_0
