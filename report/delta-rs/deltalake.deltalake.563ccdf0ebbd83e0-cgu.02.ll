inline.NumInlined: 6368
inline.NumDeleted: 3022
begin_hunk_0_@_RNvXs5_NtCs73bmgzuZ8Mg_21tracing_opentelemetry5layerINtB5_18OpenTelemetryLayerINtNtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layered7LayeredNtNtNtB1l_6filter3env9EnvFilterNtNtNtB1l_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEINtB1j_5LayerB1e_E11on_new_spanCs7p2uQeJxui2_9deltalake:bb.a
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !3
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ed = load i8, ptr %i.ec, align 4, !range !101, !noundef !3
  %i.ee = trunc nuw i8 %i.ed to i1                ; 3 uses
  %spec.select = select i1 %i.ee, i64 3, i64 0
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.eg = load i8, ptr %i.ef, align 2, !range !101, !noundef !3
  %i.eh = trunc nuw i8 %i.eg to i1                ; 2 uses
  %5 = select i1 %i.ee, i64 5, i64 2
  %.sroa.01.1 = select i1 %i.eh, i64 %5, i64 %spec.select
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.ej = load i8, ptr %i.ei, align 1, !range !101, !noundef !3 ; 2 uses
end_hunk_0
