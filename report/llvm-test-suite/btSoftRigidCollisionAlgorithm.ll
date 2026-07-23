inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN29btSoftRigidCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE = comdat any

$_ZTI20btCollisionAlgorithm = comdat any

$_ZTS20btCollisionAlgorithm = comdat any

@_ZTV29btSoftRigidCollisionAlgorithm = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI29btSoftRigidCollisionAlgorithm, ptr @_ZN29btSoftRigidCollisionAlgorithmD2Ev, ptr @_ZN29btSoftRigidCollisionAlgorithmD0Ev, ptr @_ZN29btSoftRigidCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, ptr @_ZN29btSoftRigidCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, ptr @_ZN29btSoftRigidCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE] }, align 8
@_ZTI29btSoftRigidCollisionAlgorithm = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS29btSoftRigidCollisionAlgorithm, ptr @_ZTI20btCollisionAlgorithm }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS29btSoftRigidCollisionAlgorithm = dso_local constant [32 x i8] c"29btSoftRigidCollisionAlgorithm\00", align 1
@_ZTI20btCollisionAlgorithm = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS20btCollisionAlgorithm }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS20btCollisionAlgorithm = linkonce_odr dso_local constant [23 x i8] c"20btCollisionAlgorithm\00", comdat, align 1

@_ZN29btSoftRigidCollisionAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_b = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i1), ptr @_ZN29btSoftRigidCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_b
@_ZN29btSoftRigidCollisionAlgorithmD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN29btSoftRigidCollisionAlgorithmD2Ev

; Function Attrs: uwtable
define dso_local void @_ZN29btSoftRigidCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_b(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr nofree readnone captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, i1 noundef zeroext %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %5 to i8
  tail call void @_ZN20btCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfo(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV29btSoftRigidCollisionAlgorithm, i64 16), ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.a, ptr %i.b, align 8, !tbaa !10
  ret void
}

declare void @_ZN20btCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN29btSoftRigidCollisionAlgorithmD2Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZN29btSoftRigidCollisionAlgorithmD0Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #5
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define dso_local void @_ZN29btSoftRigidCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %0, ptr noundef %1, ptr noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !10, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr %2, ptr %1           ; 3 uses
  %i.e = select i1 %i.c, ptr %1, ptr %2           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 284
  %i.g = load i32, ptr %i.f, align 4, !tbaa !20   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %wide.trip.count.i = zext nneg i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.m = icmp eq ptr %i.l, %i.e
  br i1 %i.m, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread, label %bb.b

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit: ; preds = %bb.b
  %5 = trunc nuw nsw i64 %indvars.iv.i to i32
  %6 = icmp eq i32 %i.g, %5
  br i1 %6, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread, label %bb.d

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread: ; preds = %bb.c, %bb.a, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit
  tail call void @_ZN10btSoftBody23defaultCollisionHandlerEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(1496) %i.d, ptr noundef %i.e)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit
  ret void
}

declare void @_ZN10btSoftBody23defaultCollisionHandlerEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(1496), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_ZN29btSoftRigidCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #2 align 2 {
bb.a:
  ret float 1.000000e+00
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN29btSoftRigidCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !17, i64 32}
!11 = !{!"_ZTS29btSoftRigidCollisionAlgorithm", !12, i64 0, !15, i64 16, !16, i64 24, !17, i64 32}
!12 = !{!"_ZTS20btCollisionAlgorithm", !13, i64 8}
!13 = !{!"p1 _ZTS12btDispatcher", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 _ZTS10btSoftBody", !14, i64 0}
!16 = !{!"p1 _ZTS17btCollisionObject", !14, i64 0}
!17 = !{!"bool", !6, i64 0}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!21, !5, i64 4}
!21 = !{!"_ZTS20btAlignedObjectArrayIP17btCollisionObjectE", !22, i64 0, !5, i64 4, !5, i64 8, !23, i64 16, !17, i64 24}
!22 = !{!"_ZTS18btAlignedAllocatorIP17btCollisionObjectLj16EE"}
!23 = !{!"p2 _ZTS17btCollisionObject", !24, i64 0}
!24 = !{!"any p2 pointer", !14, i64 0}
!25 = !{!21, !23, i64 16}
!26 = !{!16, !16, i64 0}
end_hunk_0
