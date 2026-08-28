Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/bench-4b922278c536a853.bench.fce8d9389b82f1e7-cgu.10?download=true
inline.NumInlined: 198
inline.NumDeleted: 125
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs7n8GKOt6esj_18tracing_subscriber3fmt10SubscriberNtNtBE_6format13DefaultFieldsNtB1w_6FormatNtNtNtBG_6filter3env9EnvFilterEECslIemzedAtQF_5bench, [16 x i8] c"\10\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvYINtNtCs7n8GKOt6esj_18tracing_subscriber3fmt10SubscriberNtNtB5_6format13DefaultFieldsNtBX_6FormatNtNtNtB7_6filter3env9EnvFilterENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber20on_register_dispatchCslIemzedAtQF_5bench, ptr @_RNvXs0_NtCs7n8GKOt6esj_18tracing_subscriber3fmtINtB5_10SubscriberNtNtB5_6format13DefaultFieldsNtB13_6FormatNtNtNtB7_6filter3env9EnvFilterENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber17register_callsiteCslIemzedAtQF_5bench, ptr @_RNvXs0_NtCs7n8GKOt6esj_18tracing_subscriber3fmtINtB5_10SubscriberNtNtB5_6format13DefaultFieldsNtB13_6FormatNtNtNtB7_6filter3env9EnvFilterENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber7enabledCslIemzedAtQF_5bench, ptr @_RNvXs0_NtCs7n8GKOt6esj_18tracing_subscriber3fmtINtB5_10SubscriberNtNtB5_6format13DefaultFieldsNtB13_6FormatNtNtNtB7_6filter3env9EnvFilterENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber14max_level_hintCslIemzedAtQF_5bench, ptr @_RNvXs0_NtCs7n8GKOt6esj_18tracing_subscriber3fmtINtB5_10SubscriberNtNtB5_6format13DefaultFieldsNtB13_6FormatNtNtNtB7_6filter3env9EnvFilterENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber8new_spanCslIemzedAtQF_5bench, ptr @_RNvXs0_NtCs7n8GKOt6esj_18tracing_subscriber3fmtINtB5_10SubscriberNtNtB5_6format13DefaultFieldsNtB13_6FormatNtNtNtB7_6filter3env9EnvFilterENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber6recordCslIemzedAtQF_5bench, ptr @_RNvXs0_NtCs7n8GKOt6esj_18tracing_subscriber3fmtINtB5_10SubscriberNtNtB5_6format13DefaultFieldsNtB13_6FormatNtNtNtB7_6filter3env9EnvFilterENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber19record_follows_fromCslIemzedAtQF_5bench, ptr @_RNvXs0_NtCs7n8GKOt6esj_18tracing_subscriber3fmtINtB5_10SubscriberNtNtB5_6format13DefaultFieldsNtB13_6FormatNtNtNtB7_6filter3env9EnvFilterENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber13event_enabledCslIemzedAtQF_5bench, ptr @_RNvXs0_NtCs7n8GKOt6esj_18tracing_subscriber3fmtINtB5_10SubscriberNtNtB5_6format13DefaultFieldsNtB13_6FormatNtNtNtB7_6filter3env9EnvFilterENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber5eventCslIemzedAtQF_5bench, ptr @_RNvXs0_NtCs7n8GKOt6esj_18tracing_subscriber3fmtINtB5_10SubscriberNtNtB5_6format13DefaultFieldsNtB13_6FormatNtNtNtB7_6filter3env9EnvFilterENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber5enterCslIemzedAtQF_5bench, ptr @_RNvXs0_NtCs7n8GKOt6esj_18tracing_subscriber3fmtINtB5_10SubscriberNtNtB5_6format13DefaultFieldsNtB13_6FormatNtNtNtB7_6filter3env9EnvFilterENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber4exitCslIemzedAtQF_5bench, ptr @_RNvXs0_NtCs7n8GKOt6esj_18tracing_subscriber3fmtINtB5_10SubscriberNtNtB5_6format13DefaultFieldsNtB13_6FormatNtNtNtB7_6filter3env9EnvFilterENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber10clone_spanCslIemzedAtQF_5bench, ptr @_RNvYINtNtCs7n8GKOt6esj_18tracing_subscriber3fmt10SubscriberNtNtB5_6format13DefaultFieldsNtBX_6FormatNtNtNtB7_6filter3env9EnvFilterENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber9drop_spanCslIemzedAtQF_5bench, ptr @_RNvXs0_NtCs7n8GKOt6esj_18tracing_subscriber3fmtINtB5_10SubscriberNtNtB5_6format13DefaultFieldsNtB13_6FormatNtNtNtB7_6filter3env9EnvFilterENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber9try_closeCslIemzedAtQF_5bench, ptr @_RNvXs0_NtCs7n8GKOt6esj_18tracing_subscriber3fmtINtB5_10SubscriberNtNtB5_6format13DefaultFieldsNtB13_6FormatNtNtNtB7_6filter3env9EnvFilterENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber12current_spanCslIemzedAtQF_5bench, ptr @_RNvXs0_NtCs7n8GKOt6esj_18tracing_subscriber3fmtINtB5_10SubscriberNtNtB5_6format13DefaultFieldsNtB13_6FormatNtNtNtB7_6filter3env9EnvFilterENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber12downcast_rawCslIemzedAtQF_5bench }>, align 8, !dbg !0
@1 = private unnamed_addr constant [4 x i8] c"Root", align 1
@2 = private unnamed_addr constant [7 x i8] c"Current", align 1
@3 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsgb4gPAseikh_12tracing_core4span2IdNtB6_5Debug3fmtCslIemzedAtQF_5bench }>, align 8, !dbg !1360
@4 = private unnamed_addr constant [8 x i8] c"Explicit", align 1
@5 = private unnamed_addr constant [31 x i8] c"Unable to allocate another span", align 1
@6 = private unnamed_addr constant [119 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tracing-subscriber-0.3.23/src/registry/sharded.rs\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"v\00\00\00\00\00\00\00\0C\01\00\00\0E\00\00\00" }>, align 8
@8 = private constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded8RegistryECslIemzedAtQF_5bench, [16 x i8] c" \02\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvYNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber20on_register_dispatchCslIemzedAtQF_5bench, ptr @_RNvXs0_NtNtCs7n8GKOt6esj_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber17register_callsite, ptr @_RNvXs0_NtNtCs7n8GKOt6esj_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber7enabled, ptr @_RNvYNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber14max_level_hintCslIemzedAtQF_5bench, ptr @_RNvXs0_NtNtCs7n8GKOt6esj_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber8new_span, ptr @_RNvXs0_NtNtCs7n8GKOt6esj_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber6record, ptr @_RNvXs0_NtNtCs7n8GKOt6esj_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber19record_follows_from, ptr @_RNvXs0_NtNtCs7n8GKOt6esj_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber13event_enabled, ptr @_RNvXs0_NtNtCs7n8GKOt6esj_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber5event, ptr @_RNvXs0_NtNtCs7n8GKOt6esj_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber5enter, ptr @_RNvXs0_NtNtCs7n8GKOt6esj_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber4exit, ptr @_RNvXs0_NtNtCs7n8GKOt6esj_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber10clone_span, ptr @_RNvYNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber9drop_spanCslIemzedAtQF_5bench, ptr @_RNvXs0_NtNtCs7n8GKOt6esj_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber9try_close, ptr @_RNvXs0_NtNtCs7n8GKOt6esj_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber12current_span, ptr @_RNvYNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber12downcast_rawCslIemzedAtQF_5bench }>, align 8, !dbg !1369
@9 = private constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layered7LayeredINtNtNtBI_3fmt9fmt_layer5LayerNtNtNtBI_8registry7sharded8RegistryEB26_EECslIemzedAtQF_5bench, [16 x i8] c"@\02\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber20on_register_dispatchCslIemzedAtQF_5bench, ptr @_RNvXs_NtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber17register_callsiteCslIemzedAtQF_5bench, ptr @_RNvXs_NtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber7enabledCslIemzedAtQF_5bench, ptr @_RNvXs_NtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber14max_level_hintCslIemzedAtQF_5bench, ptr @_RNvXs_NtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber8new_spanCslIemzedAtQF_5bench, ptr @_RNvXs_NtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber6recordCslIemzedAtQF_5bench, ptr @_RNvXs_NtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber19record_follows_fromCslIemzedAtQF_5bench, ptr @_RNvXs_NtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber13event_enabledCslIemzedAtQF_5bench, ptr @_RNvXs_NtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber5eventCslIemzedAtQF_5bench, ptr @_RNvXs_NtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber5enterCslIemzedAtQF_5bench, ptr @_RNvXs_NtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber4exitCslIemzedAtQF_5bench, ptr @_RNvXs_NtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber10clone_spanCslIemzedAtQF_5bench, ptr @_RNvXs_NtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber9drop_spanCslIemzedAtQF_5bench, ptr @_RNvXs_NtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber9try_closeCslIemzedAtQF_5bench, ptr @_RNvXs_NtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber12current_spanCslIemzedAtQF_5bench, ptr @_RNvXs_NtNtCs7n8GKOt6esj_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber12downcast_rawCslIemzedAtQF_5bench }>, align 8, !dbg !1392

; Function Attrs: nonlazybind uwtable
define hidden noundef align 2 ptr @_RINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB3_8AnyValue12downcast_refNtNtNtB7_7builder7styling6StylesECslIemzedAtQF_5bench(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 !dbg !1538 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
    #dbg_value(ptr %0, !1671, !DIExpression(), !1672)
    #dbg_declare(ptr %i.a, !1673, !DIExpression(), !1690)
    #dbg_declare(ptr poison, !1689, !DIExpression(), !1709)
    #dbg_value(ptr %0, !1710, !DIExpression(), !1718)
    #dbg_value(ptr %0, !1720, !DIExpression(), !1730)
  %i.b = load ptr, ptr %0, align 8, !dbg !1732, !nonnull !75, !noundef !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1732
  %i.d = load ptr, ptr %i.c, align 8, !dbg !1732, !nonnull !75, !align !1740, !noundef !75 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !1741
  %i.f = load i64, ptr %i.e, align 8, !dbg !1741, !range !1742, !invariant.load !75
  %i.g = add nsw i64 %i.f, -1, !dbg !1741
  %i.h = and i64 %i.g, -16, !dbg !1741
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h, !dbg !1741
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !1741 ; 2 uses
    #dbg_value(ptr %i.j, !1707, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1743)
    #dbg_value(ptr %i.d, !1707, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1743)
    #dbg_value(ptr %i.j, !1696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1744)
    #dbg_value(ptr %i.j, !1688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1745)
    #dbg_value(ptr %i.d, !1696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1744)
    #dbg_value(ptr %i.d, !1688, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1745)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1746
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !1747
  %i.l = load ptr, ptr %i.k, align 8, !dbg !1747, !invariant.load !75, !nonnull !75
  call void %i.l(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.j) #15, !dbg !1748
    #dbg_value(ptr poison, !1749, !DIExpression(), !1757)
    #dbg_value(ptr %i.a, !1756, !DIExpression(), !1759)
  %i.m = load i128, ptr %i.a, align 16, !dbg !1760, !noundef !75
  %i.n = icmp eq i128 %i.m, 90952320916136149566112805445207387820, !dbg !1767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1768
  %. = select i1 %i.n, ptr %i.j, ptr null, !dbg !1769
  ret ptr %., !dbg !1770
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoNtCslIemzedAtQF_5bench11CipherSuiteEB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1771 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
    #dbg_declare(ptr poison, !1824, !DIExpression(DW_OP_LLVM_fragment, 16, 48), !1873)
    #dbg_declare(ptr poison, !1820, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !1875)
    #dbg_declare(ptr %1, !1794, !DIExpression(), !1876)
    #dbg_declare(ptr poison, !1795, !DIExpression(), !1877)
    #dbg_declare(ptr poison, !1868, !DIExpression(), !1878)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1879
  %i.f = load ptr, ptr %1, align 8, !dbg !1880, !nonnull !75, !noundef !75 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1880
  %i.h = load ptr, ptr %i.g, align 8, !dbg !1880, !nonnull !75, !align !1740, !noundef !75 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1881), !dbg !1884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !1885
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.i, align 8, !noalias !1885
    #dbg_declare(ptr %i.d, !1887, !DIExpression(), !1913)
    #dbg_declare(ptr %i.c, !1915, !DIExpression(), !1922)
    #dbg_declare(ptr poison, !1921, !DIExpression(), !1930)
    #dbg_value(ptr %i.d, !1931, !DIExpression(), !1934)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !1936
  %i.k = load i64, ptr %i.j, align 8, !dbg !1936, !range !1742, !invariant.load !75, !alias.scope !1881, !noalias !1937
  %i.l = add nsw i64 %i.k, -1, !dbg !1936
  %i.m = and i64 %i.l, -16, !dbg !1936
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.m, !dbg !1936
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !1936
    #dbg_value(ptr %i.o, !1928, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1938)
    #dbg_value(ptr %i.h, !1928, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1938)
    #dbg_value(ptr %i.o, !1920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1939)
    #dbg_value(ptr %i.h, !1920, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1939)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1940, !noalias !1885
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !1941
  %i.q = load ptr, ptr %i.p, align 8, !dbg !1941, !invariant.load !75, !alias.scope !1881, !noalias !1937, !nonnull !75
  invoke void %i.q(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.o)
          to label %_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtCslIemzedAtQF_5bench11CipherSuiteEB1W_.exit unwind label %bb.b, !dbg !1942, !noalias !1937

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.d, !1943, !DIExpression(), !1952)
    #dbg_value(ptr %i.d, !1954, !DIExpression(), !1958)
    #dbg_value(i64 1, !1960, !DIExpression(), !1970)
    #dbg_value(i8 1, !1969, !DIExpression(), !1970)
    #dbg_value(i64 1, !1972, !DIExpression(), !1982)
    #dbg_value(i8 1, !1979, !DIExpression(), !1982)
    #dbg_value(ptr %i.f, !1968, !DIExpression(), !1984)
    #dbg_value(ptr %i.f, !1978, !DIExpression(), !1982)
  %i.s = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !1985, !noalias !1986
  %i.t = icmp eq i64 %i.s, 1, !dbg !1991
  br i1 %i.t, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECslIemzedAtQF_5bench.exit.i, !dbg !1991

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !1992, !DIExpression(), !1997)
  fence acquire, !dbg !1999
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs172jLVBUT4Z_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECslIemzedAtQF_5bench.exit.i unwind label %bb.d, !dbg !2000, !noalias !1937

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !2001, !noalias !1937
  unreachable, !dbg !2001

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECslIemzedAtQF_5bench.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.r, !dbg !2001

_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtCslIemzedAtQF_5bench11CipherSuiteEB1W_.exit: ; preds = %bb.a
    #dbg_value(ptr poison, !2002, !DIExpression(), !2006)
    #dbg_value(ptr %i.c, !2005, !DIExpression(), !2008)
  %i.v = load i128, ptr %i.c, align 16, !dbg !2009, !noalias !1885, !noundef !75
  %i.w = icmp eq i128 %i.v, 99847158947564953179609069703294525458, !dbg !2012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2013, !noalias !1885
    #dbg_value(ptr poison, !2014, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2046)
    #dbg_value(ptr poison, !2014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2046)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2048
    #dbg_value(ptr poison, !2041, !DIExpression(), !2049)
    #dbg_value(ptr poison, !2050, !DIExpression(), !2056)
  br i1 %i.w, label %bb.f, label %bb.e, !dbg !2058

bb.e:                                             ; preds = %_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtCslIemzedAtQF_5bench11CipherSuiteEB1W_.exit
    #dbg_value(ptr poison, !2044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2059)
    #dbg_value(ptr poison, !2055, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2060)
    #dbg_value(ptr poison, !2044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2059)
    #dbg_value(ptr poison, !2055, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2060)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !dbg !2062
    #dbg_value(ptr poison, !1820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2063)
    #dbg_value(ptr poison, !1820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2063)
  store ptr %i.f, ptr %0, align 8, !dbg !2061
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2061
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !2061
  br label %bb.k, !dbg !2064

bb.f:                                             ; preds = %_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtCslIemzedAtQF_5bench11CipherSuiteEB1W_.exit
    #dbg_value(ptr poison, !1797, !DIExpression(), !2065)
    #dbg_value(ptr poison, !2066, !DIExpression(), !2093)
    #dbg_declare(ptr poison, !2085, !DIExpression(), !2095)
    #dbg_value(i64 1, !2096, !DIExpression(), !2121)
    #dbg_value(i64 0, !2118, !DIExpression(), !2121)
    #dbg_value(i8 0, !2119, !DIExpression(), !2121)
    #dbg_value(i8 0, !2120, !DIExpression(), !2121)
    #dbg_value(ptr poison, !2117, !DIExpression(), !2123)
    #dbg_value(ptr poison, !2124, !DIExpression(), !2136)
    #dbg_value(i64 1, !2129, !DIExpression(), !2136)
    #dbg_value(i64 0, !2130, !DIExpression(), !2136)
    #dbg_value(i8 0, !2131, !DIExpression(), !2136)
    #dbg_value(i8 0, !2132, !DIExpression(), !2136)
  %i.x = cmpxchg ptr %i.f, i64 1, i64 0 monotonic monotonic, align 8, !dbg !2138, !noalias !2139
  %i.y = extractvalue { i64, i1 } %i.x, 1, !dbg !2138
  br i1 %i.y, label %bb.i, label %bb.g, !dbg !2142

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 1, !1824, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2143)
    #dbg_value(i8 poison, !1824, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2143)
    #dbg_value(ptr poison, !1824, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2143)
    #dbg_value(ptr poison, !1871, !DIExpression(), !2144)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
    #dbg_declare(ptr poison, !2145, !DIExpression(), !2151)
    #dbg_declare(ptr %i.a, !2150, !DIExpression(), !2153)
    #dbg_value(ptr %i.a, !2154, !DIExpression(), !2161)
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !2163
  %.val.i = load i8, ptr %i.z, align 1, !dbg !2164, !range !2165, !noundef !75
    #dbg_value(ptr %i.a, !2166, !DIExpression(), !2172)
    #dbg_value(ptr %i.a, !2174, !DIExpression(), !2177)
    #dbg_value(i64 1, !2179, !DIExpression(), !2184)
    #dbg_value(i8 1, !2183, !DIExpression(), !2184)
    #dbg_value(i64 1, !2186, !DIExpression(), !2191)
    #dbg_value(i8 1, !2190, !DIExpression(), !2191)
    #dbg_value(ptr poison, !2182, !DIExpression(), !2193)
    #dbg_value(ptr poison, !2189, !DIExpression(), !2191)
  %i.aa = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !2194, !noalias !2195
  %i.ab = icmp eq i64 %i.aa, 1, !dbg !2200
  br i1 %i.ab, label %bb.h, label %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoNtCslIemzedAtQF_5bench11CipherSuiteE0B1l_.exit, !dbg !2200

bb.h:                                             ; preds = %bb.g
    #dbg_value(i8 2, !1992, !DIExpression(), !2201)
  fence acquire, !dbg !2203
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCslIemzedAtQF_5bench11CipherSuiteE9drop_slowBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #16, !dbg !2204
  br label %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoNtCslIemzedAtQF_5bench11CipherSuiteE0B1l_.exit, !dbg !2204

_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoNtCslIemzedAtQF_5bench11CipherSuiteE0B1l_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2205
    #dbg_value(i8 %.val.i, !1822, !DIExpression(), !2206)
  br label %bb.j, !dbg !2207

bb.i:                                             ; preds = %bb.f
    #dbg_value(i8 2, !1992, !DIExpression(), !2208)
  fence acquire, !dbg !2210
    #dbg_value(ptr poison, !2072, !DIExpression(), !2211)
    #dbg_value(ptr poison, !2212, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !2218)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !2220
  %i.ad = load i8, ptr %i.ac, align 8, !dbg !2220, !range !2165, !noalias !2139, !noundef !75
    #dbg_value(i8 %i.ad, !2083, !DIExpression(), !2221)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2222, !noalias !2139
  store ptr %i.f, ptr %i.b, align 8, !dbg !2223, !noalias !2139
    #dbg_value(i8 %i.ad, !1824, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2143)
    #dbg_value(i8 0, !1824, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2143)
    #dbg_value(ptr %i.b, !2224, !DIExpression(), !2232)
  call void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtCslIemzedAtQF_5bench11CipherSuiteENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !2234, !noalias !2139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2235, !noalias !2139
    #dbg_value(i8 %i.ad, !1824, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2143)
    #dbg_value(ptr poison, !1824, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2143)
    #dbg_value(i8 %i.ad, !1822, !DIExpression(), !2206)
  br label %bb.j, !dbg !2236

bb.j:                                             ; preds = %bb.i, %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoNtCslIemzedAtQF_5bench11CipherSuiteE0B1l_.exit
  %.sroa.06.0 = phi i8 [ %.val.i, %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoNtCslIemzedAtQF_5bench11CipherSuiteE0B1l_.exit ], [ %i.ad, %bb.i ], !dbg !2143
    #dbg_value(i8 %.sroa.06.0, !1822, !DIExpression(), !2206)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2237
  store i8 %.sroa.06.0, ptr %i.ae, align 8, !dbg !2237
  store ptr null, ptr %0, align 8, !dbg !2237
  br label %bb.k, !dbg !2064

bb.k:                                             ; preds = %bb.j, %bb.e
  ret void, !dbg !2238
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intobECslIemzedAtQF_5bench(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2239 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
    #dbg_declare(ptr poison, !2287, !DIExpression(DW_OP_LLVM_fragment, 16, 48), !2316)
    #dbg_declare(ptr poison, !2283, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !2318)
    #dbg_declare(ptr %1, !2258, !DIExpression(), !2319)
    #dbg_declare(ptr poison, !2259, !DIExpression(), !2320)
    #dbg_declare(ptr poison, !2311, !DIExpression(), !2321)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2322
  %i.f = load ptr, ptr %1, align 8, !dbg !2323, !nonnull !75, !noundef !75 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2323
  %i.h = load ptr, ptr %i.g, align 8, !dbg !2323, !nonnull !75, !align !1740, !noundef !75 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2324), !dbg !2327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !2328
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.i, align 8, !noalias !2328
    #dbg_declare(ptr %i.d, !2330, !DIExpression(), !2355)
    #dbg_declare(ptr %i.c, !2357, !DIExpression(), !2364)
    #dbg_declare(ptr poison, !2363, !DIExpression(), !2370)
    #dbg_value(ptr %i.d, !2371, !DIExpression(), !2374)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !2376
  %i.k = load i64, ptr %i.j, align 8, !dbg !2376, !range !1742, !invariant.load !75, !alias.scope !2324, !noalias !2377
  %i.l = add nsw i64 %i.k, -1, !dbg !2376
  %i.m = and i64 %i.l, -16, !dbg !2376
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.m, !dbg !2376
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !2376
    #dbg_value(ptr %i.o, !2368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2378)
    #dbg_value(ptr %i.h, !2368, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2378)
    #dbg_value(ptr %i.o, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2379)
    #dbg_value(ptr %i.h, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2379)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2380, !noalias !2328
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !2381
  %i.q = load ptr, ptr %i.p, align 8, !dbg !2381, !invariant.load !75, !alias.scope !2324, !noalias !2377, !nonnull !75
  invoke void %i.q(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.o)
          to label %_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastbECslIemzedAtQF_5bench.exit unwind label %bb.b, !dbg !2382, !noalias !2377

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.d, !1943, !DIExpression(), !2383)
    #dbg_value(ptr %i.d, !1954, !DIExpression(), !2385)
    #dbg_value(i64 1, !1960, !DIExpression(), !2387)
    #dbg_value(i8 1, !1969, !DIExpression(), !2387)
    #dbg_value(i64 1, !1972, !DIExpression(), !2389)
    #dbg_value(i8 1, !1979, !DIExpression(), !2389)
    #dbg_value(ptr %i.f, !1968, !DIExpression(), !2391)
    #dbg_value(ptr %i.f, !1978, !DIExpression(), !2389)
  %i.s = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !2392, !noalias !2393
  %i.t = icmp eq i64 %i.s, 1, !dbg !2398
  br i1 %i.t, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECslIemzedAtQF_5bench.exit.i, !dbg !2398

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !1992, !DIExpression(), !2399)
  fence acquire, !dbg !2401
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs172jLVBUT4Z_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECslIemzedAtQF_5bench.exit.i unwind label %bb.d, !dbg !2402, !noalias !2377

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !2403, !noalias !2377
  unreachable, !dbg !2403

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECslIemzedAtQF_5bench.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.r, !dbg !2403

_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastbECslIemzedAtQF_5bench.exit: ; preds = %bb.a
    #dbg_value(ptr poison, !2404, !DIExpression(), !2408)
    #dbg_value(ptr %i.c, !2407, !DIExpression(), !2410)
  %i.v = load i128, ptr %i.c, align 16, !dbg !2411, !noalias !2328, !noundef !75
  %i.w = icmp eq i128 %i.v, 74484837202795168974482589160156483361, !dbg !2414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2415, !noalias !2328
    #dbg_value(ptr poison, !2416, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2446)
    #dbg_value(ptr poison, !2416, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2446)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2448
    #dbg_value(ptr poison, !2441, !DIExpression(), !2449)
    #dbg_value(ptr poison, !2450, !DIExpression(), !2456)
  br i1 %i.w, label %bb.f, label %bb.e, !dbg !2458

bb.e:                                             ; preds = %_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastbECslIemzedAtQF_5bench.exit
    #dbg_value(ptr poison, !2444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2459)
    #dbg_value(ptr poison, !2455, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2460)
    #dbg_value(ptr poison, !2444, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2459)
    #dbg_value(ptr poison, !2455, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2460)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !dbg !2462
    #dbg_value(ptr poison, !2283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2463)
    #dbg_value(ptr poison, !2283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2463)
  store ptr %i.f, ptr %0, align 8, !dbg !2461
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2461
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !2461
  br label %bb.k, !dbg !2464

bb.f:                                             ; preds = %_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastbECslIemzedAtQF_5bench.exit
    #dbg_value(ptr poison, !2261, !DIExpression(), !2465)
    #dbg_value(ptr poison, !2466, !DIExpression(), !2493)
    #dbg_declare(ptr poison, !2485, !DIExpression(), !2495)
    #dbg_value(i64 1, !2496, !DIExpression(), !2503)
    #dbg_value(i64 0, !2500, !DIExpression(), !2503)
    #dbg_value(i8 0, !2501, !DIExpression(), !2503)
    #dbg_value(i8 0, !2502, !DIExpression(), !2503)
    #dbg_value(ptr poison, !2499, !DIExpression(), !2505)
    #dbg_value(ptr poison, !2124, !DIExpression(), !2506)
    #dbg_value(i64 1, !2129, !DIExpression(), !2506)
    #dbg_value(i64 0, !2130, !DIExpression(), !2506)
    #dbg_value(i8 0, !2131, !DIExpression(), !2506)
    #dbg_value(i8 0, !2132, !DIExpression(), !2506)
  %i.x = cmpxchg ptr %i.f, i64 1, i64 0 monotonic monotonic, align 8, !dbg !2508, !noalias !2509
  %i.y = extractvalue { i64, i1 } %i.x, 1, !dbg !2508
  br i1 %i.y, label %bb.i, label %bb.g, !dbg !2512

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 1, !2287, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2513)
    #dbg_value(i8 poison, !2287, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2513)
    #dbg_value(ptr poison, !2287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2513)
    #dbg_value(ptr poison, !2314, !DIExpression(), !2514)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
    #dbg_declare(ptr poison, !2515, !DIExpression(), !2521)
    #dbg_declare(ptr %i.a, !2520, !DIExpression(), !2523)
    #dbg_value(ptr %i.a, !2524, !DIExpression(), !2531)
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !2533
    #dbg_value(ptr %i.z, !2534, !DIExpression(), !2543)
  %i.aa = load i8, ptr %i.z, align 1, !dbg !2545, !range !2546, !alias.scope !2547, !noundef !75
    #dbg_value(ptr %i.a, !2550, !DIExpression(), !2556)
    #dbg_value(ptr %i.a, !2558, !DIExpression(), !2561)
    #dbg_value(i64 1, !2563, !DIExpression(), !2568)
    #dbg_value(i8 1, !2567, !DIExpression(), !2568)
    #dbg_value(i64 1, !2570, !DIExpression(), !2575)
    #dbg_value(i8 1, !2574, !DIExpression(), !2575)
    #dbg_value(ptr poison, !2566, !DIExpression(), !2577)
    #dbg_value(ptr poison, !2573, !DIExpression(), !2575)
  %i.ab = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !2578, !noalias !2579
  %i.ac = icmp eq i64 %i.ab, 1, !dbg !2584
  br i1 %i.ac, label %bb.h, label %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intobE0CslIemzedAtQF_5bench.exit, !dbg !2584

bb.h:                                             ; preds = %bb.g
    #dbg_value(i8 2, !1992, !DIExpression(), !2585)
  fence acquire, !dbg !2587
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcbE9drop_slowCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #16, !dbg !2588
  br label %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intobE0CslIemzedAtQF_5bench.exit, !dbg !2588

_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intobE0CslIemzedAtQF_5bench.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2589
    #dbg_value(i8 %i.aa, !2285, !DIExpression(), !2590)
  br label %bb.j, !dbg !2591

bb.i:                                             ; preds = %bb.f
    #dbg_value(i8 2, !1992, !DIExpression(), !2592)
  fence acquire, !dbg !2594
    #dbg_value(ptr poison, !2472, !DIExpression(), !2595)
    #dbg_value(ptr poison, !2596, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !2602)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !2604
  %i.ae = load i8, ptr %i.ad, align 8, !dbg !2604, !range !2546, !noalias !2509, !noundef !75
    #dbg_value(i8 %i.ae, !2483, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2605)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2606, !noalias !2509
  store ptr %i.f, ptr %i.b, align 8, !dbg !2607, !noalias !2509
    #dbg_value(i8 %i.ae, !2287, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2513)
    #dbg_value(i8 0, !2287, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2513)
    #dbg_value(ptr %i.b, !2608, !DIExpression(), !2616)
  call void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakbENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !2618, !noalias !2509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2619, !noalias !2509
    #dbg_value(i8 %i.ae, !2287, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2513)
    #dbg_value(ptr poison, !2287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2513)
    #dbg_value(i8 %i.ae, !2285, !DIExpression(), !2590)
  br label %bb.j, !dbg !2620

bb.j:                                             ; preds = %bb.i, %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intobE0CslIemzedAtQF_5bench.exit
  %.sroa.06.0 = phi i8 [ %i.aa, %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intobE0CslIemzedAtQF_5bench.exit ], [ %i.ae, %bb.i ], !dbg !2513
    #dbg_value(i8 %.sroa.06.0, !2285, !DIExpression(), !2590)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2621
  store i8 %.sroa.06.0, ptr %i.af, align 8, !dbg !2621
  store ptr null, ptr %0, align 8, !dbg !2621
  br label %bb.k, !dbg !2464

bb.k:                                             ; preds = %bb.j, %bb.e
  ret void, !dbg !2622
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intojECslIemzedAtQF_5bench(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2623 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
    #dbg_declare(ptr poison, !2667, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !2671)
    #dbg_declare(ptr %1, !2642, !DIExpression(), !2672)
    #dbg_declare(ptr poison, !2643, !DIExpression(), !2673)
    #dbg_declare(ptr poison, !2674, !DIExpression(), !2703)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2705
  %i.f = load ptr, ptr %1, align 8, !dbg !2706, !nonnull !75, !noundef !75 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2706
  %i.h = load ptr, ptr %i.g, align 8, !dbg !2706, !nonnull !75, !align !1740, !noundef !75 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2707), !dbg !2710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !2711
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.i, align 8, !noalias !2711
    #dbg_declare(ptr %i.d, !2713, !DIExpression(), !2738)
    #dbg_declare(ptr %i.c, !2740, !DIExpression(), !2747)
    #dbg_declare(ptr poison, !2746, !DIExpression(), !2753)
    #dbg_value(ptr %i.d, !2754, !DIExpression(), !2757)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !2759
  %i.k = load i64, ptr %i.j, align 8, !dbg !2759, !range !1742, !invariant.load !75, !alias.scope !2707, !noalias !2760
  %i.l = add nsw i64 %i.k, -1, !dbg !2759
  %i.m = and i64 %i.l, -16, !dbg !2759
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.m, !dbg !2759
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !2759
    #dbg_value(ptr %i.o, !2751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2761)
    #dbg_value(ptr %i.h, !2751, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2761)
    #dbg_value(ptr %i.o, !2745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2762)
    #dbg_value(ptr %i.h, !2745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2762)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2763, !noalias !2711
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !2764
  %i.q = load ptr, ptr %i.p, align 8, !dbg !2764, !invariant.load !75, !alias.scope !2707, !noalias !2760, !nonnull !75
  invoke void %i.q(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.o)
          to label %_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastjECslIemzedAtQF_5bench.exit unwind label %bb.b, !dbg !2765, !noalias !2760

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.d, !1943, !DIExpression(), !2766)
    #dbg_value(ptr %i.d, !1954, !DIExpression(), !2768)
    #dbg_value(i64 1, !1960, !DIExpression(), !2770)
    #dbg_value(i8 1, !1969, !DIExpression(), !2770)
    #dbg_value(i64 1, !1972, !DIExpression(), !2772)
    #dbg_value(i8 1, !1979, !DIExpression(), !2772)
    #dbg_value(ptr %i.f, !1968, !DIExpression(), !2774)
    #dbg_value(ptr %i.f, !1978, !DIExpression(), !2772)
  %i.s = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !2775, !noalias !2776
  %i.t = icmp eq i64 %i.s, 1, !dbg !2781
  br i1 %i.t, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECslIemzedAtQF_5bench.exit.i, !dbg !2781

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !1992, !DIExpression(), !2782)
  fence acquire, !dbg !2784
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs172jLVBUT4Z_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECslIemzedAtQF_5bench.exit.i unwind label %bb.d, !dbg !2785, !noalias !2760

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !2786, !noalias !2760
  unreachable, !dbg !2786

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECslIemzedAtQF_5bench.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.r, !dbg !2786

_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastjECslIemzedAtQF_5bench.exit: ; preds = %bb.a
    #dbg_value(ptr poison, !2787, !DIExpression(), !2791)
    #dbg_value(ptr %i.c, !2790, !DIExpression(), !2793)
  %i.v = load i128, ptr %i.c, align 16, !dbg !2794, !noalias !2711, !noundef !75
  %i.w = icmp eq i128 %i.v, -62271773597008635811074466929279596351, !dbg !2797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2798, !noalias !2711
    #dbg_value(ptr poison, !2799, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2829)
    #dbg_value(ptr poison, !2799, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2829)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2831
    #dbg_value(ptr poison, !2824, !DIExpression(), !2832)
    #dbg_value(ptr poison, !2833, !DIExpression(), !2839)
  br i1 %i.w, label %bb.f, label %bb.e, !dbg !2841

bb.e:                                             ; preds = %_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastjECslIemzedAtQF_5bench.exit
    #dbg_value(ptr poison, !2827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2842)
    #dbg_value(ptr poison, !2838, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2843)
    #dbg_value(ptr poison, !2827, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2842)
    #dbg_value(ptr poison, !2838, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2843)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2844
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !dbg !2845
    #dbg_value(ptr poison, !2667, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2846)
    #dbg_value(ptr poison, !2667, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2846)
  store ptr %i.f, ptr %0, align 8, !dbg !2844
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2844
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !2844
  br label %bb.k, !dbg !2847

bb.f:                                             ; preds = %_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastjECslIemzedAtQF_5bench.exit
    #dbg_value(ptr poison, !2645, !DIExpression(), !2848)
    #dbg_value(ptr poison, !2849, !DIExpression(), !2876)
    #dbg_declare(ptr poison, !2868, !DIExpression(), !2878)
    #dbg_value(i64 1, !2879, !DIExpression(), !2886)
    #dbg_value(i64 0, !2883, !DIExpression(), !2886)
    #dbg_value(i8 0, !2884, !DIExpression(), !2886)
    #dbg_value(i8 0, !2885, !DIExpression(), !2886)
    #dbg_value(ptr poison, !2882, !DIExpression(), !2888)
    #dbg_value(ptr poison, !2124, !DIExpression(), !2889)
    #dbg_value(i64 1, !2129, !DIExpression(), !2889)
    #dbg_value(i64 0, !2130, !DIExpression(), !2889)
    #dbg_value(i8 0, !2131, !DIExpression(), !2889)
    #dbg_value(i8 0, !2132, !DIExpression(), !2889)
  %i.x = cmpxchg ptr %i.f, i64 1, i64 0 monotonic monotonic, align 8, !dbg !2891
  %i.y = extractvalue { i64, i1 } %i.x, 1, !dbg !2891
  br i1 %i.y, label %bb.i, label %bb.g, !dbg !2892

bb.g:                                             ; preds = %bb.f
    #dbg_value(i64 1, !2698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2893)
    #dbg_value(ptr poison, !2698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2893)
    #dbg_value(ptr poison, !2701, !DIExpression(), !2894)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
    #dbg_declare(ptr poison, !2895, !DIExpression(), !2901)
    #dbg_declare(ptr %i.a, !2900, !DIExpression(), !2903)
    #dbg_value(ptr %i.a, !2904, !DIExpression(), !2911)
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !2913
    #dbg_value(ptr %i.z, !2914, !DIExpression(), !2920)
  %i.aa = load i64, ptr %i.z, align 8, !dbg !2922, !alias.scope !2923, !noundef !75
    #dbg_value(ptr %i.a, !2926, !DIExpression(), !2932)
    #dbg_value(ptr %i.a, !2934, !DIExpression(), !2937)
    #dbg_value(i64 1, !2939, !DIExpression(), !2944)
    #dbg_value(i8 1, !2943, !DIExpression(), !2944)
    #dbg_value(i64 1, !2946, !DIExpression(), !2951)
    #dbg_value(i8 1, !2950, !DIExpression(), !2951)
    #dbg_value(ptr poison, !2942, !DIExpression(), !2953)
    #dbg_value(ptr poison, !2949, !DIExpression(), !2951)
  %i.ab = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !2954, !noalias !2955
  %i.ac = icmp eq i64 %i.ab, 1, !dbg !2960
  br i1 %i.ac, label %bb.h, label %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intojE0CslIemzedAtQF_5bench.exit, !dbg !2960

bb.h:                                             ; preds = %bb.g
    #dbg_value(i8 2, !1992, !DIExpression(), !2961)
  fence acquire, !dbg !2963
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcjE9drop_slowCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #16, !dbg !2964
  br label %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intojE0CslIemzedAtQF_5bench.exit, !dbg !2964

_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intojE0CslIemzedAtQF_5bench.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2965
    #dbg_value(i64 %i.aa, !2669, !DIExpression(), !2966)
  br label %bb.j, !dbg !2967

bb.i:                                             ; preds = %bb.f
    #dbg_value(i8 2, !1992, !DIExpression(), !2968)
  fence acquire, !dbg !2970
    #dbg_value(ptr poison, !2855, !DIExpression(), !2971)
    #dbg_value(ptr poison, !2972, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !2978)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !2980
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !2980, !noundef !75
    #dbg_value(i64 %i.ae, !2866, !DIExpression(), !2981)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2982
  store ptr %i.f, ptr %i.b, align 8, !dbg !2983
    #dbg_value(ptr %i.b, !2984, !DIExpression(), !2992)
  call void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !2994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2995
    #dbg_value(i64 0, !2698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2893)
    #dbg_value(i64 %i.ae, !2698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2893)
    #dbg_value(i64 %i.ae, !2698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2893)
    #dbg_value(i64 %i.ae, !2669, !DIExpression(), !2966)
  br label %bb.j, !dbg !2996

bb.j:                                             ; preds = %bb.i, %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intojE0CslIemzedAtQF_5bench.exit
  %.sroa.06.0 = phi i64 [ %i.aa, %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intojE0CslIemzedAtQF_5bench.exit ], [ %i.ae, %bb.i ], !dbg !2893
    #dbg_value(i64 %.sroa.06.0, !2669, !DIExpression(), !2966)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2997
  store i64 %.sroa.06.0, ptr %i.af, align 8, !dbg !2997
  store ptr null, ptr %0, align 8, !dbg !2997
  br label %bb.k, !dbg !2847

bb.k:                                             ; preds = %bb.j, %bb.e
  ret void, !dbg !2998
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intotECslIemzedAtQF_5bench(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2999 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
    #dbg_declare(ptr poison, !3049, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !3078)
    #dbg_declare(ptr poison, !3045, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !3080)
    #dbg_declare(ptr %1, !3020, !DIExpression(), !3081)
    #dbg_declare(ptr poison, !3021, !DIExpression(), !3082)
    #dbg_declare(ptr poison, !3073, !DIExpression(), !3083)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3084
  %i.f = load ptr, ptr %1, align 8, !dbg !3085, !nonnull !75, !noundef !75 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3085
  %i.h = load ptr, ptr %i.g, align 8, !dbg !3085, !nonnull !75, !align !1740, !noundef !75 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3086), !dbg !3089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !3090
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.i, align 8, !noalias !3090
    #dbg_declare(ptr %i.d, !3092, !DIExpression(), !3117)
    #dbg_declare(ptr %i.c, !3119, !DIExpression(), !3126)
    #dbg_declare(ptr poison, !3125, !DIExpression(), !3132)
    #dbg_value(ptr %i.d, !3133, !DIExpression(), !3136)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !3138
  %i.k = load i64, ptr %i.j, align 8, !dbg !3138, !range !1742, !invariant.load !75, !alias.scope !3086, !noalias !3139
  %i.l = add nsw i64 %i.k, -1, !dbg !3138
  %i.m = and i64 %i.l, -16, !dbg !3138
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.m, !dbg !3138
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !3138
    #dbg_value(ptr %i.o, !3130, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3140)
    #dbg_value(ptr %i.h, !3130, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3140)
    #dbg_value(ptr %i.o, !3124, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3141)
    #dbg_value(ptr %i.h, !3124, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3141)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3142, !noalias !3090
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !3143
  %i.q = load ptr, ptr %i.p, align 8, !dbg !3143, !invariant.load !75, !alias.scope !3086, !noalias !3139, !nonnull !75
  invoke void %i.q(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.o)
          to label %_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcasttECslIemzedAtQF_5bench.exit unwind label %bb.b, !dbg !3144, !noalias !3139

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.d, !1943, !DIExpression(), !3145)
    #dbg_value(ptr %i.d, !1954, !DIExpression(), !3147)
    #dbg_value(i64 1, !1960, !DIExpression(), !3149)
    #dbg_value(i8 1, !1969, !DIExpression(), !3149)
    #dbg_value(i64 1, !1972, !DIExpression(), !3151)
    #dbg_value(i8 1, !1979, !DIExpression(), !3151)
    #dbg_value(ptr %i.f, !1968, !DIExpression(), !3153)
    #dbg_value(ptr %i.f, !1978, !DIExpression(), !3151)
  %i.s = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !3154, !noalias !3155
  %i.t = icmp eq i64 %i.s, 1, !dbg !3160
  br i1 %i.t, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECslIemzedAtQF_5bench.exit.i, !dbg !3160

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !1992, !DIExpression(), !3161)
  fence acquire, !dbg !3163
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs172jLVBUT4Z_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECslIemzedAtQF_5bench.exit.i unwind label %bb.d, !dbg !3164, !noalias !3139

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !3165, !noalias !3139
  unreachable, !dbg !3165

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECslIemzedAtQF_5bench.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.r, !dbg !3165

_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcasttECslIemzedAtQF_5bench.exit: ; preds = %bb.a
    #dbg_value(ptr poison, !3166, !DIExpression(), !3170)
    #dbg_value(ptr %i.c, !3169, !DIExpression(), !3172)
  %i.v = load i128, ptr %i.c, align 16, !dbg !3173, !noalias !3090, !noundef !75
  %i.w = icmp eq i128 %i.v, 43781137403873859948829673203591564308, !dbg !3176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3177, !noalias !3090
    #dbg_value(ptr poison, !3178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3208)
    #dbg_value(ptr poison, !3178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3208)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3210
    #dbg_value(ptr poison, !3203, !DIExpression(), !3211)
    #dbg_value(ptr poison, !3212, !DIExpression(), !3218)
  br i1 %i.w, label %bb.f, label %bb.e, !dbg !3220

bb.e:                                             ; preds = %_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcasttECslIemzedAtQF_5bench.exit
    #dbg_value(ptr poison, !3206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3221)
    #dbg_value(ptr poison, !3217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3222)
    #dbg_value(ptr poison, !3206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3221)
    #dbg_value(ptr poison, !3217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3222)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !dbg !3224
    #dbg_value(ptr poison, !3045, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3225)
    #dbg_value(ptr poison, !3045, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3225)
  store ptr %i.f, ptr %0, align 8, !dbg !3223
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3223
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !3223
  br label %bb.k, !dbg !3226

bb.f:                                             ; preds = %_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcasttECslIemzedAtQF_5bench.exit
    #dbg_value(ptr poison, !3023, !DIExpression(), !3227)
    #dbg_value(ptr poison, !3228, !DIExpression(), !3255)
    #dbg_declare(ptr poison, !3247, !DIExpression(), !3257)
    #dbg_value(i64 1, !3258, !DIExpression(), !3265)
    #dbg_value(i64 0, !3262, !DIExpression(), !3265)
    #dbg_value(i8 0, !3263, !DIExpression(), !3265)
    #dbg_value(i8 0, !3264, !DIExpression(), !3265)
    #dbg_value(ptr poison, !3261, !DIExpression(), !3267)
    #dbg_value(ptr poison, !2124, !DIExpression(), !3268)
    #dbg_value(i64 1, !2129, !DIExpression(), !3268)
    #dbg_value(i64 0, !2130, !DIExpression(), !3268)
    #dbg_value(i8 0, !2131, !DIExpression(), !3268)
    #dbg_value(i8 0, !2132, !DIExpression(), !3268)
  %i.x = cmpxchg ptr %i.f, i64 1, i64 0 monotonic monotonic, align 8, !dbg !3270, !noalias !3271
  %i.y = extractvalue { i64, i1 } %i.x, 1, !dbg !3270
  br i1 %i.y, label %bb.i, label %bb.g, !dbg !3274

bb.g:                                             ; preds = %bb.f
    #dbg_value(i16 1, !3049, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3275)
    #dbg_value(i16 poison, !3049, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !3275)
    #dbg_value(ptr poison, !3049, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3275)
    #dbg_value(ptr poison, !3076, !DIExpression(), !3276)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
    #dbg_declare(ptr poison, !3277, !DIExpression(), !3283)
    #dbg_declare(ptr %i.a, !3282, !DIExpression(), !3285)
    #dbg_value(ptr %i.a, !3286, !DIExpression(), !3293)
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !3295
    #dbg_value(ptr %i.z, !3296, !DIExpression(), !3302)
  %i.aa = load i16, ptr %i.z, align 2, !dbg !3304, !alias.scope !3305, !noundef !75
    #dbg_value(ptr %i.a, !3308, !DIExpression(), !3314)
    #dbg_value(ptr %i.a, !3316, !DIExpression(), !3319)
    #dbg_value(i64 1, !3321, !DIExpression(), !3326)
    #dbg_value(i8 1, !3325, !DIExpression(), !3326)
    #dbg_value(i64 1, !3328, !DIExpression(), !3333)
    #dbg_value(i8 1, !3332, !DIExpression(), !3333)
    #dbg_value(ptr poison, !3324, !DIExpression(), !3335)
    #dbg_value(ptr poison, !3331, !DIExpression(), !3333)
  %i.ab = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !3336, !noalias !3337
  %i.ac = icmp eq i64 %i.ab, 1, !dbg !3342
  br i1 %i.ac, label %bb.h, label %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intotE0CslIemzedAtQF_5bench.exit, !dbg !3342

bb.h:                                             ; preds = %bb.g
    #dbg_value(i8 2, !1992, !DIExpression(), !3343)
  fence acquire, !dbg !3345
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArctE9drop_slowCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #16, !dbg !3346
  br label %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intotE0CslIemzedAtQF_5bench.exit, !dbg !3346

_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intotE0CslIemzedAtQF_5bench.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3347
    #dbg_value(i16 %i.aa, !3047, !DIExpression(), !3348)
  br label %bb.j, !dbg !3349

bb.i:                                             ; preds = %bb.f
    #dbg_value(i8 2, !1992, !DIExpression(), !3350)
  fence acquire, !dbg !3352
    #dbg_value(ptr poison, !3234, !DIExpression(), !3353)
    #dbg_value(ptr poison, !3354, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !3360)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !3362
  %i.ae = load i16, ptr %i.ad, align 8, !dbg !3362, !noalias !3271, !noundef !75
    #dbg_value(i16 %i.ae, !3245, !DIExpression(), !3363)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3364, !noalias !3271
  store ptr %i.f, ptr %i.b, align 8, !dbg !3365, !noalias !3271
    #dbg_value(i16 %i.ae, !3049, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !3275)
    #dbg_value(i16 0, !3049, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3275)
    #dbg_value(ptr %i.b, !3366, !DIExpression(), !3374)
  call void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeaktENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !3376, !noalias !3271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3377, !noalias !3271
    #dbg_value(i16 %i.ae, !3049, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !3275)
    #dbg_value(ptr poison, !3049, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3275)
    #dbg_value(i16 %i.ae, !3047, !DIExpression(), !3348)
  br label %bb.j, !dbg !3378

bb.j:                                             ; preds = %bb.i, %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intotE0CslIemzedAtQF_5bench.exit
  %.sroa.06.0 = phi i16 [ %i.aa, %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intotE0CslIemzedAtQF_5bench.exit ], [ %i.ae, %bb.i ], !dbg !3275
    #dbg_value(i16 %.sroa.06.0, !3047, !DIExpression(), !3348)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3379
  store i16 %.sroa.06.0, ptr %i.af, align 8, !dbg !3379
  store ptr null, ptr %0, align 8, !dbg !3379
  br label %bb.k, !dbg !3226

bb.k:                                             ; preds = %bb.j, %bb.e
  ret void, !dbg !3380
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoyECslIemzedAtQF_5bench(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3381 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
    #dbg_declare(ptr poison, !3425, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !3429)
    #dbg_declare(ptr %1, !3400, !DIExpression(), !3430)
    #dbg_declare(ptr poison, !3401, !DIExpression(), !3431)
    #dbg_declare(ptr poison, !3432, !DIExpression(), !3461)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3463
  %i.f = load ptr, ptr %1, align 8, !dbg !3464, !nonnull !75, !noundef !75 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3464
  %i.h = load ptr, ptr %i.g, align 8, !dbg !3464, !nonnull !75, !align !1740, !noundef !75 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3465), !dbg !3468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !3469
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.i, align 8, !noalias !3469
    #dbg_declare(ptr %i.d, !3471, !DIExpression(), !3496)
    #dbg_declare(ptr %i.c, !3498, !DIExpression(), !3505)
    #dbg_declare(ptr poison, !3504, !DIExpression(), !3511)
    #dbg_value(ptr %i.d, !3512, !DIExpression(), !3515)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !3517
  %i.k = load i64, ptr %i.j, align 8, !dbg !3517, !range !1742, !invariant.load !75, !alias.scope !3465, !noalias !3518
  %i.l = add nsw i64 %i.k, -1, !dbg !3517
  %i.m = and i64 %i.l, -16, !dbg !3517
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.m, !dbg !3517
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !3517
    #dbg_value(ptr %i.o, !3509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3519)
    #dbg_value(ptr %i.h, !3509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3519)
    #dbg_value(ptr %i.o, !3503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3520)
    #dbg_value(ptr %i.h, !3503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3520)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3521, !noalias !3469
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !3522
  %i.q = load ptr, ptr %i.p, align 8, !dbg !3522, !invariant.load !75, !alias.scope !3465, !noalias !3518, !nonnull !75
  invoke void %i.q(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.o)
          to label %_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastyECslIemzedAtQF_5bench.exit unwind label %bb.b, !dbg !3523, !noalias !3518

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.d, !1943, !DIExpression(), !3524)
    #dbg_value(ptr %i.d, !1954, !DIExpression(), !3526)
    #dbg_value(i64 1, !1960, !DIExpression(), !3528)
    #dbg_value(i8 1, !1969, !DIExpression(), !3528)
    #dbg_value(i64 1, !1972, !DIExpression(), !3530)
    #dbg_value(i8 1, !1979, !DIExpression(), !3530)
    #dbg_value(ptr %i.f, !1968, !DIExpression(), !3532)
    #dbg_value(ptr %i.f, !1978, !DIExpression(), !3530)
  %i.s = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !3533, !noalias !3534
  %i.t = icmp eq i64 %i.s, 1, !dbg !3539
  br i1 %i.t, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECslIemzedAtQF_5bench.exit.i, !dbg !3539

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !1992, !DIExpression(), !3540)
  fence acquire, !dbg !3542
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs172jLVBUT4Z_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECslIemzedAtQF_5bench.exit.i unwind label %bb.d, !dbg !3543, !noalias !3518

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !3544, !noalias !3518
  unreachable, !dbg !3544

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECslIemzedAtQF_5bench.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.r, !dbg !3544

_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastyECslIemzedAtQF_5bench.exit: ; preds = %bb.a
    #dbg_value(ptr poison, !3545, !DIExpression(), !3549)
    #dbg_value(ptr %i.c, !3548, !DIExpression(), !3551)
  %i.v = load i128, ptr %i.c, align 16, !dbg !3552, !noalias !3469, !noundef !75
  %i.w = icmp eq i128 %i.v, -147457254988281438159280264631028149675, !dbg !3555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3556, !noalias !3469
    #dbg_value(ptr poison, !3557, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3587)
    #dbg_value(ptr poison, !3557, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3587)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3589
    #dbg_value(ptr poison, !3582, !DIExpression(), !3590)
    #dbg_value(ptr poison, !3591, !DIExpression(), !3597)
  br i1 %i.w, label %bb.f, label %bb.e, !dbg !3599

bb.e:                                             ; preds = %_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastyECslIemzedAtQF_5bench.exit
    #dbg_value(ptr poison, !3585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3600)
    #dbg_value(ptr poison, !3596, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3601)
    #dbg_value(ptr poison, !3585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3600)
    #dbg_value(ptr poison, !3596, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3601)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !dbg !3603
    #dbg_value(ptr poison, !3425, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3604)
    #dbg_value(ptr poison, !3425, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3604)
  store ptr %i.f, ptr %0, align 8, !dbg !3602
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3602
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !3602
  br label %bb.k, !dbg !3605

bb.f:                                             ; preds = %_RINvMsF_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastyECslIemzedAtQF_5bench.exit
    #dbg_value(ptr poison, !3403, !DIExpression(), !3606)
    #dbg_value(ptr poison, !3607, !DIExpression(), !3634)
    #dbg_declare(ptr poison, !3626, !DIExpression(), !3636)
    #dbg_value(i64 1, !3637, !DIExpression(), !3644)
    #dbg_value(i64 0, !3641, !DIExpression(), !3644)
    #dbg_value(i8 0, !3642, !DIExpression(), !3644)
    #dbg_value(i8 0, !3643, !DIExpression(), !3644)
    #dbg_value(ptr poison, !3640, !DIExpression(), !3646)
    #dbg_value(ptr poison, !2124, !DIExpression(), !3647)
    #dbg_value(i64 1, !2129, !DIExpression(), !3647)
    #dbg_value(i64 0, !2130, !DIExpression(), !3647)
    #dbg_value(i8 0, !2131, !DIExpression(), !3647)
    #dbg_value(i8 0, !2132, !DIExpression(), !3647)
  %i.x = cmpxchg ptr %i.f, i64 1, i64 0 monotonic monotonic, align 8, !dbg !3649
  %i.y = extractvalue { i64, i1 } %i.x, 1, !dbg !3649
  br i1 %i.y, label %bb.i, label %bb.g, !dbg !3650

bb.g:                                             ; preds = %bb.f
    #dbg_value(i64 1, !3456, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3651)
    #dbg_value(ptr poison, !3456, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3651)
    #dbg_value(ptr poison, !3459, !DIExpression(), !3652)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
    #dbg_declare(ptr poison, !3653, !DIExpression(), !3659)
    #dbg_declare(ptr %i.a, !3658, !DIExpression(), !3661)
    #dbg_value(ptr %i.a, !3662, !DIExpression(), !3669)
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !3671
    #dbg_value(ptr %i.z, !3672, !DIExpression(), !3678)
  %i.aa = load i64, ptr %i.z, align 8, !dbg !3680, !alias.scope !3681, !noundef !75
    #dbg_value(ptr %i.a, !3684, !DIExpression(), !3690)
    #dbg_value(ptr %i.a, !3692, !DIExpression(), !3695)
    #dbg_value(i64 1, !3697, !DIExpression(), !3702)
    #dbg_value(i8 1, !3701, !DIExpression(), !3702)
    #dbg_value(i64 1, !3704, !DIExpression(), !3709)
    #dbg_value(i8 1, !3708, !DIExpression(), !3709)
    #dbg_value(ptr poison, !3700, !DIExpression(), !3711)
    #dbg_value(ptr poison, !3707, !DIExpression(), !3709)
  %i.ab = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !3712, !noalias !3713
  %i.ac = icmp eq i64 %i.ab, 1, !dbg !3718
  br i1 %i.ac, label %bb.h, label %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoyE0CslIemzedAtQF_5bench.exit, !dbg !3718

bb.h:                                             ; preds = %bb.g
    #dbg_value(i8 2, !1992, !DIExpression(), !3719)
  fence acquire, !dbg !3721
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcyE9drop_slowCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #16, !dbg !3722
  br label %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoyE0CslIemzedAtQF_5bench.exit, !dbg !3722

_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoyE0CslIemzedAtQF_5bench.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3723
    #dbg_value(i64 %i.aa, !3427, !DIExpression(), !3724)
  br label %bb.j, !dbg !3725

bb.i:                                             ; preds = %bb.f
    #dbg_value(i8 2, !1992, !DIExpression(), !3726)
  fence acquire, !dbg !3728
    #dbg_value(ptr poison, !3613, !DIExpression(), !3729)
    #dbg_value(ptr poison, !3730, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !3736)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !3738
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !3738, !noundef !75
    #dbg_value(i64 %i.ae, !3624, !DIExpression(), !3739)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3740
  store ptr %i.f, ptr %i.b, align 8, !dbg !3741
    #dbg_value(ptr %i.b, !3742, !DIExpression(), !3750)
  call void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !3752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3753
    #dbg_value(i64 0, !3456, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3651)
    #dbg_value(i64 %i.ae, !3456, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3651)
    #dbg_value(i64 %i.ae, !3456, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3651)
    #dbg_value(i64 %i.ae, !3427, !DIExpression(), !3724)
  br label %bb.j, !dbg !3754

bb.j:                                             ; preds = %bb.i, %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoyE0CslIemzedAtQF_5bench.exit
  %.sroa.06.0 = phi i64 [ %i.aa, %_RNCINvMNtNtCs172jLVBUT4Z_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoyE0CslIemzedAtQF_5bench.exit ], [ %i.ae, %bb.i ], !dbg !3651
    #dbg_value(i64 %.sroa.06.0, !3427, !DIExpression(), !3724)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3755
  store i64 %.sroa.06.0, ptr %i.af, align 8, !dbg !3755
  store ptr null, ptr %0, align 8, !dbg !3755
  br label %bb.k, !dbg !3605

bb.k:                                             ; preds = %bb.j, %bb.e
  ret void, !dbg !3756
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCsgb4gPAseikh_12tracing_core10dispatcherNtB6_8Dispatch3newINtNtCs7n8GKOt6esj_18tracing_subscriber3fmt10SubscriberNtNtB17_6format13DefaultFieldsNtB1Z_6FormatNtNtNtB19_6filter3env9EnvFilterEECslIemzedAtQF_5bench(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(1296) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3757 {
bb.a:
  %i.a = alloca [1312 x i8], align 8              ; 7 uses
end_hunk_0
