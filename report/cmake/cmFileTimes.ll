Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmFileTimes?download=true
inline.NumInlined: 83
inline.NumDeleted: 52
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%class.cmFileTimes = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }

@_ZN11cmFileTimesC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11cmFileTimesC2Ev
@_ZN11cmFileTimesC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11cmFileTimesC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN11cmFileTimesD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11cmFileTimesD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11cmFileTimesC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11cmFileTimesC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !12
  %i.a = invoke i64 @_ZN11cmFileTimes4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN11cmFileTimes5TimesESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i

_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i: ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #9
  br label %_ZNSt10unique_ptrIN11cmFileTimes5TimesESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN11cmFileTimes5TimesESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local i64 @_ZN11cmFileTimes4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt10unique_ptrIN11cmFileTimes5TimesESt14default_deleteIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !13
  br label %bb.c

_ZNSt10unique_ptrIN11cmFileTimes5TimesESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #10 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !noalias !32
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN11cmFileTimes5TimesESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %.sroa.015.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %_ZNSt10unique_ptrIN11cmFileTimes5TimesESt14default_deleteIS1_EED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.c = load ptr, ptr %1, align 8, !tbaa !18
  %i.d = call i32 @stat(ptr noundef %i.c, ptr noundef nonnull %2) #11
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = invoke i64 @_ZN5cmsys6Status11POSIX_errnoEv()
          to label %_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i9 unwind label %_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i12

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24
  store i64 %i.h, ptr %.sroa.015.0, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !29
  %i.l = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  store ptr %.sroa.015.0, ptr %0, align 8, !tbaa !13
  %.not.i.i.i.i5 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i5, label %_ZNSt10unique_ptrIN11cmFileTimes5TimesESt14default_deleteIS1_EEaSEOS4_.exit7.thread, label %_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i.i.i.i6

_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i.i.i.i6: ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 16) #9
  br label %_ZNSt10unique_ptrIN11cmFileTimes5TimesESt14default_deleteIS1_EEaSEOS4_.exit7.thread

_ZNSt10unique_ptrIN11cmFileTimes5TimesESt14default_deleteIS1_EEaSEOS4_.exit7.thread: ; preds = %bb.e, %_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %_ZNSt10unique_ptrIN11cmFileTimes5TimesESt14default_deleteIS1_EED2Ev.exit10

_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i9: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.015.0, i64 noundef 16) #9
  br label %_ZNSt10unique_ptrIN11cmFileTimes5TimesESt14default_deleteIS1_EED2Ev.exit10

_ZNSt10unique_ptrIN11cmFileTimes5TimesESt14default_deleteIS1_EED2Ev.exit10: ; preds = %_ZNSt10unique_ptrIN11cmFileTimes5TimesESt14default_deleteIS1_EEaSEOS4_.exit7.thread, %_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i9
  %.sroa.0.025 = phi i64 [ 0, %_ZNSt10unique_ptrIN11cmFileTimes5TimesESt14default_deleteIS1_EEaSEOS4_.exit7.thread ], [ %i.f, %_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i9 ]
  ret i64 %.sroa.0.025

_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i12: ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.015.0, i64 noundef 16) #9
  resume { ptr, i32 } %i.m
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11cmFileTimesD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN11cmFileTimes5TimesESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i

_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #9
  br label %_ZNSt10unique_ptrIN11cmFileTimes5TimesESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN11cmFileTimes5TimesESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare i64 @_ZN5cmsys6Status11POSIX_errnoEv() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local i64 @_ZNK11cmFileTimes5StoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !18
  %i.c = tail call i32 @utime(ptr noundef %i.b, ptr noundef nonnull %i.a) #11
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @_ZN5cmsys6Status11POSIX_errnoEv()
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %i.e, %bb.c ], [ 94489280513, %bb.a ], [ 0, %bb.b ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @utime(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local i64 @_ZN11cmFileTimes4CopyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.cmFileTimes, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr null, ptr %2, align 8, !tbaa !12
  %i.a = invoke i64 @_ZN11cmFileTimes4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %i.a, 4294967295
  %i.c = icmp eq i64 %i.b, 0
  %.pr.pre = load ptr, ptr %2, align 8, !tbaa !13 ; 3 uses
  %.not.i = icmp eq ptr %.pr.pre, null            ; 2 uses
  br i1 %i.c, label %bb.d, label %_ZNK11cmFileTimes5StoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %bb.f, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %2, align 8, !tbaa !13     ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZN11cmFileTimesD2Ev.exit, label %_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i.i: ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 16) #9
  br label %_ZN11cmFileTimesD2Ev.exit

_ZN11cmFileTimesD2Ev.exit:                        ; preds = %bb.c, %_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.b
  br i1 %.not.i, label %_ZN11cmFileTimesD2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %1, align 8, !tbaa !18
  %i.g = tail call i32 @utime(ptr noundef %i.f, ptr noundef nonnull %.pr.pre) #11
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i.i4

bb.f:                                             ; preds = %bb.e
  %i.i = invoke i64 @_ZN5cmsys6Status11POSIX_errnoEv()
          to label %_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i.i4 unwind label %bb.c

_ZNK11cmFileTimes5StoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b
  br i1 %.not.i, label %_ZN11cmFileTimesD2Ev.exit5, label %_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i.i4

_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i.i4: ; preds = %bb.f, %bb.e, %_ZNK11cmFileTimes5StoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.sroa.0.0.ph11 = phi i64 [ %i.a, %_ZNK11cmFileTimes5StoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ 0, %bb.e ], [ %i.i, %bb.f ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr.pre, i64 noundef 16) #9
  br label %_ZN11cmFileTimesD2Ev.exit5

_ZN11cmFileTimesD2Ev.exit5:                       ; preds = %bb.d, %_ZNK11cmFileTimes5StoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i.i4
  %.sroa.0.08 = phi i64 [ %.sroa.0.0.ph11, %_ZNKSt14default_deleteIN11cmFileTimes5TimesEEclEPS1_.exit.i.i4 ], [ %i.a, %_ZNK11cmFileTimes5StoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ 94489280513, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i64 %.sroa.0.08
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { builtin nounwind }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSN11cmFileTimes5TimesE", !9, i64 0}
!11 = !{!"_ZTSSt10_Head_baseILm0EPN11cmFileTimes5TimesELb0EE", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !16, i64 8, !5, i64 16}
!18 = !{!17, !14, i64 0}
!22 = !{!"_ZTS8timespec", !16, i64 0, !16, i64 8}
!23 = !{!"_ZTS4stat", !16, i64 0, !16, i64 8, !16, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !22, i64 72, !22, i64 88, !22, i64 104, !5, i64 120}
!24 = !{!23, !16, i64 72}
!25 = !{!"_ZTS7utimbuf", !16, i64 0, !16, i64 8}
!26 = !{!"_ZTSN11cmFileTimes5TimesE", !25, i64 0}
!27 = !{!26, !16, i64 0}
!28 = !{!23, !16, i64 88}
!29 = !{!26, !16, i64 8}
!30 = distinct !{!30, i1 false, !"_ZSt11make_uniqueIN11cmFileTimes5TimesEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!31 = distinct !{!31, !30, !"_ZSt11make_uniqueIN11cmFileTimes5TimesEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!32 = !{!31}
end_hunk_0
