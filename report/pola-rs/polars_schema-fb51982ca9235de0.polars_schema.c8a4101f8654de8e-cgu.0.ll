Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_schema-fb51982ca9235de0.polars_schema.c8a4101f8654de8e-cgu.0?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [16 x i8] c"field identifier", align 1

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCshe0pyuXM1S4_13polars_schema6schemas_1__INtB7_6SchemappENtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB16_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !7 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 16), !dbg !17
  ret i1 %i.a, !dbg !18
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !6, producer: "clang LLVM (rustc version 1.96.0-nightly (48cc71ee8 2026-03-31))", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"rustc version 1.96.0-nightly (48cc71ee8 2026-03-31)"}
!6 = !DIFile(filename: "crates/polars-schema/src/lib.rs/@/polars_schema.c8a4101f8654de8e-cgu.0", directory: "/opt-bench/work/pola-rs/polars")
!7 = distinct !DISubprogram(name: "expecting", linkageName: "_RNvXNvXNvNtCshe0pyuXM1S4_13polars_schema6schemas_1__INtB7_6SchemappENtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB16_7Visitor9expecting", scope: !14, file: !8, line: 11, type: !16, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !15)
!8 = !DIFile(filename: "crates/polars-schema/src/schema.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "92cf0aef41e3f2292b395fe85d7c90bc")
!9 = !DINamespace(name: "polars_schema", scope: null)
!10 = !DINamespace(name: "schema", scope: !9)
!11 = !DINamespace(name: "_", scope: !10)
!12 = !DINamespace(name: "{impl#0}", scope: !11)
!13 = !DINamespace(name: "deserialize", scope: !12)
!14 = !DINamespace(name: "{impl#0}", scope: !13)
!15 = !{}
!16 = !DISubroutineType(types: !15)
!17 = !DILocation(line: 11, column: 56, scope: !7)
!18 = !DILocation(line: 11, column: 74, scope: !7)
end_hunk_0
