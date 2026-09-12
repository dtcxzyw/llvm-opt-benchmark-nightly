Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/mio-84c5fb662109ff34.mio.2ae5dc345176c45e-cgu.0?download=true
inline.NumInlined: 85
inline.NumDeleted: 52
begin_hunk_0_@_RNvXs1_NtNtCs3Glm8yKplhi_3mio5event6eventsNtB5_6EventsNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt:bb.a

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !65, !noalias !66, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.sroa.4.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.sroa.4.04.i
  %i.h = add nuw i64 %.sroa.4.04.i, 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !67
  store ptr %i.g, ptr %i.a, align 8, !noalias !67, !captures !11
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0), !noalias !65 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !67
  %exitcond.not.i = icmp eq i64 %i.h, %i.d
  br i1 %exitcond.not.i, label %_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3Glm8yKplhi_3mio5event5event5EventRNtNtB18_6events6EventsEB1a_.exit, label %bb.b

_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3Glm8yKplhi_3mio5event5event5EventRNtNtB18_6events6EventsEB1a_.exit: ; preds = %bb.b, %bb.a
  %i.j = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs1_NtNtNtCs3Glm8yKplhi_3mio3sys4unix4pipeRNtB5_6SenderNtNtNtCshzWfHUSfYae_4core2io5write5Write14write_vectored(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !9, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !captures !11
  %i.c = call { i64, ptr } @_RNvXs8_NtCscAsMj0W7j8b_3std2fsRNtB5_4FileNtNtNtCshzWfHUSfYae_4core2io5write5Write14write_vectored(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs1_NtNtNtCs3Glm8yKplhi_3mio3sys4unix4pipeRNtB5_6SenderNtNtNtCshzWfHUSfYae_4core2io5write5Write5write(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !9, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !captures !11
  %i.c = call { i64, ptr } @_RNvXs8_NtCscAsMj0W7j8b_3std2fsRNtB5_4FileNtNtNtCshzWfHUSfYae_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtCs3Glm8yKplhi_3mio5event5event5EventNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCs3Glm8yKplhi_3mio5event5eventNtB4_5EventNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRjNtB6_5Debug3fmtCs3Glm8yKplhi_3mio(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !71, !noalias !72, !noundef !5 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt.exit

_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCs3Glm8yKplhi_3mio4pollNtB5_8RegistryNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 8)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCs3Glm8yKplhi_3mio5tokenNtB5_5TokenNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i32 0, -1) i32 @_RNvXs2_NtNtNtCs3Glm8yKplhi_3mio3sys4unix4pipeNtB5_6SenderINtNtCshzWfHUSfYae_4core7convert4FromNtNtCscAsMj0W7j8b_3std7process10ChildStdinE4from(i32 noundef returned range(i32 0, -1) %0) unnamed_addr #2 {
bb.a:
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, -1) i32 @_RNvXs3_NtCs3Glm8yKplhi_3mio4pollNtB5_8RegistryNtNtNtNtCscAsMj0W7j8b_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !7, !alias.scope !75, !noundef !5
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, -1) i32 @_RNvXs3_NtNtNtCs3Glm8yKplhi_3mio3sys4unix4pipeNtB5_6SenderNtNtNtNtCscAsMj0W7j8b_3std2os2fd3raw9FromRawFd11from_raw_fd(i32 noundef returned %0) unnamed_addr #0 {
bb.a:
  %or.cond.not = icmp eq i32 %0, -1
  br i1 %or.cond.not, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  ret i32 %0

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, -1) i32 @_RNvXs7_NtNtNtCs3Glm8yKplhi_3mio3sys4unix4pipeNtB5_6SenderNtNtNtNtCscAsMj0W7j8b_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvXs3_NtNtNtCscAsMj0W7j8b_3std3sys2fd4unixNtB5_8FileDescNtNtNtNtBb_2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0)
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsC_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsE_NtNtCshzWfHUSfYae_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCs3Glm8yKplhi_3mio5event5eventNtB4_5EventNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(12) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 6 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 8, !noundef !5
  %i.n = and i32 %i.m, 8388608
  %.not = icmp eq i32 %i.n, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i64, ptr %i.o, align 1, !noundef !5
  store i64 %i.p, ptr %i.j, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 5, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.r = load i32, ptr %0, align 1, !noundef !5   ; 8 uses
  %i.s = and i32 %i.r, 1
  %i.t = icmp eq i32 %i.s, 0                      ; 2 uses
  %2 = lshr i32 %i.r, 1
  %3 = trunc i32 %2 to i8
  %i.u = and i8 %3, 1                             ; 2 uses
  %storemerge = select i1 %i.t, i8 %i.u, i8 1
  store i8 %storemerge, ptr %i.i, align 1
  %i.v = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 8, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %4 = lshr i32 %i.r, 2
  %5 = trunc i32 %4 to i8
  %i.w = and i8 %5, 1
  store i8 %i.w, ptr %i.h, align 1
  %i.x = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 8, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %6 = lshr i32 %i.r, 3
  %7 = trunc i32 %6 to i8
  %i.y = and i8 %7, 1
  store i8 %i.y, ptr %i.g, align 1
  %i.z = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 5, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aa = and i32 %i.r, 16
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = lshr i32 %i.r, 13
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = and i8 %i.ad, 1
  %storemerge9 = select i1 %i.t, i8 0, i8 %i.ae
  store i8 %storemerge9, ptr %i.f, align 1
  %i.af = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 11, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ag = and i32 %i.r, 12
  %or.cond.not = icmp eq i32 %i.ag, 12
  br i1 %or.cond.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.f, align 1
  %i.ah = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 11, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ai = icmp eq i32 %i.r, 8
  %i.aj = zext i1 %i.ai to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %storemerge10 = phi i8 [ %i.aj, %bb.d ], [ 1, %bb.b ], [ 1, %bb.c ]
  %.sroa.01.1 = phi ptr [ %i.af, %bb.d ], [ %i.af, %bb.b ], [ %i.ah, %bb.c ]
  store i8 %storemerge10, ptr %i.e, align 1
  %i.ak = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.01.1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 12, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.u, ptr %i.d, align 1
  %i.al = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 8, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1
  %i.am = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 3, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 0, ptr %i.b, align 1
  %i.an = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62)
  %i.aq = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.in = phi i1 [ %i.aq, %bb.g ], [ %i.ao, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvXs_NtNtNtCs3Glm8yKplhi_3mio3sys4unix4pipeNtB4_6SenderNtNtNtBa_5event6source6Source10deregister(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !7, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %.val.i = load i32, ptr %1, align 4, !range !7, !alias.scope !78, !noundef !5
  %i.b = tail call noundef i32 @epoll_ctl(i32 noundef %.val.i, i32 noundef 2, i32 noundef %i.a, ptr noundef null) #17, !noalias !78
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvMNtNtNtNtCs3Glm8yKplhi_3mio3sys4unix8selector19stateless_io_sourceNtB2_13IoSourceState10deregister.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @__errno_location() #17
  %i.e = load i32, ptr %i.d, align 4, !noalias !78, !noundef !5
  %i.f = load atomic ptr, ptr @_RNvNtNtNtCshzWfHUSfYae_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !78
  %.not.i.i.i = icmp eq ptr %i.f, @4
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i.i, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvNtNtNtCshzWfHUSfYae_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !noalias !78
  br label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i.i

_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i.i: ; preds = %bb.c, %bb.b
  %i.g = sext i32 %i.e to i64
  %i.h = shl nsw i64 %i.g, 32
  %i.i = or disjoint i64 %i.h, 2
  %i.j = inttoptr i64 %i.i to ptr
  br label %_RNvMNtNtNtNtCs3Glm8yKplhi_3mio3sys4unix8selector19stateless_io_sourceNtB2_13IoSourceState10deregister.exit

_RNvMNtNtNtNtCs3Glm8yKplhi_3mio3sys4unix8selector19stateless_io_sourceNtB2_13IoSourceState10deregister.exit: ; preds = %bb.a, %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.j, %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i.i ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvXs_NtNtNtCs3Glm8yKplhi_3mio3sys4unix4pipeNtB4_6SenderNtNtNtBa_5event6source6Source10reregister(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, i64 noundef %2, i8 noundef range(i8 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = load i32, ptr %0, align 4, !range !7, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %.val.i = load i32, ptr %1, align 4, !range !7, !alias.scope !81, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !81
  %i.c = and i8 %3, 1
  %.not.i.i = icmp eq i8 %i.c, 0
  %spec.select.i.i = select i1 %.not.i.i, i32 -2147483648, i32 -2147475455
  %i.d = shl i8 %3, 1
  %i.e = and i8 %i.d, 4
  %i.f = zext nneg i8 %i.e to i32
  %.sroa.03.1.i.i = or disjoint i32 %spec.select.i.i, %i.f
  %i.g = lshr i8 %3, 3
  %i.h = and i8 %i.g, 2
  %i.i = zext nneg i8 %i.h to i32
  %.sroa.03.2.i.i = or disjoint i32 %.sroa.03.1.i.i, %i.i
  store i32 %.sroa.03.2.i.i, ptr %i.a, align 4, !noalias !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i64 %2, ptr %i.j, align 4, !noalias !81
  %i.k = call noundef i32 @epoll_ctl(i32 noundef %.val.i, i32 noundef 3, i32 noundef %i.b, ptr noundef nonnull %i.a) #17, !noalias !81
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %_RNvMNtNtNtNtCs3Glm8yKplhi_3mio3sys4unix8selector19stateless_io_sourceNtB2_13IoSourceState10reregister.exit

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @__errno_location() #17
  %i.n = load i32, ptr %i.m, align 4, !noalias !81, !noundef !5
  %i.o = load atomic ptr, ptr @_RNvNtNtNtCshzWfHUSfYae_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !81
  %.not.i.i.i = icmp eq ptr %i.o, @4
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i.i, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  call void @_RNvNvNtNtNtCshzWfHUSfYae_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !noalias !81
  br label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i.i

_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i.i: ; preds = %bb.c, %bb.b
  %i.p = sext i32 %i.n to i64
  %i.q = shl nsw i64 %i.p, 32
  %i.r = or disjoint i64 %i.q, 2
  %i.s = inttoptr i64 %i.r to ptr
  br label %_RNvMNtNtNtNtCs3Glm8yKplhi_3mio3sys4unix8selector19stateless_io_sourceNtB2_13IoSourceState10reregister.exit

_RNvMNtNtNtNtCs3Glm8yKplhi_3mio3sys4unix8selector19stateless_io_sourceNtB2_13IoSourceState10reregister.exit: ; preds = %bb.a, %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.s, %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i.i ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvXs_NtNtNtCs3Glm8yKplhi_3mio3sys4unix4pipeNtB4_6SenderNtNtNtBa_5event6source6Source8register(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, i64 noundef %2, i8 noundef range(i8 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = load i32, ptr %0, align 4, !range !7, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %.val.i = load i32, ptr %1, align 4, !range !7, !alias.scope !84, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !84
  %i.c = and i8 %3, 1
  %.not.i.i = icmp eq i8 %i.c, 0
  %spec.select.i.i = select i1 %.not.i.i, i32 -2147483648, i32 -2147475455
  %i.d = shl i8 %3, 1
  %i.e = and i8 %i.d, 4
  %i.f = zext nneg i8 %i.e to i32
  %.sroa.03.1.i.i = or disjoint i32 %spec.select.i.i, %i.f
  %i.g = lshr i8 %3, 3
  %i.h = and i8 %i.g, 2
  %i.i = zext nneg i8 %i.h to i32
  %.sroa.03.2.i.i = or disjoint i32 %.sroa.03.1.i.i, %i.i
  store i32 %.sroa.03.2.i.i, ptr %i.a, align 4, !noalias !84
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i64 %2, ptr %i.j, align 4, !noalias !84
  %i.k = call noundef i32 @epoll_ctl(i32 noundef %.val.i, i32 noundef 1, i32 noundef %i.b, ptr noundef nonnull %i.a) #17, !noalias !84
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %_RNvMNtNtNtNtCs3Glm8yKplhi_3mio3sys4unix8selector19stateless_io_sourceNtB2_13IoSourceState8register.exit

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @__errno_location() #17
  %i.n = load i32, ptr %i.m, align 4, !noalias !84, !noundef !5
  %i.o = load atomic ptr, ptr @_RNvNtNtNtCshzWfHUSfYae_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !84
  %.not.i.i.i = icmp eq ptr %i.o, @4
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i.i, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  call void @_RNvNvNtNtNtCshzWfHUSfYae_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !noalias !84
  br label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i.i

_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i.i: ; preds = %bb.c, %bb.b
  %i.p = sext i32 %i.n to i64
  %i.q = shl nsw i64 %i.p, 32
  %i.r = or disjoint i64 %i.q, 2
  %i.s = inttoptr i64 %i.r to ptr
  br label %_RNvMNtNtNtNtCs3Glm8yKplhi_3mio3sys4unix8selector19stateless_io_sourceNtB2_13IoSourceState8register.exit

end_hunk_0
