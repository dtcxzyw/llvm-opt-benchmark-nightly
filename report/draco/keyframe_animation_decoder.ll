Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/keyframe_animation_decoder?download=true
inline.NumInlined: 49
inline.NumDeleted: 34
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.draco::Status" = type { i32, %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

; Function Attrs: mustprogress uwtable
define void @_ZN5draco24KeyframeAnimationDecoder6DecodeERKNS_12DracoOptionsINS_17GeometryAttribute4TypeEEEPNS_13DecoderBufferEPNS_17KeyframeAnimationE(ptr dead_on_unwind noalias writable sret(%"class.draco::Status") align 8 initializes((0, 4)) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 1 %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.draco::Status", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  call void @_ZN5draco17PointCloudDecoder6DecodeERKNS_12DracoOptionsINS_17GeometryAttribute4TypeEEEPNS_13DecoderBufferEPNS_10PointCloudE(ptr dead_on_unwind nonnull writable sret(%"class.draco::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 1 %2, ptr noundef %3, ptr noundef %4)
  %i.b = load i32, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.b, ptr %0, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !18
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i64 %i.i, ptr %i.a, align 8, !tbaa !21
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.k, ptr %i.d, align 8, !tbaa !19
  %i.l = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.l, ptr %i.f, align 8, !tbaa !22
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN5draco6StatusC2ERKS0_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !22
  store i8 %i.n, ptr %i.m, align 1, !tbaa !22
  br label %_ZN5draco6StatusC2ERKS0_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZN5draco6StatusC2ERKS0_.exit

_ZN5draco6StatusC2ERKS0_.exit:                    ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.o = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !20
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.g

bb.e:                                             ; preds = %.noexc.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN5draco6StatusD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.u, align 8, !tbaa !22
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #5
  br label %_ZN5draco6StatusD2Ev.exit

_ZN5draco6StatusD2Ev.exit:                        ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !17, !alias.scope !26
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.y, ptr %i.d, align 8, !tbaa !18, !alias.scope !26
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8, !tbaa !20, !alias.scope !26
  store i8 0, ptr %i.y, align 8, !tbaa !22, !alias.scope !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5draco6StatusC2ERKS0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN5draco6StatusD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.g
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !22
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #5
  br label %_ZN5draco6StatusD2Ev.exit7

_ZN5draco6StatusD2Ev.exit7:                       ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN5draco17PointCloudDecoder6DecodeERKNS_12DracoOptionsINS_17GeometryAttribute4TypeEEEPNS_13DecoderBufferEPNS_10PointCloudE(ptr dead_on_unwind writable sret(%"class.draco::Status") align 8, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 1, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { builtin nounwind }

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
!10 = !{!"_ZTSN5draco6Status4CodeE", !4, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !14, i64 8, !4, i64 16}
!16 = !{!"_ZTSN5draco6StatusE", !10, i64 0, !15, i64 8}
!17 = !{!16, !10, i64 0}
!18 = !{!13, !12, i64 0}
!19 = !{!15, !12, i64 0}
!20 = !{!15, !14, i64 8}
!21 = !{!14, !14, i64 0}
!22 = !{!4, !4, i64 0}
!24 = distinct !{!24, i1 false, !"_ZN5draco8OkStatusEv"}
!25 = distinct !{!25, !24, !"_ZN5draco8OkStatusEv: argument 0"}
!26 = !{!25}
end_hunk_0
