inline.NumInlined: 43
inline.NumDeleted: 40
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.geos::operation::overlay::OverlayNodeFactory" = type { %"class.geos::geomgraph::NodeFactory" }
%"class.geos::geomgraph::NodeFactory" = type { ptr }

$_ZN4geos9geomgraph11NodeFactoryD2Ev = comdat any

$_ZN4geos9operation7overlay18OverlayNodeFactoryD0Ev = comdat any

@_ZZN4geos9operation7overlay18OverlayNodeFactory8instanceEvE3onf = internal global %"class.geos::operation::overlay::OverlayNodeFactory" zeroinitializer, align 8
@_ZGVZN4geos9operation7overlay18OverlayNodeFactory8instanceEvE3onf = internal global i64 0, align 8
@_ZTVN4geos9operation7overlay18OverlayNodeFactoryE = unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos9operation7overlay18OverlayNodeFactoryE, ptr @_ZNK4geos9operation7overlay18OverlayNodeFactory10createNodeERKNS_4geom10CoordinateE, ptr @_ZN4geos9geomgraph11NodeFactoryD2Ev, ptr @_ZN4geos9operation7overlay18OverlayNodeFactoryD0Ev] }, align 8
@_ZTIN4geos9operation7overlay18OverlayNodeFactoryE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos9operation7overlay18OverlayNodeFactoryE, ptr @_ZTIN4geos9geomgraph11NodeFactoryE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos9operation7overlay18OverlayNodeFactoryE = constant [46 x i8] c"N4geos9operation7overlay18OverlayNodeFactoryE\00", align 1
@_ZTIN4geos9geomgraph11NodeFactoryE = external constant ptr
@_ZTVN4geos9geomgraph16DirectedEdgeStarE = external unnamed_addr constant { [24 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK4geos9operation7overlay18OverlayNodeFactory10createNodeERKNS_4geom10CoordinateE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #8 ; 3 uses
  %i.b = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #8
          to label %bb.b unwind label %bb.e       ; 12 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4geos9geomgraph11EdgeEndStarC2Ev(ptr noundef nonnull align 8 dereferenceable(97) %i.b)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN4geos9geomgraph16DirectedEdgeStarE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 91
  store i8 1, ptr %i.e, align 1, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 89
  store i16 -1, ptr %i.f, align 1
  store i8 -1, ptr %i.d, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 95
  store i8 1, ptr %i.h, align 1, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 93
  store i16 -1, ptr %i.i, align 1
  store i8 -1, ptr %i.g, align 4, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i8 0, ptr %i.j, align 8, !tbaa !14
  invoke void @_ZN4geos9geomgraph4NodeC1ERKNS_4geom10CoordinateEPNS0_11EdgeEndStarE(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  ret ptr %i.a

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.l, %bb.f ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #9
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

declare void @_ZN4geos9geomgraph4NodeC1ERKNS_4geom10CoordinateEPNS0_11EdgeEndStarE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos9operation7overlay18OverlayNodeFactory8instanceEv() local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4geos9operation7overlay18OverlayNodeFactory8instanceEvE3onf acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4geos9operation7overlay18OverlayNodeFactory8instanceEvE3onf) #10
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos9operation7overlay18OverlayNodeFactoryE, i64 16), ptr @_ZZN4geos9operation7overlay18OverlayNodeFactory8instanceEvE3onf, align 8, !tbaa !7
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4geos9operation7overlay18OverlayNodeFactory8instanceEvE3onf) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN4geos9operation7overlay18OverlayNodeFactory8instanceEvE3onf
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos9geomgraph11NodeFactoryD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos9operation7overlay18OverlayNodeFactoryD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

declare void @_ZN4geos9geomgraph11EdgeEndStarC2Ev(ptr noundef nonnull align 8 dereferenceable(58)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { builtin allocsize(0) }
attributes #9 = { builtin nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !5, i64 3}
!10 = !{!"_ZTSN4geos9geomgraph16TopologyLocationE", !11, i64 0, !5, i64 3}
!11 = !{!"_ZTSSt5arrayIN4geos4geom8LocationELm3EE", !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"_ZTSN4geos4geom8LocationE", !5, i64 0}
!14 = !{!15, !36, i64 96}
!15 = !{!"_ZTSN4geos9geomgraph16DirectedEdgeStarE", !16, i64 0, !29, i64 64, !35, i64 88, !36, i64 96}
!16 = !{!"_ZTSN4geos9geomgraph11EdgeEndStarE", !17, i64 8, !28, i64 56}
!17 = !{!"_ZTSSt3setIPN4geos9geomgraph7EdgeEndENS1_9EdgeEndLTESaIS3_EE", !18, i64 0}
!18 = !{!"_ZTSSt8_Rb_treeIPN4geos9geomgraph7EdgeEndES3_St9_IdentityIS3_ENS1_9EdgeEndLTESaIS3_EE", !19, i64 0}
!19 = !{!"_ZTSNSt8_Rb_treeIPN4geos9geomgraph7EdgeEndES3_St9_IdentityIS3_ENS1_9EdgeEndLTESaIS3_EE13_Rb_tree_implIS6_Lb1EEE", !20, i64 0, !22, i64 8}
!20 = !{!"_ZTSSt20_Rb_tree_key_compareIN4geos9geomgraph9EdgeEndLTEE", !21, i64 0}
!21 = !{!"_ZTSN4geos9geomgraph9EdgeEndLTE"}
!22 = !{!"_ZTSSt15_Rb_tree_header", !23, i64 0, !27, i64 32}
!23 = !{!"_ZTSSt18_Rb_tree_node_base", !24, i64 0, !25, i64 8, !25, i64 16, !25, i64 24}
!24 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!25 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !26, i64 0}
!26 = !{!"any pointer", !5, i64 0}
!27 = !{!"long", !5, i64 0}
!28 = !{!"_ZTSSt5arrayIN4geos4geom8LocationELm2EE", !5, i64 0}
!29 = !{!"_ZTSSt6vectorIPN4geos9geomgraph12DirectedEdgeESaIS3_EE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIPN4geos9geomgraph12DirectedEdgeESaIS3_EE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIPN4geos9geomgraph12DirectedEdgeESaIS3_EE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIPN4geos9geomgraph12DirectedEdgeESaIS3_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!33 = !{!"p2 _ZTSN4geos9geomgraph12DirectedEdgeE", !34, i64 0}
!34 = !{!"any p2 pointer", !26, i64 0}
!35 = !{!"_ZTSN4geos9geomgraph5LabelE", !5, i64 0}
!36 = !{!"bool", !5, i64 0}
!37 = !{!"branch_weights", i32 1, i32 1048575}
end_hunk_0
