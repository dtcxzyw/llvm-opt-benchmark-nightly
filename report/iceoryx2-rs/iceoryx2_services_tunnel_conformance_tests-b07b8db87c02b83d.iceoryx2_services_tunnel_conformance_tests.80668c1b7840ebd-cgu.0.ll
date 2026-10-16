Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_services_tunnel_conformance_tests-b07b8db87c02b83d.iceoryx2_services_tunnel_conformance_tests.80668c1b7840ebd-cgu.0?download=true
inline.NumInlined: 10
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs6_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix16unique_system_idNtB5_27UniqueSystemIdCreationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@1 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@2 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsa_NtNtCsg6ZEkMtNi4J_8iceoryx27service12service_nameNtB5_16ServiceNameErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt }>, align 8
@3 = private unnamed_addr constant [66 x i8] c"iceoryx2-services/tunnel-conformance-tests/src/event_discovery.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"A\00\00\00\00\00\00\00)\00\00\00#\00\00\00" }>, align 8
@5 = private unnamed_addr constant [25 x i8] c"\16event_discovery_tests_\C0\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"A\00\00\00\00\00\00\00+\00\00\00\0A\00\00\00" }>, align 8
@7 = private unnamed_addr constant [19 x i8] c"FailedToAcquireTime", align 1
@8 = private unnamed_addr constant [14 x i8] c"InvalidContent", align 1
@9 = private unnamed_addr constant [20 x i8] c"ExceedsMaximumLength", align 1

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtNtCsGIsrN5OqRt_42iceoryx2_services_tunnel_conformance_tests15event_discovery15event_discovery21generate_service_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [20 x i8], align 4                ; 5 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [272 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs3_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix16unique_system_idNtB5_14UniqueSystemId3new(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.d) #6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.h = load i32, ptr %i.d, align 4, !range !13, !alias.scope !12, !noundef !4
  %i.i = trunc nuw i32 %i.h to i1
  br i1 %i.i, label %bb.a, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix16unique_system_id14UniqueSystemIdNtBJ_27UniqueSystemIdCreationErrorE6unwrapCsGIsrN5OqRt_42iceoryx2_services_tunnel_conformance_tests.exit, !prof !14

bb.a:                                             ; preds = %.split
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #7, !noalias !15
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix16unique_system_id14UniqueSystemIdNtBJ_27UniqueSystemIdCreationErrorE6unwrapCsGIsrN5OqRt_42iceoryx2_services_tunnel_conformance_tests.exit: ; preds = %.split
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.j, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXNtNtCs8Chj7Szqq0n_4core3fmt3numoNtB4_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @5, ptr noundef nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx27service12service_nameNtB5_11ServiceName3new(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload, i64 noundef %.sroa.6.0.copyload) #6
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.k = load i8, ptr %i.g, align 8, !range !5, !alias.scope !17, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_name11ServiceNameNtBJ_16ServiceNameErrorE6unwrapCsGIsrN5OqRt_42iceoryx2_services_tunnel_conformance_tests.exit, !prof !14

bb.b:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix16unique_system_id14UniqueSystemIdNtBJ_27UniqueSystemIdCreationErrorE6unwrapCsGIsrN5OqRt_42iceoryx2_services_tunnel_conformance_tests.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.n = load i8, ptr %i.m, align 1, !range !5, !alias.scope !17, !noundef !4
  store i8 %i.n, ptr %i.b, align 1, !noalias !18
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #7, !noalias !18
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_name11ServiceNameNtBJ_16ServiceNameErrorE6unwrapCsGIsrN5OqRt_42iceoryx2_services_tunnel_conformance_tests.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix16unique_system_id14UniqueSystemIdNtBJ_27UniqueSystemIdCreationErrorE6unwrapCsGIsrN5OqRt_42iceoryx2_services_tunnel_conformance_tests.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull readonly align 8 dereferenceable(264) %i.o, i64 264, i1 false), !alias.scope !18
  %i.p = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.p, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECsGIsrN5OqRt_42iceoryx2_services_tunnel_conformance_tests.exit, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_name11ServiceNameNtBJ_16ServiceNameErrorE6unwrapCsGIsrN5OqRt_42iceoryx2_services_tunnel_conformance_tests.exit
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #6
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECsGIsrN5OqRt_42iceoryx2_services_tunnel_conformance_tests.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECsGIsrN5OqRt_42iceoryx2_services_tunnel_conformance_tests.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_name11ServiceNameNtBJ_16ServiceNameErrorE6unwrapCsGIsrN5OqRt_42iceoryx2_services_tunnel_conformance_tests.exit, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix16unique_system_idNtB5_27UniqueSystemIdCreationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 19) #6
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtNtCsg6ZEkMtNi4J_8iceoryx27service12service_nameNtB5_16ServiceNameErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !5, !noundef !4
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 20, i64 14
  %.1 = select i1 %i.b, ptr @9, ptr @8
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.) #6
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs3_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix16unique_system_idNtB5_14UniqueSystemId3new(ptr dead_on_unwind noalias nofree noundef writable sret([20 x i8]) align 4 captures(none) dereferenceable(20)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs8Chj7Szqq0n_4core3fmt3numoNtB4_7Display3fmt(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx27service12service_nameNtB5_11ServiceName3new(ptr dead_on_unwind noalias nofree noundef writable sret([272 x i8]) align 8 captures(address) dereferenceable(272), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (0ed41eb41 2026-09-04)"}
!4 = !{}
!5 = !{i8 0, i8 2}
!6 = distinct !{!6, i1 true, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix16unique_system_id14UniqueSystemIdNtBJ_27UniqueSystemIdCreationErrorE6unwrapCsGIsrN5OqRt_42iceoryx2_services_tunnel_conformance_tests"}
!7 = distinct !{!7, !6, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix16unique_system_id14UniqueSystemIdNtBJ_27UniqueSystemIdCreationErrorE6unwrapCsGIsrN5OqRt_42iceoryx2_services_tunnel_conformance_tests: argument 1"}
!8 = distinct !{!8, !6, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix16unique_system_id14UniqueSystemIdNtBJ_27UniqueSystemIdCreationErrorE6unwrapCsGIsrN5OqRt_42iceoryx2_services_tunnel_conformance_tests: argument 0"}
!9 = distinct !{!9, i1 true, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_name11ServiceNameNtBJ_16ServiceNameErrorE6unwrapCsGIsrN5OqRt_42iceoryx2_services_tunnel_conformance_tests"}
!10 = distinct !{!10, !9, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_name11ServiceNameNtBJ_16ServiceNameErrorE6unwrapCsGIsrN5OqRt_42iceoryx2_services_tunnel_conformance_tests: argument 0"}
!11 = distinct !{!11, !9, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_name11ServiceNameNtBJ_16ServiceNameErrorE6unwrapCsGIsrN5OqRt_42iceoryx2_services_tunnel_conformance_tests: argument 1"}
!12 = !{!7}
!13 = !{i32 0, i32 2}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!8, !7}
!16 = !{!10}
!17 = !{!11}
!18 = !{!10, !11}
end_hunk_0
