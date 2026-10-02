Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/list_fn?download=true
inline.NumInlined: 19
inline.NumDeleted: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.lean::list" = type { ptr }

$_ZN4lean4listIjED2Ev = comdat any

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean13mk_list_rangeEjj(ptr dead_on_unwind noalias writable sret(%"class.lean::list") align 8 initializes((0, 8)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.lean::list", align 8        ; 8 uses
  store ptr null, ptr %0, align 8, !tbaa !13
  %i.a = icmp ugt i32 %2, %1
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.pr = phi ptr [ %i.j, %bb.d ], [ null, %bb.a ] ; 6 uses
  %.09 = phi i32 [ %i.b, %bb.d ], [ %2, %bb.a ]
  %i.b = add i32 %.09, -1                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.c = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #7
          to label %.noexc unwind label %bb.e     ; 5 uses

.noexc:                                           ; preds = %.lr.ph
  store i32 1, ptr %i.c, align 4, !tbaa !19, !noalias !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.b, ptr %i.d, align 4, !tbaa !22, !noalias !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.pr, ptr %i.e, align 8, !tbaa !13, !noalias !17
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %.noexc
  store ptr %i.c, ptr %3, align 8, !tbaa !13, !alias.scope !17
  br label %bb.d

bb.b:                                             ; preds = %.noexc
  %i.f = atomicrmw add ptr %.pr, i32 1 monotonic, align 4, !noalias !17 ; 0 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !13, !alias.scope !17
  %i.g = atomicrmw sub ptr %.pr, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  call void @_ZN4lean4listIjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #6, !inline_history !0
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %.pr, i64 noundef 16) #8, !inline_history !1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.thread
  %i.j = load ptr, ptr %3, align 8, !tbaa !13     ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !13
  store ptr null, ptr %3, align 8, !tbaa !13
  call void @_ZN4lean4listIjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.k = icmp ugt i32 %i.b, %1
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !16

bb.e:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @_ZN4lean4listIjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #6
  resume { ptr, i32 } %i.l

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean4listIjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.06 = phi ptr [ %i.d, %bb.c ], [ %i.f, %bb.e ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !13
  tail call void @_ZN4lean4listIjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #6, !inline_history !0
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %.06, i64 noundef 16) #8, !inline_history !1
  %.not9 = icmp eq ptr %i.f, null
  br i1 %.not9, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { builtin allocsize(0) }
attributes #8 = { builtin nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null, null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSN4lean4listIjE4cellE", !10, i64 0}
!12 = !{!"_ZTSN4lean4listIjEE", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = distinct !{!14, i1 false, !"_ZN4lean4consIjEENS_4listIT_EERKS2_RKS3_"}
!15 = distinct !{!15, !14, !"_ZN4lean4consIjEENS_4listIT_EERKS2_RKS3_: argument 0"}
!16 = distinct !{!16, !23}
!17 = !{!15}
!18 = !{!"_ZTSSt13__atomic_baseIjE", !7, i64 0}
!19 = !{!18, !7, i64 0}
!20 = !{!"_ZTSSt6atomicIjE", !18, i64 0}
!21 = !{!"_ZTSN4lean4listIjE4cellE", !20, i64 0, !7, i64 4, !12, i64 8}
!22 = !{!21, !7, i64 4}
!23 = !{!"llvm.loop.mustprogress"}
end_hunk_0
