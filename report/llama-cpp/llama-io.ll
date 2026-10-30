Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-io?download=true
inline.NumInlined: 44
inline.NumDeleted: 35
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define void @_ZN16llama_io_write_i12write_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = trunc i64 %i.c to i32
  store i32 %i.d, ptr %i.a, align 4, !tbaa !14
  %i.e = load ptr, ptr %0, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 4)
  %i.h = load ptr, ptr %1, align 8, !tbaa !17
  %i.i = load i32, ptr %i.a, align 4, !tbaa !14
  %i.j = zext i32 %i.i to i64
  %i.k = load ptr, ptr %0, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.h, i64 noundef %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN15llama_io_read_i11read_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = load ptr, ptr %0, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 4)
  %i.e = load i32, ptr %i.a, align 4, !tbaa !14   ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.i.thread, label %.noexc

_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.i.thread: ; preds = %bb.a
  %2 = getelementptr i8, ptr null, i64 %i.f
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

.noexc:                                           ; preds = %bb.a
  %i.g = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #7 ; 5 uses
  %i.h = getelementptr i8, ptr %i.g, i64 %i.f     ; 2 uses
  store i8 0, ptr %i.g, align 1, !tbaa !18
  %i.i = add nsw i64 %i.f, -1                     ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 0, i64 %i.i, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %bb.b, %.noexc, %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.i.thread
  %.sroa.11.0 = phi ptr [ %2, %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.i.thread ], [ %i.h, %bb.b ], [ %i.h, %.noexc ] ; 2 uses
  %.sroa.08.0 = phi ptr [ null, %_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_.exit.i.thread ], [ %i.g, %bb.b ], [ %i.g, %.noexc ] ; 8 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.sroa.08.0, i64 noundef %i.f)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.o = load i32, ptr %i.a, align 4, !tbaa !14
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !13
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.r, ptr noundef %.sroa.08.0, i64 noundef %i.p)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %bb.c
  %.not.i.i.i = icmp eq ptr %.sroa.08.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.t = ptrtoint ptr %.sroa.11.0 to i64
  %i.u = ptrtoint ptr %.sroa.08.0 to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.08.0, i64 noundef %i.v) #8
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void

bb.e:                                             ; preds = %bb.c, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i6 = icmp eq ptr %.sroa.08.0, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIcSaIcEED2Ev.exit7, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = ptrtoint ptr %.sroa.11.0 to i64
  %i.y = ptrtoint ptr %.sroa.08.0 to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.08.0, i64 noundef %i.z) #8
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit7

_ZNSt6vectorIcSaIcEED2Ev.exit7:                   ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  resume { ptr, i32 } %i.w
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #8 = { builtin nounwind }

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
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !11, i64 8, !4, i64 16}
!13 = !{!12, !11, i64 8}
!14 = !{!5, !5, i64 0}
!15 = !{!"vtable pointer", !3, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!12, !9, i64 0}
!18 = !{!4, !4, i64 0}
end_hunk_0
