Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb8nullable8SomeNullENtB6_5Debug3fmtB1d_:bb.a
  %i.g = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1691, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3151), !inline_history !66212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66213
  %i.h = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g), !inline_history !66212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !66213
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc5boxed3BoxSmENtB6_5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !nonnull !75, !noundef !75 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val1 = load i64, ptr %i.d, align 8, !noundef !75 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66222
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !66223
  %.idx.i.i = shl nuw nsw i64 %.val1, 2
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i.i
  %i.f = icmp eq i64 %.val1, 0
  br i1 %i.f, label %_RNvXsn_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxSmENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %.val, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66224
  store ptr %.sroa.0.07.i.i.i, ptr %i.a, align 8, !noalias !66224
  %i.h = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @169) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66224
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %_RNvXsn_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxSmENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding.exit, label %.lr.ph.i.i.i

_RNvXsn_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxSmENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.j = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !66222
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc5boxed3BoxStENtB6_5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66233)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !66233, !nonnull !75, !noundef !75 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !66233, !noundef !75 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66234
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !66235
  %.idx.i.i = shl nuw nsw i64 %i.f, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvXsn_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxStENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66236
  store ptr %.sroa.0.07.i.i.i, ptr %i.a, align 8, !noalias !66236
  %i.j = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @170), !noalias !66233 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66236
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %_RNvXsn_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxStENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding.exit, label %.lr.ph.i.i.i

_RNvXsn_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxStENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !66233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !66234
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc5boxed3BoxSyENtB6_5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !nonnull !75, !noundef !75 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val1 = load i64, ptr %i.d, align 8, !noundef !75 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66244
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !66245
  %.idx.i.i = shl nuw nsw i64 %.val1, 3
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i.i
  %i.f = icmp eq i64 %.val1, 0
  br i1 %i.f, label %_RNvXsn_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxSyENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %.val, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66246
  store ptr %.sroa.0.07.i.i.i, ptr %i.a, align 8, !noalias !66246
  %i.h = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @172) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66246
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %_RNvXsn_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxSyENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding.exit, label %.lr.ph.i.i.i

_RNvXsn_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxSyENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.j = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !66244
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtNtB8_3num7nonzero7NonZeroyENtB6_5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !75, !align !95, !noundef !75
  %.val = load i64, ptr %i.b, align 8, !range !98, !noundef !75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66251)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66251
  store i64 %.val, ptr %i.a, align 8, !noalias !66251
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !66252, !noundef !75 ; 2 uses
  %i.e = and i32 %i.d, 33554432
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.d, 67108864
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = call noundef zeroext i1 @_RNvXsC_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsF_NtNtCscI6d9CVNmLh_4core3num7nonzeroINtB5_7NonZeroyENtNtB9_3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding.exit

bb.d:                                             ; preds = %bb.b
  %i.j = call noundef zeroext i1 @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsF_NtNtCscI6d9CVNmLh_4core3num7nonzeroINtB5_7NonZeroyENtNtB9_3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding.exit

bb.e:                                             ; preds = %bb.b
  %i.k = call noundef zeroext i1 @_RNvXsE_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsF_NtNtCscI6d9CVNmLh_4core3num7nonzeroINtB5_7NonZeroyENtNtB9_3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding.exit

_RNvXsF_NtNtCscI6d9CVNmLh_4core3num7nonzeroINtB5_7NonZeroyENtNtB9_3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i.i = phi i1 [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66251
  ret i1 %.sroa.0.0.in.i.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtNtB8_3ops5range5RangejENtB6_5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !75, !align !95, !noundef !75
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCscI6d9CVNmLh_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtNtB8_3ops5range5RangeyENtB6_5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !75, !align !95, !noundef !75
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCscI6d9CVNmLh_4core3ops5rangeINtB4_5RangeyENtNtB8_3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineENtB6_5Debug3fmtB1x_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !75, !align !95, !noundef !75 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66261)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66262
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !66261
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !66263, !noundef !75 ; 4 uses
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !66263 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineE4iterB19_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val2.i.i = load i64, ptr %i.g, align 8, !alias.scope !66263 ; 2 uses
  %.not.i.i.i = icmp ult i64 %.val2.i.i, %.val.i.i
  %i.h = select i1 %.not.i.i.i, i64 0, i64 %.val.i.i
  %.sroa.04.0.i.i.i = sub nuw i64 %.val2.i.i, %i.h ; 4 uses
  %i.i = sub i64 %.val.i.i, %.sroa.04.0.i.i.i     ; 2 uses
  %.not11.i.i.i = icmp ult i64 %i.i, %i.e
  br i1 %.not11.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = sub nuw i64 %i.e, %i.i
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineE4iterB19_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.sroa.04.0.i.i.i, %i.e
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineE4iterB19_.exit.i

_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineE4iterB19_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.0.0.i.i = phi i64 [ %.sroa.04.0.i.i.i, %bb.d ], [ %.sroa.04.0.i.i.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0.i.i = phi i64 [ %i.k, %bb.d ], [ %.val.i.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0.i.i = phi i64 [ 0, %bb.d ], [ %i.j, %bb.c ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !66263, !nonnull !75, !noundef !75 ; 4 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.0.0.i.i
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.5.0.i.i
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.11.0.i.i
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.thread.i, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineE4iterB19_.exit.i
  %.sroa.0.sroa.7.0.i.i = phi ptr [ %i.o, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineE4iterB19_.exit.i ], [ %.sroa.0.sroa.7.1.i6.i, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.thread.i ] ; 4 uses
  %.sroa.0.sroa.0.0.i.i = phi ptr [ %i.n, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineE4iterB19_.exit.i ], [ %i.s, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.thread.i ] ; 2 uses
  %.sroa.9.sroa.5.0.i.i = phi ptr [ %i.p, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineE4iterB19_.exit.i ], [ %.sroa.9.sroa.5.1.i7.i, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.thread.i ] ; 3 uses
  %.sroa.9.sroa.0.0.i.i = phi ptr [ %i.m, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineE4iterB19_.exit.i ], [ %.sroa.9.sroa.0.1.i8.i, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.thread.i ] ; 3 uses
  %i.q = icmp eq ptr %.sroa.0.sroa.0.0.i.i, %.sroa.0.sroa.7.0.i.i
  br i1 %i.q, label %bb.f, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.thread.i

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq ptr %.sroa.9.sroa.0.0.i.i, %.sroa.9.sroa.5.0.i.i
  br i1 %i.r, label %_RNvXsk_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB19_.exit, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.thread.i

_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.thread.i: ; preds = %bb.f, %bb.e
  %.sink6.i.i9.i = phi ptr [ %.sroa.9.sroa.0.0.i.i, %bb.f ], [ %.sroa.0.sroa.0.0.i.i, %bb.e ] ; 2 uses
  %.sroa.9.sroa.0.1.i8.i = phi ptr [ %.sroa.0.sroa.7.0.i.i, %bb.f ], [ %.sroa.9.sroa.0.0.i.i, %bb.e ]
  %.sroa.9.sroa.5.1.i7.i = phi ptr [ %.sroa.0.sroa.7.0.i.i, %bb.f ], [ %.sroa.9.sroa.5.0.i.i, %bb.e ]
  %.sroa.0.sroa.7.1.i6.i = phi ptr [ %.sroa.9.sroa.5.0.i.i, %bb.f ], [ %.sroa.0.sroa.7.0.i.i, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sink6.i.i9.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66264
  store ptr %.sink6.i.i9.i, ptr %i.a, align 8, !noalias !66264
  %i.t = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @141), !noalias !66265 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66264
  br label %bb.e

_RNvXsk_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB19_.exit: ; preds = %bb.f
  %i.u = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !66261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !66262
  ret i1 %i.u
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque8VecDequemENtB6_5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !75, !align !95, !noundef !75 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66274)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66275
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !66274
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !66276, !noundef !75 ; 4 uses
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !66276 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE4iterCsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val2.i.i = load i64, ptr %i.g, align 8, !alias.scope !66276 ; 2 uses
  %.not.i.i.i = icmp ult i64 %.val2.i.i, %.val.i.i
  %i.h = select i1 %.not.i.i.i, i64 0, i64 %.val.i.i
  %.sroa.04.0.i.i.i = sub nuw i64 %.val2.i.i, %i.h ; 4 uses
  %i.i = sub i64 %.val.i.i, %.sroa.04.0.i.i.i     ; 2 uses
  %.not11.i.i.i = icmp ult i64 %i.i, %i.e
  br i1 %.not11.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = sub nuw i64 %i.e, %i.i
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE4iterCsjjpCCFGI3ul_14lance_encoding.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.sroa.04.0.i.i.i, %i.e
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE4iterCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE4iterCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.0.0.i.i = phi i64 [ %.sroa.04.0.i.i.i, %bb.d ], [ %.sroa.04.0.i.i.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0.i.i = phi i64 [ %i.k, %bb.d ], [ %.val.i.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0.i.i = phi i64 [ 0, %bb.d ], [ %i.j, %bb.c ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !66276, !nonnull !75, !noundef !75 ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.5.0.i.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.11.0.i.i
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4ItermENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.thread.i, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE4iterCsjjpCCFGI3ul_14lance_encoding.exit.i
  %.sroa.0.sroa.7.0.i.i = phi ptr [ %i.o, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE4iterCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %.sroa.0.sroa.7.1.i6.i, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4ItermENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.thread.i ] ; 4 uses
  %.sroa.0.sroa.0.0.i.i = phi ptr [ %i.n, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE4iterCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.s, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4ItermENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.thread.i ] ; 2 uses
  %.sroa.9.sroa.5.0.i.i = phi ptr [ %i.p, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE4iterCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %.sroa.9.sroa.5.1.i7.i, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4ItermENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.thread.i ] ; 3 uses
  %.sroa.9.sroa.0.0.i.i = phi ptr [ %i.m, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE4iterCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %.sroa.9.sroa.0.1.i8.i, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4ItermENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.thread.i ] ; 3 uses
  %i.q = icmp eq ptr %.sroa.0.sroa.0.0.i.i, %.sroa.0.sroa.7.0.i.i
  br i1 %i.q, label %bb.f, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4ItermENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.thread.i

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq ptr %.sroa.9.sroa.0.0.i.i, %.sroa.9.sroa.5.0.i.i
  br i1 %i.r, label %_RNvXsk_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding.exit, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4ItermENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.thread.i

_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4ItermENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.thread.i: ; preds = %bb.f, %bb.e
  %.sink6.i.i9.i = phi ptr [ %.sroa.9.sroa.0.0.i.i, %bb.f ], [ %.sroa.0.sroa.0.0.i.i, %bb.e ] ; 2 uses
  %.sroa.9.sroa.0.1.i8.i = phi ptr [ %.sroa.0.sroa.7.0.i.i, %bb.f ], [ %.sroa.9.sroa.0.0.i.i, %bb.e ]
  %.sroa.9.sroa.5.1.i7.i = phi ptr [ %.sroa.0.sroa.7.0.i.i, %bb.f ], [ %.sroa.9.sroa.5.0.i.i, %bb.e ]
  %.sroa.0.sroa.7.1.i6.i = phi ptr [ %.sroa.9.sroa.5.0.i.i, %bb.f ], [ %.sroa.0.sroa.7.0.i.i, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sink6.i.i9.i, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66277
  store ptr %.sink6.i.i9.i, ptr %i.a, align 8, !noalias !66277
  %i.t = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @169), !noalias !66278 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66277
  br label %bb.e

_RNvXsk_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.f
  %i.u = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !66274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !66275
  ret i1 %i.u
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhENtB6_5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val1 = load i64, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66281
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2689, i64 noundef 12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66281
  store ptr %.val, ptr %i.a, align 8, !noalias !66281
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.val1, ptr %i.f, align 8, !noalias !66281
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2690)
  %i.h = call noundef zeroext i1 @_RNvMs2_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !66281
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffermENtB6_5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val1 = load i64, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66284
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2689, i64 noundef 12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66284
  %i.f = lshr i64 %.val1, 2
  store ptr %.val, ptr %i.a, align 8, !noalias !66284
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %i.g, align 8, !noalias !66284
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2691)
  %i.i = call noundef zeroext i1 @_RNvMs2_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !66284
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertENtB6_5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66288)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66289
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2689, i64 noundef 12), !noalias !66288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66289
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !66288, !noundef !75
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !66288, !noundef !75
  %i.h = lshr i64 %i.g, 1
  store ptr %i.e, ptr %i.a, align 8, !noalias !66289
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.i, align 8, !noalias !66289
  %i.j = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2692), !noalias !66288
  %i.k = call noundef zeroext i1 @_RNvMs2_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !66288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !66289
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB8_6result6ResultNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list16IndirectlyLoadedNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtB6_5Debug3fmtB1X_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !75, !align !95, !noundef !75
  %.val = load ptr, ptr %i.b, align 8, !nonnull !75, !noundef !75 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noalias !66292, !nonnull !75, !align !95, !noundef !75
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i64, ptr %i.e, align 8, !noalias !66292, !noundef !75
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66292
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3655, i64 noundef 10)
  %i.h = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3657, i64 noundef 2, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3656)
  %i.i = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66292
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtB6_5Debug3fmtB1v_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66310)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !66311
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !66310
  call void @llvm.experimental.noalias.scope.decl(metadata !66312)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !66313, !noundef !75 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvXs6_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB17_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !alias.scope !66313, !nonnull !75, !noundef !75 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !66314
  %i.i = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.j = bitcast <16 x i1> %i.i to i16
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i.i, %.lr.ph.i.preheader.i
  %.sroa.0.022.i.i = phi ptr [ %.sroa.0.1.i.i, %.loopexit.i.i ], [ %i.h, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.6.021.i.i = phi ptr [ %.sroa.6.1.i.i, %.loopexit.i.i ], [ %i.k, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.86.020.i.i = phi i16 [ %i.t, %.loopexit.i.i ], [ %i.j, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.107.019.i.i = phi i64 [ %i.w, %.loopexit.i.i ], [ %i.f, %.lr.ph.i.preheader.i ]
  %.not12.i.i.i.i.i = icmp eq i16 %.sroa.86.020.i.i, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %.sroa.6.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.022.i.i, %.lr.ph.i.i ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !66315
  %i.n = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -384 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.n to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.021.i.i, %.lr.ph.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.022.i.i, %.lr.ph.i.i ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %.sroa.86.020.i.i, %.lr.ph.i.i ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i.i.i, -1
  %i.r = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [24 x i8], ptr %.sroa.0.1.i.i, i64 %i.u ; 2 uses
  %i.w = add i64 %.sroa.107.019.i.i, -1           ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -24
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66316
  store ptr %i.x, ptr %i.b, align 8, !noalias !66316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66316
  store ptr %i.y, ptr %i.a, align 8, !noalias !66316
  %i.z = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @209, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @210), !noalias !66317 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !66316
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %_RNvXs6_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB17_.exit, label %.lr.ph.i.i

_RNvXs6_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB17_.exit: ; preds = %.loopexit.i.i, %bb.a
  %i.ab = call noundef zeroext i1 @_RNvMs6_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !66310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !66311
  ret i1 %i.ab
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs40k4W9msRzi_5alloc6string6StringNtB6_5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66320)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !66320, !nonnull !75, !noundef !75
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !66320, !noundef !75
  %i.f = tail call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !66320
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtB6_5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !75, !align !95, !noundef !75
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCs4XDKJNDGLq7_5bytes3fmt5debugNtNtB8_5bytes5BytesNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs63DIHKhvmTb_10lance_core5error18FieldNotFoundErrorNtB6_5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
end_hunk_0
begin_hunk_1_@_RNvXsj_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rleNtB5_17RleChildCandidateNtNtCscI6d9CVNmLh_4core5clone5Clone5clone:bb.a
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.m, ptr %.sroa.54.0..sroa_idx, align 8
  %i.n = getelementptr i8, ptr %1, i64 48
  %.val = load ptr, ptr %i.n, align 8, !nonnull !75, !noundef !75
  %i.o = getelementptr i8, ptr %1, i64 56
  %.val8 = load i64, ptr %i.o, align 8, !noundef !75 ; 4 uses
  %i.p = shl nuw nsw i64 %.val8, 2                ; 3 uses
  %i.q = icmp eq i64 %.val8, 0
  br i1 %i.q, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecmENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjjpCCFGI3ul_14lance_encoding.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !89685
  %i.r = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, 17) 4) #63, !noalias !89685 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.p) #66
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull readonly align 4 %.val, i64 %i.p, i1 false), !noalias !89686
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecmENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjjpCCFGI3ul_14lance_encoding.exit

bb.h:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !89687
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit unwind label %bb.k

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecmENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.g, %bb.d
  %.sroa.512.0 = phi ptr [ %i.r, %bb.g ], [ inttoptr (i64 4 to ptr), %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.x = load i64, ptr %i.w, align 8, !noundef !75
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.z = load i8, ptr %i.y, align 8, !range !89, !noundef !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val8, ptr %i.ab, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.512.0, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.val8, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.x, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %i.z, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit: ; preds = %bb.i, %bb.j
  %i.af = icmp eq i64 %.sroa.0.0, -1
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEBH_.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2120compressive_encoding11CompressionEBJ_(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEBH_.exit unwind label %bb.k, !inline_history !126

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEBH_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit, %bb.l
  resume { ptr, i32 } %i.t
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB5_32PackedStructFixedPerValueEncoderNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4416, i64 noundef 32, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4417, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blobNtB5_18BlobDecodePageTaskNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4419, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4405, i64 noundef 5, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4418, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2855, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4306)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB5_17SparsePositionSetNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !106, !noundef !75 ; 2 uses
  %i.e = xor i64 %i.d, -9223372036854775808
  %i.f = icmp slt i64 %i.d, 0
  %i.g = select i1 %i.f, i64 %i.e, i64 3
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1376, i64 noundef 5)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.c, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3243, i64 noundef 3, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3165, i64 noundef 3, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @172)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.b, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3241, i64 noundef 5, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2942, i64 noundef 5, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2838, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3165, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @172)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3237, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3475)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ %i.n, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB1s_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !89693, !noundef !75 ; 4 uses
  %.val.i = load i64, ptr %0, align 8, !alias.scope !89693 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EE4iterB1s_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.f, align 8, !alias.scope !89693 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.g = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.g    ; 4 uses
  %i.h = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.h, %i.d
  br i1 %.not11.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = sub nuw i64 %i.d, %i.h
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EE4iterB1s_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = add i64 %.sroa.04.0.i.i, %i.d
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EE4iterB1s_.exit

_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EE4iterB1s_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.d ], [ %.sroa.04.0.i.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0.i = phi i64 [ %i.j, %bb.d ], [ %.val.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.d ], [ %i.i, %bb.c ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !89693, !nonnull !75, !noundef !75 ; 4 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.0.i
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.5.0.i
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.11.0.i
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtBb_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1v_.exit.i.thread, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EE4iterB1s_.exit
  %.sroa.0.sroa.7.0.i = phi ptr [ %i.n, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EE4iterB1s_.exit ], [ %.sroa.0.sroa.7.1.i6, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtBb_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1v_.exit.i.thread ] ; 4 uses
  %.sroa.0.sroa.0.0.i = phi ptr [ %i.m, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EE4iterB1s_.exit ], [ %i.r, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtBb_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1v_.exit.i.thread ] ; 2 uses
  %.sroa.9.sroa.5.0.i = phi ptr [ %i.o, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EE4iterB1s_.exit ], [ %.sroa.9.sroa.5.1.i7, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtBb_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1v_.exit.i.thread ] ; 3 uses
  %.sroa.9.sroa.0.0.i = phi ptr [ %i.l, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EE4iterB1s_.exit ], [ %.sroa.9.sroa.0.1.i8, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtBb_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1v_.exit.i.thread ] ; 3 uses
  %i.p = icmp eq ptr %.sroa.0.sroa.0.0.i, %.sroa.0.sroa.7.0.i
  br i1 %i.p, label %bb.f, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtBb_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1v_.exit.i.thread

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq ptr %.sroa.9.sroa.0.0.i, %.sroa.9.sroa.5.0.i
  br i1 %i.q, label %_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EINtNtNtNtB19_11collections9vec_deque4iter4IterB14_EEB1I_.exit, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtBb_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1v_.exit.i.thread

_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtBb_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1v_.exit.i.thread: ; preds = %bb.f, %bb.e
  %.sink6.i.i9 = phi ptr [ %.sroa.9.sroa.0.0.i, %bb.f ], [ %.sroa.0.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.9.sroa.0.1.i8 = phi ptr [ %.sroa.0.sroa.7.0.i, %bb.f ], [ %.sroa.9.sroa.0.0.i, %bb.e ]
  %.sroa.9.sroa.5.1.i7 = phi ptr [ %.sroa.0.sroa.7.0.i, %bb.f ], [ %.sroa.9.sroa.5.0.i, %bb.e ]
  %.sroa.0.sroa.7.1.i6 = phi ptr [ %.sroa.9.sroa.5.0.i, %bb.f ], [ %.sroa.0.sroa.7.0.i, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sink6.i.i9, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89694
  store ptr %.sink6.i.i9, ptr %i.a, align 8, !noalias !89694
  %i.s = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @128), !noalias !89695 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89694
  br label %bb.e

_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder18LogicalPageDecoderEL_EINtNtNtNtB19_11collections9vec_deque4iter4IterB14_EEB1I_.exit: ; preds = %bb.f
  %i.t = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.t
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB1s_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !89701, !noundef !75 ; 4 uses
  %.val.i = load i64, ptr %0, align 8, !alias.scope !89701 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EE4iterB1s_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.f, align 8, !alias.scope !89701 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.g = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.g    ; 4 uses
  %i.h = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.h, %i.d
  br i1 %.not11.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = sub nuw i64 %i.d, %i.h
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EE4iterB1s_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = add i64 %.sroa.04.0.i.i, %i.d
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EE4iterB1s_.exit

_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EE4iterB1s_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.d ], [ %.sroa.04.0.i.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0.i = phi i64 [ %i.j, %bb.d ], [ %.val.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.d ], [ %i.i, %bb.c ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !89701, !nonnull !75, !noundef !75 ; 4 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.0.i
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.5.0.i
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.11.0.i
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtBb_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1v_.exit.i.thread, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EE4iterB1s_.exit
  %.sroa.0.sroa.7.0.i = phi ptr [ %i.n, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EE4iterB1s_.exit ], [ %.sroa.0.sroa.7.1.i6, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtBb_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1v_.exit.i.thread ] ; 4 uses
  %.sroa.0.sroa.0.0.i = phi ptr [ %i.m, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EE4iterB1s_.exit ], [ %i.r, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtBb_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1v_.exit.i.thread ] ; 2 uses
  %.sroa.9.sroa.5.0.i = phi ptr [ %i.o, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EE4iterB1s_.exit ], [ %.sroa.9.sroa.5.1.i7, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtBb_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1v_.exit.i.thread ] ; 3 uses
  %.sroa.9.sroa.0.0.i = phi ptr [ %i.l, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EE4iterB1s_.exit ], [ %.sroa.9.sroa.0.1.i8, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtBb_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1v_.exit.i.thread ] ; 3 uses
  %i.p = icmp eq ptr %.sroa.0.sroa.0.0.i, %.sroa.0.sroa.7.0.i
  br i1 %i.p, label %bb.f, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtBb_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1v_.exit.i.thread

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq ptr %.sroa.9.sroa.0.0.i, %.sroa.9.sroa.5.0.i
  br i1 %i.q, label %_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EINtNtNtNtB19_11collections9vec_deque4iter4IterB14_EEB1I_.exit, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtBb_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1v_.exit.i.thread

_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtBb_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1v_.exit.i.thread: ; preds = %bb.f, %bb.e
  %.sink6.i.i9 = phi ptr [ %.sroa.9.sroa.0.0.i, %bb.f ], [ %.sroa.0.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.9.sroa.0.1.i8 = phi ptr [ %.sroa.0.sroa.7.0.i, %bb.f ], [ %.sroa.9.sroa.0.0.i, %bb.e ]
  %.sroa.9.sroa.5.1.i7 = phi ptr [ %.sroa.0.sroa.7.0.i, %bb.f ], [ %.sroa.9.sroa.5.0.i, %bb.e ]
  %.sroa.0.sroa.7.1.i6 = phi ptr [ %.sroa.9.sroa.5.0.i, %bb.f ], [ %.sroa.0.sroa.7.0.i, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sink6.i.i9, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89702
  store ptr %.sink6.i.i9, ptr %i.a, align 8, !noalias !89702
  %i.s = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @129), !noalias !89703 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89702
  br label %bb.e

_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder21StructuralPageDecoderEL_EINtNtNtNtB19_11collections9vec_deque4iter4IterB14_EEB1I_.exit: ; preds = %bb.f
  %i.t = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.t
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEENtNtB1c_3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !89709, !noundef !75 ; 4 uses
  %.val.i = load i64, ptr %0, align 8, !alias.scope !89709 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE4iterCsjjpCCFGI3ul_14lance_encoding.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.f, align 8, !alias.scope !89709 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.g = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.g    ; 4 uses
  %i.h = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.h, %i.d
  br i1 %.not11.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = sub nuw i64 %i.d, %i.h
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE4iterCsjjpCCFGI3ul_14lance_encoding.exit

bb.d:                                             ; preds = %bb.b
  %i.j = add i64 %.sroa.04.0.i.i, %i.d
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE4iterCsjjpCCFGI3ul_14lance_encoding.exit

_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE4iterCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.d ], [ %.sroa.04.0.i.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0.i = phi i64 [ %i.j, %bb.d ], [ %.val.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.d ], [ %i.i, %bb.c ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !89709, !nonnull !75, !noundef !75 ; 4 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.0.i
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.5.0.i
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.11.0.i
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEENtNtNtNtB1f_4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.thread, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE4iterCsjjpCCFGI3ul_14lance_encoding.exit
  %.sroa.0.sroa.7.0.i = phi ptr [ %i.n, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE4iterCsjjpCCFGI3ul_14lance_encoding.exit ], [ %.sroa.0.sroa.7.1.i6, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEENtNtNtNtB1f_4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.thread ] ; 4 uses
  %.sroa.0.sroa.0.0.i = phi ptr [ %i.m, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE4iterCsjjpCCFGI3ul_14lance_encoding.exit ], [ %i.r, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEENtNtNtNtB1f_4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.thread ] ; 2 uses
  %.sroa.9.sroa.5.0.i = phi ptr [ %i.o, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE4iterCsjjpCCFGI3ul_14lance_encoding.exit ], [ %.sroa.9.sroa.5.1.i7, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEENtNtNtNtB1f_4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.thread ] ; 3 uses
  %.sroa.9.sroa.0.0.i = phi ptr [ %i.l, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE4iterCsjjpCCFGI3ul_14lance_encoding.exit ], [ %.sroa.9.sroa.0.1.i8, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEENtNtNtNtB1f_4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.thread ] ; 3 uses
  %i.p = icmp eq ptr %.sroa.0.sroa.0.0.i, %.sroa.0.sroa.7.0.i
  br i1 %i.p, label %bb.f, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEENtNtNtNtB1f_4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.thread

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq ptr %.sroa.9.sroa.0.0.i, %.sroa.9.sroa.5.0.i
  br i1 %i.q, label %_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtNtBa_3ops5range5RangeyEINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4IterB14_EECsjjpCCFGI3ul_14lance_encoding.exit, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEENtNtNtNtB1f_4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.thread

_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEENtNtNtNtB1f_4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i.thread: ; preds = %bb.f, %bb.e
  %.sink6.i.i9 = phi ptr [ %.sroa.9.sroa.0.0.i, %bb.f ], [ %.sroa.0.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.9.sroa.0.1.i8 = phi ptr [ %.sroa.0.sroa.7.0.i, %bb.f ], [ %.sroa.9.sroa.0.0.i, %bb.e ]
  %.sroa.9.sroa.5.1.i7 = phi ptr [ %.sroa.0.sroa.7.0.i, %bb.f ], [ %.sroa.9.sroa.5.0.i, %bb.e ]
  %.sroa.0.sroa.7.1.i6 = phi ptr [ %.sroa.9.sroa.5.0.i, %bb.f ], [ %.sroa.0.sroa.7.0.i, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sink6.i.i9, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89710
  store ptr %.sink6.i.i9, ptr %i.a, align 8, !noalias !89710
  %i.s = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @135), !noalias !89711 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89710
  br label %bb.e

_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtNtBa_3ops5range5RangeyEINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4IterB14_EECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.f
  %i.t = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.t
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB19_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !89717, !noundef !75 ; 4 uses
  %.val.i = load i64, ptr %0, align 8, !alias.scope !89717 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferE4iterB19_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.f, align 8, !alias.scope !89717 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.g = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.g    ; 4 uses
  %i.h = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.h, %i.d
  br i1 %.not11.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = sub nuw i64 %i.d, %i.h
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferE4iterB19_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = add i64 %.sroa.04.0.i.i, %i.d
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferE4iterB19_.exit

_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferE4iterB19_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.d ], [ %.sroa.04.0.i.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0.i = phi i64 [ %i.j, %bb.d ], [ %.val.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.d ], [ %i.i, %bb.c ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !89717, !nonnull !75, !noundef !75 ; 4 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.0.0.i
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.5.0.i
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.11.0.i
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.thread, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferE4iterB19_.exit
  %.sroa.0.sroa.7.0.i = phi ptr [ %i.n, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferE4iterB19_.exit ], [ %.sroa.0.sroa.7.1.i6, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.thread ] ; 4 uses
  %.sroa.0.sroa.0.0.i = phi ptr [ %i.m, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferE4iterB19_.exit ], [ %i.r, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.thread ] ; 2 uses
  %.sroa.9.sroa.5.0.i = phi ptr [ %i.o, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferE4iterB19_.exit ], [ %.sroa.9.sroa.5.1.i7, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.thread ] ; 3 uses
  %.sroa.9.sroa.0.0.i = phi ptr [ %i.l, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferE4iterB19_.exit ], [ %.sroa.9.sroa.0.1.i8, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.thread ] ; 3 uses
  %i.p = icmp eq ptr %.sroa.0.sroa.0.0.i, %.sroa.0.sroa.7.0.i
  br i1 %i.p, label %bb.f, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.thread

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq ptr %.sroa.9.sroa.0.0.i, %.sroa.9.sroa.5.0.i
  br i1 %i.q, label %_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4IterB14_EEB18_.exit, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.thread

_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.thread: ; preds = %bb.f, %bb.e
  %.sink6.i.i9 = phi ptr [ %.sroa.9.sroa.0.0.i, %bb.f ], [ %.sroa.0.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.9.sroa.0.1.i8 = phi ptr [ %.sroa.0.sroa.7.0.i, %bb.f ], [ %.sroa.9.sroa.0.0.i, %bb.e ]
  %.sroa.9.sroa.5.1.i7 = phi ptr [ %.sroa.0.sroa.7.0.i, %bb.f ], [ %.sroa.9.sroa.5.0.i, %bb.e ]
  %.sroa.0.sroa.7.1.i6 = phi ptr [ %.sroa.9.sroa.5.0.i, %bb.f ], [ %.sroa.0.sroa.7.0.i, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sink6.i.i9, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89718
  store ptr %.sink6.i.i9, ptr %i.a, align 8, !noalias !89718
  %i.s = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138), !noalias !89719 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89718
  br label %bb.e

_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4IterB14_EEB18_.exit: ; preds = %bb.f
  %i.t = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.t
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB1d_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !89725, !noundef !75 ; 4 uses
  %.val.i = load i64, ptr %0, align 8, !alias.scope !89725 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestE4iterB1d_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.f, align 8, !alias.scope !89725 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.g = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.g    ; 4 uses
  %i.h = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.h, %i.d
  br i1 %.not11.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = sub nuw i64 %i.d, %i.h
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestE4iterB1d_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = add i64 %.sroa.04.0.i.i, %i.d
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestE4iterB1d_.exit

_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestE4iterB1d_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.d ], [ %.sroa.04.0.i.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0.i = phi i64 [ %i.j, %bb.d ], [ %.val.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.d ], [ %i.i, %bb.c ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !89725, !nonnull !75, !noundef !75 ; 4 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.sroa.0.0.i
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.sroa.5.0.i
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.sroa.11.0.i
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestE4iterB1d_.exit
  %.sroa.0.sroa.7.0.i = phi ptr [ %i.n, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestE4iterB1d_.exit ], [ %.sroa.0.sroa.7.1.i6, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread ] ; 4 uses
  %.sroa.0.sroa.0.0.i = phi ptr [ %i.m, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestE4iterB1d_.exit ], [ %i.r, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread ] ; 2 uses
  %.sroa.9.sroa.5.0.i = phi ptr [ %i.o, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestE4iterB1d_.exit ], [ %.sroa.9.sroa.5.1.i7, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread ] ; 3 uses
  %.sroa.9.sroa.0.0.i = phi ptr [ %i.l, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestE4iterB1d_.exit ], [ %.sroa.9.sroa.0.1.i8, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread ] ; 3 uses
  %i.p = icmp eq ptr %.sroa.0.sroa.0.0.i, %.sroa.0.sroa.7.0.i
  br i1 %i.p, label %bb.f, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq ptr %.sroa.9.sroa.0.0.i, %.sroa.9.sroa.5.0.i
  br i1 %i.q, label %_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4IterB14_EEB1c_.exit, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread

_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread: ; preds = %bb.f, %bb.e
  %.sink6.i.i9 = phi ptr [ %.sroa.9.sroa.0.0.i, %bb.f ], [ %.sroa.0.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.9.sroa.0.1.i8 = phi ptr [ %.sroa.0.sroa.7.0.i, %bb.f ], [ %.sroa.9.sroa.0.0.i, %bb.e ]
  %.sroa.9.sroa.5.1.i7 = phi ptr [ %.sroa.0.sroa.7.0.i, %bb.f ], [ %.sroa.9.sroa.5.0.i, %bb.e ]
  %.sroa.0.sroa.7.1.i6 = phi ptr [ %.sroa.9.sroa.5.0.i, %bb.f ], [ %.sroa.0.sroa.7.0.i, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sink6.i.i9, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89726
  store ptr %.sink6.i.i9, ptr %i.a, align 8, !noalias !89726
  %i.s = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @145), !noalias !89727 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89726
  br label %bb.e

_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list11ListRequestINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4IterB14_EEB1c_.exit: ; preds = %bb.f
  %i.t = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.t
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB1d_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !89733, !noundef !75 ; 4 uses
  %.val.i = load i64, ptr %0, align 8, !alias.scope !89733 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkE4iterB1d_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.f, align 8, !alias.scope !89733 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.g = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.g    ; 4 uses
  %i.h = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.h, %i.d
  br i1 %.not11.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = sub nuw i64 %i.d, %i.h
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkE4iterB1d_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = add i64 %.sroa.04.0.i.i, %i.d
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkE4iterB1d_.exit

_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkE4iterB1d_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.d ], [ %.sroa.04.0.i.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0.i = phi i64 [ %i.j, %bb.d ], [ %.val.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.d ], [ %i.i, %bb.c ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !89733, !nonnull !75, !noundef !75 ; 4 uses
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %.sroa.0.0.i
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %.sroa.5.0.i
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %.sroa.11.0.i
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkE4iterB1d_.exit
  %.sroa.0.sroa.7.0.i = phi ptr [ %i.n, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkE4iterB1d_.exit ], [ %.sroa.0.sroa.7.1.i6, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread ] ; 4 uses
  %.sroa.0.sroa.0.0.i = phi ptr [ %i.m, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkE4iterB1d_.exit ], [ %i.r, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread ] ; 2 uses
  %.sroa.9.sroa.5.0.i = phi ptr [ %i.o, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkE4iterB1d_.exit ], [ %.sroa.9.sroa.5.1.i7, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread ] ; 3 uses
  %.sroa.9.sroa.0.0.i = phi ptr [ %i.l, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkE4iterB1d_.exit ], [ %.sroa.9.sroa.0.1.i8, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread ] ; 3 uses
  %i.p = icmp eq ptr %.sroa.0.sroa.0.0.i, %.sroa.0.sroa.7.0.i
  br i1 %i.p, label %bb.f, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq ptr %.sroa.9.sroa.0.0.i, %.sroa.9.sroa.5.0.i
  br i1 %i.q, label %_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4IterB14_EEB1c_.exit, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread

_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread: ; preds = %bb.f, %bb.e
  %.sink6.i.i9 = phi ptr [ %.sroa.9.sroa.0.0.i, %bb.f ], [ %.sroa.0.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.9.sroa.0.1.i8 = phi ptr [ %.sroa.0.sroa.7.0.i, %bb.f ], [ %.sroa.9.sroa.0.0.i, %bb.e ]
  %.sroa.9.sroa.5.1.i7 = phi ptr [ %.sroa.0.sroa.7.0.i, %bb.f ], [ %.sroa.9.sroa.5.0.i, %bb.e ]
  %.sroa.0.sroa.7.1.i6 = phi ptr [ %.sroa.9.sroa.5.0.i, %bb.f ], [ %.sroa.0.sroa.7.0.i, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sink6.i.i9, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89734
  store ptr %.sink6.i.i9, ptr %i.a, align 8, !noalias !89734
  %i.s = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @153), !noalias !89735 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89734
  br label %bb.e

_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4IterB14_EEB1c_.exit: ; preds = %bb.f
  %i.t = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.t
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB1d_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !89741, !noundef !75 ; 4 uses
  %.val.i = load i64, ptr %0, align 8, !alias.scope !89741 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsE4iterB1d_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.f, align 8, !alias.scope !89741 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.g = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.g    ; 4 uses
  %i.h = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.h, %i.d
  br i1 %.not11.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = sub nuw i64 %i.d, %i.h
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsE4iterB1d_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = add i64 %.sroa.04.0.i.i, %i.d
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsE4iterB1d_.exit

_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsE4iterB1d_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.d ], [ %.sroa.04.0.i.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0.i = phi i64 [ %i.j, %bb.d ], [ %.val.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.d ], [ %i.i, %bb.c ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !89741, !nonnull !75, !noundef !75 ; 4 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.sroa.0.0.i
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.sroa.5.0.i
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.sroa.11.0.i
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsE4iterB1d_.exit
  %.sroa.0.sroa.7.0.i = phi ptr [ %i.n, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsE4iterB1d_.exit ], [ %.sroa.0.sroa.7.1.i6, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread ] ; 4 uses
  %.sroa.0.sroa.0.0.i = phi ptr [ %i.m, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsE4iterB1d_.exit ], [ %i.r, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread ] ; 2 uses
  %.sroa.9.sroa.5.0.i = phi ptr [ %i.o, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsE4iterB1d_.exit ], [ %.sroa.9.sroa.5.1.i7, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread ] ; 3 uses
  %.sroa.9.sroa.0.0.i = phi ptr [ %i.l, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsE4iterB1d_.exit ], [ %.sroa.9.sroa.0.1.i8, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread ] ; 3 uses
  %i.p = icmp eq ptr %.sroa.0.sroa.0.0.i, %.sroa.0.sroa.7.0.i
  br i1 %i.p, label %bb.f, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq ptr %.sroa.9.sroa.0.0.i, %.sroa.9.sroa.5.0.i
  br i1 %i.q, label %_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4IterB14_EEB1c_.exit, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread

_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.thread: ; preds = %bb.f, %bb.e
  %.sink6.i.i9 = phi ptr [ %.sroa.9.sroa.0.0.i, %bb.f ], [ %.sroa.0.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.9.sroa.0.1.i8 = phi ptr [ %.sroa.0.sroa.7.0.i, %bb.f ], [ %.sroa.9.sroa.0.0.i, %bb.e ]
  %.sroa.9.sroa.5.1.i7 = phi ptr [ %.sroa.0.sroa.7.0.i, %bb.f ], [ %.sroa.9.sroa.5.0.i, %bb.e ]
  %.sroa.0.sroa.7.1.i6 = phi ptr [ %.sroa.9.sroa.5.0.i, %bb.f ], [ %.sroa.0.sroa.7.0.i, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sink6.i.i9, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89742
  store ptr %.sink6.i.i9, ptr %i.a, align 8, !noalias !89742
  %i.s = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @154), !noalias !89743 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89742
  br label %bb.e

_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive17ChunkInstructionsINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4IterB14_EEB1c_.exit: ; preds = %bb.f
  %i.t = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.t
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB1f_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !89749, !noundef !75 ; 4 uses
  %.val.i = load i64, ptr %0, align 8, !alias.scope !89749 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE4iterB1f_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.f, align 8, !alias.scope !89749 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.g = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.g    ; 4 uses
  %i.h = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.h, %i.d
  br i1 %.not11.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = sub nuw i64 %i.d, %i.h
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE4iterB1f_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = add i64 %.sroa.04.0.i.i, %i.d
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE4iterB1f_.exit

_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE4iterB1f_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.d ], [ %.sroa.04.0.i.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0.i = phi i64 [ %i.j, %bb.d ], [ %.val.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.d ], [ %i.i, %bb.c ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !89749, !nonnull !75, !noundef !75 ; 4 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %.sroa.0.0.i
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %.sroa.5.0.i
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %.sroa.11.0.i
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1i_.exit.i.thread, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE4iterB1f_.exit
  %.sroa.0.sroa.7.0.i = phi ptr [ %i.n, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE4iterB1f_.exit ], [ %.sroa.0.sroa.7.1.i6, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1i_.exit.i.thread ] ; 4 uses
  %.sroa.0.sroa.0.0.i = phi ptr [ %i.m, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE4iterB1f_.exit ], [ %i.r, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1i_.exit.i.thread ] ; 2 uses
  %.sroa.9.sroa.5.0.i = phi ptr [ %i.o, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE4iterB1f_.exit ], [ %.sroa.9.sroa.5.1.i7, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1i_.exit.i.thread ] ; 3 uses
  %.sroa.9.sroa.0.0.i = phi ptr [ %i.l, %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobE4iterB1f_.exit ], [ %.sroa.9.sroa.0.1.i8, %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1i_.exit.i.thread ] ; 3 uses
  %i.p = icmp eq ptr %.sroa.0.sroa.0.0.i, %.sroa.0.sroa.7.0.i
  br i1 %i.p, label %bb.f, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1i_.exit.i.thread

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq ptr %.sroa.9.sroa.0.0.i, %.sroa.9.sroa.5.0.i
  br i1 %i.q, label %_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4IterB14_EEB1e_.exit, label %_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1i_.exit.i.thread

_RNvXs2_NtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1i_.exit.i.thread: ; preds = %bb.f, %bb.e
  %.sink6.i.i9 = phi ptr [ %.sroa.9.sroa.0.0.i, %bb.f ], [ %.sroa.0.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.9.sroa.0.1.i8 = phi ptr [ %.sroa.0.sroa.7.0.i, %bb.f ], [ %.sroa.9.sroa.0.0.i, %bb.e ]
  %.sroa.9.sroa.5.1.i7 = phi ptr [ %.sroa.0.sroa.7.0.i, %bb.f ], [ %.sroa.9.sroa.5.0.i, %bb.e ]
  %.sroa.0.sroa.7.1.i6 = phi ptr [ %.sroa.9.sroa.5.0.i, %bb.f ], [ %.sroa.0.sroa.7.0.i, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sink6.i.i9, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89750
  store ptr %.sink6.i.i9, ptr %i.a, align 8, !noalias !89750
  %i.s = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161), !noalias !89751 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89750
  br label %bb.e

_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blob10LoadedBlobINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4IterB14_EEB1e_.exit: ; preds = %bb.f
  %i.t = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.t
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsk_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB5_16GeneralMiniBlockNtNtCskAO0uQb8M5a_5prost4name4Name8type_url(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !89754
  %i.a = tail call noundef dereferenceable_or_null(33) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 33, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !89754 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 33) #66
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.a, ptr noundef nonnull align 1 dereferenceable(33) @4425, i64 33, i1 false)
  store i64 33, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 33, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsk_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB5_16GeneralMiniBlockNtNtCskAO0uQb8M5a_5prost4name4Name9full_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !89757
  %i.a = tail call noundef dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !89757 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 32) #66
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, ptr noundef nonnull align 1 dereferenceable(32) @4426, i64 32, i1 false)
  store i64 32, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 32, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsk_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB5_19OutOfLineBitpackingNtNtCskAO0uQb8M5a_5prost4name4Name8type_url(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !89760
  %i.a = tail call noundef dereferenceable_or_null(38) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 38, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !89760 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 38) #66
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.a, ptr noundef nonnull align 1 dereferenceable(38) @4427, i64 38, i1 false)
  store i64 38, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 38, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsk_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB5_19OutOfLineBitpackingNtNtCskAO0uQb8M5a_5prost4name4Name9full_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !89763
  %i.a = tail call noundef dereferenceable_or_null(37) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 37, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !89763 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 37) #66
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.a, ptr noundef nonnull align 1 dereferenceable(37) @4428, i64 37, i1 false)
  store i64 37, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 37, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsk_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb8nullableNtB5_8SomeNullNtNtCskAO0uQb8M5a_5prost7message7Message5clear(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val2 = load ptr, ptr %0, align 8, !align !95, !noundef !75 ; 5 uses
  %i.a = icmp eq ptr %.val2, null
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEEEB1C_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %.val2, align 8, !range !116, !alias.scope !89776, !noalias !89777, !noundef !75
  %i.c = icmp eq i64 %i.b, -2
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEEB1g_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14array_encoding13ArrayEncodingEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(56) %.val2) #69
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEEB1g_.exit.i unwind label %.body, !noalias !89777, !inline_history !68

.body:                                            ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 56, i64 noundef 8) #63, !noalias !89777, !inline_history !211
  store ptr null, ptr %0, align 8
  br label %bb.f

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEEB1g_.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 56, i64 noundef 8) #63, !noalias !89777, !inline_history !211
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEEEB1C_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEEEB1C_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEEB1g_.exit.i, %bb.a
  store ptr null, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.e, align 8, !align !95, !noundef !75 ; 5 uses
  %i.f = icmp eq ptr %.val, null
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEEEB1C_.exit6, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEEEB1C_.exit
  %i.g = load i64, ptr %.val, align 8, !range !116, !alias.scope !89778, !noalias !89779, !noundef !75
  %i.h = icmp eq i64 %i.g, -2
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEEB1g_.exit.i3, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14array_encoding13ArrayEncodingEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(56) %.val) #69
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEEB1g_.exit.i3 unwind label %.body4, !noalias !89779, !inline_history !68

.body4:                                           ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 56, i64 noundef 8) #63, !noalias !89779, !inline_history !211
  store ptr null, ptr %i.e, align 8
  br label %bb.f

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEEB1g_.exit.i3: ; preds = %bb.e, %bb.d
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 56, i64 noundef 8) #63, !noalias !89779, !inline_history !211
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEEEB1C_.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEEEB1C_.exit6: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEEB1g_.exit.i3, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEEEB1C_.exit
  store ptr null, ptr %i.e, align 8
  ret void

bb.f:                                             ; preds = %.body4, %.body
  %.pn = phi { ptr, i32 } [ %i.i, %.body4 ], [ %i.d, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef i64 @_RNvXsk_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_23MiniBlockCacheableStateNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children(ptr noalias noundef readonly align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !82, !alias.scope !89792, !noundef !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !76, !alias.scope !89792
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !range !133, !alias.scope !89793, !noundef !75 ; 3 uses
  %i.f = add nsw i64 %i.e, -2
  %.inv.i.i = icmp samesign ult i64 %i.e, 2
  %i.g = select i1 %.inv.i.i, i64 2, i64 %i.f     ; 2 uses
  switch i64 %i.g, label %bb.b [
    i64 0, label %_RNvXs2_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB5_19MiniBlockChunkIndexNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children.exit
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !range !82, !alias.scope !89794, !noundef !75
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i64, ptr %i.j, align 8, !range !76, !alias.scope !89794
  %.sroa.0.0.v.i.i.i = or disjoint i64 %i.i, 2
  %.sroa.0.0.i.i.i = shl i64 %i.k, %.sroa.0.0.v.i.i.i
  br label %_RNvXs2_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB5_19MiniBlockChunkIndexNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !range !76, !alias.scope !89795
  %.sroa.0.0.v.i2.i.i = add nuw nsw i64 %i.e, 2
  %.sroa.0.0.i3.i.i = shl i64 %i.n, %.sroa.0.0.v.i2.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
end_hunk_1
