Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/NativeProtoExecData?download=true
inline.NumInlined: 49
inline.NumDeleted: 44
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4Luau7CodeGen26NativeProtoExecDataDeleterclEPKj(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -40
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4Luau7CodeGen26destroyNativeProtoExecDataEPKj(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen25createNativeProtoExecDataEjj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit:
  %i.a = zext i32 %1 to i64
  %i.b = zext i32 %2 to i64
  %i.c = add nuw nsw i64 %i.b, %i.a
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = add nuw nsw i64 %i.d, 40                 ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #7, !noalias !22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i8 0, i64 %i.e, i1 false), !noalias !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 0, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  store ptr %i.h, ptr %0, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Luau7CodeGen28getNativeProtoExecDataHeaderEPKj(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40
  ret ptr %i.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Luau7CodeGen28getNativeProtoExecDataHeaderEPj(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { builtin nounwind }
attributes #7 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTSN4Luau7CodeGen12NativeModuleE", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"_ZTSN4Luau7CodeGen25NativeProtoExecDataHeaderE", !13, i64 0, !14, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !15, i64 32}
!17 = !{!16, !15, i64 32}
!18 = !{!"p1 int", !12, i64 0}
!19 = !{!18, !18, i64 0}
!20 = distinct !{!20, i1 false, !"_ZSt11make_uniqueIA_hENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!21 = distinct !{!21, !20, !"_ZSt11make_uniqueIA_hENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!22 = !{!21}
end_hunk_0
