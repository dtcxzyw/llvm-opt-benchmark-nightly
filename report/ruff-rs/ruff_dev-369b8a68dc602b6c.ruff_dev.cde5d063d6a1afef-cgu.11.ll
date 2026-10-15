Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_dev-369b8a68dc602b6c.ruff_dev.cde5d063d6a1afef-cgu.11?download=true
inline.NumInlined: 1068
inline.NumDeleted: 461
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0
@1 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layered7LayeredINtNtB4_6option6OptionINtNtNtBI_3fmt9fmt_layer5LayerIBC_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIBC_IB1Z_IBC_NtNtNtBI_6filter3env9EnvFilterNtNtNtBI_8registry7sharded8RegistryENtNtB23_6format13DefaultFieldsNtB4F_6FormatNtNtB2z_6writer15IndicatifWriterEB3v_EEB3m_EB4D_B57_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB2s_EECshFZivb7RUAJ_8ruff_dev, [16 x i8] c"\A8\0A\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtB8_3fmt9fmt_layer5LayerIBV_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIBV_IB1L_IBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtB1P_6format13DefaultFieldsNtB4r_6FormatNtNtB2l_6writer15IndicatifWriterEB3h_EEB38_EB4p_B4T_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB2e_ENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber20on_register_dispatchCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtB8_3fmt9fmt_layer5LayerIBV_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIBV_IB1L_IBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtB1P_6format13DefaultFieldsNtB4r_6FormatNtNtB2l_6writer15IndicatifWriterEB3h_EEB38_EB4p_B4T_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB2e_ENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber17register_callsiteCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtB8_3fmt9fmt_layer5LayerIBV_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIBV_IB1L_IBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtB1P_6format13DefaultFieldsNtB4r_6FormatNtNtB2l_6writer15IndicatifWriterEB3h_EEB38_EB4p_B4T_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB2e_ENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber7enabledCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtB8_3fmt9fmt_layer5LayerIBV_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIBV_IB1L_IBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtB1P_6format13DefaultFieldsNtB4r_6FormatNtNtB2l_6writer15IndicatifWriterEB3h_EEB38_EB4p_B4T_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB2e_ENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber14max_level_hintCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtB8_3fmt9fmt_layer5LayerIBV_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIBV_IB1L_IBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtB1P_6format13DefaultFieldsNtB4r_6FormatNtNtB2l_6writer15IndicatifWriterEB3h_EEB38_EB4p_B4T_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB2e_ENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber8new_spanCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtB8_3fmt9fmt_layer5LayerIBV_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIBV_IB1L_IBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtB1P_6format13DefaultFieldsNtB4r_6FormatNtNtB2l_6writer15IndicatifWriterEB3h_EEB38_EB4p_B4T_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB2e_ENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber6recordCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtB8_3fmt9fmt_layer5LayerIBV_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIBV_IB1L_IBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtB1P_6format13DefaultFieldsNtB4r_6FormatNtNtB2l_6writer15IndicatifWriterEB3h_EEB38_EB4p_B4T_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB2e_ENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber19record_follows_fromCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtB8_3fmt9fmt_layer5LayerIBV_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIBV_IB1L_IBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtB1P_6format13DefaultFieldsNtB4r_6FormatNtNtB2l_6writer15IndicatifWriterEB3h_EEB38_EB4p_B4T_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB2e_ENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber13event_enabledCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtB8_3fmt9fmt_layer5LayerIBV_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIBV_IB1L_IBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtB1P_6format13DefaultFieldsNtB4r_6FormatNtNtB2l_6writer15IndicatifWriterEB3h_EEB38_EB4p_B4T_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB2e_ENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber5eventCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtB8_3fmt9fmt_layer5LayerIBV_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIBV_IB1L_IBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtB1P_6format13DefaultFieldsNtB4r_6FormatNtNtB2l_6writer15IndicatifWriterEB3h_EEB38_EB4p_B4T_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB2e_ENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber5enterCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtB8_3fmt9fmt_layer5LayerIBV_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIBV_IB1L_IBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtB1P_6format13DefaultFieldsNtB4r_6FormatNtNtB2l_6writer15IndicatifWriterEB3h_EEB38_EB4p_B4T_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB2e_ENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber4exitCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtB8_3fmt9fmt_layer5LayerIBV_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIBV_IB1L_IBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtB1P_6format13DefaultFieldsNtB4r_6FormatNtNtB2l_6writer15IndicatifWriterEB3h_EEB38_EB4p_B4T_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB2e_ENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber10clone_spanCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtB8_3fmt9fmt_layer5LayerIBV_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIBV_IB1L_IBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtB1P_6format13DefaultFieldsNtB4r_6FormatNtNtB2l_6writer15IndicatifWriterEB3h_EEB38_EB4p_B4T_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB2e_ENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber9drop_spanCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtB8_3fmt9fmt_layer5LayerIBV_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIBV_IB1L_IBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtB1P_6format13DefaultFieldsNtB4r_6FormatNtNtB2l_6writer15IndicatifWriterEB3h_EEB38_EB4p_B4T_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB2e_ENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber9try_closeCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtB8_3fmt9fmt_layer5LayerIBV_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIBV_IB1L_IBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtB1P_6format13DefaultFieldsNtB4r_6FormatNtNtB2l_6writer15IndicatifWriterEB3h_EEB38_EB4p_B4T_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB2e_ENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber12current_spanCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtB8_3fmt9fmt_layer5LayerIBV_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIBV_IB1L_IBV_NtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtB1P_6format13DefaultFieldsNtB4r_6FormatNtNtB2l_6writer15IndicatifWriterEB3h_EEB38_EB4p_B4T_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB2e_ENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber12downcast_rawCshFZivb7RUAJ_8ruff_dev }>, align 8
@2 = private unnamed_addr constant [5 x i8] c"title", align 1
@3 = private unnamed_addr constant [7 x i8] c"$schema", align 1
@_RNvNtCsb0GAtLbz3Z0_12sharded_slab3tid8REGISTRY = external global { {} }
@4 = private unnamed_addr constant [106 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/indicatif-0.18.6/src/progress_bar.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"i\00\00\00\00\00\00\00\8D\02\00\00\1B\00\00\00" }>, align 8
@_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@6 = private unnamed_addr constant [13 x i8] c"lock poisoned", align 1
@7 = private unnamed_addr constant [117 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tracing-subscriber-0.3.23/src/filter/env/mod.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"t\00\00\00\00\00\00\00<\02\00\00\0D\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"t\00\00\00\00\00\00\009\02\00\00\15\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"t\00\00\00\00\00\00\00\07\02\00\009\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"t\00\00\00\00\00\00\00U\02\00\00)\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"t\00\00\00\00\00\00\00d\02\00\00\19\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"t\00\00\00\00\00\00\00J\02\00\00)\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"t\00\00\00\00\00\00\00I\02\00\00\1D\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"t\00\00\00\00\00\00\00o\02\00\00\1D\00\00\00" }>, align 8
@_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT = external local_unnamed_addr global { { { i64 } } }
@_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT = external local_unnamed_addr global { { { i64 } } }
@_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH = external local_unnamed_addr global { { i64, [2 x i64] } }
@_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE = external local_unnamed_addr global { { i64, [2 x i64] } }
@16 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshFZivb7RUAJ_8ruff_dev, align 8
@17 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@18 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @17, [24 x i8] zeroinitializer }>, align 8
@19 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/similar-3.1.1/src/algorithms/histogram.rs\00", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"n\00\00\00\00\00\00\001\01\00\00\18\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"n\00\00\00\00\00\00\00F\01\00\00\17\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"n\00\00\00\00\00\00\00F\01\00\00-\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"n\00\00\00\00\00\00\00R\01\00\00\17\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"n\00\00\00\00\00\00\00R\01\00\00+\00\00\00" }>, align 8
@25 = private unnamed_addr constant [22 x i8] c"no entry found for key", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"n\00\00\00\00\00\00\00V\01\00\00%\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"n\00\00\00\00\00\00\00J\01\00\00%\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"n\00\00\00\00\00\00\00#\01\00\00\18\00\00\00" }>, align 8
@29 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/similar-3.1.1/src/algorithms/preflight.rs\00", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"n\00\00\00\00\00\00\00i\00\00\00@\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"n\00\00\00\00\00\00\00j\00\00\00 \00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"n\00\00\00\00\00\00\00^\00\00\00$\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"n\00\00\00\00\00\00\003\00\00\00\0B\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"n\00\00\00\00\00\00\003\00\00\00#\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"n\00\00\00\00\00\00\004\00\00\00\0F\00\00\00" }>, align 8
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"n\00\00\00\00\00\00\004\00\00\00)\00\00\00" }>, align 8
@37 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/similar-3.1.1/src/algorithms/utils.rs\00", align 1
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @37, [16 x i8] c"j\00\00\00\00\00\00\00:\00\00\00\15\00\00\00" }>, align 8
@39 = private unnamed_addr constant [32 x i8] c"sharded_slab::cfg::DefaultConfig", align 1
@40 = private unnamed_addr constant [8 x i8] c"\FF\1F\00\00\00\00\00\00", align 8
@41 = private unnamed_addr constant [102 x i8] c"\1Acreating a new thread ID (\C0A) would exceed the maximum number of thread ID bits specified in \C0\02 (\C0\01)\00", align 1
@42 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/sharded-slab-0.1.7/src/tid.rs\00", align 1
@43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @42, [16 x i8] c"b\00\00\00\00\00\00\00\A3\00\00\00\15\00\00\00" }>, align 8
@44 = private unnamed_addr constant [9 x i8] c"<unnamed>", align 1
@45 = private unnamed_addr constant [305 x i8] c"\08thread '\C03' attempted to panic at 'creating a new thread ID (\C0A) would exceed the maximum number of thread ID bits specified in \C0\02 (\C0\80\A7\00)', /home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/sharded-slab-0.1.7/src/tid.rs:163:21\0Anote: we were already unwinding due to a previous panic.\0A\00", align 1
@46 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tracing-core-0.1.36/src/dispatcher.rs\00", align 1
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c"j\00\00\00\00\00\00\00f\03\00\00&\00\00\00" }>, align 8
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"n\00\00\00\00\00\00\00k\00\00\00A\00\00\00" }>, align 8
@_RNvNCNKNvNtCs1hjZZAukk1a_12thread_local9thread_id6THREAD0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { i64, [4 x i64] } } }
@_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL = external thread_local global { { { { i64, { { i64, [2 x i64] } } }, i8, [7 x i8] } }, i8, [7 x i8] }
@_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@_RNvNCNKNvNvXsa_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layerINtBd_5LayerppppEINtNtBh_5layer5LayerpE8on_event3BUF0023___RUST_STD_INTERNAL_VAL = external thread_local global { { { i64, { { { { { i64, ptr, {} }, {} }, i64 } } } } }, i8, [7 x i8] }
@49 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEEECshFZivb7RUAJ_8ruff_dev, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCs2AWtUsOyxgP_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCshFZivb7RUAJ_8ruff_dev }>, align 8
@50 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@51 = private unnamed_addr constant [4 x i8] c"Root", align 1
@52 = private unnamed_addr constant [7 x i8] c"Current", align 1
@53 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs3pBv9WGWlWf_12tracing_core4span2IdNtB6_5Debug3fmtCshFZivb7RUAJ_8ruff_dev }>, align 8
@54 = private unnamed_addr constant [8 x i8] c"Explicit", align 1
@55 = private unnamed_addr constant [32 x i8] c"ruff_workspace::options::Options", align 1
@56 = private unnamed_addr constant [38 x i8] c"ty_project::metadata::options::Options", align 1
@57 = private unnamed_addr constant [31 x i8] c"Unable to allocate another span", align 1
@58 = private unnamed_addr constant [119 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tracing-subscriber-0.3.23/src/registry/sharded.rs\00", align 1
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @58, [16 x i8] c"v\00\00\00\00\00\00\00\0C\01\00\00\0E\00\00\00" }>, align 8
@60 = private unnamed_addr constant [8 x i8] c"NO_COLOR", align 1
@61 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtB6_5Debug3fmtCshFZivb7RUAJ_8ruff_dev }>, align 8
@62 = private unnamed_addr constant [2 x i8] c"Io", align 1
@63 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscvBHLZPbXnS_10serde_json5error5ErrorNtB6_5Debug3fmtCshFZivb7RUAJ_8ruff_dev }>, align 8
@64 = private unnamed_addr constant [4 x i8] c"Json", align 1
@65 = private unnamed_addr constant [11 x i8] c"InvalidJson", align 1
@66 = private unnamed_addr constant [13 x i8] c"InvalidSchema", align 1
@67 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRxNtB6_5Debug3fmtCshFZivb7RUAJ_8ruff_dev }>, align 8
@68 = private unnamed_addr constant [13 x i8] c"InvalidFormat", align 1
@69 = private unnamed_addr constant [17 x i8] c"InvalidSubcommand", align 1
@70 = private unnamed_addr constant [10 x i8] c"InvalidArg", align 1
@71 = private unnamed_addr constant [8 x i8] c"PriorArg", align 1
@72 = private unnamed_addr constant [15 x i8] c"ValidSubcommand", align 1
@73 = private unnamed_addr constant [10 x i8] c"ValidValue", align 1
@74 = private unnamed_addr constant [12 x i8] c"InvalidValue", align 1
@75 = private unnamed_addr constant [15 x i8] c"ActualNumValues", align 1
@76 = private unnamed_addr constant [17 x i8] c"ExpectedNumValues", align 1
@77 = private unnamed_addr constant [9 x i8] c"MinValues", align 1
@78 = private unnamed_addr constant [16 x i8] c"SuggestedCommand", align 1
@79 = private unnamed_addr constant [19 x i8] c"SuggestedSubcommand", align 1
@80 = private unnamed_addr constant [12 x i8] c"SuggestedArg", align 1
@81 = private unnamed_addr constant [14 x i8] c"SuggestedValue", align 1
@82 = private unnamed_addr constant [11 x i8] c"TrailingArg", align 1
@83 = private unnamed_addr constant [9 x i8] c"Suggested", align 1
@84 = private unnamed_addr constant [5 x i8] c"Usage", align 1
@85 = private unnamed_addr constant [6 x i8] c"Custom", align 1
@86 = private unnamed_addr constant [11 x i8] c"PoisonError", align 1
@87 = private unnamed_addr constant [4 x i8] c"None", align 1
@88 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRbNtB6_5Debug3fmtCshFZivb7RUAJ_8ruff_dev }>, align 8
@89 = private unnamed_addr constant [4 x i8] c"Bool", align 1
@90 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCshFZivb7RUAJ_8ruff_dev }>, align 8
@91 = private unnamed_addr constant [6 x i8] c"String", align 1
@92 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBB_6string6StringENtB6_5Debug3fmtCshFZivb7RUAJ_8ruff_dev }>, align 8
@93 = private unnamed_addr constant [7 x i8] c"Strings", align 1
@94 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrNtB6_5Debug3fmtCshFZivb7RUAJ_8ruff_dev }>, align 8
@95 = private unnamed_addr constant [9 x i8] c"StyledStr", align 1
@96 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrENtB6_5Debug3fmtCshFZivb7RUAJ_8ruff_dev }>, align 8
@97 = private unnamed_addr constant [10 x i8] c"StyledStrs", align 1
@98 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRiNtB6_5Debug3fmtCshFZivb7RUAJ_8ruff_dev }>, align 8
@99 = private unnamed_addr constant [6 x i8] c"Number", align 1
@100 = private unnamed_addr constant [29 x i8] c"Span not found, this is a bug", align 1
@101 = private unnamed_addr constant [116 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tracing-subscriber-0.3.23/src/fmt/fmt_layer.rs\00", align 1
@102 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @101, [16 x i8] c"s\00\00\00\00\00\00\00k\03\00\00!\00\00\00" }>, align 8
@103 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char, ptr @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCshFZivb7RUAJ_8ruff_dev }>, align 8
@104 = private unnamed_addr constant [74 x i8] c"E[tracing-subscriber] Unable to format the following event, ignoring: \C0\01\0A\00", align 1
@105 = private unnamed_addr constant [7 x i8] c"message", align 1
@106 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @105, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@107 = private unnamed_addr constant [3 x i8] c"new", align 1
@108 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @107, [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@109 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsh_NtCs3pBv9WGWlWf_12tracing_core5fieldReNtB5_5Value6recordCshFZivb7RUAJ_8ruff_dev }>, align 8
@110 = private unnamed_addr constant ptr @_RNvYNCNKNvNvXsa_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layerINtBe_5LayerppppEINtNtBi_5layer5LayerpE8on_event3BUF00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB23_6option6OptionQIB2I_INtNtB23_4cell7RefCellNtNtCscdodAO9FK5_5alloc6string6StringEEEEE9call_onceCshFZivb7RUAJ_8ruff_dev, align 8
@111 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @101, [16 x i8] c"s\00\00\00\00\00\00\00\BD\03\00\00%\00\00\00" }>, align 8
@112 = private unnamed_addr constant [4 x i8] c"exit", align 1
@113 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @112, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@114 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @101, [16 x i8] c"s\00\00\00\00\00\00\00\D4\03\00\00&\00\00\00" }>, align 8
@115 = private unnamed_addr constant [9 x i8] c"time.busy", align 1
@116 = private unnamed_addr constant [9 x i8] c"time.idle", align 1
@117 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @105, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @115, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @116, [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@118 = private unnamed_addr constant [5 x i8] c"close", align 1
@119 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @118, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@120 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs3pBv9WGWlWf_12tracing_core5fieldINtB5_12DisplayValueNtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt6format13TimingDisplayENtB5_5Value6recordCshFZivb7RUAJ_8ruff_dev }>, align 8
@121 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @101, [16 x i8] c"s\00\00\00\00\00\00\00\A6\03\00\00%\00\00\00" }>, align 8
@122 = private unnamed_addr constant [5 x i8] c"enter", align 1
@123 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @122, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@124 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @101, [16 x i8] c"s\00\00\00\00\00\00\00\91\03\00\00!\00\00\00" }>, align 8
@125 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtNtBI_8registry7sharded8RegistryEECshFZivb7RUAJ_8ruff_dev, [16 x i8] c"\10\09\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber20on_register_dispatchCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber17register_callsiteCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber7enabledCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber14max_level_hintCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber8new_spanCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber6recordCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber19record_follows_fromCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber13event_enabledCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber5eventCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber5enterCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber4exitCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber10clone_spanCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber9drop_spanCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber9try_closeCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber12current_spanCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber12downcast_rawCshFZivb7RUAJ_8ruff_dev }>, align 8
@126 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded8RegistryECshFZivb7RUAJ_8ruff_dev, [16 x i8] c" \02\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvYNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber20on_register_dispatchCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber17register_callsite, ptr @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber7enabled, ptr @_RNvYNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber14max_level_hintCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber8new_span, ptr @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber6record, ptr @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber19record_follows_from, ptr @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber13event_enabled, ptr @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber5event, ptr @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber5enter, ptr @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber4exit, ptr @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber10clone_span, ptr @_RNvYNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber9drop_spanCshFZivb7RUAJ_8ruff_dev, ptr @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber9try_close, ptr @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber12current_span, ptr @_RNvYNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber12downcast_rawCshFZivb7RUAJ_8ruff_dev }>, align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context11ContextKindNtB6_5Debug3fmtCshFZivb7RUAJ_8ruff_dev = private unnamed_addr constant [17 x i8] c"\11\0A\08\0F\0A\0C\0F\11\09\10\13\0C\0E\0B\09\05\06", align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context11ContextKindNtB6_5Debug3fmtCshFZivb7RUAJ_8ruff_dev.140 = private unnamed_addr constant [17 x ptr] [ptr @69, ptr @70, ptr @71, ptr @72, ptr @73, ptr @74, ptr @75, ptr @76, ptr @77, ptr @78, ptr @79, ptr @80, ptr @81, ptr @82, ptr @83, ptr @84, ptr @85], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs3MGJH6NE8G5_15crossbeam_epoch5guardNtB3_5Guard15defer_uncheckedNCNvMs4_NtCsjulH565TUV7_15crossbeam_deque5dequeINtB1g_6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefE6resize0uECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !6   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %1, -8                           ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = icmp ne i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !6 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNCNvMs4_NtCsjulH565TUV7_15crossbeam_deque5dequeINtB7_6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefE6resize0CshFZivb7RUAJ_8ruff_dev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  %i.k = shl nuw nsw i64 %i.h, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef 8) #25
  br label %_RNCNvMs4_NtCsjulH565TUV7_15crossbeam_deque5dequeINtB7_6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefE6resize0CshFZivb7RUAJ_8ruff_dev.exit

_RNCNvMs4_NtCsjulH565TUV7_15crossbeam_deque5dequeINtB7_6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefE6resize0CshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.b, %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 16, i64 noundef 8) #25
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RINvNvMs_NtCs3MGJH6NE8G5_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCNvMs4_NtCsjulH565TUV7_15crossbeam_deque5dequeINtB22_6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefE6resize0uE0ECshFZivb7RUAJ_8ruff_dev, ptr %i.a, align 8, !alias.scope !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.l, align 8, !alias.scope !35
  call void @_RNvMs6_NtCs3MGJH6NE8G5_15crossbeam_epoch8internalNtB5_5Local5defer(ptr noundef nonnull align 128 %i.b, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %_RNCNvMs4_NtCsjulH565TUV7_15crossbeam_deque5dequeINtB7_6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefE6resize0CshFZivb7RUAJ_8ruff_dev.exit, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB3_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB5_4span2IdEECshFZivb7RUAJ_8ruff_dev(i64 noundef %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %0, 0
  %. = select i1 %.not, i64 0, i64 2
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.c, align 8
  store i64 %., ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %0, ptr %i.d, align 8
  %i.e = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8, !noalias !51
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !51
  %i.h = icmp eq i64 %i.g, 2                      ; 3 uses
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val.i = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !7, !noalias !51
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val.i = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !noalias !51
  %3 = select i1 %i.h, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val.i, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val.i
  %i.i = trunc nuw i64 %3 to i1
  %.val.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !noalias !51, !nonnull !6
  %.val7.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !noalias !51, !nonnull !6
  %4 = select i1 %i.h, ptr %.val.i, ptr %.val7.i  ; 2 uses
  %.val8.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !noalias !51, !nonnull !6, !align !8
  %.val9.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !noalias !51, !nonnull !6, !align !8
  %5 = select i1 %i.h, ptr %.val8.i, ptr %.val9.i ; 3 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !9, !invariant.load !6, !noalias !52
  %i.l = add nsw i64 %i.k, -1
  %i.m = and i64 %i.l, -16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.o, %bb.c ], [ %4, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !6, !noalias !52, !nonnull !6
  %i.r = call noundef zeroext i1 %i.q(ptr noundef nonnull %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !noalias !53, !inline_history !40
  br i1 %i.r, label %bb.e, label %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultuNCINvMNtB4_5eventNtB12_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB4_4span2IdEE0ECshFZivb7RUAJ_8ruff_dev.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !6, !noalias !53, !nonnull !6
  call void %i.t(ptr noundef nonnull %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !noalias !53, !inline_history !40
  br label %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultuNCINvMNtB4_5eventNtB12_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB4_4span2IdEE0ECshFZivb7RUAJ_8ruff_dev.exit

bb.f:                                             ; preds = %bb.a
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load i8, ptr %i.v, align 8, !range !10, !noalias !51, !noundef !6
  switch i8 %i.w, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCshFZivb7RUAJ_8ruff_dev.exit.i.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCshFZivb7RUAJ_8ruff_dev.exit.thread2.i.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultuNCINvMNtBY_5eventNtB2k_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBY_4span2IdEE0E0uECshFZivb7RUAJ_8ruff_dev.exit.i
  ], !prof !11

default.unreachable:                              ; preds = %bb.f
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCshFZivb7RUAJ_8ruff_dev.exit.i.i: ; preds = %bb.f
  %i.x = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8 %i.u), !noalias !51 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultuNCINvMNtBY_5eventNtB2k_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBY_4span2IdEE0E0uECshFZivb7RUAJ_8ruff_dev.exit.i, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCshFZivb7RUAJ_8ruff_dev.exit.thread2.i.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCshFZivb7RUAJ_8ruff_dev.exit.thread2.i.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCshFZivb7RUAJ_8ruff_dev.exit.i.i, %bb.f
  %.sroa.0.0.i.i4.i.i = phi ptr [ %i.x, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCshFZivb7RUAJ_8ruff_dev.exit.i.i ], [ %i.u, %bb.f ] ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 32 ; 4 uses
  %i.aa = load i8, ptr %i.z, align 1, !range !12, !noalias !51, !noundef !6
  %i.ab = trunc nuw i8 %i.aa to i1
  store i8 0, ptr %i.z, align 1, !noalias !51
  br i1 %i.ab, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCshFZivb7RUAJ_8ruff_dev.exit.thread2.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.ac = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !54, !noalias !51, !noundef !6
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !54, !noalias !51, !nonnull !6, !noundef !6 ; 2 uses
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !54, !noalias !51, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !9, !invariant.load !6, !noalias !55
  %i.ai = add nsw i64 %i.ah, -1
  %i.aj = and i64 %i.ai, -16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i6.i.i = phi ptr [ %i.al, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !6, !noalias !55, !nonnull !6
  %i.ao = call noundef zeroext i1 %i.an(ptr noundef nonnull %.sroa.0.0.i.i6.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !noalias !54, !inline_history !43
  br i1 %i.ao, label %bb.j, label %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultuNCINvMNtB4_5eventNtB12_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB4_4span2IdEE0ECshFZivb7RUAJ_8ruff_dev.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !invariant.load !6, !noalias !54, !nonnull !6
  call void %i.aq(ptr noundef nonnull %.sroa.0.0.i.i6.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !noalias !54, !inline_history !43
  br label %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultuNCINvMNtB4_5eventNtB12_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB4_4span2IdEE0ECshFZivb7RUAJ_8ruff_dev.exit

bb.k:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCshFZivb7RUAJ_8ruff_dev.exit.thread2.i.i
  %i.ar = load i64, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !51, !noundef !6 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 9223372036854775807
  br i1 %i.as, label %bb.n, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #26
          to label %.noexc.i.i.i unwind label %bb.m, !noalias !51

.noexc.i.i.i:                                     ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.n:                                             ; preds = %bb.k
  %i.au = add nuw nsw i64 %i.ar, 1
  store i64 %i.au, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !51
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.aw = load i64, ptr %i.av, align 8, !range !14, !alias.scope !56, !noalias !51, !noundef !6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.aw, 2
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !57
  %i.ay = icmp eq i64 %i.ax, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i.i = select i1 %i.ay, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i.i, align 8, !range !7, !alias.scope !58, !noalias !51
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.az = phi i64 [ %i.aw, %bb.n ], [ %.pre.i.i.i, %bb.o ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.av, %bb.n ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i.i, %bb.o ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.ba = trunc nuw i64 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !58, !noalias !51, !nonnull !6, !noundef !6 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !58, !noalias !51, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !range !9, !invariant.load !6, !noalias !59
  %i.bh = add nsw i64 %i.bg, -1
  %i.bi = and i64 %i.bh, -16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0.0.i8.i.i.i = phi ptr [ %i.bk, %bb.q ], [ %i.bc, %bb.p ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8, !invariant.load !6, !noalias !59, !nonnull !6
  %i.bn = invoke noundef zeroext i1 %i.bm(ptr noundef nonnull %.sroa.0.0.i8.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %.noexc9.i.i.i unwind label %bb.t, !inline_history !48

.noexc9.i.i.i:                                    ; preds = %bb.r
  br i1 %i.bn, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.noexc9.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !6, !noalias !58, !nonnull !6
  invoke void %i.bp(ptr noundef nonnull %.sroa.0.0.i8.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %bb.u unwind label %bb.t, !inline_history !48

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load i64, ptr %.sroa.0.0.i.i4.i.i, align 8, !noundef !6
  %i.bs = add i64 %i.br, -1
  store i64 %i.bs, ptr %.sroa.0.0.i.i4.i.i, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %.noexc9.i.i.i
  %i.bt = load i64, ptr %.sroa.0.0.i.i4.i.i, align 8, !noundef !6
  %i.bu = add i64 %i.bt, -1
  store i64 %i.bu, ptr %.sroa.0.0.i.i4.i.i, align 8
  store i8 1, ptr %i.z, align 8
  br label %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultuNCINvMNtB4_5eventNtB12_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB4_4span2IdEE0ECshFZivb7RUAJ_8ruff_dev.exit

bb.v:                                             ; preds = %bb.t, %bb.m
  %.pn.i.i.i = phi { ptr, i32 } [ %i.at, %bb.m ], [ %i.bq, %bb.t ]
  store i8 1, ptr %i.z, align 8
  resume { ptr, i32 } %.pn.i.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultuNCINvMNtBY_5eventNtB2k_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBY_4span2IdEE0E0uECshFZivb7RUAJ_8ruff_dev.exit.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCshFZivb7RUAJ_8ruff_dev.exit.i.i, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.bv = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !60, !noalias !51, !noundef !6
  %i.bw = trunc nuw i64 %i.bv to i1
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !60, !noalias !51, !nonnull !6, !noundef !6 ; 2 uses
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !60, !noalias !51, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  br i1 %i.bw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultuNCINvMNtBY_5eventNtB2k_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBY_4span2IdEE0E0uECshFZivb7RUAJ_8ruff_dev.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !range !9, !invariant.load !6, !noalias !61
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = and i64 %i.cb, -16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultuNCINvMNtBY_5eventNtB2k_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBY_4span2IdEE0E0uECshFZivb7RUAJ_8ruff_dev.exit.i
  %.sroa.0.0.i5.i = phi ptr [ %i.ce, %bb.w ], [ %i.bx, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultuNCINvMNtBY_5eventNtB2k_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBY_4span2IdEE0E0uECshFZivb7RUAJ_8ruff_dev.exit.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 80
  %i.cg = load ptr, ptr %i.cf, align 8, !invariant.load !6, !noalias !61, !nonnull !6
  %i.ch = call noundef zeroext i1 %i.cg(ptr noundef nonnull %.sroa.0.0.i5.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !noalias !60, !inline_history !40
  br i1 %i.ch, label %bb.y, label %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultuNCINvMNtB4_5eventNtB12_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB4_4span2IdEE0ECshFZivb7RUAJ_8ruff_dev.exit

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 88
  %i.cj = load ptr, ptr %i.ci, align 8, !invariant.load !6, !noalias !60, !nonnull !6
  call void %i.cj(ptr noundef nonnull %.sroa.0.0.i5.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !noalias !60, !inline_history !40
  br label %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultuNCINvMNtB4_5eventNtB12_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB4_4span2IdEE0ECshFZivb7RUAJ_8ruff_dev.exit

_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultuNCINvMNtB4_5eventNtB12_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB4_4span2IdEE0ECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.d, %bb.e, %bb.i, %bb.j, %bb.u, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB26_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECshFZivb7RUAJ_8ruff_dev(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !6
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load i64, ptr %i.d, align 8, !alias.scope !76, !noalias !77 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.e = lshr i64 %.val.i.i, 57
  %i.f = trunc nuw nsw i64 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !80, !noalias !81, !noundef !6 ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !alias.scope !80, !noalias !81, !nonnull !6, !noundef !6 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs4_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_4DataNtB7_8SpanData10extensions

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner3getNtNtNtBa_3fmt9fmt_layer7TimingsECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXst_NtCs3pBv9WGWlWf_12tracing_core5fieldINtB5_12DisplayValueNtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt6format13TimingDisplayENtB5_5Value6recordCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt6format13DefaultFieldsNtB4_12FormatFields10add_fieldsCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXs6_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt6formatNtB6_13DefaultFieldsNtB6_12FormatFields13format_fieldsRNtNtCs3pBv9WGWlWf_12tracing_core4span6RecordECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtCscdodAO9FK5_5alloc6string6StringEE4withNCNvXsa_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layerINtB2l_5LayerINtNtNtB2p_5layer7layered7LayeredNtNtNtB2p_6filter3env9EnvFilterNtNtNtB2p_8registry7sharded8RegistryENtNtB2n_6format13DefaultFieldsNtB53_6FormatNtNtCsh8k9AkFYpg3_17tracing_indicatif6writer15IndicatifWriterEINtB3t_5LayerB3o_E8on_event0uECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context11ContextKindINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context12ContextValueINtNtNtBa_5slice4iter4IterB14_EECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber20on_register_dispatchCshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber17register_callsiteCshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber7enabledCshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i64 -2, 5) i64 @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber14max_level_hintCshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i64 1, 0) i64 @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber8new_spanCshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber6recordCshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber19record_follows_fromCshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber13event_enabledCshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber5eventCshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber5enterCshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber4exitCshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i64 1, 0) i64 @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber10clone_spanCshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber12downcast_rawCshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMNtCs3pBv9WGWlWf_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter13layer_filters22MagicPlfDowncastMarkerECshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB5_7LayeredINtNtNtB9_3fmt9fmt_layer5LayerIBW_NtNtNtB9_6filter3env9EnvFilterNtNtNtB9_8registry7sharded8RegistryENtNtB1e_6format13DefaultFieldsNtB2N_6FormatNtNtCsh8k9AkFYpg3_17tracing_indicatif6writer15IndicatifWriterEB1D_E3newCshFZivb7RUAJ_8ruff_dev(ptr dead_on_unwind noalias noundef writable sret([2352 x i8]) align 8 captures(none) dereferenceable(2352), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(2320), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber17register_callsite(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber7enabled(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber13event_enabled(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber5enter(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber4exit(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber9try_close(ptr noundef nonnull align 8, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_NtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layeredINtB5_7LayeredNtNtNtB9_6filter3env9EnvFilterNtNtNtB9_8registry7sharded8RegistryE3newCshFZivb7RUAJ_8ruff_dev(ptr dead_on_unwind noalias noundef writable sret([2320 x i8]) align 8 captures(none) dereferenceable(2320), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(1768), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(544), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { cold }
attributes #28 = { cold noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{!0, i1 false, !"_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev"}
!1 = distinct !{!1, !0, !"_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev: argument 0"}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 2, !"RtLibUseGOT", i32 1}
!5 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!6 = !{}
!7 = !{i64 0, i64 2}
!8 = !{i64 8}
!9 = !{i64 1, i64 536870913}
!10 = !{i8 0, i8 3}
!11 = !{!"branch_weights", i32 1, i32 1, i32 2000, i32 2000}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{i64 0, i64 3}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{i64 0, i64 -9223372036854775808}
!17 = !{i64 0, i64 -9223372036854775807}
!18 = !{i8 -1, i8 6}
!19 = !{i64 -1, i64 -9223372036854775808}
!20 = !{!"branch_weights", i32 -294967296, i32 6003000}
!21 = !{!"branch_weights", i32 1, i32 4001}
!22 = !{i64 1, i64 0}
!23 = !{!"branch_weights", i32 4000000, i32 4001}
!24 = !{i64 0, i64 5}
!25 = !{i64 -2, i64 -9223372036854775808}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!"branch_weights", i32 2002, i32 2000}
!28 = !{!"branch_weights", i32 2146410443, i32 1073205}
!29 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!30 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!31 = !{!1}
!32 = !{i32 0, i32 1000000000}
!33 = distinct !{!33, i1 false, !"_RINvMs_NtCs3MGJH6NE8G5_15crossbeam_epoch8deferredNtB5_8Deferred3newNCINvMNtB7_5guardNtB19_5Guard15defer_uncheckedNCNvMs4_NtCsjulH565TUV7_15crossbeam_deque5dequeINtB1V_6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefE6resize0uE0ECshFZivb7RUAJ_8ruff_dev"}
!34 = distinct !{!34, !33, !"_RINvMs_NtCs3MGJH6NE8G5_15crossbeam_epoch8deferredNtB5_8Deferred3newNCINvMNtB7_5guardNtB19_5Guard15defer_uncheckedNCNvMs4_NtCsjulH565TUV7_15crossbeam_deque5dequeINtB1V_6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefE6resize0uE0ECshFZivb7RUAJ_8ruff_dev: argument 0"}
!35 = !{!34}
!36 = distinct !{!36, i1 false, !"_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultuNCINvMNtB4_5eventNtB12_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB4_4span2IdEE0ECshFZivb7RUAJ_8ruff_dev"}
!37 = distinct !{!37, !36, !"_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultuNCINvMNtB4_5eventNtB12_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB4_4span2IdEE0ECshFZivb7RUAJ_8ruff_dev: argument 0"}
!38 = distinct !{!38, i1 false, !"_RNCINvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB5_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_4span2IdEE0CshFZivb7RUAJ_8ruff_dev"}
!39 = distinct !{!39, !38, !"_RNCINvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB5_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_4span2IdEE0CshFZivb7RUAJ_8ruff_dev: argument 0"}
!40 = distinct !{null, null}
!41 = distinct !{!41, i1 false, !"_RNCINvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB5_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_4span2IdEE0CshFZivb7RUAJ_8ruff_dev"}
!42 = distinct !{!42, !41, !"_RNCINvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB5_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_4span2IdEE0CshFZivb7RUAJ_8ruff_dev: argument 0"}
!43 = distinct !{null, null, null, null}
!44 = distinct !{!44, i1 false, !"_RNCNvMsc_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB7_7Entered7current0CshFZivb7RUAJ_8ruff_dev"}
!45 = distinct !{!45, !44, !"_RNCNvMsc_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB7_7Entered7current0CshFZivb7RUAJ_8ruff_dev: argument 0"}
!46 = distinct !{!46, i1 false, !"_RNCINvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB5_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_4span2IdEE0CshFZivb7RUAJ_8ruff_dev"}
!47 = distinct !{!47, !46, !"_RNCINvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB5_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_4span2IdEE0CshFZivb7RUAJ_8ruff_dev: argument 0"}
!48 = distinct !{null}
!49 = distinct !{!49, i1 false, !"_RNCINvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB5_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_4span2IdEE0CshFZivb7RUAJ_8ruff_dev"}
!50 = distinct !{!50, !49, !"_RNCINvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB5_5Event8child_ofINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_4span2IdEE0CshFZivb7RUAJ_8ruff_dev: argument 0"}
!51 = !{!37}
!52 = !{!39, !37}
!53 = !{!39}
!54 = !{!42}
!55 = !{!42, !37}
!56 = !{!45}
!57 = !{!45, !37}
!58 = !{!47}
!59 = !{!47, !37}
!60 = !{!50}
!61 = !{!50, !37}
!62 = distinct !{!62, i1 false, !"_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions8IdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECshFZivb7RUAJ_8ruff_dev"}
!63 = distinct !{!63, !62, !"_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions8IdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECshFZivb7RUAJ_8ruff_dev: argument 0"}
!64 = distinct !{!64, i1 false, !"_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtBa_3any6TypeIdNtB8_4Hash4hashNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions8IdHasherECshFZivb7RUAJ_8ruff_dev"}
!65 = distinct !{!65, !64, !"_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtBa_3any6TypeIdNtB8_4Hash4hashNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions8IdHasherECshFZivb7RUAJ_8ruff_dev: argument 0"}
!66 = distinct !{!66, i1 false, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB28_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECshFZivb7RUAJ_8ruff_dev"}
!67 = distinct !{!67, !66, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB28_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECshFZivb7RUAJ_8ruff_dev: argument 0"}
!68 = distinct !{!68, i1 false, !"_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!69 = distinct !{!69, !68, !"_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!70 = distinct !{!70, !66, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB28_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECshFZivb7RUAJ_8ruff_dev: argument 1"}
!71 = distinct !{!71, !68, !"_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!72 = distinct !{!72, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!73 = distinct !{!73, !72, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!74 = distinct !{!74, i1 false, !"_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtBU_3AnyNtNtBW_6marker4SendNtB2a_4SyncEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CshFZivb7RUAJ_8ruff_dev"}
!75 = distinct !{!75, !74, !"_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtBU_3AnyNtNtBW_6marker4SendNtB2a_4SyncEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CshFZivb7RUAJ_8ruff_dev: argument 0"}
!76 = !{!63}
!77 = !{!65}
!78 = !{!67}
!79 = !{!69}
!80 = !{!69, !67}
!81 = !{!71, !70}
!82 = !{!73, !69, !71, !67}
!83 = !{!75, !69, !71, !67}
!84 = distinct !{!84, i1 false, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layered7LayeredINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtB16_3fmt9fmt_layer5LayerIB10_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB10_IB2D_IB10_NtNtNtB16_6filter3env9EnvFilterNtNtNtB16_8registry7sharded8RegistryENtNtB2H_6format13DefaultFieldsNtB5p_6FormatNtNtB3f_6writer15IndicatifWriterEB4c_EEB42_EB5n_B5R_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB37_EEE3newCshFZivb7RUAJ_8ruff_dev"}
!85 = distinct !{!85, !84, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layered7LayeredINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtB16_3fmt9fmt_layer5LayerIB10_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB10_IB2D_IB10_NtNtNtB16_6filter3env9EnvFilterNtNtNtB16_8registry7sharded8RegistryENtNtB2H_6format13DefaultFieldsNtB5p_6FormatNtNtB3f_6writer15IndicatifWriterEB4c_EEB42_EB5n_B5R_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB37_EEE3newCshFZivb7RUAJ_8ruff_dev: argument 0"}
!86 = distinct !{!86, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchECshFZivb7RUAJ_8ruff_dev"}
!87 = distinct !{!87, !86, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchECshFZivb7RUAJ_8ruff_dev: argument 0"}
!88 = distinct !{!88, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs3pBv9WGWlWf_12tracing_core10dispatcher4KindINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2u_4SyncEL_EEECshFZivb7RUAJ_8ruff_dev"}
!89 = distinct !{!89, !88, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs3pBv9WGWlWf_12tracing_core10dispatcher4KindINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2u_4SyncEL_EEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!90 = distinct !{!90, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB25_4SyncEL_EECshFZivb7RUAJ_8ruff_dev"}
!91 = distinct !{!91, !90, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB25_4SyncEL_EECshFZivb7RUAJ_8ruff_dev: argument 0"}
!92 = distinct !{!92, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtNtB1E_3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev"}
!93 = distinct !{!93, !92, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtNtB1E_3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev: argument 0"}
!94 = !{!85}
!95 = !{!93, !91, !89, !87}
!96 = distinct !{!96, i1 false, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidE8push_mutCshFZivb7RUAJ_8ruff_dev"}
!97 = distinct !{!97, !96, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidE8push_mutCshFZivb7RUAJ_8ruff_dev: argument 0"}
!98 = distinct !{!98, !96, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidE8push_mutCshFZivb7RUAJ_8ruff_dev: argument 1"}
!99 = distinct !{!99, i1 false, !"_RINvMs4_NtCscuBBDlOF0VN_8schemars8generateNtB6_15SchemaGenerator20json_schema_internalNtNtCs3ZkgueCtkyH_14ruff_workspace7options7OptionsECshFZivb7RUAJ_8ruff_dev"}
!100 = distinct !{!100, !99, !"_RINvMs4_NtCscuBBDlOF0VN_8schemars8generateNtB6_15SchemaGenerator20json_schema_internalNtNtCs3ZkgueCtkyH_14ruff_workspace7options7OptionsECshFZivb7RUAJ_8ruff_dev: argument 2"}
!101 = distinct !{!101, !99, !"_RINvMs4_NtCscuBBDlOF0VN_8schemars8generateNtB6_15SchemaGenerator20json_schema_internalNtNtCs3ZkgueCtkyH_14ruff_workspace7options7OptionsECshFZivb7RUAJ_8ruff_dev: argument 1"}
!102 = distinct !{!102, !99, !"_RINvMs4_NtCscuBBDlOF0VN_8schemars8generateNtB6_15SchemaGenerator20json_schema_internalNtNtCs3ZkgueCtkyH_14ruff_workspace7options7OptionsECshFZivb7RUAJ_8ruff_dev: argument 0"}
!103 = distinct !{!103, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECshFZivb7RUAJ_8ruff_dev"}
!104 = distinct !{!104, !103, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!105 = distinct !{!105, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECshFZivb7RUAJ_8ruff_dev"}
!106 = distinct !{!106, !105, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECshFZivb7RUAJ_8ruff_dev: argument 0"}
!107 = distinct !{!107, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECshFZivb7RUAJ_8ruff_dev"}
!108 = distinct !{!108, !107, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!109 = !{!97}
!110 = !{!98}
!111 = !{!100}
!112 = !{!102, !101, !100}
!113 = !{!102, !101}
!114 = !{!102}
!115 = !{!101, !100}
!116 = !{!104}
!117 = !{!108, !106}
!118 = distinct !{!118, i1 false, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidE8push_mutCshFZivb7RUAJ_8ruff_dev"}
!119 = distinct !{!119, !118, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidE8push_mutCshFZivb7RUAJ_8ruff_dev: argument 0"}
!120 = distinct !{!120, !118, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidE8push_mutCshFZivb7RUAJ_8ruff_dev: argument 1"}
!121 = distinct !{!121, i1 false, !"_RINvMs4_NtCscuBBDlOF0VN_8schemars8generateNtB6_15SchemaGenerator20json_schema_internalNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options7OptionsECshFZivb7RUAJ_8ruff_dev"}
!122 = distinct !{!122, !121, !"_RINvMs4_NtCscuBBDlOF0VN_8schemars8generateNtB6_15SchemaGenerator20json_schema_internalNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options7OptionsECshFZivb7RUAJ_8ruff_dev: argument 2"}
!123 = distinct !{!123, !121, !"_RINvMs4_NtCscuBBDlOF0VN_8schemars8generateNtB6_15SchemaGenerator20json_schema_internalNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options7OptionsECshFZivb7RUAJ_8ruff_dev: argument 1"}
!124 = distinct !{!124, !121, !"_RINvMs4_NtCscuBBDlOF0VN_8schemars8generateNtB6_15SchemaGenerator20json_schema_internalNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options7OptionsECshFZivb7RUAJ_8ruff_dev: argument 0"}
!125 = distinct !{!125, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECshFZivb7RUAJ_8ruff_dev"}
!126 = distinct !{!126, !125, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!127 = distinct !{!127, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECshFZivb7RUAJ_8ruff_dev"}
!128 = distinct !{!128, !127, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECshFZivb7RUAJ_8ruff_dev: argument 0"}
!129 = distinct !{!129, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECshFZivb7RUAJ_8ruff_dev"}
!130 = distinct !{!130, !129, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!131 = !{!119}
!132 = !{!120}
!133 = !{!122}
!134 = !{!124, !123, !122}
!135 = !{!124, !123}
!136 = !{!124}
!137 = !{!123, !122}
!138 = !{!126}
!139 = !{!130, !128}
!140 = distinct !{!140, i1 false, !"_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequejEE4lockCshFZivb7RUAJ_8ruff_dev"}
!141 = distinct !{!141, !140, !"_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequejEE4lockCshFZivb7RUAJ_8ruff_dev: argument 0"}
!142 = distinct !{!142, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequejEEINtB12_11PoisonErrorBX_EEECshFZivb7RUAJ_8ruff_dev"}
!143 = distinct !{!143, !142, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequejEEINtB12_11PoisonErrorBX_EEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!144 = distinct !{!144, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std6thread6thread6ThreadECshFZivb7RUAJ_8ruff_dev"}
!145 = distinct !{!145, !144, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std6thread6thread6ThreadECshFZivb7RUAJ_8ruff_dev: argument 0"}
!146 = distinct !{!146, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs2AWtUsOyxgP_3std6thread6thread5InnerNtNtB1u_5alloc6SystemEEECshFZivb7RUAJ_8ruff_dev"}
!147 = distinct !{!147, !146, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs2AWtUsOyxgP_3std6thread6thread5InnerNtNtB1u_5alloc6SystemEEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!148 = distinct !{!148, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs2AWtUsOyxgP_3std6thread6thread5InnerNtNtB1e_5alloc6SystemEECshFZivb7RUAJ_8ruff_dev"}
!149 = distinct !{!149, !148, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs2AWtUsOyxgP_3std6thread6thread5InnerNtNtB1e_5alloc6SystemEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!150 = distinct !{!150, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs2AWtUsOyxgP_3std6thread6thread5InnerNtNtBL_5alloc6SystemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev"}
!151 = distinct !{!151, !150, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs2AWtUsOyxgP_3std6thread6thread5InnerNtNtBL_5alloc6SystemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev: argument 0"}
!152 = distinct !{!152, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std6thread6thread6ThreadECshFZivb7RUAJ_8ruff_dev"}
!153 = distinct !{!153, !152, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std6thread6thread6ThreadECshFZivb7RUAJ_8ruff_dev: argument 0"}
!154 = distinct !{!154, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs2AWtUsOyxgP_3std6thread6thread5InnerNtNtB1u_5alloc6SystemEEECshFZivb7RUAJ_8ruff_dev"}
!155 = distinct !{!155, !154, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs2AWtUsOyxgP_3std6thread6thread5InnerNtNtB1u_5alloc6SystemEEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!156 = distinct !{!156, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs2AWtUsOyxgP_3std6thread6thread5InnerNtNtB1e_5alloc6SystemEECshFZivb7RUAJ_8ruff_dev"}
!157 = distinct !{!157, !156, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs2AWtUsOyxgP_3std6thread6thread5InnerNtNtB1e_5alloc6SystemEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!158 = distinct !{!158, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs2AWtUsOyxgP_3std6thread6thread5InnerNtNtBL_5alloc6SystemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev"}
!159 = distinct !{!159, !158, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs2AWtUsOyxgP_3std6thread6thread5InnerNtNtBL_5alloc6SystemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev: argument 0"}
!160 = !{!141}
!161 = !{!143}
!162 = !{!145}
!163 = !{!147}
!164 = !{!149}
!165 = !{!151}
!166 = !{!151, !149, !147, !145}
!167 = !{!153}
!168 = !{!155}
!169 = !{!157}
!170 = !{!159}
!171 = !{!159, !157, !155, !153}
!172 = distinct !{!172, i1 false, !"_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexNtNtCs1UvybGPDVxf_9indicatif5state8BarStateE4lockCshFZivb7RUAJ_8ruff_dev"}
!173 = distinct !{!173, !172, !"_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexNtNtCs1UvybGPDVxf_9indicatif5state8BarStateE4lockCshFZivb7RUAJ_8ruff_dev: argument 0"}
!174 = distinct !{!174, i1 false, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEINtBM_11PoisonErrorBH_EE6unwrapCshFZivb7RUAJ_8ruff_dev"}
!175 = distinct !{!175, !174, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtCs1UvybGPDVxf_9indicatif5state8BarStateEINtBM_11PoisonErrorBH_EE6unwrapCshFZivb7RUAJ_8ruff_dev: argument 0"}
!176 = !{!173}
!177 = !{!175}
!178 = distinct !{!178, i1 false, !"_RNvMsd_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtCs3pBv9WGWlWf_12tracing_core8callsite10IdentifierINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2L_5field13CallsiteMatchEEE3newCshFZivb7RUAJ_8ruff_dev"}
!179 = distinct !{!179, !178, !"_RNvMsd_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtCs3pBv9WGWlWf_12tracing_core8callsite10IdentifierINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2L_5field13CallsiteMatchEEE3newCshFZivb7RUAJ_8ruff_dev: argument 0"}
!180 = distinct !{!180, i1 false, !"_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs3pBv9WGWlWf_12tracing_core8callsite10IdentifierINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getBO_ECshFZivb7RUAJ_8ruff_dev"}
!181 = distinct !{!181, !180, !"_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs3pBv9WGWlWf_12tracing_core8callsite10IdentifierINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getBO_ECshFZivb7RUAJ_8ruff_dev: argument 0"}
!182 = distinct !{!182, !180, !"_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs3pBv9WGWlWf_12tracing_core8callsite10IdentifierINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getBO_ECshFZivb7RUAJ_8ruff_dev: argument 1"}
!183 = distinct !{!183, i1 false, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs3pBv9WGWlWf_12tracing_core8callsite10IdentifierINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1M_5field13CallsiteMatchEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1H_E0ECshFZivb7RUAJ_8ruff_dev"}
!184 = distinct !{!184, !183, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs3pBv9WGWlWf_12tracing_core8callsite10IdentifierINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1M_5field13CallsiteMatchEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1H_E0ECshFZivb7RUAJ_8ruff_dev: argument 0"}
!185 = distinct !{!185, i1 false, !"_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!186 = distinct !{!186, !185, !"_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!187 = distinct !{!187, !183, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs3pBv9WGWlWf_12tracing_core8callsite10IdentifierINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1M_5field13CallsiteMatchEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1H_E0ECshFZivb7RUAJ_8ruff_dev: argument 1"}
!188 = distinct !{!188, !185, !"_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!189 = distinct !{!189, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!190 = distinct !{!190, !189, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!191 = distinct !{!191, i1 false, !"_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2o_5field9SpanMatchEEE5writeCshFZivb7RUAJ_8ruff_dev"}
!192 = distinct !{!192, !191, !"_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2o_5field9SpanMatchEEE5writeCshFZivb7RUAJ_8ruff_dev: argument 0"}
!193 = distinct !{!193, i1 false, !"_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtNtNtB6_11collections4hash3map7HashMapNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2T_5field9SpanMatchEEENCNvMse_B10_BX_3new0ECshFZivb7RUAJ_8ruff_dev"}
!194 = distinct !{!194, !193, !"_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtNtNtB6_11collections4hash3map7HashMapNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2T_5field9SpanMatchEEENCNvMse_B10_BX_3new0ECshFZivb7RUAJ_8ruff_dev: argument 0"}
!195 = distinct !{!195, i1 false, !"_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1w_5field9SpanMatchENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertCshFZivb7RUAJ_8ruff_dev"}
!196 = distinct !{!196, !195, !"_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1w_5field9SpanMatchENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertCshFZivb7RUAJ_8ruff_dev: argument 0"}
!197 = distinct !{!197, !195, !"_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1w_5field9SpanMatchENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertCshFZivb7RUAJ_8ruff_dev: argument 1"}
!198 = distinct !{!198, !195, !"_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1w_5field9SpanMatchENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertCshFZivb7RUAJ_8ruff_dev: argument 2"}
!199 = distinct !{!199, i1 false, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1u_E0NCINvB3C_11make_hasherBQ_B1u_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshFZivb7RUAJ_8ruff_dev"}
!200 = distinct !{!200, !199, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1u_E0NCINvB3C_11make_hasherBQ_B1u_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshFZivb7RUAJ_8ruff_dev: argument 0"}
!201 = distinct !{!201, !199, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1u_E0NCINvB3C_11make_hasherBQ_B1u_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshFZivb7RUAJ_8ruff_dev: argument 2"}
!202 = distinct !{!202, !199, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1z_5field9SpanMatchEEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1u_E0NCINvB3C_11make_hasherBQ_B1u_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECshFZivb7RUAJ_8ruff_dev: argument 1"}
!203 = distinct !{!203, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!204 = distinct !{!204, !203, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!205 = distinct !{!205, i1 false, !"_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1B_5field9SpanMatchEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1w_E0NCINvB3E_11make_hasherBS_B1w_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshFZivb7RUAJ_8ruff_dev"}
!206 = distinct !{!206, !205, !"_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1B_5field9SpanMatchEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1w_E0NCINvB3E_11make_hasherBS_B1w_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CshFZivb7RUAJ_8ruff_dev: argument 0"}
!207 = distinct !{!207, i1 false, !"_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1y_5field9SpanMatchEEE22insert_tagged_at_indexCshFZivb7RUAJ_8ruff_dev"}
!208 = distinct !{!208, !207, !"_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1y_5field9SpanMatchEEE22insert_tagged_at_indexCshFZivb7RUAJ_8ruff_dev: argument 0"}
!209 = distinct !{!209, !207, !"_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1y_5field9SpanMatchEEE22insert_tagged_at_indexCshFZivb7RUAJ_8ruff_dev: argument 1"}
!210 = distinct !{!210, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB12_5field9SpanMatchEEECshFZivb7RUAJ_8ruff_dev"}
!211 = distinct !{!211, !210, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB12_5field9SpanMatchEEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!212 = distinct !{!212, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3p_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECshFZivb7RUAJ_8ruff_dev"}
!213 = distinct !{!213, !212, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtB16_11collections4hash3map7HashMapNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB3p_5field9SpanMatchEEEINtB12_11PoisonErrorBX_EEECshFZivb7RUAJ_8ruff_dev: argument 0"}
!214 = !{!179}
!215 = !{!181}
!216 = !{!182}
!217 = !{!184}
!218 = !{!186}
!219 = !{!186, !184, !181}
!220 = !{!188, !187, !182}
!221 = !{!190, !186, !188, !184}
!222 = !{!192}
!223 = !{!194, !192}
!224 = !{!196}
!225 = !{!197}
!226 = !{!196, !197, !198}
!227 = !{!196, !198}
!228 = !{!200, !197}
!229 = !{!202, !201, !196, !198}
!230 = !{!204, !196, !198}
!231 = !{!206, !202, !201, !196, !198}
!232 = !{!208}
!233 = !{!208, !197}
!234 = !{!209, !196, !198}
!235 = !{!208, !209, !196, !198}
!236 = !{!208, !196, !198}
!237 = !{!197, !198}
!238 = !{!198}
!239 = !{!211}
!240 = !{!213}
!241 = distinct !{!241, i1 false, !"_RNvMsd_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtCs3pBv9WGWlWf_12tracing_core8callsite10IdentifierINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2L_5field13CallsiteMatchEEE3newCshFZivb7RUAJ_8ruff_dev"}
!242 = distinct !{!242, !241, !"_RNvMsd_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtCs3pBv9WGWlWf_12tracing_core8callsite10IdentifierINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2L_5field13CallsiteMatchEEE3newCshFZivb7RUAJ_8ruff_dev: argument 0"}
!243 = distinct !{!243, i1 false, !"_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs3pBv9WGWlWf_12tracing_core8callsite10IdentifierINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE12contains_keyBO_ECshFZivb7RUAJ_8ruff_dev"}
!244 = distinct !{!244, !243, !"_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs3pBv9WGWlWf_12tracing_core8callsite10IdentifierINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE12contains_keyBO_ECshFZivb7RUAJ_8ruff_dev: argument 0"}
!245 = distinct !{!245, !243, !"_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs3pBv9WGWlWf_12tracing_core8callsite10IdentifierINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE12contains_keyBO_ECshFZivb7RUAJ_8ruff_dev: argument 1"}
!246 = distinct !{!246, i1 false, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs3pBv9WGWlWf_12tracing_core8callsite10IdentifierINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1M_5field13CallsiteMatchEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1H_E0ECshFZivb7RUAJ_8ruff_dev"}
!247 = distinct !{!247, !246, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs3pBv9WGWlWf_12tracing_core8callsite10IdentifierINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1M_5field13CallsiteMatchEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1H_E0ECshFZivb7RUAJ_8ruff_dev: argument 0"}
!248 = distinct !{!248, i1 false, !"_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!249 = distinct !{!249, !248, !"_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!250 = distinct !{!250, !246, !"_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs3pBv9WGWlWf_12tracing_core8callsite10IdentifierINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1M_5field13CallsiteMatchEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1H_E0ECshFZivb7RUAJ_8ruff_dev: argument 1"}
!251 = distinct !{!251, !248, !"_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!252 = distinct !{!252, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!253 = distinct !{!253, !252, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
end_hunk_1
