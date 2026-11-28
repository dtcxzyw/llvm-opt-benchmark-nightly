Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/GeometryGraphOperation?download=true
inline.NumInlined: 62
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

@_ZTVN4geos9operation22GeometryGraphOperationE = constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN4geos9operation22GeometryGraphOperationE, ptr @_ZN4geos9operation22GeometryGraphOperationD1Ev, ptr @_ZN4geos9operation22GeometryGraphOperationD0Ev] }, align 8, !guid !8
@_ZTIN4geos9operation22GeometryGraphOperationE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4geos9operation22GeometryGraphOperationE }, align 8, !guid !9
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4geos9operation22GeometryGraphOperationE = constant [42 x i8] c"N4geos9operation22GeometryGraphOperationE\00", align 1, !guid !10

@_ZN4geos9operation22GeometryGraphOperationC1EPKNS_4geom8GeometryES5_ = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4geos9operation22GeometryGraphOperationC2EPKNS_4geom8GeometryES5_
@_ZN4geos9operation22GeometryGraphOperationC1EPKNS_4geom8GeometryES5_RKNS_9algorithm16BoundaryNodeRuleE = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN4geos9operation22GeometryGraphOperationC2EPKNS_4geom8GeometryES5_RKNS_9algorithm16BoundaryNodeRuleE
@_ZN4geos9operation22GeometryGraphOperationC1EPKNS_4geom8GeometryE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4geos9operation22GeometryGraphOperationC2EPKNS_4geom8GeometryE
@_ZN4geos9operation22GeometryGraphOperationD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4geos9operation22GeometryGraphOperationD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation22GeometryGraphOperationC2EPKNS_4geom8GeometryES5_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) initializes((0, 24), (56, 104), (136, 137), (152, 176)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !36 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4geos9operation22GeometryGraphOperationE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.b, align 8, !tbaa !15
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #8 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.g, ptr %i.h, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr %i.g, ptr %i.i, align 8, !tbaa !27
  %i.j = invoke noundef ptr @_ZNK4geos4geom8Geometry17getPrecisionModelEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.k = invoke noundef ptr @_ZNK4geos4geom8Geometry17getPrecisionModelEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = invoke noundef i32 @_ZNK4geos4geom14PrecisionModel9compareToEPKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef %i.k)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i32 %i.l, 0
  %spec.select = select i1 %i.m, ptr %i.k, ptr %i.j ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %spec.select, ptr %i.n, align 8, !tbaa !32
  store ptr %spec.select, ptr %i.a, align 8, !tbaa !33
  %i.o = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #8
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.a, %bb.h, %bb.d, %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos9algorithm16BoundaryNodeRule17getBoundaryOGCSFSEv()
          to label %bb.g unwind label %3

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4geos9geomgraph13GeometryGraphC1EhPKNS_4geom8GeometryERKNS_9algorithm16BoundaryNodeRuleE(ptr noundef nonnull align 8 dereferenceable(168) %i.o, i8 noundef zeroext 0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.h unwind label %3

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !25
  store ptr %i.o, ptr %i.r, align 8, !tbaa !35
  %i.s = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #8
          to label %bb.i unwind label %bb.e       ; 3 uses

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos9algorithm16BoundaryNodeRule17getBoundaryOGCSFSEv()
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4geos9geomgraph13GeometryGraphC1EhPKNS_4geom8GeometryERKNS_9algorithm16BoundaryNodeRuleE(ptr noundef nonnull align 8 dereferenceable(168) %i.s, i8 noundef zeroext 1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.s, ptr %i.v, align 8, !tbaa !35
  ret void

3:                                                ; preds = %bb.g, %bb.f
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %3
  %.sink = phi ptr [ %i.o, %3 ], [ %i.s, %bb.l ]
  %.pn.pn.ph = phi { ptr, i32 } [ %4, %3 ], [ %i.w, %bb.l ]
  tail call void @_ZdlPv(ptr noundef nonnull %.sink) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %.pn.pn.ph, %bb.m ]
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4geos9geomgraph13GeometryGraphESaIS3_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #9
  br label %_ZNSt6vectorIPN4geos9geomgraph13GeometryGraphESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4geos9geomgraph13GeometryGraphESaIS3_EED2Ev.exit: ; preds = %bb.o, %bb.n
  resume { ptr, i32 } %.pn.pn
}

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZNK4geos4geom8Geometry17getPrecisionModelEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef i32 @_ZNK4geos4geom14PrecisionModel9compareToEPKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9operation22GeometryGraphOperation23setComputationPrecisionEPKNS_4geom14PrecisionModelE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(176) initializes((8, 16), (144, 152)) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !guid !37 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %1, ptr %i.a, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !33
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos9algorithm16BoundaryNodeRule17getBoundaryOGCSFSEv() local_unnamed_addr #2

declare void @_ZN4geos9geomgraph13GeometryGraphC1EhPKNS_4geom8GeometryERKNS_9algorithm16BoundaryNodeRuleE(ptr noundef nonnull align 8 dereferenceable(168), i8 noundef zeroext, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation22GeometryGraphOperationC2EPKNS_4geom8GeometryES5_RKNS_9algorithm16BoundaryNodeRuleE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) initializes((0, 24), (56, 104), (136, 137), (152, 176)) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !38 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4geos9operation22GeometryGraphOperationE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.b, align 8, !tbaa !15
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #8 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.g, ptr %i.h, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr %i.g, ptr %i.i, align 8, !tbaa !27
  %i.j = invoke noundef ptr @_ZNK4geos4geom8Geometry17getPrecisionModelEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.k = invoke noundef ptr @_ZNK4geos4geom8Geometry17getPrecisionModelEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = invoke noundef i32 @_ZNK4geos4geom14PrecisionModel9compareToEPKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef %i.k)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i32 %i.l, 0
  %spec.select = select i1 %i.m, ptr %i.k, ptr %i.j ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %spec.select, ptr %i.n, align 8, !tbaa !32
  store ptr %spec.select, ptr %i.a, align 8, !tbaa !33
  %i.o = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #8
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.a, %bb.g, %bb.d, %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  invoke void @_ZN4geos9geomgraph13GeometryGraphC1EhPKNS_4geom8GeometryERKNS_9algorithm16BoundaryNodeRuleE(ptr noundef nonnull align 8 dereferenceable(168) %i.o, i8 noundef zeroext 0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %4

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !25
  store ptr %i.o, ptr %i.q, align 8, !tbaa !35
  %i.r = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #8
          to label %bb.h unwind label %bb.e       ; 3 uses

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4geos9geomgraph13GeometryGraphC1EhPKNS_4geom8GeometryERKNS_9algorithm16BoundaryNodeRuleE(ptr noundef nonnull align 8 dereferenceable(168) %i.r, i8 noundef zeroext 1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %i.t, align 8, !tbaa !35
  ret void

4:                                                ; preds = %bb.f
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %4
  %.sink = phi ptr [ %i.o, %4 ], [ %i.r, %bb.j ]
  %.pn.pn.ph = phi { ptr, i32 } [ %5, %4 ], [ %i.u, %bb.j ]
  tail call void @_ZdlPv(ptr noundef nonnull %.sink) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %.pn.pn.ph, %bb.k ]
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4geos9geomgraph13GeometryGraphESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #9
  br label %_ZNSt6vectorIPN4geos9geomgraph13GeometryGraphESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4geos9geomgraph13GeometryGraphESaIS3_EED2Ev.exit: ; preds = %bb.m, %bb.l
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation22GeometryGraphOperationC2EPKNS_4geom8GeometryE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) initializes((0, 24), (56, 104), (136, 137), (152, 176)) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !39 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4geos9operation22GeometryGraphOperationE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.b, align 8, !tbaa !15
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #8 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.g, ptr %i.h, align 8, !tbaa !26
  store ptr null, ptr %i.f, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.g, ptr %i.i, align 8, !tbaa !27
  %i.j = invoke noundef ptr @_ZNK4geos4geom8Geometry17getPrecisionModelEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.j, ptr %i.k, align 8, !tbaa !32
  store ptr %i.j, ptr %i.a, align 8, !tbaa !33
  %i.l = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #8
          to label %bb.c unwind label %bb.e       ; 3 uses

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4geos9geomgraph13GeometryGraphC1EhPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(168) %i.l, i8 noundef zeroext 0, ptr noundef nonnull %1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !25
  store ptr %i.l, ptr %i.m, align 8, !tbaa !35
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.n, %bb.e ]
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4geos9geomgraph13GeometryGraphESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #9
  br label %_ZNSt6vectorIPN4geos9geomgraph13GeometryGraphESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4geos9geomgraph13GeometryGraphESaIS3_EED2Ev.exit: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %.pn
}

declare void @_ZN4geos9geomgraph13GeometryGraphC1EhPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(168), i8 noundef zeroext, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK4geos9operation22GeometryGraphOperation14getArgGeometryEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !guid !40 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = zext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4geos9operation22GeometryGraphOperationD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(176) dereferenceable(176) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !guid !71 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4geos9operation22GeometryGraphOperationE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.n, %bb.d ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4geos9geomgraph13GeometryGraphESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef nonnull %.lcssa) #9
  br label %_ZNSt6vectorIPN4geos9geomgraph13GeometryGraphESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4geos9geomgraph13GeometryGraphESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.e = phi ptr [ %i.n, %bb.d ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.o, %bb.d ], [ %i.c, %bb.a ]
  %i.g = phi i64 [ %i.q, %bb.d ], [ 0, %bb.a ]
  %.05 = phi i32 [ %i.p, %bb.d ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(168) %i.i) #10
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !27
  %.pre7 = load ptr, ptr %i.a, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.n = phi ptr [ %i.e, %.lr.ph ], [ %.pre7, %bb.c ] ; 3 uses
  %i.o = phi ptr [ %i.f, %.lr.ph ], [ %.pre, %bb.c ] ; 2 uses
  %i.p = add i32 %.05, 1                          ; 2 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  %i.v = icmp ugt i64 %i.u, %i.q
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !70
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4geos9operation22GeometryGraphOperationD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #6 align 2 !guid !73 {
bb.a:
  tail call void @_ZN4geos9operation22GeometryGraphOperationD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { builtin allocsize(0) }
attributes #9 = { builtin nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{i64 1455803418239533693}
!9 = !{i64 1335055085969038308}
!10 = !{i64 -7900437696730361982}
!11 = !{!"vtable pointer", !3, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!"_ZTSN4geos4geom10CoordinateE", !13, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!14, !13, i64 16}
!16 = !{!"any pointer", !4, i64 0}
!17 = !{!"p1 _ZTSN4geos4geom14PrecisionModelE", !16, i64 0}
!18 = !{!"long", !4, i64 0}
!19 = !{!"bool", !4, i64 0}
!20 = !{!"_ZTSN4geos9algorithm15LineIntersectorE", !17, i64 0, !18, i64 8, !4, i64 16, !4, i64 48, !4, i64 96, !19, i64 128}
end_hunk_0
