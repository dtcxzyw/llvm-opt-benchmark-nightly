Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FileAction?download=true
inline.NumInlined: 22
inline.NumDeleted: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.lldb_private::FileAction" = type { i32, i32, i32, %"class.lldb_private::FileSpec" }
%"class.lldb_private::FileSpec" = type { %"class.lldb_private::ConstString", %"class.lldb_private::ConstString", i8, i32 }
%"class.lldb_private::ConstString" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [14 x i8] c"file action: \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"close fd %d\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"duplicate fd %d to %d\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"no action\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"open fd %d with '%s', OFLAGS = 0x%x\00", align 1

@_ZN12lldb_private10FileActionC1Ev = unnamed_addr alias void (ptr), ptr @_ZN12lldb_private10FileActionC2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private10FileActionC2Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 12)) %0) unnamed_addr #0 align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.a, align 4, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN12lldb_private8FileSpecC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #5
  ret void
}

declare void @_ZN12lldb_private8FileSpecC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK12lldb_private10FileAction11GetFileSpecEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private10FileAction4OpenEiRKNS_8FileSpecEbb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 12), (16, 40)) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.lldb_private::FileAction", align 8 ; 4 uses
  %or.cond = or i1 %3, %4
  %i.a = icmp sgt i32 %1, -1
  %or.cond3 = and i1 %i.a, %or.cond
  br i1 %or.cond3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK12lldb_private8FileSpeccvbEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #5
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 3, ptr %0, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.c, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %. = select i1 %4, i32 322, i32 256
  %.sink = select i1 %3, i32 %., i32 833
  store i32 %.sink, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !25
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @_ZN12lldb_private10FileActionC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.d ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK12lldb_private8FileSpeccvbEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private10FileAction5CloseEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.lldb_private::FileAction", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @_ZN12lldb_private10FileActionC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !17
  %i.b = icmp sgt i32 %.pre, -1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.c, align 4, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.d = phi i1 [ %i.b, %._crit_edge ], [ true, %bb.b ]
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private10FileAction9DuplicateEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.lldb_private::FileAction", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @_ZN12lldb_private10FileActionC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.a = or i32 %2, %1
  %or.cond = icmp sgt i32 %i.a, -1
  br i1 %or.cond, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !17
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.b, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %4 = phi i32 [ %.pre, %._crit_edge ], [ %1, %bb.b ]
  %5 = icmp sgt i32 %4, -1
  ret i1 %5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK12lldb_private10FileAction4DumpERNS_6StreamE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = tail call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr nonnull @.str, i64 13) #5 ; 0 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !16
  switch i32 %i.b, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 0, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17
  %i.e = tail call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.1, i32 noundef %i.d) #5 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = tail call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.2, i32 noundef %i.g, i32 noundef %i.i) #5 ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.k = tail call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr nonnull @.str.3, i64 9) #5 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNK12lldb_private8FileSpec7GetPathB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i1 noundef zeroext true) #5
  %i.o = load ptr, ptr %2, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !18
  %i.r = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.4, i32 noundef %i.m, ptr noundef %i.o, i32 noundef %i.q) #5 ; 0 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.v = load i64, ptr %i.t, align 8, !tbaa !30
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #6
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

declare noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #1

declare noundef i64 @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ...) local_unnamed_addr #1

declare void @_ZNK12lldb_private8FileSpec7GetPathB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_ZTSN12lldb_private10FileAction6ActionE", !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSN12lldb_private11ConstStringE", !10, i64 0}
!12 = !{!"_ZTSN12lldb_private8FileSpec8AbsoluteE", !4, i64 0}
!13 = !{!"_ZTSN4llvm3sys4path5StyleE", !4, i64 0}
!14 = !{!"_ZTSN12lldb_private8FileSpecE", !11, i64 0, !11, i64 8, !12, i64 16, !13, i64 20}
!15 = !{!"_ZTSN12lldb_private10FileActionE", !8, i64 0, !5, i64 4, !5, i64 8, !14, i64 16}
!16 = !{!15, !8, i64 0}
!17 = !{!15, !5, i64 4}
!18 = !{!15, !5, i64 8}
!19 = !{!10, !10, i64 0}
!20 = !{!12, !12, i64 0}
!21 = !{!13, !13, i64 0}
!22 = !{!8, !8, i64 0}
!23 = !{!5, !5, i64 0}
!24 = !{i64 0, i64 4, !22, i64 4, i64 4, !23, i64 8, i64 4, !23, i64 16, i64 8, !19, i64 24, i64 8, !19, i64 32, i64 1, !20, i64 36, i64 4, !21}
!25 = !{i64 0, i64 8, !19, i64 8, i64 8, !19, i64 16, i64 1, !20, i64 20, i64 4, !21}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!27 = !{!"long", !4, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !27, i64 8, !4, i64 16}
!29 = !{!28, !10, i64 0}
!30 = !{!4, !4, i64 0}
end_hunk_0
