inline.NumInlined: 51
inline.NumDeleted: 36
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN7HydroBCC1EP4Mesh7double2RKSt6vectorIiSaIiEE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN7HydroBCC2EP4Mesh7double2RKSt6vectorIiSaIiEE
@_ZN7HydroBCD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7HydroBCD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7HydroBCC2EP4Mesh7double2RKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 12), (16, 88)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = load ptr, ptr %3, align 8, !tbaa !20
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32
  store i32 %i.i, ptr %i.a, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load <2 x double>, ptr %2, align 8, !tbaa !22
  store <2 x double> %i.k, ptr %i.j, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %sext = shl i64 %i.g, 30
  %i.n = ashr exact i64 %sext, 30
  %i.o = and i64 %i.n, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i8 0, i64 48, i1 false)
  %i.p = tail call noalias noundef ptr @malloc(i64 noundef %i.o) #9 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.p, ptr %i.q, align 8, !tbaa !23
  %i.r = load ptr, ptr %3, align 8, !tbaa !24     ; 3 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = icmp sgt i64 %i.v, 4
  br i1 %i.w, label %bb.b, label %bb.c, !prof !25

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.p, ptr align 4 %i.r, i64 %i.v, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_.exit

bb.c:                                             ; preds = %bb.a
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %bb.d, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_.exit

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.r, align 4, !tbaa !4
  store i32 %i.y, ptr %i.p, align 4, !tbaa !4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_.exit: ; preds = %bb.d, %bb.c, %bb.b
  %i.z = load i32, ptr %i.a, align 8, !tbaa !21
  invoke void @_ZN4Mesh14getPlaneChunksEiPKiRSt6vectorIiSaIiEES5_(ptr noundef nonnull align 8 dereferenceable(616) %1, i32 noundef %i.z, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_.exit
  ret void

bb.f:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #10
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.f, %bb.g
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIiSaIiEED2Ev.exit8, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #10
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit8

_ZNSt6vectorIiSaIiEED2Ev.exit8:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.h
  resume { ptr, i32 } %i.aa
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4Mesh14getPlaneChunksEiPKiRSt6vectorIiSaIiEES5_(ptr noundef nonnull align 8 dereferenceable(616), i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7HydroBCD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(88) dereferenceable(88) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #10
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #10
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2

_ZNSt6vectorIiSaIiEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN7HydroBC12applyFixedBCEP7double2S1_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %3, %4
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = sext i32 %3 to i64
  %wide.trip.count = sext i32 %4 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds [16 x i8], ptr %1, i64 %i.h ; 3 uses
  %6 = load double, ptr %i.i, align 8, !tbaa !27, !noalias !28 ; 2 uses
  %7 = load double, ptr %i.d, align 8, !tbaa !27, !noalias !28 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %9 = load double, ptr %8, align 8, !tbaa !31, !noalias !28 ; 2 uses
  %10 = load double, ptr %5, align 8, !tbaa !31, !noalias !28 ; 2 uses
  %11 = fmul double %9, %10
  %i.j = tail call noundef double @llvm.fmuladd.f64(double %6, double %7, double %11) ; 2 uses
  %12 = fmul double %7, %i.j
  %13 = fmul double %10, %i.j
  %14 = fsub double %6, %12
  %15 = fsub double %9, %13
  store double %14, ptr %i.i, align 8, !tbaa !27
  store double %15, ptr %8, align 8, !tbaa !31
  %i.k = getelementptr inbounds [16 x i8], ptr %2, i64 %i.h ; 3 uses
  %16 = load double, ptr %i.k, align 8, !tbaa !27, !noalias !32 ; 2 uses
  %17 = load double, ptr %i.d, align 8, !tbaa !27, !noalias !32 ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %19 = load double, ptr %18, align 8, !tbaa !31, !noalias !32 ; 2 uses
  %20 = load double, ptr %5, align 8, !tbaa !31, !noalias !32 ; 2 uses
  %21 = fmul double %19, %20
  %i.l = tail call noundef double @llvm.fmuladd.f64(double %16, double %17, double %21) ; 2 uses
  %22 = fmul double %17, %i.l
  %23 = fmul double %20, %i.l
  %24 = fsub double %16, %22
  %25 = fsub double %19, %23
  store double %24, ptr %i.k, align 8, !tbaa !27
  store double %25, ptr %18, align 8, !tbaa !31
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !35
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { builtin nounwind }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTS7HydroBC", !10, i64 0, !5, i64 8, !12, i64 16, !14, i64 32, !15, i64 40, !15, i64 64}
!10 = !{!"p1 _ZTS4Mesh", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"_ZTS7double2", !13, i64 0, !13, i64 8}
!13 = !{!"double", !6, i64 0}
!14 = !{!"p1 int", !11, i64 0}
!15 = !{!"_ZTSSt6vectorIiSaIiEE", !16, i64 0}
!16 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !17, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !18, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!19 = !{!18, !14, i64 8}
!20 = !{!18, !14, i64 0}
!21 = !{!9, !5, i64 8}
!22 = !{!13, !13, i64 0}
!23 = !{!9, !14, i64 32}
!24 = !{!14, !14, i64 0}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!26 = !{!18, !14, i64 16}
!27 = !{!12, !13, i64 0}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_Z7projectR7double2RKS_: argument 0"}
!30 = distinct !{!30, !"_Z7projectR7double2RKS_"}
!31 = !{!12, !13, i64 8}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_Z7projectR7double2RKS_: argument 0"}
!34 = distinct !{!34, !"_Z7projectR7double2RKS_"}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
end_hunk_0
