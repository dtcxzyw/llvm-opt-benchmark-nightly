inline.NumInlined: 5997
inline.NumDeleted: 1809
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace7samplerNtB2_7SamplerNtB2_17CloneShouldSample9box_cloneCs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = insertvalue { ptr, ptr } poison, ptr %i.i, 0
  %i.n = insertvalue { ptr, ptr } %i.m, ptr @19, 1
  ret { ptr, ptr } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB2_9BoxedSpanNtB2_14ObjectSafeSpan10set_statusCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB5_9BoxedSpanNtNtNtB9_5trace4span4Span10set_status(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB2_9BoxedSpanNtB2_14ObjectSafeSpan11update_nameCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !19, !align !20, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !15852
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !19, !noalias !15849, !nonnull !19
  call void %i.d(ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #52, !noalias !15849, !inline_history !15859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15849
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXNtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB2_9BoxedSpanNtB2_14ObjectSafeSpan12is_recordingCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1_NtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB5_9BoxedSpanNtNtNtB9_5trace4span4Span12is_recording(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 16 ptr @_RNvXNtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB2_9BoxedSpanNtB2_14ObjectSafeSpan12span_contextCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 16 ptr @_RNvXs1_NtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB5_9BoxedSpanNtNtNtB9_5trace4span4Span12span_context(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB2_9BoxedSpanNtB2_14ObjectSafeSpan13set_attributeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB5_9BoxedSpanNtNtNtB9_5trace4span4Span13set_attribute(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB2_9BoxedSpanNtB2_14ObjectSafeSpan18end_with_timestampCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB5_9BoxedSpanNtNtNtB9_5trace4span4Span18end_with_timestamp(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB2_9BoxedSpanNtB2_14ObjectSafeSpan24add_event_with_timestampCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !19, !align !20, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !15864, !noalias !15871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %4, i64 24, i1 false), !noalias !15872
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !19, !noalias !15860, !nonnull !19
  call void %i.e(ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !15860, !inline_history !14819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15860
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB2_9BoxedSpanNtB2_14ObjectSafeSpan8add_linkCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB5_9BoxedSpanNtNtNtB9_5trace4span4Span8add_link(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop() unnamed_addr #17 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call noundef ptr @_RNvYNtNtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull %i.a, ptr noundef nonnull @146, ptr noundef nonnull inttoptr (i64 123 to ptr))
  store ptr %i.c, ptr %i.b, align 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvNtCs2pqxYH9ZEk8_3std7process5abort() #47
  unreachable
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef nonnull ptr @_RNvXs0_NtCs7p2uQeJxui2_9deltalake6readerNtB5_21StreamToReaderAdapterNtNtCs1N9T06jgEdt_11arrow_array12record_batch17RecordBatchReader6schema(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs8ojAJGM8ADl_16datafusion_proto12logical_planNtB5_28DefaultLogicalExtensionCodecNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #9 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 28)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_13UnaryOperatorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #9 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !7665, !noundef !19 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs0_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_13UnaryOperatorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs0_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_13UnaryOperatorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.693, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace12id_generatorNtB5_17RandomIdGeneratorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #9 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 17, ptr noalias noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_optionsNtB5_15KeyValueOptionsNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #9 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 7, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166, ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEENCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB3q_8Snapshot12commit_infos0s0_0EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable sret([256 x i8]) align 16 captures(none) dereferenceable(256) %0, ptr noalias noundef align 8 dereferenceable(128) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.i = alloca [256 x i8], align 16    ; 4 uses
  %.sroa.0.i.i.i.i.i = alloca [272 x i8], align 16 ; 5 uses
  %i.a = alloca [272 x i8], align 16              ; 6 uses
  %i.b = alloca [272 x i8], align 16              ; 10 uses
  %i.c = alloca [272 x i8], align 16              ; 9 uses
  %.sroa.4.i = alloca [264 x i8], align 8         ; 6 uses
  %i.d = alloca [912 x i8], align 8               ; 5 uses
  %i.e = alloca [912 x i8], align 8               ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.i = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2b_8Snapshot12commit_infos0s0_00EE28atomic_load_head_and_len_allCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.h)
  %i.j = extractvalue { ptr, i64 } %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !19 ; 3 uses
  %i.m = icmp ult i64 %i.l, 33909456017848441
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add i64 %i.j, %i.l
  %i.o = load i64, ptr %i.g, align 8, !noundef !19
  %i.p = icmp ult i64 %i.n, %i.o
  br i1 %i.p, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 904
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEENCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB3i_8Snapshot12commit_infos0s0_0EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([912 x i8]) align 8 captures(address) dereferenceable(912) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.t = load i64, ptr %i.e, align 8, !range !644, !noundef !19
  %i.u = and i64 %i.t, 1
  %or.cond.not = icmp eq i64 %i.u, 0
  br i1 %or.cond.not, label %bb.s, label %bb.t

.loopexit:                                        ; preds = %bb.t, %bb.a, %bb.s
  %i.v = phi i64 [ %.pre, %bb.s ], [ %i.l, %bb.a ], [ %i.cx, %bb.t ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15873)
  call void @llvm.experimental.noalias.scope.decl(metadata !15876)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.w = icmp ult i64 %i.v, 33909456017848441
  call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3G_6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !15876, !noalias !15878, !nonnull !19, !noundef !19 ; 14 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 256
  %i.ab = load i64, ptr %i.aa, align 16, !noalias !15880, !noundef !19 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !15876, !noalias !15878, !noundef !19
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3G_6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3G_6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.c, %.loopexit
  call void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2b_8Snapshot12commit_infos0s0_00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([272 x i8]) align 16 captures(none) dereferenceable(272) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !15873
  %i.af = load i64, ptr %i.c, align 16, !range !3928, !noalias !15880, !noundef !19 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 5
  br i1 %i.ag, label %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3G_6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ak = add i64 %i.ab, 1
  store i64 %i.ak, ptr %i.ac, align 8, !alias.scope !15876, !noalias !15878
  call void @llvm.experimental.noalias.scope.decl(metadata !15881)
  call void @llvm.experimental.noalias.scope.decl(metadata !15884)
  %i.al = add nsw i64 %i.v, -1                    ; 8 uses
  store i64 %i.al, ptr %i.k, align 8, !alias.scope !15887, !noalias !15888
  %i.am = load i64, ptr %1, align 8, !range !45, !alias.scope !15887, !noalias !15888, !noundef !19
  %i.an = icmp samesign ult i64 %i.al, %i.am
  call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %i.al ; 2 uses
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.ao, align 16, !noalias !15891 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.57.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.4.0..sroa_idx.i.i.i, i64 264, i1 false), !noalias !15891
  store i64 %.sroa.05.0.copyload.i.i.i, ptr %i.a, align 16, !noalias !15891
  %i.ap = icmp eq i64 %i.al, 0
  br i1 %i.ap, label %_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2n_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3p_6errors15DeltaTableErrorEEE3popCs7p2uQeJxui2_9deltalake.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 16 dereferenceable(272) %i.a, ptr noundef nonnull %i.z, i64 noundef 34)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB31_6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i unwind label %bb.f, !noalias !15892

bb.f:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #49, !noalias !15892
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB31_6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(272) %i.z, i64 272, i1 false), !noalias !15895
  %3 = call i64 @llvm.usub.sat.i64(i64 %i.al, i64 2)
  %.not.not8.i.i.i.i.i = icmp samesign ult i64 %i.v, 4
  br i1 %.not.not8.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB31_6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %.sroa.12.0.lcssa.i.i.i.i.i = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB31_6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.bm, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i.i = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB31_6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.bq, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.ar = add nsw i64 %i.v, -2
  %i.as = icmp eq i64 %.sroa.05.0.lcssa.i.i.i.i.i, %i.ar
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.at = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %.sroa.05.0.lcssa.i.i.i.i.i
  %i.au = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %.sroa.12.0.lcssa.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.au, ptr noundef nonnull align 16 dereferenceable(272) %i.at, i64 272, i1 false), !noalias !15895
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.sroa.12.1.i.i.i.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i.i.i, %bb.g ], [ %.sroa.12.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 4 uses
  %i.av = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %.sroa.12.1.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.av, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.0.i.i.i.i.i, i64 272, i1 false), !noalias !15895
  %i.aw = icmp samesign ult i64 %.sroa.12.1.i.i.i.i.i, %i.al
  call void @llvm.assume(i1 %i.aw)
  %.sroa.423.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 256 ; 2 uses
  %i.ax = load <2 x i64>, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !15895
  %.sroa.423.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !15895
  %.not26.i.i.i.i.i.i = icmp eq i64 %.sroa.12.1.i.i.i.i.i, 0
  br i1 %.not26.i.i.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %bb.i
  %.sroa.13.027.i.i.i.i.i.i = phi i64 [ %i.az, %bb.i ], [ %.sroa.12.1.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.ay = add nsw i64 %.sroa.13.027.i.i.i.i.i.i, -1
  %i.az = lshr i64 %i.ay, 1                       ; 4 uses
  %i.ba = icmp samesign ult i64 %i.az, %i.al
  call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %i.az ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 256
  %.val1.i.i.i.i.i.i = load i64, ptr %i.bc, align 16, !noalias !15895, !noundef !19
  %.not25.i.i.i.i.i.i = icmp sgt i64 %.val1.i.i.i.i.i.i, %.sroa.423.0.copyload.i.i.i.i.i.i
  br i1 %.not25.i.i.i.i.i.i, label %bb.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %.sroa.13.027.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.bd, ptr noundef nonnull align 16 dereferenceable(272) %i.bb, i64 272, i1 false), !noalias !15895
  %.not.i.i.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB31_6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.05.010.i.i.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB31_6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ] ; 3 uses
  %.sroa.12.09.i.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB31_6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ]
  %i.be = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %.sroa.05.010.i.i.i.i.i
  %i.bf = add nuw nsw i64 %.sroa.05.010.i.i.i.i.i, 1 ; 2 uses
  %i.bg = icmp samesign ult i64 %i.bf, %i.al
  call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.be, i64 256
  %.val.i.i.i.i.i = load i64, ptr %i.bi, align 16, !noalias !15895, !noundef !19
  %i.bj = getelementptr i8, ptr %i.bh, i64 256
  %.val17.i.i.i.i.i = load i64, ptr %i.bj, align 16, !noalias !15895, !noundef !19
  %i.bk = icmp sle i64 %.val17.i.i.i.i.i, %.val.i.i.i.i.i
  %i.bl = zext i1 %i.bk to i64
  %i.bm = add nuw nsw i64 %.sroa.05.010.i.i.i.i.i, %i.bl ; 4 uses
  %i.bn = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %.sroa.12.09.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.bo, ptr noundef nonnull align 16 dereferenceable(272) %i.bn, i64 272, i1 false), !noalias !15895
  %i.bp = shl nuw nsw i64 %i.bm, 1                ; 2 uses
  %i.bq = or disjoint i64 %i.bp, 1                ; 2 uses
  %.not.not.not.i.i.i.i.i = icmp samesign ult i64 %i.bp, %3
  br i1 %.not.not.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i, %bb.h
  %.sroa.13.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.sroa.13.027.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.i ]
  %i.br = getelementptr inbounds nuw [272 x i8], ptr %i.z, i64 %.sroa.13.0.lcssa.i.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.br, ptr noundef nonnull align 16 dereferenceable(256) %.sroa.0.i.i.i.i.i, i64 256, i1 false), !noalias !15895
  %.sroa.5.0..sroa_idx1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 256
  store <2 x i64> %i.ax, ptr %.sroa.5.0..sroa_idx1.i.i.i.i.i.i, align 16, !noalias !15895
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %.sroa.012.0.copyload13.pre.i.i = load i64, ptr %i.a, align 16, !noalias !15897
  br label %_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2n_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3p_6errors15DeltaTableErrorEEE3popCs7p2uQeJxui2_9deltalake.exit.i

_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2n_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3p_6errors15DeltaTableErrorEEE3popCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %bb.d
  %.sroa.012.0.copyload13.i.i = phi i64 [ %.sroa.012.0.copyload13.pre.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %.sroa.05.0.copyload.i.i.i, %bb.d ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.57.0..sroa_idx.i.i.i, i64 264, i1 false), !noalias !15880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15891
  %i.bs = icmp ne i64 %.sroa.012.0.copyload13.i.i, 4
  call void @llvm.assume(i1 %i.bs)
  store i64 %.sroa.012.0.copyload13.i.i, ptr %0, align 16, !alias.scope !15873, !noalias !15898
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.414.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.4.i, i64 248, i1 false), !noalias !15898
  br label %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit

_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3G_6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  br label %.sink.split

bb.j:                                             ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit.i, %.lr.ph.i
  %i.bt = phi i64 [ %i.af, %.lr.ph.i ], [ %i.cp, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit.i ] ; 2 uses
  %.not.i = icmp eq i64 %i.bt, 4
  br i1 %.not.i, label %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit.thread6, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %i.bt, ptr %i.b, align 16, !noalias !15880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.3.0..sroa_idx4.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.3.0..sroa_idx.i, i64 264, i1 false), !noalias !15880
  %i.bu = load i64, ptr %i.ah, align 16, !noalias !15880, !noundef !19 ; 2 uses
  %i.bv = load i64, ptr %i.ai, align 8, !alias.scope !15876, !noalias !15878, !noundef !19
  %i.bw = icmp eq i64 %i.bu, %i.bv
  br i1 %i.bw, label %bb.r, label %bb.l

_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit.thread6: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  br label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.bx = load i64, ptr %i.k, align 8, !alias.scope !15899, !noalias !15902, !noundef !19 ; 8 uses
  %i.by = icmp ult i64 %i.bx, 33909456017848441
  call void @llvm.assume(i1 %i.by)
  %i.bz = load i64, ptr %1, align 8, !range !45, !alias.scope !15904, !noalias !15907, !noundef !19
  %i.ca = icmp eq i64 %i.bx, %i.bz
  br i1 %i.ca, label %bb.m, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1V_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB2X_6errors15DeltaTableErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB22_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB34_6errors15DeltaTableErrorEEE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1V_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB2X_6errors15DeltaTableErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.n, !noalias !15909

bb.n:                                             ; preds = %bb.m
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB2H_6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(272) %i.b) #48
          to label %bb.p unwind label %bb.o, !noalias !15873

bb.o:                                             ; preds = %bb.n
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !15873
  unreachable

bb.p:                                             ; preds = %bb.n
  resume { ptr, i32 } %i.cb

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1V_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB2X_6errors15DeltaTableErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.m, %bb.l
  %i.cd = load ptr, ptr %i.aj, align 8, !alias.scope !15904, !noalias !15907, !nonnull !19, !noundef !19
  %i.ce = getelementptr inbounds nuw [272 x i8], ptr %i.cd, i64 %i.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.ce, ptr noundef nonnull align 16 dereferenceable(272) %i.b, i64 272, i1 false), !noalias !15873
  %i.cf = add nuw nsw i64 %i.bx, 1
  store i64 %i.cf, ptr %i.k, align 8, !alias.scope !15904, !noalias !15907
  %.val.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !15899, !noalias !15902, !nonnull !19, !noundef !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.cg = getelementptr inbounds nuw [272 x i8], ptr %.val.i.i, i64 %i.bx ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %.sroa.0.i.i.i, ptr noundef nonnull align 16 dereferenceable(256) %i.cg, i64 256, i1 false), !noalias !15910
  %.sroa.423.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 256 ; 2 uses
  %i.ch = load <2 x i64>, ptr %.sroa.423.0..sroa_idx.i.i.i, align 16, !noalias !15910
  %.sroa.423.0.copyload.i.i.i = load i64, ptr %.sroa.423.0..sroa_idx.i.i.i, align 16, !noalias !15910
  %.not26.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not26.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1V_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB2X_6errors15DeltaTableErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.q
  %.sroa.13.027.i.i.i = phi i64 [ %i.cj, %bb.q ], [ %i.bx, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1V_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB2X_6errors15DeltaTableErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 3 uses
  %i.ci = add nsw i64 %.sroa.13.027.i.i.i, -1
  %i.cj = lshr i64 %i.ci, 1                       ; 4 uses
  %i.ck = icmp samesign ule i64 %i.cj, %i.bx
  call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw [272 x i8], ptr %.val.i.i, i64 %i.cj ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 256
  %.val1.i.i.i = load i64, ptr %i.cm, align 16, !noalias !15910, !noundef !19
  %.not25.i.i.i = icmp sgt i64 %.val1.i.i.i, %.sroa.423.0.copyload.i.i.i
  br i1 %.not25.i.i.i, label %bb.q, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit.i

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.cn = getelementptr inbounds nuw [272 x i8], ptr %.val.i.i, i64 %.sroa.13.027.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.cn, ptr noundef nonnull align 16 dereferenceable(272) %i.cl, i64 272, i1 false), !noalias !15910
  %.not.i.i8.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i8.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.q, %.lr.ph.i.i.i, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1V_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB2X_6errors15DeltaTableErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i.i
  %.sroa.13.0.lcssa.i.i.i = phi i64 [ 0, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1V_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB2X_6errors15DeltaTableErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i.i ], [ 0, %bb.q ], [ %.sroa.13.027.i.i.i, %.lr.ph.i.i.i ]
  %i.co = getelementptr inbounds nuw [272 x i8], ptr %.val.i.i, i64 %.sroa.13.0.lcssa.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.co, ptr noundef nonnull align 16 dereferenceable(256) %.sroa.0.i.i.i, i64 256, i1 false), !noalias !15910
  %.sroa.5.0..sroa_idx1.i.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 256
  store <2 x i64> %i.ch, ptr %.sroa.5.0..sroa_idx1.i.i.i, align 16, !noalias !15910
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2b_8Snapshot12commit_infos0s0_00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([272 x i8]) align 16 captures(none) dereferenceable(272) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !15873
  %i.cp = load i64, ptr %i.c, align 16, !range !3928, !noalias !15880, !noundef !19 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 5
  br i1 %i.cq, label %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit.thread, label %bb.j

bb.r:                                             ; preds = %bb.k
  %i.cr = add i64 %i.bu, 1
  store i64 %i.cr, ptr %i.ai, align 8, !alias.scope !15876, !noalias !15878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %0, ptr noundef nonnull align 16 dereferenceable(256) %i.b, i64 256, i1 false), !noalias !15898
  %.pr = load i64, ptr %0, align 16
  br label %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit

_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB1u_8Snapshot12commit_infos0s0_00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2n_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3p_6errors15DeltaTableErrorEEE3popCs7p2uQeJxui2_9deltalake.exit.i, %bb.r
  %i.cs = phi i64 [ %.sroa.012.0.copyload13.i.i, %_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2n_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3p_6errors15DeltaTableErrorEEE3popCs7p2uQeJxui2_9deltalake.exit.i ], [ %.pr, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
end_hunk_0
begin_hunk_1_@_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.zp = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.zo, ptr noundef nonnull %i.zm, i64 noundef %i.iw)
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ez:                                            ; preds = %bb.az
  %i.zq = getelementptr inbounds nuw i8, ptr %.tr98220, i64 16
  %i.zr = load ptr, ptr %i.zq, align 8, !nonnull !19, !noundef !19
  %i.zs = getelementptr inbounds nuw i8, ptr %.tr219, i64 16
  %i.zt = load ptr, ptr %i.zs, align 8, !nonnull !19, !noundef !19
  %i.zu = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.zt, ptr noundef nonnull %i.zr, i64 noundef %i.jb)
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fa:                                            ; preds = %bb.ba
  %i.zv = getelementptr inbounds nuw i8, ptr %.tr98220, i64 16
  %i.zw = load ptr, ptr %i.zv, align 8, !nonnull !19, !noundef !19
  %i.zx = getelementptr inbounds nuw i8, ptr %.tr219, i64 16
  %i.zy = load ptr, ptr %i.zx, align 8, !nonnull !19, !noundef !19
  %i.zz = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.zy, ptr noundef nonnull %i.zw, i64 noundef %i.jg)
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fb:                                            ; preds = %bb.bb
  %i.aaa = getelementptr inbounds nuw i8, ptr %.tr98220, i64 16
  %i.aab = load ptr, ptr %i.aaa, align 8, !nonnull !19, !noundef !19
  %i.aac = getelementptr inbounds nuw i8, ptr %.tr219, i64 16
  %i.aad = load ptr, ptr %i.aac, align 8, !nonnull !19, !noundef !19
  %i.aae = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.aad, ptr noundef nonnull %i.aab, i64 noundef %i.jl)
  br i1 %i.aae, label %bb.fc, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fc:                                            ; preds = %bb.fb
  %i.aaf = getelementptr inbounds nuw i8, ptr %.tr219, i64 48
  %i.aag = load i64, ptr %i.aaf, align 8, !noundef !19 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %.tr98220, i64 48
  %i.aai = load i64, ptr %i.aah, align 8, !noundef !19
  %i.aaj = icmp eq i64 %i.aag, %i.aai
  br i1 %i.aaj, label %bb.fd, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fd:                                            ; preds = %bb.fc
  %i.aak = getelementptr inbounds nuw i8, ptr %.tr98220, i64 40
  %i.aal = load ptr, ptr %i.aak, align 8, !nonnull !19, !noundef !19
  %i.aam = getelementptr inbounds nuw i8, ptr %.tr219, i64 40
  %i.aan = load ptr, ptr %i.aam, align 8, !nonnull !19, !noundef !19
  %i.aao = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.aan, ptr noundef nonnull %i.aal, i64 noundef %i.aag)
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fe:                                            ; preds = %bb.bc
  %i.aap = getelementptr inbounds nuw i8, ptr %.tr98220, i64 8
  %i.aaq = getelementptr inbounds nuw i8, ptr %.tr219, i64 8
  %i.aar = tail call fastcc noundef zeroext i1 @_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aaq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aap)
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ff:                                            ; preds = %bb.bd
  %i.aas = getelementptr inbounds nuw i8, ptr %.tr98220, i64 16
  %i.aat = load ptr, ptr %i.aas, align 8, !nonnull !19, !noundef !19
  %i.aau = getelementptr inbounds nuw i8, ptr %.tr219, i64 16
  %i.aav = load ptr, ptr %i.aau, align 8, !nonnull !19, !noundef !19
  %i.aaw = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.aav, ptr noundef nonnull %i.aat, i64 noundef %i.jv)
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fg:                                            ; preds = %bb.bi
  %i.aax = getelementptr inbounds nuw i8, ptr %.tr98220, i64 16
  %i.aay = load ptr, ptr %i.aax, align 8, !nonnull !19, !noundef !19
  %i.aaz = getelementptr inbounds nuw i8, ptr %.tr219, i64 16
  %i.aba = load ptr, ptr %i.aaz, align 8, !nonnull !19, !noundef !19
  %i.abb = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.aba, ptr noundef nonnull %i.aay, i64 noundef %i.ko)
  br i1 %i.abb, label %bb.fh, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fh:                                            ; preds = %bb.fg
  %i.abc = tail call fastcc noundef zeroext i1 @_RNvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.km) #52
  br i1 %i.abc, label %bb.fi, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fi:                                            ; preds = %bb.fh
  %i.abd = getelementptr inbounds nuw i8, ptr %.tr219, i64 80
  %i.abe = load i8, ptr %i.abd, align 8, !range !3433, !noundef !19 ; 2 uses
  %.not = icmp eq i8 %i.abe, 4
  %i.abf = getelementptr inbounds nuw i8, ptr %.tr98220, i64 80
  %i.abg = load i8, ptr %i.abf, align 8, !range !3433, !noundef !19 ; 2 uses
  br i1 %.not, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.abh = icmp eq i8 %i.abe, %i.abg
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fk:                                            ; preds = %bb.fi
  %i.abi = icmp eq i8 %i.abg, 4
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs6P_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly captures(none) dereferenceable(3) %0, ptr noalias noundef nonnull readonly captures(none) dereferenceable(3) %1) unnamed_addr #19 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !75, !noundef !19 ; 2 uses
  %.not = icmp eq i8 %i.a, 2
  %i.b = load i8, ptr %1, align 1, !range !75, !noundef !19 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %bb.d, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %i.b, 2
  br i1 %i.d, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !75, !noundef !19 ; 2 uses
  %.not4 = icmp eq i8 %i.f, 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !75, !noundef !19 ; 2 uses
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not12 = icmp eq i8 %i.f, %i.h
  br i1 %.not12, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.i = icmp eq i8 %i.h, 2
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i8, ptr %i.j, align 1, !range !75, !noundef !19 ; 2 uses
  %.not6 = icmp eq i8 %i.k, 2
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = load i8, ptr %i.l, align 1, !range !75, !noundef !19 ; 2 uses
  br i1 %.not6, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.c, %bb.f, %bb.b, %bb.e, %bb.j
  %.sroa.0.0.shrunk = phi i1 [ %i.n, %bb.i ], [ false, %bb.c ], [ %i.o, %bb.j ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.f ]
  ret i1 %.sroa.0.0.shrunk

bb.i:                                             ; preds = %bb.g
  %i.n = icmp eq i8 %i.k, %i.m
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  %i.o = icmp eq i8 %i.m, 2
  br label %bb.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs6_NtCs1N9T06jgEdt_11arrow_array12record_batchINtB5_19RecordBatchIteratorINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtB5_11RecordBatchENcNtINtNtB1m_6result6ResultB2P_NtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE2Ok0EENtNtNtB1k_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1) unnamed_addr #22 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16796)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !16799, !noalias !16800, !nonnull !19, !noundef !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !16799, !noalias !16800, !nonnull !19, !noundef !19 ; 4 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENcNtINtNtBb_6result6ResultB1K_NtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE2Ok0ENtNtNtB9_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.f, ptr %i.c, align 8, !alias.scope !16799, !noalias !16800
  %.sroa.0.0.copyload1.i = load i64, ptr %i.d, align 8, !noalias !16802 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload1.i, -9223372036854775808
  br i1 %.not.i, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENcNtINtNtBb_6result6ResultB1K_NtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE2Ok0ENtNtNtB9_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.47.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx2.i, i64 32, i1 false), !noalias !16794
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENcNtINtNtBb_6result6ResultB1K_NtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE2Ok0ENtNtNtB9_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENcNtINtNtBb_6result6ResultB1K_NtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE2Ok0ENtNtNtB9_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i, %bb.a, %bb.b
  %storemerge.i = phi i64 [ %.sroa.0.0.copyload1.i, %bb.b ], [ -9223372036854775807, %bb.a ], [ -9223372036854775807, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !16791, !noalias !16794
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs6_NtCs1N9T06jgEdt_11arrow_array12record_batchINtB5_19RecordBatchIteratorINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtB5_11RecordBatchENcNtINtNtB1m_6result6ResultB2P_NtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE2Ok0EENtNtNtB1k_6traits8iterator8Iterator9size_hintCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !19, !noundef !19
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 40                  ; 2 uses
  store i64 %i.f, ptr %0, align 8, !alias.scope !16803
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8, !alias.scope !16803
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8, !alias.scope !16803
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2W_5ErrorEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i = alloca [72 x i8], align 8        ; 4 uses
  %.sroa.0.i.i.i.i = alloca [80 x i8], align 8    ; 6 uses
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca [72 x i8], align 8            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !19 ; 5 uses
  %i.f = icmp ult i64 %i.e, 115292150460684698
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB3j_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEEECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !19, !noundef !19 ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load i64, ptr %i.j, align 8, !noundef !19 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !19
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB3j_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB3j_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB3D_5ErrorEEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.p = load i64, ptr %i.c, align 8, !range !754, !noundef !19 ; 2 uses
  %i.q = icmp eq i64 %i.p, -9223372036854775787
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB3j_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEEECs7p2uQeJxui2_9deltalake.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.u = add i64 %i.k, 1
  store i64 %i.u, ptr %i.l, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16811)
  %i.v = add nsw i64 %i.e, -1                     ; 9 uses
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !16814, !noalias !16815
  %i.w = load i64, ptr %1, align 8, !range !45, !alias.scope !16814, !noalias !16815, !noundef !19
  %i.x = icmp samesign ult i64 %i.v, %i.w
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %.sroa.05.0.copyload.i.i = load i64, ptr %i.y, align 8, !noalias !16818 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16818
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.57.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i.i, i64 72, i1 false), !noalias !16818
  store i64 %.sroa.05.0.copyload.i.i, ptr %i.a, align 8, !noalias !16818
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2j_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB31_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE3popCs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull %i.i, i64 noundef 10)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2c_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2E_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.e, !noalias !16819

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #49, !noalias !16819
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2c_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2E_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false), !noalias !16822
  %3 = call i64 @llvm.usub.sat.i64(i64 %i.v, i64 2)
  %.not.not8.i.i.i.i = icmp samesign ult i64 %i.e, 4
  br i1 %.not.not8.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2c_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2E_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %.sroa.12.0.lcssa.i.i.i.i = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2c_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2E_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.aw, %.lr.ph.i.i.i.i ] ; 5 uses
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2c_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2E_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.ba, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.ab = add nsw i64 %i.e, -2
  %i.ac = icmp eq i64 %.sroa.05.0.lcssa.i.i.i.i, %i.ab
  br i1 %i.ac, label %.thread.i.i.i, label %bb.f

.thread.i.i.i:                                    ; preds = %._crit_edge.i.i.i.i
  %i.ad = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.05.0.lcssa.i.i.i.i ; 3 uses
  %i.ae = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(80) %i.ad, i64 80, i1 false), !noalias !16822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i.i, i64 80, i1 false), !noalias !16822
  %i.af = icmp samesign ult i64 %.sroa.05.0.lcssa.i.i.i.i, %i.v
  call void @llvm.assume(i1 %i.af)
  %.sroa.416.0..sroa_idx.i.i6.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %.sroa.416.0.copyload.i.i7.i.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i6.i.i.i, align 8, !noalias !16822
  br label %.lr.ph.i.i.preheader.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i.i, i64 80, i1 false), !noalias !16822
  %i.ah = icmp samesign ult i64 %.sroa.12.0.lcssa.i.i.i.i, %i.v
  call void @llvm.assume(i1 %i.ah)
  %.sroa.416.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %.sroa.416.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i.i, align 8, !noalias !16822 ; 2 uses
  %.not18.i.i.i.i.i = icmp eq i64 %.sroa.12.0.lcssa.i.i.i.i, 0
  br i1 %.not18.i.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.f, %.thread.i.i.i
  %.sroa.416.0.copyload.i.i10.i.i.i = phi i64 [ %.sroa.416.0.copyload.i.i7.i.i.i, %.thread.i.i.i ], [ %.sroa.416.0.copyload.i.i.i.i.i, %bb.f ] ; 3 uses
  %.sroa.12.1.i9.i.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i.i, %.thread.i.i.i ], [ %.sroa.12.0.lcssa.i.i.i.i, %bb.f ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.preheader.i.i.i
  %.sroa.13.019.i.i.i.i.i = phi i64 [ %i.aj, %bb.g ], [ %.sroa.12.1.i9.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %i.ai = add nsw i64 %.sroa.13.019.i.i.i.i.i, -1
  %i.aj = lshr i64 %i.ai, 1                       ; 4 uses
  %i.ak = icmp samesign ult i64 %i.aj, %i.v
  call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.aj ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 72
  %.val1.i.i.i.i.i = load i64, ptr %i.am, align 8, !noalias !16822, !noundef !19
  %.not17.i.i.i.i.i = icmp sgt i64 %.val1.i.i.i.i.i, %.sroa.416.0.copyload.i.i10.i.i.i
  br i1 %.not17.i.i.i.i.i, label %bb.g, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.13.019.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.an, ptr noundef nonnull align 8 dereferenceable(80) %i.al, i64 80, i1 false), !noalias !16822
  %.not.i.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2c_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2E_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.05.010.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i.i ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2c_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2E_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 3 uses
  %.sroa.12.09.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2c_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2E_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %i.ao = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.05.010.i.i.i.i
  %i.ap = add nuw nsw i64 %.sroa.05.010.i.i.i.i, 1 ; 2 uses
  %i.aq = icmp samesign ult i64 %i.ap, %i.v
  call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.ap
  %i.as = getelementptr i8, ptr %i.ao, i64 72
  %.val.i.i.i.i = load i64, ptr %i.as, align 8, !noalias !16822, !noundef !19
  %i.at = getelementptr i8, ptr %i.ar, i64 72
  %.val17.i.i.i.i = load i64, ptr %i.at, align 8, !noalias !16822, !noundef !19
  %i.au = icmp sle i64 %.val17.i.i.i.i, %.val.i.i.i.i
  %i.av = zext i1 %i.au to i64
  %i.aw = add nuw nsw i64 %.sroa.05.010.i.i.i.i, %i.av ; 4 uses
  %i.ax = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.09.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ay, ptr noundef nonnull align 8 dereferenceable(80) %i.ax, i64 80, i1 false), !noalias !16822
  %i.az = shl nuw nsw i64 %i.aw, 1                ; 2 uses
  %i.ba = or disjoint i64 %i.az, 1                ; 2 uses
  %.not.not.not.i.i.i.i = icmp samesign ult i64 %i.az, %3
  br i1 %.not.not.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i, %bb.f
  %.sroa.416.0.copyload.i.i11.i.i.i = phi i64 [ %.sroa.416.0.copyload.i.i.i.i.i, %bb.f ], [ %.sroa.416.0.copyload.i.i10.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.416.0.copyload.i.i10.i.i.i, %bb.g ]
  %.sroa.13.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %.sroa.13.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.13.0.lcssa.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bb, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.i.i.i, i64 72, i1 false), !noalias !16822
  %.sroa.5.0..sroa_idx1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  store i64 %.sroa.416.0.copyload.i.i11.i.i.i, ptr %.sroa.5.0..sroa_idx1.i.i.i.i.i, align 8, !noalias !16822
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %.sroa.012.0.copyload13.pre.i = load i64, ptr %i.a, align 8, !noalias !16824
  br label %_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2j_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB31_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE3popCs7p2uQeJxui2_9deltalake.exit

_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2j_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB31_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE3popCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i
  %.sroa.012.0.copyload13.i = phi i64 [ %.sroa.012.0.copyload13.pre.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE19sift_down_to_bottomCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.05.0.copyload.i.i, %bb.c ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.57.0..sroa_idx.i.i, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16818
  %i.bc = icmp ne i64 %.sroa.012.0.copyload13.i, -9223372036854775788
  call void @llvm.assume(i1 %i.bc)
  store i64 %.sroa.012.0.copyload13.i, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4, i64 64, i1 false)
  br label %bb.r

._crit_edge:                                      ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB2R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB3j_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEEECs7p2uQeJxui2_9deltalake.exit
  store i64 -9223372036854775787, ptr %0, align 8
  br label %bb.r

bb.h:                                             ; preds = %.lr.ph, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit
  %i.bd = phi i64 [ %i.p, %.lr.ph ], [ %i.by, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit ] ; 2 uses
  %.not = icmp eq i64 %i.bd, -9223372036854775788
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.bd, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx, i64 72, i1 false)
  %i.be = load i64, ptr %i.r, align 8, !noundef !19 ; 2 uses
  %i.bf = load i64, ptr %i.s, align 8, !noundef !19
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.q, label %bb.k

bb.j:                                             ; preds = %bb.h
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.bh = load i64, ptr %i.d, align 8, !alias.scope !16825, !noalias !16828, !noundef !19 ; 8 uses
  %i.bi = icmp ult i64 %i.bh, 115292150460684698
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = load i64, ptr %1, align 8, !range !45, !alias.scope !16830, !noalias !16833, !noundef !19
  %i.bk = icmp eq i64 %i.bh, %i.bj
  br i1 %i.bk, label %bb.l, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB1R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2z_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB1Y_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2G_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB1R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2z_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.m, !noalias !16833

bb.m:                                             ; preds = %bb.l
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultIB1S_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2k_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b) #48
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.o:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.bl

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB1R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2z_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.l, %bb.k
  %i.bn = load ptr, ptr %i.t, align 8, !alias.scope !16830, !noalias !16833, !nonnull !19, !noundef !19
  %i.bo = getelementptr inbounds nuw [80 x i8], ptr %i.bn, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bo, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  %i.bp = add nuw nsw i64 %i.bh, 1
  store i64 %i.bp, ptr %i.d, align 8, !alias.scope !16830, !noalias !16833
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !16825, !noalias !16828, !nonnull !19, !noundef !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.bq = getelementptr inbounds nuw [80 x i8], ptr %.val.i, i64 %i.bh ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.bq, i64 72, i1 false), !noalias !16828
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %.sroa.416.0.copyload.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !16828 ; 2 uses
  %.not18.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not18.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB1R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2z_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i, %bb.p
  %.sroa.13.019.i.i = phi i64 [ %i.bs, %bb.p ], [ %i.bh, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB1R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2z_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i ] ; 3 uses
  %i.br = add nsw i64 %.sroa.13.019.i.i, -1
  %i.bs = lshr i64 %i.br, 1                       ; 4 uses
  %i.bt = icmp samesign ule i64 %i.bs, %i.bh
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw [80 x i8], ptr %.val.i, i64 %i.bs ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 72
  %.val1.i.i = load i64, ptr %i.bv, align 8, !noalias !16828, !noundef !19
  %.not17.i.i = icmp sgt i64 %.val1.i.i, %.sroa.416.0.copyload.i.i
  br i1 %.not17.i.i, label %bb.p, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.bw = getelementptr inbounds nuw [80 x i8], ptr %.val.i, i64 %.sroa.13.019.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bw, ptr noundef nonnull align 8 dereferenceable(80) %i.bu, i64 80, i1 false), !noalias !16828
  %.not.i.i8 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i8, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2n_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB35_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph.i.i, %bb.p, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB1R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2z_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.13.0.lcssa.i.i = phi i64 [ 0, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB1R_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB2z_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.13.019.i.i, %.lr.ph.i.i ], [ 0, %bb.p ]
  %i.bx = getelementptr inbounds nuw [80 x i8], ptr %.val.i, i64 %.sroa.13.0.lcssa.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.i, i64 72, i1 false), !noalias !16828
  %.sroa.5.0..sroa_idx1.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  store i64 %.sroa.416.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx1.i.i, align 8, !noalias !16828
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB3D_5ErrorEEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.by = load i64, ptr %i.c, align 8, !range !754, !noundef !19 ; 2 uses
  %i.bz = icmp eq i64 %i.by, -9223372036854775787
  br i1 %i.bz, label %._crit_edge, label %bb.h

bb.q:                                             ; preds = %bb.i
  %i.ca = add i64 %i.be, 1
  store i64 %i.ca, ptr %i.s, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.j, %bb.q, %_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIB2j_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB31_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEE3popCs7p2uQeJxui2_9deltalake.exit
  ret void
end_hunk_1
