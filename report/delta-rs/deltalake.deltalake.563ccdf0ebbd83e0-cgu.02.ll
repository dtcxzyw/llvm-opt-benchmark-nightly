inline.NumInlined: 6368
inline.NumDeleted: 3022
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt:bb.a

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12current_spanCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1784
  tail call void @_RNvXs0_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber12current_span(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber9drop_spanCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter3env9EnvFilterNtNtNtB8_8registry7sharded8RegistryENtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10Subscriber9try_closeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %0, i64 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtNtCskFSgV2vI2Ct_13opentelemetry5trace12span_contextNtB5_11SpanContextNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @213, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @214, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @208, ptr noalias noundef nonnull readonly captures(address, read_provenance) @215, i64 noundef 7, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @209, ptr noalias noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 11, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @210, ptr noalias noundef nonnull readonly captures(address, read_provenance) @217, i64 noundef 9, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @211, ptr noalias noundef nonnull readonly captures(address, read_provenance) @218, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @212)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 6 uses
  %i.i = sub i64 %i.f, %i.h
  %i.j = icmp ult i64 %i.c, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ %i.k, %bb.d ], [ %i.w, %bb.e ], [ null, %bb.a ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef ptr @_RNvYNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderNtNtCs2pqxYH9ZEk8_3std2io4Read8read_bufCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  %i.l = load i64, ptr %i.g, align 8, !noundef !3
  %.neg = sub i64 %i.h, %i.l
  %i.m = load i64, ptr %i.b, align 8, !noundef !3
  %i.n = add i64 %.neg, %i.m
  store i64 %i.n, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !3 ; 2 uses
  %i.q = sub nuw i64 %i.p, %i.h
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.q, i64 %i.c)
  %i.r = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.s, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i64 %.sroa.0.0.i, ptr %i.v, align 8
  %i.w = call noundef ptr @_RNvYNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderNtNtCs2pqxYH9ZEk8_3std2io4Read8read_bufCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.x = load i64, ptr %i.u, align 8, !noundef !3 ; 2 uses
  %i.y = load i64, ptr %i.v, align 8, !noundef !3
  %i.z = add i64 %i.h, %i.x                       ; 2 uses
  store i64 %i.z, ptr %i.g, align 8
  %.sroa.0.0.i4 = call noundef i64 @llvm.umax.i64(i64 %i.z, i64 %i.p)
  %i.aa = add i64 %i.h, %i.y
  %.sroa.0.0.i5 = call noundef i64 @llvm.umax.i64(i64 %i.aa, i64 %.sroa.0.0.i4)
  store i64 %.sroa.0.0.i5, ptr %i.o, align 8
  %i.ab = load i64, ptr %i.b, align 8, !noundef !3
  %i.ac = sub i64 %i.ab, %i.x
  store i64 %i.ac, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCsbvkFyIu7lgC_4core3fmtbNtB5_5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCsbvkFyIu7lgC_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCskFSgV2vI2Ct_13opentelemetry13trace_contextNtB5_10TraceFlagsNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @222, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @221)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsbvkFyIu7lgC_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %1, %3
  br i1 %i.e, label %bb.c, label %bb.d

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7p2uQeJxui2_9deltalake.exit.backedge.us.i.i, %.split.us.i.i, %bb.h, %.lr.ph.i, %bb.g, %.lr.ph.split.us.i.i, %bb.w, %bb.d, %bb.a, %bb.y, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.d ], [ %i.o, %bb.g ], [ 1, %bb.a ], [ %i.u, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit ], [ %i.ea, %bb.y ], [ %.sroa.014.5.i, %bb.w ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %bb.h ], [ 1, %.lr.ph.i ], [ 0, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7p2uQeJxui2_9deltalake.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.f = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %1, %3
  br i1 %i.h, label %bb.y, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.i = icmp ult i64 %1, 33
  br i1 %i.i, label %bb.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

bb.f:                                             ; preds = %bb.c
  %i.j = load i8, ptr %0, align 1, !noundef !3    ; 2 uses
  %i.k = icmp samesign ult i64 %3, 16
  br i1 %i.k, label %.lr.ph.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3)
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = icmp eq i64 %i.m, 1
  %i.o = zext i1 %i.n to i8
  br label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread

.lr.ph.i:                                         ; preds = %bb.f, %bb.h
  %.sroa.01.05.i = phi i64 [ %i.s, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.i
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !15372, !noundef !3
  %i.r = icmp eq i8 %i.q, %i.j
  br i1 %i.r, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.s = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %3
  br i1 %exitcond.not.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %.lr.ph.i

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit: ; preds = %bb.k, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b) #32
  %i.t = load i64, ptr %i.c, align 8, !range !20, !noundef !3
  %i.u = trunc nuw nsw i64 %i.t to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread

bb.i:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15378)
  %i.v = load i8, ptr %0, align 1, !alias.scope !15375, !noalias !15378, !noundef !3 ; 3 uses
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %1, 2
  br i1 %i.x, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4)
  br label %.lr.ph

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs7p2uQeJxui2_9deltalake.exit.i.i
  %i.z = icmp ult i64 %i.y, %i.ab
  br i1 %i.z, label %.lr.ph, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.aa = phi i64 [ %1, %bb.j ], [ %i.ab, %bb.k ]
  %i.ab = add nsw i64 %i.aa, -1                   ; 6 uses
  %i.ac = icmp ult i64 %i.ab, %1
  br i1 %i.ac, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef range(i64 2, 33) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27, !noalias !15380
  unreachable

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !15375, !noalias !15388, !noundef !3 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.ae, %i.v
  br i1 %.not.i.not.i.i, label %bb.k, label %bb.m

bb.m:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs7p2uQeJxui2_9deltalake.exit.i.i
  %i.af = add nuw nsw i64 %1, 15
  %i.ag = icmp ult i64 %3, %i.af
  br i1 %i.ag, label %.lr.ph.split.us.i.i, label %bb.n

.thread.i:                                        ; preds = %bb.i
  %i.ah = icmp ult i64 %3, 17
  br i1 %i.ah, label %.lr.ph.split.us.i.i, label %.thread93.i

.thread93.i:                                      ; preds = %.thread.i
  %i.ai = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !15375, !noalias !15378
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.o

.lr.ph.split.us.i.i:                              ; preds = %bb.m, %.thread.i
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !15389, !noalias !15390
  %i.am = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.am, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7p2uQeJxui2_9deltalake.exit.backedge.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7p2uQeJxui2_9deltalake.exit.backedge.us.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.an, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !15389, !noalias !15390
  %i.ao = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.ao, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7p2uQeJxui2_9deltalake.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7p2uQeJxui2_9deltalake.exit.backedge.us.i.i: ; preds = %.lr.ph.split.us.i.i, %.split.us.i.i
  %.pn.i = phi ptr [ %i.an, %.split.us.i.i ], [ %2, %.lr.ph.split.us.i.i ]
  %.in.i = phi i64 [ %i.ap, %.split.us.i.i ], [ %3, %.lr.ph.split.us.i.i ]
  %i.ap = add i64 %.in.i, -1                      ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.ap
  br i1 %.not28.i.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.o:                                             ; preds = %bb.n, %.thread93.i
  %i.aq = phi i8 [ %.pre.i, %.thread93.i ], [ %i.ae, %bb.n ]
  %i.ar = phi <16 x i8> [ %i.aj, %.thread93.i ], [ %i.al, %bb.n ] ; 6 uses
  %storemerge9295.i = phi i64 [ 1, %.thread93.i ], [ %i.ab, %bb.n ] ; 6 uses
  %i.as = insertelement <16 x i8> poison, i8 %i.aq, i64 0
  %i.at = shufflevector <16 x i8> %i.as, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15389
  store ptr %2, ptr %i.a, align 8, !noalias !15389
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.av, align 8, !noalias !15389
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.au, ptr %i.aw, align 8, !noalias !15389
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.w, ptr %i.ax, align 8, !noalias !15389
  %i.ay = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i5 = icmp ult i64 %i.ay, %3
  br i1 %.not.i5, label %.lr.ph.i8, label %.preheader.i6

.preheader.i6:                                    ; preds = %bb.s, %bb.o
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.o ], [ %i.cu, %bb.s ] ; 2 uses
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.o ], [ %.sroa.014.2.3.i, %bb.s ] ; 2 uses
  %i.az = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.ba = add i64 %.sroa.06.0.lcssa.i, %i.az
  %i.bb = icmp uge i64 %i.ba, %3
  %i.bc = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3105.i = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond3105.i, label %._crit_edge.i7, label %.lr.ph107.i

.lr.ph.i8:                                        ; preds = %bb.o, %bb.s
  %.sroa.06.0103.i = phi i64 [ %i.cu, %bb.s ], [ 0, %bb.o ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0103.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.bd, align 1, !alias.scope !15378, !noalias !15394
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.be, align 1, !alias.scope !15378, !noalias !15394
  %i.bf = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.ar
  %i.bg = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.at
  %i.bh = and <16 x i1> %i.bf, %i.bg
  %i.bi = bitcast <16 x i1> %i.bh to i16          ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.bj, align 1, !alias.scope !15378, !noalias !15394
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.bk, align 1, !alias.scope !15378, !noalias !15394
  %i.bl = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.ar
  %i.bm = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.at
  %i.bn = and <16 x i1> %i.bl, %i.bm
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bp, align 1, !alias.scope !15378, !noalias !15394
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.bq, align 1, !alias.scope !15378, !noalias !15394
  %i.br = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.ar
  %i.bs = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.at
  %i.bt = and <16 x i1> %i.br, %i.bs
  %i.bu = bitcast <16 x i1> %i.bt to i16          ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bv, align 1, !alias.scope !15378, !noalias !15394
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.bw, align 1, !alias.scope !15378, !noalias !15394
  %i.bx = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.ar
  %i.by = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.at
  %i.bz = and <16 x i1> %i.bx, %i.by
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %i.cb = icmp eq i16 %i.bi, 0
  br i1 %i.cb, label %.preheader96.1.i, label %bb.t

.preheader96.1.i:                                 ; preds = %bb.t, %.lr.ph.i8
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i8 ], [ %i.cz, %bb.t ] ; 3 uses
  %i.cc = icmp eq i16 %i.bo, 0
  br i1 %i.cc, label %.preheader96.2.i, label %bb.p

bb.p:                                             ; preds = %.preheader96.1.i
  %i.cd = or disjoint i64 %.sroa.06.0103.i, 16
  %i.ce = trunc nuw i8 %.sroa.014.2.i to i1
  %i.cf = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cd, i16 noundef %i.bo, i1 noundef zeroext %i.ce) #32
  %i.cg = zext i1 %i.cf to i8
  %i.ch = or i8 %.sroa.014.2.i, %i.cg
  br label %.preheader96.2.i

.preheader96.2.i:                                 ; preds = %bb.p, %.preheader96.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader96.1.i ], [ %i.ch, %bb.p ] ; 3 uses
  %i.ci = icmp eq i16 %i.bu, 0
  br i1 %i.ci, label %.preheader96.3.i, label %bb.q

bb.q:                                             ; preds = %.preheader96.2.i
  %i.cj = or disjoint i64 %.sroa.06.0103.i, 32
  %i.ck = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.cl = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cj, i16 noundef %i.bu, i1 noundef zeroext %i.ck) #32
  %i.cm = zext i1 %i.cl to i8
  %i.cn = or i8 %.sroa.014.2.1.i, %i.cm
  br label %.preheader96.3.i

.preheader96.3.i:                                 ; preds = %bb.q, %.preheader96.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader96.2.i ], [ %i.cn, %bb.q ] ; 3 uses
  %i.co = icmp eq i16 %i.ca, 0
  br i1 %i.co, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader96.3.i
  %i.cp = or disjoint i64 %.sroa.06.0103.i, 48
  %i.cq = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.cr = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cp, i16 noundef %i.ca, i1 noundef zeroext %i.cq) #32
  %i.cs = zext i1 %i.cr to i8
  %i.ct = or i8 %.sroa.014.2.2.i, %i.cs
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader96.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader96.3.i ], [ %i.ct, %bb.r ] ; 2 uses
  %i.cu = add i64 %.sroa.06.0103.i, 64            ; 3 uses
  %i.cv = add i64 %i.cu, %i.ay
  %i.cw = icmp uge i64 %i.cv, %3
  %i.cx = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cw, i1 true, i1 %i.cx
  br i1 %or.cond.i, label %.preheader.i6, label %.lr.ph.i8

bb.t:                                             ; preds = %.lr.ph.i8
  %i.cy = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0103.i, i16 noundef %i.bi, i1 noundef zeroext false) #32
  %i.cz = zext i1 %i.cy to i8
  br label %.preheader96.1.i

._crit_edge.i7:                                   ; preds = %bb.u, %.preheader.i6
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i6 ], [ %.sroa.014.4.i, %bb.u ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.bc, %.preheader.i6 ], [ %i.dt, %bb.u ]
  %i.da = sub i64 %3, %i.w
  %i.db = add i64 %i.da, -16                      ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 %i.db ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.dc, align 1, !alias.scope !15378, !noalias !15397
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.dd, align 1, !alias.scope !15378, !noalias !15397
  %i.de = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.ar
  %i.df = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.at
  %i.dg = and <16 x i1> %i.de, %i.df
  %i.dh = bitcast <16 x i1> %i.dg to i16          ; 2 uses
  %i.di = icmp eq i16 %i.dh, 0
  br i1 %i.di, label %bb.w, label %bb.x

.lr.ph107.i:                                      ; preds = %.preheader.i6, %bb.u
  %.sroa.06.1106.i = phi i64 [ %i.dq, %bb.u ], [ %.sroa.06.0.lcssa.i, %.preheader.i6 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1106.i ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.dj, align 1, !alias.scope !15378, !noalias !15400
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.dk, align 1, !alias.scope !15378, !noalias !15400
  %i.dl = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.ar
  %i.dm = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.at
  %i.dn = and <16 x i1> %i.dl, %i.dm
  %i.do = bitcast <16 x i1> %i.dn to i16          ; 2 uses
  %i.dp = icmp eq i16 %i.do, 0
  br i1 %i.dp, label %bb.u, label %bb.v
end_hunk_0
