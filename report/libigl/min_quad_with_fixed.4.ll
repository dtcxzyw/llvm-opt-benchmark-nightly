Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.4?download=true
inline.NumInlined: 7306
inline.NumDeleted: 3834
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [2 x double] }

$_ZN3igl19min_quad_with_fixedIdLi2ELi0ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_RKNS2_IS3_XT1_EXT0_EXorLS4_0EquaaeqT1_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT1_Li1ELS4_0ELS4_0EEXT1_EXT0_EEERKNS2_IS3_XT1_ELi1EXorLS4_0EquaaeqT1_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT1_Li1ELS4_0ELS4_0EEXT1_ELi1EEE = comdat any

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl19min_quad_with_fixedIdLi2ELi0ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_RKNS2_IS3_XT1_EXT0_EXorLS4_0EquaaeqT1_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT1_Li1ELS4_0ELS4_0EEXT1_EXT0_EEERKNS2_IS3_XT1_ELi1EXorLS4_0EquaaeqT1_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT1_Li1ELS4_0ELS4_0EEXT1_ELi1EEE(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix") align 16 %0, ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %i.a = load i8, ptr %3, align 1, !tbaa !13, !range !14, !noalias !11, !noundef !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13, !range !14, !noalias !11, !noundef !15 ; 2 uses
  %narrow.i.i.i.i.i.i = add nuw nsw i8 %i.c, %i.a
  switch i8 %narrow.i.i.i.i.i.i, label %.preheader.preheader.i [
    i8 2, label %bb.b
    i8 0, label %bb.c
  ]

.preheader.preheader.i:                           ; preds = %bb.a
  %i.d = trunc nuw i8 %i.a to i1
  br i1 %i.d, label %.preheader.1.i, label %.thread280.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !17
  br label %_ZN3igl19min_quad_with_fixedIdLi2ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load <2 x double>, ptr %1, align 16, !tbaa !16, !noalias !11 ; 3 uses
  %i.f = extractelement <2 x double> %i.e, i64 0  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.24.vec.extract.i = load double, ptr %i.g, align 8, !tbaa !16, !noalias !11 ; 3 uses
  %i.h = fcmp ugt double %i.f, 0.000000e+00
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i, label %bb.d

.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i:       ; preds = %bb.c
  %i.i = extractelement <2 x double> %i.e, i64 1
  %i.j = tail call double @sqrt(double noundef %i.f) #5, !noalias !11 ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x double> poison, double %i.j, i64 0
  %i.k = fdiv double %i.i, %i.j                   ; 3 uses
  %.sroa.0.8.vec.insert.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i, double %i.k, i64 1 ; 2 uses
  %i.l = fmul double %i.k, %i.k
  %i.m = fsub double %.sroa.7.24.vec.extract.i, %i.l ; 2 uses
  %i.n = fcmp ugt double %i.m, 0.000000e+00
  br i1 %i.n, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEdVERKd.exit.1.i.i.i.i.i.i, label %bb.d

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEdVERKd.exit.1.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i
  %i.o = tail call double @sqrt(double noundef %i.m) #5, !noalias !11
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEdVERKd.exit.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i, %bb.c
  %.sroa.7.24.vec.extract265.pre-phi.i = phi double [ %.sroa.7.24.vec.extract.i, %bb.c ], [ %i.o, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEdVERKd.exit.1.i.i.i.i.i.i ], [ %.sroa.7.24.vec.extract.i, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i = phi <2 x double> [ %i.e, %bb.c ], [ %.sroa.0.8.vec.insert.i, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEdVERKd.exit.1.i.i.i.i.i.i ], [ %.sroa.0.8.vec.insert.i, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.p = load <2 x double>, ptr %2, align 16, !tbaa !16, !noalias !11
  %i.q = fneg <2 x double> %i.p                   ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x double> %.sroa.0.0.i, i64 0 ; 2 uses
  %i.r = extractelement <2 x double> %i.q, i64 0
  %i.s = fdiv double %i.r, %.sroa.0.0.vec.extract.i ; 2 uses
  %.sroa.0.8.vec.extract.i = extractelement <2 x double> %.sroa.0.0.i, i64 1 ; 2 uses
  %i.t = fmul double %.sroa.0.8.vec.extract.i, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = extractelement <2 x double> %i.q, i64 1
  %i.w = fsub double %i.v, %i.t
  %i.x = fdiv double %i.w, %.sroa.7.24.vec.extract265.pre-phi.i
  %i.y = fdiv double %i.x, %.sroa.7.24.vec.extract265.pre-phi.i ; 2 uses
  store double %i.y, ptr %i.u, align 8, !tbaa !19, !alias.scope !11
  %i.z = fmul double %.sroa.0.8.vec.extract.i, %i.y
  %i.aa = fsub double %i.s, %i.z
  %i.ab = fdiv double %i.aa, %.sroa.0.0.vec.extract.i
  store double %i.ab, ptr %0, align 16, !tbaa !19, !alias.scope !11
  br label %_ZN3igl19min_quad_with_fixedIdLi2ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_.exit

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.ac = trunc nuw i8 %i.c to i1                 ; 2 uses
  %spec.select290.i = select i1 %i.ac, i64 -1, i64 1 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !17
  %i.ad = getelementptr inbounds [8 x i8], ptr %2, i64 %spec.select290.i
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !19, !noalias !11
  %i.af = fneg double %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select290.i ; 3 uses
  %.idx.i.i.i256270.i = shl nsw i64 %spec.select290.i, 4 ; 3 uses
  %invariant.gep271.i = getelementptr i8, ptr %1, i64 %.idx.i.i.i256270.i ; 2 uses
  %i.ah = load double, ptr %4, align 16, !tbaa !19, !noalias !11
  %i.ai = load double, ptr %invariant.gep271.i, align 16, !tbaa !19, !noalias !11
  %i.aj = fneg double %i.ah
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.ai, double %i.af) ; 3 uses
  store double %i.ak, ptr %i.ag, align 8, !tbaa !19, !alias.scope !11
  br i1 %i.ac, label %bb.e, label %bb.f

.thread280.i:                                     ; preds = %.preheader.preheader.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !17
  %i.al = load double, ptr %2, align 16, !tbaa !19, !noalias !11
  %i.am = fneg double %i.al                       ; 2 uses
  store double %i.am, ptr %0, align 16, !tbaa !19, !alias.scope !11
  br label %bb.e

bb.e:                                             ; preds = %.thread280.i, %.preheader.1.i
  %i.an = phi double [ %i.am, %.thread280.i ], [ %i.ak, %.preheader.1.i ]
  %.0105274288.i = phi i64 [ 0, %.thread280.i ], [ -1, %.preheader.1.i ]
  %i.ao = phi ptr [ %0, %.thread280.i ], [ %i.ag, %.preheader.1.i ] ; 2 uses
  %.idx.i.i.i256276286.i = phi i64 [ 0, %.thread280.i ], [ %.idx.i.i.i256270.i, %.preheader.1.i ]
  %invariant.gep279285.i = phi ptr [ %1, %.thread280.i ], [ %invariant.gep271.i, %.preheader.1.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !19, !noalias !11
  %gep.1.i = getelementptr i8, ptr %invariant.gep279285.i, i64 8
  %i.ar = load double, ptr %gep.1.i, align 8, !tbaa !19, !noalias !11
  %i.as = fneg double %i.aq
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ar, double %i.an) ; 2 uses
  store double %i.at, ptr %i.ao, align 8, !tbaa !19, !alias.scope !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader.1.i
  %.0105274289.i = phi i64 [ %.0105274288.i, %bb.e ], [ 1, %.preheader.1.i ]
  %i.au = phi ptr [ %i.ao, %bb.e ], [ %i.ag, %.preheader.1.i ]
  %.idx.i.i.i256276287.i = phi i64 [ %.idx.i.i.i256276286.i, %bb.e ], [ %.idx.i.i.i256270.i, %.preheader.1.i ]
  %i.av = phi double [ %i.at, %bb.e ], [ %i.ak, %.preheader.1.i ]
  %i.aw = getelementptr [8 x i8], ptr %1, i64 %.0105274289.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 %.idx.i.i.i256276287.i
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !19, !noalias !11
  %i.az = fdiv double %i.av, %i.ay
  store double %i.az, ptr %i.au, align 8, !tbaa !19, !alias.scope !11
  br label %_ZN3igl19min_quad_with_fixedIdLi2ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_.exit

_ZN3igl19min_quad_with_fixedIdLi2ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_.exit: ; preds = %bb.b, %bb.d, %bb.f
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, i1 false, !"_ZN3igl19min_quad_with_fixedIdLi2ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_"}
!10 = distinct !{!10, !9, !"_ZN3igl19min_quad_with_fixedIdLi2ELb1EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_: argument 0"}
!11 = !{!10}
!12 = !{!"bool", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{!5, !5, i64 0}
!17 = !{i64 0, i64 16, !16}
!18 = !{!"double", !5, i64 0}
!19 = !{!18, !18, i64 0}
end_hunk_0
