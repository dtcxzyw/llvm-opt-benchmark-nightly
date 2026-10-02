Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal-aeeb795e4d54ebf8.opendal.7f1b50d09891723-cgu.0?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNvNvCsGhLMDwXcBP_7opendal34register_default_operator_registry1__18___CTOR_PRIVATE_REF = constant ptr @_RNvNvNvNvCsGhLMDwXcBP_7opendal34register_default_operator_registry1__18___CTOR_PRIVATE_REF14___ctor_private, section ".init_array.500", align 8
@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBd_4Once9call_onceNCNvCsGhLMDwXcBP_7opendal21init_default_registry0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB17_, ptr @_RNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB8_4Once9call_onceNCNvCsGhLMDwXcBP_7opendal21init_default_registry0E0B12_ }>, align 8
@1 = private unnamed_addr constant [77 x i8] c"/rustc/48a229ceaefd4985c50990b14116b6d856af0985/library/std/src/sync/once.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\A6\00\00\002\00\00\00" }>, align 8
@3 = private unnamed_addr constant [11 x i8] c"src/lib.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"\0A\00\00\00\00\00\00\00D\00\00\00\1B\00\00\00" }>, align 8
@_RNvNvCsGhLMDwXcBP_7opendal21init_default_registry21DEFAULT_REGISTRY_INIT = internal global [4 x i8] c"\03\00\00\00", align 4
@llvm.used = appending global [1 x ptr] [ptr @_RNvNvNvCsGhLMDwXcBP_7opendal34register_default_operator_registry1__18___CTOR_PRIVATE_REF], section "llvm.metadata"

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB8_4Once9call_onceNCNvCsGhLMDwXcBP_7opendal21init_default_registry0E0B12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !5, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator8registryNtB2_16OperatorRegistry3get()
  tail call void @_RNvNtNtCs5XgW7KoffLW_12opendal_core8services6memory23register_memory_service(ptr noundef nonnull align 8 %i.d)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #8
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBd_4Once9call_onceNCNvCsGhLMDwXcBP_7opendal21init_default_registry0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB17_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.b = load i8, ptr %i.a, align 1, !range !5, !alias.scope !16, !noalias !19, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 1, !alias.scope !16, !noalias !19
  br i1 %i.c, label %_RNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBb_4Once9call_onceNCNvCsGhLMDwXcBP_7opendal21init_default_registry0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB15_.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #8, !noalias !20
  unreachable

_RNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBb_4Once9call_onceNCNvCsGhLMDwXcBP_7opendal21init_default_registry0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB15_.exit: ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator8registryNtB2_16OperatorRegistry3get(), !noalias !20
  tail call void @_RNvNtNtCs5XgW7KoffLW_12opendal_core8services6memory23register_memory_service(ptr noundef nonnull align 8 %i.d), !noalias !20
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCsGhLMDwXcBP_7opendal15install_default() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = load atomic i32, ptr @_RNvNvCsGhLMDwXcBP_7opendal21init_default_registry21DEFAULT_REGISTRY_INIT acquire, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RNvCsGhLMDwXcBP_7opendal21init_default_registry.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 1, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs9k3SxhrAWiO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 @_RNvNvCsGhLMDwXcBP_7opendal21init_default_registry21DEFAULT_REGISTRY_INIT, i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvCsGhLMDwXcBP_7opendal21init_default_registry.exit

_RNvCsGhLMDwXcBP_7opendal21init_default_registry.exit: ; preds = %bb.a, %bb.b
  call void @_RNvCskg2ocPruTU7_30opendal_http_transport_reqwest15install_default()
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCsGhLMDwXcBP_7opendal21init_default_registry() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = load atomic i32, ptr @_RNvNvCsGhLMDwXcBP_7opendal21init_default_registry21DEFAULT_REGISTRY_INIT acquire, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB6_4Once9call_onceNCNvCsGhLMDwXcBP_7opendal21init_default_registry0EB10_.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 1, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs9k3SxhrAWiO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 @_RNvNvCsGhLMDwXcBP_7opendal21init_default_registry21DEFAULT_REGISTRY_INIT, i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB6_4Once9call_onceNCNvCsGhLMDwXcBP_7opendal21init_default_registry0EB10_.exit

_RINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB6_4Once9call_onceNCNvCsGhLMDwXcBP_7opendal21init_default_registry0EB10_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNvNvCsGhLMDwXcBP_7opendal34register_default_operator_registry1__18___CTOR_PRIVATE_REF14___ctor_private() unnamed_addr #2 section ".text.startup" personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = load atomic i32, ptr @_RNvNvCsGhLMDwXcBP_7opendal21init_default_registry21DEFAULT_REGISTRY_INIT acquire, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RNvCsGhLMDwXcBP_7opendal15install_default.exit.i, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 1, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  invoke void @_RNvMs0_NtNtNtNtCs9k3SxhrAWiO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 @_RNvNvCsGhLMDwXcBP_7opendal21init_default_registry21DEFAULT_REGISTRY_INIT, i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvCsGhLMDwXcBP_7opendal15install_default.exit.i

_RNvCsGhLMDwXcBP_7opendal15install_default.exit.i: ; preds = %.noexc, %bb.a
  invoke void @_RNvCskg2ocPruTU7_30opendal_http_transport_reqwest15install_default()
          to label %_RNvNvCsGhLMDwXcBP_7opendal34register_default_operator_registry20___ctor_private_inner.exit unwind label %bb.c

bb.c:                                             ; preds = %_RNvCsGhLMDwXcBP_7opendal15install_default.exit.i, %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking19panic_cannot_unwind() #9
  unreachable

_RNvNvCsGhLMDwXcBP_7opendal34register_default_operator_registry20___ctor_private_inner.exit: ; preds = %_RNvCsGhLMDwXcBP_7opendal15install_default.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCs9k3SxhrAWiO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator8registryNtB2_16OperatorRegistry3get() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvCskg2ocPruTU7_30opendal_http_transport_reqwest15install_default() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs5XgW7KoffLW_12opendal_core8services6memory23register_memory_service(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking19panic_cannot_unwind() unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { noinline noreturn }
attributes #9 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.98.1 (48a229cea 2026-09-01)"}
!4 = !{}
!5 = !{i8 0, i8 2}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = distinct !{!14, i1 false, !"_RNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBb_4Once9call_onceNCNvCsGhLMDwXcBP_7opendal21init_default_registry0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB15_"}
!15 = distinct !{!15, !14, !"_RNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBb_4Once9call_onceNCNvCsGhLMDwXcBP_7opendal21init_default_registry0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB15_: argument 0"}
!16 = !{!15}
!17 = distinct !{!17, i1 false, !"_RNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB8_4Once9call_onceNCNvCsGhLMDwXcBP_7opendal21init_default_registry0E0B12_"}
!18 = distinct !{!18, !17, !"_RNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB8_4Once9call_onceNCNvCsGhLMDwXcBP_7opendal21init_default_registry0E0B12_: argument 0"}
!19 = !{!18}
!20 = !{!18, !15}
end_hunk_0
