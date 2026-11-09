Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.12?download=true
inline.NumInlined: 5225
inline.NumDeleted: 3034
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvYINtNtCs8yjYO7b73r2_10serde_json3ser8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_entryeINtNtCshzWfHUSfYae_4core6option6OptionNtNtBR_6string6StringEECs6u1mgJOKDyY_13rust_analyzer:bb.a
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtBX_6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.d:                                             ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i4) ]
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !11758
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtBX_6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtBX_6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 1, ptr %i.o, align 8, !alias.scope !11761, !noalias !11756
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8yjYO7b73r2_10serde_json3ser8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_entryeINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json11CrateSourceEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 !guid !11785 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11786)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !11786, !nonnull !14, !align !20, !noundef !14 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !30, !alias.scope !11786, !noundef !14
  %i.e = icmp eq i8 %i.d, 1
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !11787, !nonnull !14, !noundef !14 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11788)
  br i1 %i.e, label %.split.i.i, label %.split8.i.i

.split8.i.i:                                      ; preds = %bb.a
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @442, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !11789
  br label %bb.b

.split.i.i:                                       ; preds = %bb.a
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @438, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11789
  br label %bb.b

bb.b:                                             ; preds = %.split.i.i, %.split8.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !11788, !noalias !11787, !noundef !14 ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !11788, !noalias !11787, !nonnull !14, !noundef !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !11788, !noalias !11787, !noundef !14
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.05.01.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ 0, %bb.b ]
  %i.k = add nuw i64 %.sroa.05.01.i.i, 1          ; 2 uses
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.j), !noalias !11789
  %exitcond.not.i.i = icmp eq i64 %i.k, %i.g
  br i1 %exitcond.not.i.i, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph.i.i

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %.lr.ph.i.i, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !11786
  %.val8.i = load ptr, ptr %i.a, align 8, !alias.scope !11790, !noalias !11787, !nonnull !14, !align !20, !noundef !14 ; 3 uses
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @445, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11791
  tail call fastcc void @_RINvNtCs8yjYO7b73r2_10serde_json3ser27format_escaped_str_contentsQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_15PrettyFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @445, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11792
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11793)
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !11793, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @443, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !11793
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11795)
  %i.l = load i64, ptr %3, align 8, !range !15, !alias.scope !11796, !noundef !14
  %.not.i.i4 = icmp eq i64 %i.l, -1
  br i1 %.not.i.i4, label %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json11CrateSourceENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2O_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i, label %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json11CrateSourceENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2O_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer.exit.i

_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json11CrateSourceENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2O_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i: ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !11795, !noalias !11793, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !11797
  br label %bb.c

_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json11CrateSourceENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2O_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  %i.m = tail call noundef align 8 ptr @_RINvXNvNtCsdcPuHeDsw6v_13project_model12project_jsonsi_1__NtB5_11CrateSourceNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB28_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.c, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json11CrateSourceEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.c:                                             ; preds = %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json11CrateSourceENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2O_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer.exit.i, %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json11CrateSourceENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2O_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 1, ptr %i.n, align 8, !alias.scope !11798, !noalias !11793
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json11CrateSourceEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json11CrateSourceEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json11CrateSourceENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2O_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.c
  %.sroa.0.1.i = phi ptr [ null, %bb.c ], [ %i.m, %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json11CrateSourceENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2O_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer.exit.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8yjYO7b73r2_10serde_json3ser8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_entryeINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json9BuildDataEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %3) unnamed_addr #0 !guid !11822 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11823)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !11823, !nonnull !14, !align !20, !noundef !14 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !30, !alias.scope !11823, !noundef !14
  %i.e = icmp eq i8 %i.d, 1
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !11824, !nonnull !14, !noundef !14 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11825)
  br i1 %i.e, label %.split.i.i, label %.split8.i.i

.split8.i.i:                                      ; preds = %bb.a
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @442, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !11826
  br label %bb.b

.split.i.i:                                       ; preds = %bb.a
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @438, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11826
  br label %bb.b

bb.b:                                             ; preds = %.split.i.i, %.split8.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !11825, !noalias !11824, !noundef !14 ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !11825, !noalias !11824, !nonnull !14, !noundef !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !11825, !noalias !11824, !noundef !14
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.05.01.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ 0, %bb.b ]
  %i.k = add nuw i64 %.sroa.05.01.i.i, 1          ; 2 uses
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.j), !noalias !11826
  %exitcond.not.i.i = icmp eq i64 %i.k, %i.g
  br i1 %exitcond.not.i.i, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph.i.i

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %.lr.ph.i.i, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !11823
  %.val8.i = load ptr, ptr %i.a, align 8, !alias.scope !11827, !noalias !11824, !nonnull !14, !align !20, !noundef !14 ; 3 uses
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @445, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11828
  tail call fastcc void @_RINvNtCs8yjYO7b73r2_10serde_json3ser27format_escaped_str_contentsQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_15PrettyFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @445, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11829
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11830)
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !11830, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @443, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !11830
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11832)
  %i.l = load i64, ptr %3, align 8, !range !15, !alias.scope !11833, !noundef !14
  %.not.i.i4 = icmp eq i64 %i.l, -1
  br i1 %.not.i.i4, label %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json9BuildDataENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2L_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i, label %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json9BuildDataENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2L_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer.exit.i

_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json9BuildDataENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2L_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i: ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !11832, !noalias !11830, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !11834
  br label %bb.c

_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json9BuildDataENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2L_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  %i.m = tail call noundef align 8 ptr @_RINvXNvNtCsdcPuHeDsw6v_13project_model12project_jsons6_1__NtB5_9BuildDataNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB25_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.c, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json9BuildDataEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.c:                                             ; preds = %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json9BuildDataENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2L_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer.exit.i, %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json9BuildDataENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2L_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 1, ptr %i.n, align 8, !alias.scope !11835, !noalias !11830
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json9BuildDataEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json9BuildDataEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json9BuildDataENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2L_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.c
  %.sroa.0.1.i = phi ptr [ null, %bb.c ], [ %i.m, %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsdcPuHeDsw6v_13project_model12project_json9BuildDataENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2L_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer.exit.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCs8yjYO7b73r2_10serde_json3ser8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_entryeINtNtCshzWfHUSfYae_4core6option6OptionbEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #0 !guid !11854 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11855)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !11855, !nonnull !14, !align !20, !noundef !14 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !30, !alias.scope !11855, !noundef !14
  %i.e = icmp eq i8 %i.d, 1
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !11856, !nonnull !14, !noundef !14 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11857)
  br i1 %i.e, label %.split.i.i, label %.split8.i.i

.split8.i.i:                                      ; preds = %bb.a
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @442, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !11858
  br label %bb.b

.split.i.i:                                       ; preds = %bb.a
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @438, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11858
  br label %bb.b

bb.b:                                             ; preds = %.split.i.i, %.split8.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !11857, !noalias !11856, !noundef !14 ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !11857, !noalias !11856, !nonnull !14, !noundef !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !11857, !noalias !11856, !noundef !14
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.05.01.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ 0, %bb.b ]
  %i.k = add nuw i64 %.sroa.05.01.i.i, 1          ; 2 uses
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.j), !noalias !11858
  %exitcond.not.i.i = icmp eq i64 %i.k, %i.g
  br i1 %exitcond.not.i.i, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph.i.i

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %.lr.ph.i.i, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !11855
  %.val8.i = load ptr, ptr %i.a, align 8, !alias.scope !11859, !noalias !11856, !nonnull !14, !align !20, !noundef !14 ; 3 uses
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @445, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11860
  tail call fastcc void @_RINvNtCs8yjYO7b73r2_10serde_json3ser27format_escaped_str_contentsQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_15PrettyFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @445, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11861
  %.val3 = load i8, ptr %3, align 1
  %.val.i4 = load ptr, ptr %i.a, align 8, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @443, i64 noundef range(i64 0, -9223372036854775808) 2)
  %.val9.i = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14 ; 3 uses
  switch i8 %.val3, label %.split.i.i.i.i.i.i [
    i8 2, label %bb.c
    i8 0, label %.split2.i.i.i.i.i.i
  ]

.split2.i.i.i.i.i.i:                              ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @446, i64 noundef range(i64 0, -9223372036854775808) 5)
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionbEECs6u1mgJOKDyY_13rust_analyzer.exit

.split.i.i.i.i.i.i:                               ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @447, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionbEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.c:                                             ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionbEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionbEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %.split2.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 1, ptr %i.l, align 8, !alias.scope !11862
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCs8yjYO7b73r2_10serde_json3ser8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtBR_6string6StringB3H_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 !guid !11883 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11884)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !11884, !nonnull !14, !align !20, !noundef !14 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !30, !alias.scope !11884, !noundef !14
  %i.e = icmp eq i8 %i.d, 1
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !11885, !nonnull !14, !noundef !14 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11886)
  br i1 %i.e, label %.split.i.i, label %.split8.i.i

.split8.i.i:                                      ; preds = %bb.a
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @442, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !11887
  br label %bb.b

.split.i.i:                                       ; preds = %bb.a
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @438, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11887
  br label %bb.b

bb.b:                                             ; preds = %.split.i.i, %.split8.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !11886, !noalias !11885, !noundef !14 ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !11886, !noalias !11885, !nonnull !14, !noundef !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !11886, !noalias !11885, !noundef !14
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.05.01.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ 0, %bb.b ]
  %i.k = add nuw i64 %.sroa.05.01.i.i, 1          ; 2 uses
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.j), !noalias !11887
  %exitcond.not.i.i = icmp eq i64 %i.k, %i.g
  br i1 %exitcond.not.i.i, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph.i.i

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %.lr.ph.i.i, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !11884
  %.val8.i = load ptr, ptr %i.a, align 8, !alias.scope !11888, !noalias !11885, !nonnull !14, !align !20, !noundef !14 ; 3 uses
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @445, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11889
  tail call fastcc void @_RINvNtCs8yjYO7b73r2_10serde_json3ser27format_escaped_str_contentsQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_15PrettyFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @445, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11890
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !11891, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @443, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !11891
  %i.l = tail call noalias noundef align 8 ptr @_RINvYQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB7_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer11collect_mapRNtNtBV_6string6StringB2J_RINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapB2K_B2K_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.c, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtBX_6string6StringB3M_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.c:                                             ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 1, ptr %i.m, align 8, !alias.scope !11892, !noalias !11891
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtBX_6string6StringB3M_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtBX_6string6StringB3M_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.c
  ret ptr %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8yjYO7b73r2_10serde_json3ser8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtBR_6string6StringNtNtCsdcPuHeDsw6v_13project_model12project_json7CfgListNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11958 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11959)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !11959, !nonnull !14, !align !20, !noundef !14 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !30, !alias.scope !11959, !noundef !14
  %i.f = icmp eq i8 %i.e, 1
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !11960, !nonnull !14, !noundef !14 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11961)
  br i1 %i.f, label %.split.i.i, label %.split8.i.i

.split8.i.i:                                      ; preds = %bb.a
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @442, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !11962
  br label %bb.b

.split.i.i:                                       ; preds = %bb.a
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @438, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11962
  br label %bb.b

bb.b:                                             ; preds = %.split.i.i, %.split8.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 8 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !11961, !noalias !11960, !noundef !14 ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !alias.scope !11961, !noalias !11960, !nonnull !14, !noundef !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !11961, !noalias !11960, !noundef !14
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.05.01.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ 0, %bb.b ]
  %i.l = add nuw i64 %.sroa.05.01.i.i, 1          ; 2 uses
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.k), !noalias !11962
  %exitcond.not.i.i = icmp eq i64 %i.l, %i.h
  br i1 %exitcond.not.i.i, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph.i.i

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %.lr.ph.i.i, %bb.b
  store i8 2, ptr %i.d, align 8, !alias.scope !11959
  %.val8.i = load ptr, ptr %i.b, align 8, !alias.scope !11963, !noalias !11960, !nonnull !14, !align !20, !noundef !14 ; 3 uses
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @445, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11964
  tail call fastcc void @_RINvNtCs8yjYO7b73r2_10serde_json3ser27format_escaped_str_contentsQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_15PrettyFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr nonnull %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val8.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @445, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11965
  %.val.i3 = load ptr, ptr %i.b, align 8, !noalias !11966, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @443, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !11966
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11968)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11969
  call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCsdcPuHeDsw6v_13project_model12project_json7CfgListNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3), !noalias !11970
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val.i.i.i = load i64, ptr %i.m, align 8, !noalias !11969, !noundef !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11971)
  %.val.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !11972, !noalias !11966, !nonnull !14, !align !20, !noundef !14 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11973)
  %i.n = load i64, ptr %i.g, align 8, !alias.scope !11974, !noalias !11966, !noundef !14 ; 3 uses
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.g, align 8, !alias.scope !11974, !noalias !11966
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  store i8 0, ptr %i.p, align 8, !alias.scope !11974, !noalias !11966
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @441, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11975
  %.not = icmp ne i64 %.val.i.i.i, 0              ; 2 uses
  br i1 %.not, label %_RNvXs1_NtCs8yjYO7b73r2_10serde_json3serQINtB5_10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer13serialize_mapCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, label %_RNvXs1_NtCs8yjYO7b73r2_10serde_json3serQINtB5_10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer13serialize_mapCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i

_RNvXs1_NtCs8yjYO7b73r2_10serde_json3serQINtB5_10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer13serialize_mapCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  %i.q = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCsdcPuHeDsw6v_13project_model12project_json7CfgListENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !11976 ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i.i.i.i, label %.thread.thread.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

_RNvXs1_NtCs8yjYO7b73r2_10serde_json3serQINtB5_10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer13serialize_mapCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i: ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11977)
  store i64 %i.n, ptr %i.g, align 8, !alias.scope !11978, !noalias !11966
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @439, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11979
  %i.s = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCsdcPuHeDsw6v_13project_model12project_json7CfgListENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !11976 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %.not10.i.i32.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not10.i.i32.i.i.i, label %bb.e, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RNvXs1_NtCs8yjYO7b73r2_10serde_json3serQINtB5_10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer13serialize_mapCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i, %_RNvXs1_NtCs8yjYO7b73r2_10serde_json3serQINtB5_10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer13serialize_mapCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  %.ph14 = phi ptr [ %i.r, %_RNvXs1_NtCs8yjYO7b73r2_10serde_json3serQINtB5_10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer13serialize_mapCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i ], [ %i.t, %_RNvXs1_NtCs8yjYO7b73r2_10serde_json3serQINtB5_10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer13serialize_mapCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i ]
  %.ph15 = phi { ptr, ptr } [ %i.q, %_RNvXs1_NtCs8yjYO7b73r2_10serde_json3serQINtB5_10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer13serialize_mapCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i ], [ %i.s, %_RNvXs1_NtCs8yjYO7b73r2_10serde_json3serQINtB5_10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer13serialize_mapCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsbSS6DM8SDEO_5alloc6string6StringRNtNtCsdcPuHeDsw6v_13project_model12project_json7CfgListEINtNtBe_6result6ResultuNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENCINvYQINtNtB3k_3ser10SerializerQINtNtB1q_3vec3VechENtB47_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapB1m_B1Z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i
  %i.u = phi i1 [ false, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsbSS6DM8SDEO_5alloc6string6StringRNtNtCsdcPuHeDsw6v_13project_model12project_json7CfgListEINtNtBe_6result6ResultuNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENCINvYQINtNtB3k_3ser10SerializerQINtNtB1q_3vec3VechENtB47_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapB1m_B1Z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ], [ %.not, %.lr.ph.i.i.i.i.i.preheader ]
  %i.v = phi ptr [ %i.ag, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsbSS6DM8SDEO_5alloc6string6StringRNtNtCsdcPuHeDsw6v_13project_model12project_json7CfgListEINtNtBe_6result6ResultuNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENCINvYQINtNtB3k_3ser10SerializerQINtNtB1q_3vec3VechENtB47_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapB1m_B1Z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ], [ %.ph14, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.w = phi { ptr, ptr } [ %i.af, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsbSS6DM8SDEO_5alloc6string6StringRNtNtCsdcPuHeDsw6v_13project_model12project_json7CfgListEINtNtBe_6result6ResultuNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENCINvYQINtNtB3k_3ser10SerializerQINtNtB1q_3vec3VechENtB47_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapB1m_B1Z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ], [ %.ph15, %.lr.ph.i.i.i.i.i.preheader ]
  %i.x = extractvalue { ptr, ptr } %i.w, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = getelementptr i8, ptr %i.v, i64 8
  %.val8.i.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !11980 ; 2 uses
  %i.z = getelementptr i8, ptr %i.v, i64 16
  %.val9.i.i.i.i.i = load i64, ptr %i.z, align 8, !noalias !11980
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !11970, !noalias !11981, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11982)
  br i1 %i.u, label %.split.i.i.i.i.i.i.i.i.i.i, label %.split8.i.i.i.i.i.i.i.i.i.i

.split8.i.i.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i
  call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @442, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !11983
  br label %bb.c

.split.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i
  call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @438, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11983
  br label %bb.c

bb.c:                                             ; preds = %.split.i.i.i.i.i.i.i.i.i.i, %.split8.i.i.i.i.i.i.i.i.i.i
  %i.aa = load i64, ptr %i.g, align 8, !alias.scope !11984, !noalias !11981, !noundef !14 ; 2 uses
  %i.ab = load ptr, ptr %i.c, align 8, !alias.scope !11984, !noalias !11981, !nonnull !14, !noundef !14
  %i.ac = load i64, ptr %i.j, align 8, !alias.scope !11984, !noalias !11981, !noundef !14
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyRNtNtBX_6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.05.01.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ad = add nuw i64 %.sroa.05.01.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef range(i64 0, -9223372036854775808) %i.ac), !noalias !11983
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ad, %i.aa
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyRNtNtBX_6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyRNtNtBX_6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.c
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !11985, !noalias !11981, !nonnull !14, !align !20, !noundef !14 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i.i.i) ]
  call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @445, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11986
  call fastcc void @_RINvNtCs8yjYO7b73r2_10serde_json3ser27format_escaped_str_contentsQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_15PrettyFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr nonnull %.val9.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val8.i.i.i.i.i, i64 noundef %.val9.i.i.i.i.i)
  call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @445, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !11987
  %.val.i5.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !11970, !noalias !11988, !nonnull !14, !align !20, !noundef !14
  call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @443, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !11989
  %i.ae = call noundef align 8 ptr @_RINvXNvNtCsdcPuHeDsw6v_13project_model12project_jsons0_1__NtB5_7CfgListNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB23_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !11990 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsbSS6DM8SDEO_5alloc6string6StringRNtNtCsdcPuHeDsw6v_13project_model12project_json7CfgListEINtNtBe_6result6ResultuNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENCINvYQINtNtB3k_3ser10SerializerQINtNtB1q_3vec3VechENtB47_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapB1m_B1Z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i, label %_RINvXs1G_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCsdcPuHeDsw6v_13project_model12project_json7CfgListNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtB9_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtB1K_3vec3VechENtB4m_15PrettyFormatterEECs6u1mgJOKDyY_13rust_analyzer.exit.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsbSS6DM8SDEO_5alloc6string6StringRNtNtCsdcPuHeDsw6v_13project_model12project_json7CfgListEINtNtBe_6result6ResultuNtNtCs8yjYO7b73r2_10serde_json5error5ErrorENCINvYQINtNtB3k_3ser10SerializerQINtNtB1q_3vec3VechENtB47_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapB1m_B1Z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i: ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyRNtNtBX_6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_RINvYINtNtCs8yjYO7b73r2_10serde_json3ser8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_entryeINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15CodeDescriptionEECs6u1mgJOKDyY_13rust_analyzer:bb.a

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8yjYO7b73r2_10serde_json3ser8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_entryeINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(20) %3) unnamed_addr #0 !guid !12852 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12853)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !12853, !nonnull !14, !align !20, !noundef !14 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !30, !alias.scope !12853, !noundef !14
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !12854, !nonnull !14, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12854
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !12853
  %i.e = tail call noundef ptr @_RINvNtCs8yjYO7b73r2_10serde_json3ser18format_escaped_strQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_16CompactFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !12853 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12855)
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !12855, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12855
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12857)
  %i.f = load i32, ptr %3, align 4, !range !48, !alias.scope !12858, !noundef !14
  %i.g = trunc nuw i32 %i.f to i1
  br i1 %i.g, label %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i

_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i: ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !12857, !noalias !12855, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !12859
  br label %bb.c

_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = tail call noundef align 8 ptr @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress5m_1__NtB5_5RangeNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.c:                                             ; preds = %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i, %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.c
  %.sroa.0.1.i = phi ptr [ null, %bb.c ], [ %i.i, %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8yjYO7b73r2_10serde_json3ser8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_entryeINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations16FoldingRangeKindEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 !guid !12868 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12869)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !12869, !nonnull !14, !align !20, !noundef !14 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !30, !alias.scope !12869, !noundef !14
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !12870, !nonnull !14, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12870
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !12869
  %i.e = tail call noundef ptr @_RINvNtCs8yjYO7b73r2_10serde_json3ser18format_escaped_strQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_16CompactFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !12869 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12871)
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !12871, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12871
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12873)
  %i.f = load i64, ptr %3, align 8, !range !37, !alias.scope !12874, !noundef !14
  %.not.i.i = icmp eq i64 %i.f, -2
  br i1 %.not.i.i, label %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations16FoldingRangeKindENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i, label %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations16FoldingRangeKindENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i

_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations16FoldingRangeKindENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i: ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !12873, !noalias !12871, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !12875
  br label %bb.c

_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations16FoldingRangeKindENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  %i.g = tail call noundef align 8 ptr @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerationss8_1__NtB5_16FoldingRangeKindNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations16FoldingRangeKindEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.c:                                             ; preds = %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations16FoldingRangeKindENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i, %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations16FoldingRangeKindENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations16FoldingRangeKindEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations16FoldingRangeKindEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations16FoldingRangeKindENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.c
  %.sroa.0.1.i = phi ptr [ null, %bb.c ], [ %i.g, %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations16FoldingRangeKindENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8yjYO7b73r2_10serde_json3ser8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_entryeINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations18DiagnosticSeverityEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %3) unnamed_addr #0 !guid !12884 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12885)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !12885, !nonnull !14, !align !20, !noundef !14 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !30, !alias.scope !12885, !noundef !14
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !12886, !nonnull !14, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12886
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !12885
  %i.e = tail call noundef ptr @_RINvNtCs8yjYO7b73r2_10serde_json3ser18format_escaped_strQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_16CompactFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !12885 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12887)
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !12887, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12887
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12889)
  %i.f = load i8, ptr %3, align 1, !range !45, !alias.scope !12890, !noundef !14
  %.not.i.i = icmp eq i8 %i.f, -1
  br i1 %.not.i.i, label %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations18DiagnosticSeverityENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i, label %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations18DiagnosticSeverityENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i

_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations18DiagnosticSeverityENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i: ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !12889, !noalias !12887, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !12891
  br label %bb.c

_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations18DiagnosticSeverityENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  %i.g = tail call noundef align 8 ptr @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerationssS_1__NtB5_18DiagnosticSeverityNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations18DiagnosticSeverityEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.c:                                             ; preds = %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations18DiagnosticSeverityENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i, %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations18DiagnosticSeverityENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations18DiagnosticSeverityEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations18DiagnosticSeverityEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations18DiagnosticSeverityENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.c
  %.sroa.0.1.i = phi ptr [ null, %bb.c ], [ %i.g, %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations18DiagnosticSeverityENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8yjYO7b73r2_10serde_json3ser8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_entryeINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors4CodeEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 !guid !12900 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12901)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !12901, !nonnull !14, !align !20, !noundef !14 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !30, !alias.scope !12901, !noundef !14
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !12902, !nonnull !14, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12902
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !12901
  %i.e = tail call noundef ptr @_RINvNtCs8yjYO7b73r2_10serde_json3ser18format_escaped_strQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_16CompactFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !12901 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12903)
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !12903, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12903
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12905)
  %i.f = load i64, ptr %3, align 8, !range !22, !alias.scope !12906, !noundef !14
  %.not.i.i = icmp eq i64 %i.f, -2
  br i1 %.not.i.i, label %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors4CodeENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i, label %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors4CodeENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i

_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors4CodeENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i: ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !12905, !noalias !12903, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !12907
  br label %bb.c

_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors4CodeENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  %i.g = tail call noundef align 8 ptr @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_orssa_1__NtB5_4CodeNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors4CodeEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.c:                                             ; preds = %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors4CodeENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i, %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors4CodeENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.thread.i
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors4CodeEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors4CodeEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors4CodeENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.c
  %.sroa.0.1.i = phi ptr [ null, %bb.c ], [ %i.g, %_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors4CodeENtB8_9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer.exit.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCs8yjYO7b73r2_10serde_json3ser8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_entryeINtNtCshzWfHUSfYae_4core6option6OptionbEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #0 !guid !12911 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12912)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !12912, !nonnull !14, !align !20, !noundef !14 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !30, !alias.scope !12912, !noundef !14
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !12913, !nonnull !14, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12913
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !12912
  %i.e = tail call noundef ptr @_RINvNtCs8yjYO7b73r2_10serde_json3ser18format_escaped_strQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_16CompactFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !12912 ; 0 uses
  %.val3 = load i8, ptr %3, align 1
  %.val.i4 = load ptr, ptr %i.a, align 8, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef range(i64 0, -9223372036854775808) 1)
  %.val9.i = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14 ; 3 uses
  switch i8 %.val3, label %.split.i.i.i.i.i.i [
    i8 2, label %bb.c
    i8 0, label %.split2.i.i.i.i.i.i
  ]

.split2.i.i.i.i.i.i:                              ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @446, i64 noundef range(i64 0, -9223372036854775808) 5)
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionbEECs6u1mgJOKDyY_13rust_analyzer.exit

.split.i.i.i.i.i.i:                               ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @447, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionbEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.c:                                             ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionbEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionbEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %.split2.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %bb.c
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCs8yjYO7b73r2_10serde_json3ser8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_entryeINtNtCshzWfHUSfYae_4core6option6OptionmEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %3) unnamed_addr #0 !guid !12917 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12918)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !12918, !nonnull !14, !align !20, !noundef !14 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !30, !alias.scope !12918, !noundef !14
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !12919, !nonnull !14, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12919
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !12918
  %i.f = tail call noundef ptr @_RINvNtCs8yjYO7b73r2_10serde_json3ser18format_escaped_strQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_16CompactFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !12918 ; 0 uses
  %.val3 = load i32, ptr %3, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.val4 = load i32, ptr %i.g, align 4
  %.val.i5 = load ptr, ptr %i.b, align 8, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef range(i64 0, -9223372036854775808) 1)
  %.val10.i = load ptr, ptr %i.b, align 8         ; 4 uses
  %i.h = trunc nuw i32 %.val3 to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = call noundef i64 @_RNvXst_Cs1bMqiqqejzZ_4itoamNtB5_8Unsigned3fmt(i32 noundef %.val4, ptr noalias nofree noundef nonnull dereferenceable(10) %i.a) ; 2 uses
  %i.j = sub nuw i64 10, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef range(i64 0, -9223372036854775808) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionmEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.d:                                             ; preds = %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionmEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_valueINtNtCshzWfHUSfYae_4core6option6OptionmEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c, %bb.d
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8yjYO7b73r2_10serde_json3ser8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_entryeNtCs2vT3jxLudSK_3url3UrlECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %3) unnamed_addr #0 !guid !12925 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12926)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !12926, !nonnull !14, !align !20, !noundef !14 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !30, !alias.scope !12926, !noundef !14
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !12927, !nonnull !14, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12927
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !12926
  %i.e = tail call noundef ptr @_RINvNtCs8yjYO7b73r2_10serde_json3ser18format_escaped_strQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_16CompactFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !12926 ; 0 uses
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !12928, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12928
  %i.f = tail call noundef align 8 ptr @_RINvXse_Cs2vT3jxLudSK_3urlNtB6_3UrlNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCs8yjYO7b73r2_10serde_json3ser8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 !guid !12932 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12933)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !12933, !nonnull !14, !align !20, !noundef !14 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !30, !alias.scope !12933, !noundef !14
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !12934, !nonnull !14, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12934
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !12933
  %i.e = tail call noundef ptr @_RINvNtCs8yjYO7b73r2_10serde_json3ser18format_escaped_strQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_16CompactFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !12933 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val3 = load ptr, ptr %i.f, align 8            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val4 = load i64, ptr %i.g, align 8
  %.val.i5 = load ptr, ptr %i.a, align 8, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef range(i64 0, -9223372036854775808) 1)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.h = tail call noundef ptr @_RINvNtCs8yjYO7b73r2_10serde_json3ser18format_escaped_strQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_16CompactFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val3, i64 noundef %.val4) ; 0 uses
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8yjYO7b73r2_10serde_json3ser8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_entryeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %3) unnamed_addr #0 !guid !12940 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12941)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !12941, !nonnull !14, !align !20, !noundef !14 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !30, !alias.scope !12941, !noundef !14
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !12942, !nonnull !14, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12942
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !12941
  %i.e = tail call noundef ptr @_RINvNtCs8yjYO7b73r2_10serde_json3ser18format_escaped_strQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_16CompactFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !12941 ; 0 uses
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !12943, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12943
  %i.f = tail call noundef align 8 ptr @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress5m_1__NtB5_5RangeNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8yjYO7b73r2_10serde_json3ser8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_entryeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8LocationECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %3) unnamed_addr #0 !guid !12949 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12950)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !12950, !nonnull !14, !align !20, !noundef !14 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !30, !alias.scope !12950, !noundef !14
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !12951, !nonnull !14, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12951
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !12950
  %i.e = tail call noundef ptr @_RINvNtCs8yjYO7b73r2_10serde_json3ser18format_escaped_strQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_16CompactFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !12950 ; 0 uses
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !12952, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12952
  %i.f = tail call noundef align 8 ptr @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress0_1__NtB5_8LocationNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8yjYO7b73r2_10serde_json3ser8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_entryeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %3) unnamed_addr #0 !guid !12958 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12959)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !12959, !nonnull !14, !align !20, !noundef !14 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !30, !alias.scope !12959, !noundef !14
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !12960, !nonnull !14, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12960
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !12959
  %i.e = tail call noundef ptr @_RINvNtCs8yjYO7b73r2_10serde_json3ser18format_escaped_strQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_16CompactFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !12959 ; 0 uses
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !12961, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12961
  %i.f = tail call noundef align 8 ptr @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated10structuress5I_1__NtB5_8PositionNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8yjYO7b73r2_10serde_json3ser8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap15serialize_entryeNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations10MarkupKindECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %3) unnamed_addr #0 !guid !12967 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12968)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !12968, !nonnull !14, !align !20, !noundef !14 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !30, !alias.scope !12968, !noundef !14
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !12969, !nonnull !14, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12969
  br label %_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXs6_NtCs8yjYO7b73r2_10serde_json3serINtB6_8CompoundQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsjQbM3MYDIrM_10serde_core3ser12SerializeMap13serialize_keyeECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.b, align 8, !alias.scope !12968
  %i.e = tail call noundef ptr @_RINvNtCs8yjYO7b73r2_10serde_json3ser18format_escaped_strQINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtB2_16CompactFormatterECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !12968 ; 0 uses
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !12970, !nonnull !14, !align !20, !noundef !14
  tail call void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12970
  %i.f = tail call noundef align 8 ptr @_RINvXNvNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerationssG_1__NtB5_10MarkupKindNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeQINtNtCs8yjYO7b73r2_10serde_json3ser10SerializerQINtNtCsbSS6DM8SDEO_5alloc3vec3VechEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
end_hunk_1
