Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/mmap?download=true
inline.NumInlined: 43
inline.NumDeleted: 38
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

$__clang_call_terminate = comdat any

@_ZN8WasmEdge4MMapC1ERKNSt10filesystem7__cxx114pathE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN8WasmEdge4MMapC2ERKNSt10filesystem7__cxx114pathE
@_ZN8WasmEdge4MMapD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN8WasmEdge4MMapD2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4MMapC2ERKNSt10filesystem7__cxx114pathE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 5 uses
  store ptr null, ptr %0, align 8, !tbaa !10
  %.val = load ptr, ptr %1, align 8
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12
          to label %.noexc unwind label %bb.f     ; 6 uses

.noexc:                                           ; preds = %bb.a
  store ptr inttoptr (i64 -1 to ptr), ptr %i.a, align 8, !tbaa !13, !noalias !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !14, !noalias !24
  %i.c = invoke i32 (ptr, i32, ...) @open(ptr noundef readonly %.val, i32 noundef 0)
          to label %bb.b unwind label %bb.d, !noalias !24 ; 5 uses

bb.b:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.c, ptr %i.d, align 8, !tbaa !15, !noalias !24
  %i.e = icmp slt i32 %i.c, 0
  br i1 %i.e, label %_ZNKSt14default_deleteIN8WasmEdge12_GLOBAL__N_19ImplementEEclEPS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13, !noalias !24
  %i.f = call i32 @fstat(i32 noundef %i.c, ptr noundef nonnull %2) #13, !noalias !24
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.thread10, label %_ZSt11make_uniqueIN8WasmEdge12_GLOBAL__N_19ImplementEJRKNSt10filesystem7__cxx114pathEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

.thread10:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !24
  br label %.thread9

bb.d:                                             ; preds = %.noexc
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #14, !noalias !24
  unreachable

_ZSt11make_uniqueIN8WasmEdge12_GLOBAL__N_19ImplementEJRKNSt10filesystem7__cxx114pathEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21, !noalias !24 ; 2 uses
  store i64 %i.k, ptr %i.b, align 8, !tbaa !14, !noalias !24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !24
  %i.l = tail call ptr @mmap(ptr noundef null, i64 noundef %i.k, i32 noundef 1, i32 noundef 1, i32 noundef %i.c, i64 noundef 0) #13, !noalias !24 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !13, !noalias !24
  %i.m = icmp eq ptr %i.l, inttoptr (i64 -1 to ptr)
  br i1 %i.m, label %.thread9, label %.thread

.thread:                                          ; preds = %_ZSt11make_uniqueIN8WasmEdge12_GLOBAL__N_19ImplementEJRKNSt10filesystem7__cxx114pathEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !10
  br label %_ZNSt10unique_ptrIN8WasmEdge12_GLOBAL__N_19ImplementESt14default_deleteIS2_EED2Ev.exit

.thread9:                                         ; preds = %_ZSt11make_uniqueIN8WasmEdge12_GLOBAL__N_19ImplementEJRKNSt10filesystem7__cxx114pathEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, %.thread10
  %i.n = invoke i32 @close(i32 noundef %i.c)
          to label %_ZNKSt14default_deleteIN8WasmEdge12_GLOBAL__N_19ImplementEEclEPS2_.exit.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %.thread9
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #14
  unreachable

_ZNKSt14default_deleteIN8WasmEdge12_GLOBAL__N_19ImplementEEclEPS2_.exit.i: ; preds = %bb.b, %.thread9
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #15
  br label %_ZNSt10unique_ptrIN8WasmEdge12_GLOBAL__N_19ImplementESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN8WasmEdge12_GLOBAL__N_19ImplementESt14default_deleteIS2_EED2Ev.exit: ; preds = %.thread, %_ZNKSt14default_deleteIN8WasmEdge12_GLOBAL__N_19ImplementEEclEPS2_.exit.i
  ret void

bb.f:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #14
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4MMapD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !25
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, inttoptr (i64 -1 to ptr)
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14
  %i.e = tail call i32 @munmap(ptr noundef %i.b, i64 noundef %i.d) #13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.e, label %_ZNSt10unique_ptrIN8WasmEdge12_GLOBAL__N_19ImplementESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = invoke i32 @close(i32 noundef %i.g)
          to label %_ZNSt10unique_ptrIN8WasmEdge12_GLOBAL__N_19ImplementESt14default_deleteIS2_EED2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #14
  unreachable

_ZNSt10unique_ptrIN8WasmEdge12_GLOBAL__N_19ImplementESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNSt10unique_ptrIN8WasmEdge12_GLOBAL__N_19ImplementESt14default_deleteIS2_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK8WasmEdge4MMap7addressEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN8WasmEdge4MMap9supportedEv() local_unnamed_addr #5 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #9

declare i32 @close(i32 noundef) local_unnamed_addr #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"_ZTSN8WasmEdge4MMapE", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"_ZTSN8WasmEdge12_GLOBAL__N_19ImplementE", !8, i64 0, !5, i64 8, !11, i64 16}
!13 = !{!12, !8, i64 0}
!14 = !{!12, !11, i64 16}
!15 = !{!12, !5, i64 8}
!19 = !{!"_ZTS8timespec", !11, i64 0, !11, i64 8}
!20 = !{!"_ZTS4stat", !11, i64 0, !11, i64 8, !11, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !19, i64 72, !19, i64 88, !19, i64 104, !4, i64 120}
!21 = !{!20, !11, i64 48}
!22 = distinct !{!22, i1 false, !"_ZSt11make_uniqueIN8WasmEdge12_GLOBAL__N_19ImplementEJRKNSt10filesystem7__cxx114pathEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!23 = distinct !{!23, !22, !"_ZSt11make_uniqueIN8WasmEdge12_GLOBAL__N_19ImplementEJRKNSt10filesystem7__cxx114pathEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!24 = !{!23}
!25 = !{!8, !8, i64 0}
end_hunk_0
