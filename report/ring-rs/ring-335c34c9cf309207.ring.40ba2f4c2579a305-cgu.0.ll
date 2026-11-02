Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs5yxAJGbRKSL_4ring6digest9AlgorithmNtB6_5Debug3fmtBA_:switch.lookup
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6240)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load i8, ptr %i.b, align 8, !range !55, !alias.scope !6240, !noundef !15 ; 2 uses
  %i.d = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsh_NtCs5yxAJGbRKSL_4ring6digestNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i8 %i.c to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsh_NtCs5yxAJGbRKSL_4ring6digestNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.559, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext), !noalias !6240
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs5yxAJGbRKSL_4ring9agreement9AlgorithmNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6244
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @325, i64 noundef 9), !noalias !6245
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @327, i64 noundef 5, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @326)
  %i.d = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6244
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs5yxAJGbRKSL_4ring(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %.val = load i8, ptr %i.a, align 1, !range !54, !noundef !15 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs5yxAJGbRKSL_4ring, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs5yxAJGbRKSL_4ring.553, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCs5yxAJGbRKSL_4ring4aead9algorithm9AlgorithmNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6248)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i8, ptr %i.b, align 8, !range !53, !alias.scope !6248, !noundef !15 ; 2 uses
  %i.d = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs2_NtNtCs5yxAJGbRKSL_4ring4aead9algorithmNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i8 %i.c to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs2_NtNtCs5yxAJGbRKSL_4ring4aead9algorithmNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.556, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext), !noalias !6248
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRRNtNtCs5yxAJGbRKSL_4ring6digest9AlgorithmNtB6_5Debug3fmtBB_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6254)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !6254, !nonnull !15, !align !17, !noundef !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6255)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load i8, ptr %i.c, align 8, !range !55, !alias.scope !6255, !noalias !6256, !noundef !15 ; 2 uses
  %i.e = zext nneg i8 %i.d to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsh_NtCs5yxAJGbRKSL_4ring6digestNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.f = zext nneg i8 %i.d to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsh_NtCs5yxAJGbRKSL_4ring6digestNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.559, i64 %i.f
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext), !noalias !6257
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRRShNtB6_5Debug3fmtCs5yxAJGbRKSL_4ring(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val1 = load i64, ptr %i.d, align 8, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6265
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !6266
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 %.val1
  %i.f = icmp samesign eq i64 %.val1, 0
  br i1 %i.f, label %_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRShNtB6_5Debug3fmtCs5yxAJGbRKSL_4ring.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %.val, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6267
  store ptr %.sroa.0.05.i.i.i, ptr %i.a, align 8, !noalias !6267, !captures !33
  %i.h = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6267
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRShNtB6_5Debug3fmtCs5yxAJGbRKSL_4ring.exit, label %.lr.ph.i.i.i

_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRShNtB6_5Debug3fmtCs5yxAJGbRKSL_4ring.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.j = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6265
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRhNtB6_5Debug3fmtCs5yxAJGbRKSL_4ring(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !6270, !noundef !15 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRuNtB6_5Debug3fmtCs5yxAJGbRKSL_4ring(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @354, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5yxAJGbRKSL_4ring(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !15
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXs1i_NtNtCs3oUPovFnLWP_4core3str4iterINtB6_6SplitNReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6303)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !6303, !noundef !15 ; 2 uses
  switch i64 %i.b, label %bb.b [
    i64 0, label %_RNvMsl_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_14SplitNInternalReE4nextCs5yxAJGbRKSL_4ring.exit
    i64 1, label %bb.ao
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.b, -1
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !6303
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6304)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !34, !alias.scope !6305, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RNvMsl_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_14SplitNInternalReE4nextCs5yxAJGbRKSL_4ring.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !6305, !nonnull !15, !noundef !15 ; 16 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i = load i64, ptr %i.h, align 8, !alias.scope !6305, !noundef !15 ; 33 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6306)
  %i.i = load i64, ptr %0, align 8, !range !23, !alias.scope !6307, !noundef !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  switch i64 %i.i, label %default.unreachable [
    i64 0, label %.preheader.i.i.i
    i64 1, label %bb.r
    i64 2, label %bb.s
  ]

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.l = load i8, ptr %i.k, align 2, !range !34, !alias.scope !6307
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  br i1 %i.m, label %bb.al, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %.promoted206.i.i.i = load i8, ptr %i.n, align 8, !alias.scope !6307 ; 4 uses
  %.promoted157.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !6307 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6308)
  %i.o = trunc nuw i8 %.promoted206.i.i.i to i1   ; 2 uses
  %i.p = icmp eq i64 %.promoted157.i.i.i, 0
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph.preheader.i.i.i
  %.not.i.i.us.i.peel.i.i = icmp ult i64 %.promoted157.i.i.i, %.val1.i.i
  br i1 %.not.i.i.us.i.peel.i.i, label %bb.e, label %.split.i.i.us.i.peel.i.i

.split.i.i.us.i.peel.i.i:                         ; preds = %bb.d
  %i.q = icmp eq i64 %.promoted157.i.i.i, %.val1.i.i
  br i1 %i.q, label %bb.f, label %.split.us161.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.promoted157.i.i.i
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !6309, !noalias !6310, !noundef !15
  %i.t = icmp sgt i8 %i.s, -65
  br i1 %i.t, label %bb.f, label %.split.us161.i.i.i

bb.f:                                             ; preds = %bb.e, %.split.i.i.us.i.peel.i.i, %.lr.ph.preheader.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.promoted157.i.i.i ; 4 uses
  %i.v = icmp samesign eq i64 %.promoted157.i.i.i, %.val1.i.i
  br i1 %i.v, label %.split166.us.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i8, ptr %i.u, align 1, !noalias !6311, !noundef !15 ; 5 uses
  %i.x = icmp sgt i8 %i.w, -1
  br i1 %i.x, label %bb.h, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.us.i.peel.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.us.i.peel.i.i: ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.z = and i8 %i.w, 31
  %i.aa = zext nneg i8 %i.z to i32                ; 3 uses
  %i.ab = add nuw nsw i64 %.promoted157.i.i.i, 1
  %i.ac = icmp samesign ne i64 %i.ab, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = load i8, ptr %i.y, align 1, !noalias !6311, !noundef !15
  %i.ae = shl nuw nsw i32 %i.aa, 6
  %i.af = and i8 %i.ad, 63
  %i.ag = zext nneg i8 %i.af to i32               ; 2 uses
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = icmp samesign ugt i8 %i.w, -33
  br i1 %i.ai, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.us.i.peel.i.i, label %bb.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.us.i.peel.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.ak = add nuw nsw i64 %.promoted157.i.i.i, 2
  %i.al = icmp samesign ne i64 %i.ak, %.val1.i.i
  tail call void @llvm.assume(i1 %i.al)
  %i.am = load i8, ptr %i.aj, align 1, !noalias !6311, !noundef !15
  %i.an = shl nuw nsw i32 %i.ag, 6
  %i.ao = and i8 %i.am, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap            ; 2 uses
  %i.ar = shl nuw nsw i32 %i.aa, 12
  %i.as = or disjoint i32 %i.aq, %i.ar
  %i.at = icmp samesign ugt i8 %i.w, -17
  br i1 %i.at, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.us.i.peel.i.i, label %bb.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.us.i.peel.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.av = add nuw nsw i64 %.promoted157.i.i.i, 3
  %i.aw = icmp samesign ne i64 %i.av, %.val1.i.i
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = load i8, ptr %i.au, align 1, !noalias !6311, !noundef !15
  %i.ay = shl nuw nsw i32 %i.aa, 18
  %i.az = and i32 %i.ay, 1835008
  %i.ba = shl nuw nsw i32 %i.aq, 6
  %i.bb = and i8 %i.ax, 63
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  %i.be = or disjoint i32 %i.bd, %i.az
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = zext nneg i8 %i.w to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.us.i.peel.i.i
  %.sroa.4.0.i.ph.i.us.i.peel.i.i = phi i32 [ %i.as, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.us.i.peel.i.i ], [ %i.be, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.us.i.peel.i.i ], [ %i.ah, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.us.i.peel.i.i ], [ %i.bf, %bb.h ] ; 4 uses
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bg)
  br i1 %i.o, label %.loopexit42.split.us.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 128
  br i1 %i.bh, label %.lr.ph.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 2048
  br i1 %i.bi, label %.lr.ph.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 65536
  %..i.us.i.peel.i.i = select i1 %i.bj, i64 3, i64 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.01.0.i.us.i.peel.i.i = phi i64 [ 2, %bb.k ], [ %..i.us.i.peel.i.i, %bb.l ], [ 1, %bb.j ]
  %i.bk = add i64 %.sroa.01.0.i.us.i.peel.i.i, %.promoted157.i.i.i ; 16 uses
  store i64 %i.bk, ptr %i.j, align 8, !alias.scope !6312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6313)
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.us.i.i.i = icmp ult i64 %i.bk, %.val1.i.i
  br i1 %.not.i.i.us.i.i.i, label %bb.n, label %.split.i.i.us.i.i.i

.split.i.i.us.i.i.i:                              ; preds = %bb.m
  %i.bm = icmp eq i64 %i.bk, %.val1.i.i
  br i1 %i.bm, label %bb.o, label %.split.us161.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bk
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !6309, !noalias !6314, !noundef !15
  %i.bp = icmp sgt i8 %i.bo, -65
  br i1 %i.bp, label %bb.o, label %.split.us161.i.i.i

bb.o:                                             ; preds = %bb.n, %.split.i.i.us.i.i.i, %.lr.ph.i.i.i
  %i.bq = icmp samesign eq i64 %i.bk, %.val1.i.i
  br i1 %i.bq, label %.split166.us.i.thread.i.i, label %bb.p

.split166.us.i.thread.i.i:                        ; preds = %bb.o
  store i8 0, ptr %i.n, align 8, !alias.scope !6315
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bk
  %i.bs = load i8, ptr %i.br, align 1, !noalias !6316, !noundef !15 ; 3 uses
  %i.bt = icmp sgt i8 %i.bs, -1
  br i1 %i.bt, label %.loopexit42.split.us.i.i.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.us.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.us.i.i.i: ; preds = %bb.p
  %i.bu = add nuw nsw i64 %i.bk, 1
  %i.bv = icmp samesign ne i64 %i.bu, %.val1.i.i
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp samesign ugt i8 %i.bs, -33
  br i1 %i.bw, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.us.i.i.i, label %.loopexit42.split.us.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.us.i.i.i
  %i.bx = add nuw nsw i64 %i.bk, 2
  %i.by = icmp samesign ne i64 %i.bx, %.val1.i.i
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = icmp samesign ugt i8 %i.bs, -17
  br i1 %i.bz, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.us.i.i.i, label %.loopexit42.split.us.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.us.i.i.i
  %i.ca = add nuw nsw i64 %i.bk, 3
  %i.cb = icmp samesign ne i64 %i.ca, %.val1.i.i
  tail call void @llvm.assume(i1 %i.cb)
  br label %.loopexit42.split.us.i.i.i

.split.us161.i.i.i:                               ; preds = %bb.n, %.split.i.i.us.i.i.i, %bb.e, %.split.i.i.us.i.peel.i.i
  %.lcssa31.i.i = phi i64 [ %.promoted157.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted157.i.i.i, %bb.e ], [ %i.bk, %.split.i.i.us.i.i.i ], [ %i.bk, %bb.n ]
  %.lcssa28.i.i = phi i8 [ %.promoted206.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted206.i.i.i, %bb.e ], [ 1, %.split.i.i.us.i.i.i ], [ 1, %bb.n ]
  %i.cc = xor i8 %.lcssa28.i.i, 1
  store i8 %i.cc, ptr %i.n, align 8, !alias.scope !6315
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, i64 noundef %.lcssa31.i.i, i64 noundef %.val1.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #41, !noalias !6314
  unreachable

.split166.us.i.i.i:                               ; preds = %bb.f
  %i.cd = xor i8 %.promoted206.i.i.i, 1
  store i8 %i.cd, ptr %i.n, align 8, !alias.scope !6315
  br i1 %i.o, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.q

.loopexit42.split.us.i.i.i:                       ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.us.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.us.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.us.i.i.i, %bb.p, %bb.i
  %.lcssa33.i.i = phi i64 [ %.promoted157.i.i.i, %bb.i ], [ %i.bk, %bb.p ], [ %i.bk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.us.i.i.i ], [ %i.bk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.us.i.i.i ], [ %i.bk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.us.i.i.i ] ; 2 uses
  store i8 0, ptr %i.n, align 8, !alias.scope !6315
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.q:                                             ; preds = %.split166.us.i.i.i
  store i8 1, ptr %i.k, align 2, !alias.scope !6315
  br label %bb.al

bb.r:                                             ; preds = %bb.c
  %i.ce = load i64, ptr %i.j, align 8, !alias.scope !6307, !noundef !15 ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.ce, %.val1.i.i
  br i1 %.not.i.i.i, label %bb.t, label %bb.al

bb.s:                                             ; preds = %bb.c
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !6307, !noundef !15 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, -1
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !6307, !nonnull !15, !noundef !15 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !6307, !noundef !15 ; 16 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.cn = add nsw i64 %i.cl, -1                   ; 5 uses
  br i1 %i.ch, label %bb.ae, label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load i8, ptr %i.co, align 8, !alias.scope !6307, !noundef !15 ; 2 uses
  %i.cq = sub nuw i64 %.val1.i.i, %i.ce           ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ce ; 2 uses
  %i.cs = icmp samesign ult i64 %i.cq, 16
  br i1 %i.cs, label %.lr.ph.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %i.cp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef range(i64 0, -9223372036854775808) %i.cq), !noalias !6317 ; 2 uses
  %i.cu = extractvalue { i64, i64 } %i.ct, 0
  %i.cv = extractvalue { i64, i64 } %i.ct, 1
  %i.cw = trunc nuw i64 %i.cu to i1
  br i1 %i.cw, label %.loopexit43.i.i.i, label %.loopexit44.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %bb.v
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.da, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.04.011.i.i.i.i
  %i.cy = load i8, ptr %i.cx, align 1, !alias.scope !6318, !noalias !6317, !noundef !15
  %i.cz = icmp eq i8 %i.cy, %i.cp
  br i1 %i.cz, label %.loopexit43.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %i.da = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i7.i.i.i = icmp eq i64 %i.da, %i.cq
  br i1 %exitcond.not.i7.i.i.i, label %.loopexit44.i.i.i, label %.lr.ph.i.i.i.i

.loopexit43.i.i.i:                                ; preds = %.lr.ph.i.i.i.i, %bb.u
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.cv, %bb.u ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.db = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.cq
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = add i64 %.sroa.5.0.i.i.i.i, %i.ce       ; 2 uses
  %i.dd = add i64 %i.dc, 1                        ; 2 uses
  store i64 %i.dd, ptr %i.j, align 8, !alias.scope !6307
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.loopexit44.i.i.i:                                ; preds = %bb.v, %bb.u
  store i64 %.val1.i.i, ptr %i.j, align 8, !alias.scope !6307
  br label %bb.al

bb.w:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6321)
  %.promoted.i.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !6322 ; 2 uses
  %i.de = add i64 %.promoted.i.i.i.i, %i.cn       ; 2 uses
  %i.df = icmp ult i64 %i.de, %.val1.i.i
  br i1 %i.df, label %.lr.ph.i8.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i8.i.i.i:                                  ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !6322, !noundef !15
  %i.di = load i64, ptr %i.j, align 8, !alias.scope !6322 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !6322 ; 2 uses
  %i.dl = sub i64 %i.cl, %i.dk
  %invariant.op = sub i64 1, %i.di
  br label %.lr.ph.split.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.z, %bb.w
  store i64 %.val1.i.i, ptr %i.cm, align 8, !alias.scope !6322
  br label %bb.al

.lr.ph.split.i.i.i.i:                             ; preds = %bb.z, %.lr.ph.i8.i.i.i
  %i.dm = phi i64 [ %.sink70.i.i.i.i, %bb.z ], [ %i.cg, %.lr.ph.i8.i.i.i ] ; 3 uses
  %i.dn = phi i64 [ %i.dx, %bb.z ], [ %i.de, %.lr.ph.i8.i.i.i ]
  %i.do = phi i64 [ %.sink71.i.i.i.i, %bb.z ], [ %.promoted.i.i.i.i, %.lr.ph.i8.i.i.i ] ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dn
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !6320, !noalias !6317, !noundef !15
  %i.dr = and i8 %i.dq, 63
  %i.ds = zext nneg i8 %i.dr to i64
  %i.dt = shl nuw i64 1, %i.ds
  %i.du = and i64 %i.dt, %i.dh
  %.not.i9.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i9.i.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.dv = add i64 %i.do, %i.cl
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph.split.i.i.i.i
  %..i.i10.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.dm, i64 %i.di) ; 2 uses
  %i.dw = icmp ult i64 %..i.i10.i.i.i, %i.cl
  br i1 %i.dw, label %.lr.ph, label %.preheader36.i.i.i.i.preheader

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.x
  %.sink71.i.i.i.i = phi i64 [ %i.et, %bb.ad ], [ %i.es, %bb.ac ], [ %i.dv, %bb.x ] ; 3 uses
  %.sink70.i.i.i.i = phi i64 [ 0, %bb.ad ], [ %i.dl, %bb.ac ], [ 0, %bb.x ] ; 2 uses
  store i64 %.sink71.i.i.i.i, ptr %i.cm, align 8, !alias.scope !6322
  store i64 %.sink70.i.i.i.i, ptr %i.cf, align 8, !alias.scope !6322
  %i.dx = add i64 %.sink71.i.i.i.i, %i.cn         ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %.val1.i.i
  br i1 %i.dy, label %.lr.ph.split.i.i.i.i, label %._crit_edge.i.i.i.i

bb.aa:                                            ; preds = %.lr.ph
  %i.dz = add nuw nsw i64 %.sroa.04.0.i.i.i.i77, 1 ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.cl
  br i1 %i.ea, label %.lr.ph, label %.preheader36.i.i.i.i.preheader

.preheader36.i.i.i.i.preheader:                   ; preds = %bb.aa, %bb.y
  %i.eb = icmp ult i64 %i.dm, %i.di
  br i1 %i.eb, label %.lr.ph79, label %.split.us.i11.i.i.i

.lr.ph:                                           ; preds = %bb.y, %bb.aa
  %.sroa.04.0.i.i.i.i77 = phi i64 [ %i.dz, %bb.aa ], [ %..i.i10.i.i.i, %bb.y ] ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.04.0.i.i.i.i77
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !6321, !noalias !6317, !noundef !15
  %i.ee = add i64 %.sroa.04.0.i.i.i.i77, %i.do    ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ee
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !6320, !noalias !6317, !noundef !15
  %.not21.i.i.i.i = icmp eq i8 %i.ed, %i.eh
  br i1 %.not21.i.i.i.i, label %bb.aa, label %bb.ad

.preheader36.i.i.i.i:                             ; preds = %bb.ab
  %i.ei = icmp ult i64 %i.dm, %i.ek
  br i1 %i.ei, label %.lr.ph79, label %.split.us.i11.i.i.i

.split.us.i11.i.i.i:                              ; preds = %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i
  %i.ej = add i64 %i.do, %i.cl                    ; 2 uses
  store i64 %i.ej, ptr %i.cm, align 8, !alias.scope !6322
  store i64 0, ptr %i.cf, align 8, !alias.scope !6322
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.lr.ph79:                                         ; preds = %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i
  %.sroa.2.0.i.i.i.i78 = phi i64 [ %i.ek, %.preheader36.i.i.i.i ], [ %i.di, %.preheader36.i.i.i.i.preheader ]
  %i.ek = add i64 %.sroa.2.0.i.i.i.i78, -1        ; 6 uses
  %i.el = icmp ult i64 %i.ek, %i.cl
  br i1 %i.el, label %bb.ab, label %.split32.us.i.i.i.i

bb.ab:                                            ; preds = %.lr.ph79
  %i.em = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ek
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !6321, !noalias !6317, !noundef !15
  %i.eo = add i64 %i.ek, %i.do                    ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.eo
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !6320, !noalias !6317, !noundef !15
  %.not20.i.i.i.i = icmp eq i8 %i.en, %i.er
  br i1 %.not20.i.i.i.i, label %.preheader36.i.i.i.i, label %bb.ac

.split32.us.i.i.i.i:                              ; preds = %.lr.ph79
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ek, i64 noundef range(i64 0, -9223372036854775808) %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #41, !noalias !6323
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.es = add i64 %i.do, %i.dk
  br label %bb.z

bb.ad:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %i.do, %invariant.op
  %i.et = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i77
  br label %bb.z

bb.ae:                                            ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6326)
  %.promoted.i12.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !6327 ; 3 uses
  %i.eu = add i64 %.promoted.i12.i.i.i, %i.cn     ; 3 uses
  %i.ev = icmp ult i64 %i.eu, %.val1.i.i
  br i1 %i.ev, label %.lr.ph.i15.i.i.i, label %._crit_edge.i13.i.i.i

.lr.ph.i15.i.i.i:                                 ; preds = %bb.ae
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !6327, !noundef !15 ; 2 uses
  %i.ey = load i64, ptr %i.j, align 8, !alias.scope !6327
  %.fr215.i.i.i = freeze i64 %i.ey                ; 10 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !6327
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr215.i.i.i, i64 range(i64 0, -9223372036854775808) %i.cl) ; 2 uses
  %i.fb = add i64 %.fr215.i.i.i, -1               ; 2 uses
  %.first_iter.i16.i.i.i = icmp ult i64 %i.fb, %i.cl
  %reass.sub79.i.i = sub i64 1, %.fr215.i.i.i     ; 2 uses
  br i1 %.first_iter.i16.i.i.i, label %.lr.ph.split.us.i.i.i.us.i.preheader, label %.lr.ph.split.us.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.preheader:                ; preds = %.lr.ph.i15.i.i.i
  %exitcond.not.i17.i.i.i81.not = icmp ult i64 %.fr215.i.i.i, %i.cl
  br label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.us.i.i.i.us.i.preheader:             ; preds = %.lr.ph.i15.i.i.i
  %exitcond.not.i17.i.i.us.i86.not = icmp ult i64 %.fr215.i.i.i, %i.cl
  %.not34.i.us.i.i.us.i89 = icmp eq i64 %.fr215.i.i.i, 0
  br label %.lr.ph.split.us.i.i.i.us.i

.lr.ph.split.us.i.i.i.us.i:                       ; preds = %.lr.ph.split.us.i.i.i.us.i.preheader, %bb.ah
  %i.fc = phi i64 [ %i.gb, %bb.ah ], [ %i.eu, %.lr.ph.split.us.i.i.i.us.i.preheader ]
  %i.fd = phi i64 [ %.sink.i18.i.i.us.i, %bb.ah ], [ %.promoted.i12.i.i.i, %.lr.ph.split.us.i.i.i.us.i.preheader ] ; 7 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fc
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !6325, !noalias !6317, !noundef !15
  %i.fg = and i8 %i.ff, 63
  %i.fh = zext nneg i8 %i.fg to i64
  %i.fi = shl nuw i64 1, %i.fh
  %i.fj = and i64 %i.fi, %i.ex
  %.not.us.i.i.i.us.i = icmp eq i64 %i.fj, 0
  br i1 %.not.us.i.i.i.us.i, label %bb.ag, label %.preheader35.i.i.i.us.i.preheader

.preheader35.i.i.i.us.i.preheader:                ; preds = %.lr.ph.split.us.i.i.i.us.i
  br i1 %exitcond.not.i17.i.i.us.i86.not, label %.lr.ph88, label %.preheader.i19.us.i.i.us.i.preheader

.preheader35.i.i.i.us.i:                          ; preds = %.lr.ph88
  %i.fk = add i64 %.sroa.04.0.us.i.i.i.us.i87, 1  ; 2 uses
  %exitcond.not.i17.i.i.us.i = icmp eq i64 %i.fk, %umax.i.i.i.i
  br i1 %exitcond.not.i17.i.i.us.i, label %.preheader.i19.us.i.i.us.i.preheader, label %.lr.ph88

.preheader.i19.us.i.i.us.i.preheader:             ; preds = %.preheader35.i.i.i.us.i, %.preheader35.i.i.i.us.i.preheader
  br i1 %.not34.i.us.i.i.us.i89, label %.split.us.i21.i.i.i, label %.lr.ph91

.lr.ph88:                                         ; preds = %.preheader35.i.i.i.us.i.preheader, %.preheader35.i.i.i.us.i
  %.sroa.04.0.us.i.i.i.us.i87 = phi i64 [ %i.fk, %.preheader35.i.i.i.us.i ], [ %.fr215.i.i.i, %.preheader35.i.i.i.us.i.preheader ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.04.0.us.i.i.i.us.i87
  %i.fm = load i8, ptr %i.fl, align 1, !alias.scope !6326, !noalias !6317, !noundef !15
  %i.fn = add i64 %.sroa.04.0.us.i.i.i.us.i87, %i.fd ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %.val1.i.i
  tail call void @llvm.assume(i1 %i.fo)
  %i.fp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fn
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !6325, !noalias !6317, !noundef !15
  %.not21.us.i.i.i.us.i = icmp eq i8 %i.fm, %i.fq
  br i1 %.not21.us.i.i.i.us.i, label %.preheader35.i.i.i.us.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph88
  %.reass282.i.reass.i.us.i = add i64 %i.fd, %reass.sub79.i.i
  %i.fr = add i64 %.reass282.i.reass.i.us.i, %.sroa.04.0.us.i.i.i.us.i87
  br label %bb.ah

.preheader.i19.us.i.i.us.i:                       ; preds = %.lr.ph91
  %.not34.i.us.i.i.us.i = icmp eq i64 %i.fs, 0
  br i1 %.not34.i.us.i.i.us.i, label %.split.us.i21.i.i.i, label %.lr.ph91

.lr.ph91:                                         ; preds = %.preheader.i19.us.i.i.us.i.preheader, %.preheader.i19.us.i.i.us.i
  %.sroa.2.0.us.i.us.i.i.us.i90 = phi i64 [ %i.fs, %.preheader.i19.us.i.i.us.i ], [ %.fr215.i.i.i, %.preheader.i19.us.i.i.us.i.preheader ]
  %i.fs = add i64 %.sroa.2.0.us.i.us.i.i.us.i90, -1 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !6326, !noalias !6317, !noundef !15
  %i.fv = add i64 %i.fs, %i.fd                    ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %.val1.i.i
  tail call void @llvm.assume(i1 %i.fw)
  %i.fx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fv
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !6325, !noalias !6317, !noundef !15
  %.not20.us.i.us.i.i.us.i = icmp eq i8 %i.fu, %i.fy
  br i1 %.not20.us.i.us.i.i.us.i, label %.preheader.i19.us.i.i.us.i, label %.split.us.i.i.us.i

.split.us.i.i.us.i:                               ; preds = %.lr.ph91
  %i.fz = add i64 %i.fd, %i.fa
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i.i.i.us.i
  %i.ga = add i64 %i.fd, %i.cl
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.split.us.i.i.us.i, %bb.af
  %.sink.i18.i.i.us.i = phi i64 [ %i.ga, %bb.ag ], [ %i.fr, %bb.af ], [ %i.fz, %.split.us.i.i.us.i ] ; 3 uses
  store i64 %.sink.i18.i.i.us.i, ptr %i.cm, align 8, !alias.scope !6327
  %i.gb = add i64 %.sink.i18.i.i.us.i, %i.cn      ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %.val1.i.i
  br i1 %i.gc, label %.lr.ph.split.us.i.i.i.us.i, label %._crit_edge.i13.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.split.us.i.i.i.i.preheader, %bb.ak
  %i.gd = phi i64 [ %i.gu, %bb.ak ], [ %i.eu, %.lr.ph.split.us.i.i.i.i.preheader ]
  %i.ge = phi i64 [ %.sink.i18.i.i.i, %bb.ak ], [ %.promoted.i12.i.i.i, %.lr.ph.split.us.i.i.i.i.preheader ] ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gd
  %i.gg = load i8, ptr %i.gf, align 1, !alias.scope !6325, !noalias !6317, !noundef !15
  %i.gh = and i8 %i.gg, 63
  %i.gi = zext nneg i8 %i.gh to i64
  %i.gj = shl nuw i64 1, %i.gi
  %i.gk = and i64 %i.gj, %i.ex
  %.not.us.i.i.i.i = icmp eq i64 %i.gk, 0
  br i1 %.not.us.i.i.i.i, label %bb.aj, label %.preheader35.i.i.i.i.preheader

.preheader35.i.i.i.i.preheader:                   ; preds = %.lr.ph.split.us.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i81.not, label %.lr.ph83, label %.preheader.i19.i.i.i

.preheader35.i.i.i.i:                             ; preds = %.lr.ph83
  %i.gl = add i64 %.sroa.04.0.us.i.i.i.i82, 1     ; 2 uses
  %exitcond.not.i17.i.i.i = icmp eq i64 %i.gl, %umax.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i, label %.preheader.i19.i.i.i, label %.lr.ph83

.lr.ph83:                                         ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.sroa.04.0.us.i.i.i.i82 = phi i64 [ %i.gl, %.preheader35.i.i.i.i ], [ %.fr215.i.i.i, %.preheader35.i.i.i.i.preheader ] ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.04.0.us.i.i.i.i82
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !6326, !noalias !6317, !noundef !15
  %i.go = add i64 %.sroa.04.0.us.i.i.i.i82, %i.ge ; 2 uses
  %i.gp = icmp ult i64 %i.go, %.val1.i.i
  tail call void @llvm.assume(i1 %i.gp)
  %i.gq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.go
  %i.gr = load i8, ptr %i.gq, align 1, !alias.scope !6325, !noalias !6317, !noundef !15
  %.not21.us.i.i.i.i = icmp eq i8 %i.gn, %i.gr
  br i1 %.not21.us.i.i.i.i, label %.preheader35.i.i.i.i, label %bb.ai

.preheader.i19.i.i.i:                             ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.not34.i.i.i.i = icmp eq i64 %.fr215.i.i.i, 0
  br i1 %.not34.i.i.i.i, label %.split.us.i21.i.i.i, label %.split32.us.i20.i.i.i

.split32.us.i20.i.i.i:                            ; preds = %.preheader.i19.i.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.fb, i64 noundef range(i64 0, -9223372036854775808) %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #41, !noalias !6328
  unreachable

bb.ai:                                            ; preds = %.lr.ph83
  %.reass282.i.reass.i.i = add i64 %i.ge, %reass.sub79.i.i
  %i.gs = add i64 %.reass282.i.reass.i.i, %.sroa.04.0.us.i.i.i.i82
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.gt = add i64 %i.ge, %i.cl
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sink.i18.i.i.i = phi i64 [ %i.gt, %bb.aj ], [ %i.gs, %bb.ai ] ; 3 uses
  store i64 %.sink.i18.i.i.i, ptr %i.cm, align 8, !alias.scope !6327
  %i.gu = add i64 %.sink.i18.i.i.i, %i.cn         ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %.val1.i.i
  br i1 %i.gv, label %.lr.ph.split.us.i.i.i.i, label %._crit_edge.i13.i.i.i

._crit_edge.i13.i.i.i:                            ; preds = %bb.ak, %bb.ah, %bb.ae
  store i64 %.val1.i.i, ptr %i.cm, align 8, !alias.scope !6327
  br label %bb.al

.split.us.i21.i.i.i:                              ; preds = %.preheader.i19.us.i.i.us.i.preheader, %.preheader.i19.us.i.i.us.i, %.preheader.i19.i.i.i
  %i.gw = phi i64 [ %i.ge, %.preheader.i19.i.i.i ], [ %i.fd, %.preheader.i19.us.i.i.us.i ], [ %i.fd, %.preheader.i19.us.i.i.us.i.preheader ] ; 2 uses
  %i.gx = add i64 %i.gw, %i.cl                    ; 2 uses
  store i64 %i.gx, ptr %i.cm, align 8, !alias.scope !6327
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %.split.us.i21.i.i.i, %.split.us.i11.i.i.i, %.loopexit43.i.i.i, %.loopexit42.split.us.i.i.i, %.split166.us.i.i.i, %.split166.us.i.thread.i.i
  %.sroa.9.0.i.i = phi i64 [ %.val1.i.i, %.split166.us.i.i.i ], [ %i.ej, %.split.us.i11.i.i.i ], [ %.lcssa33.i.i, %.loopexit42.split.us.i.i.i ], [ %i.dd, %.loopexit43.i.i.i ], [ %i.gx, %.split.us.i21.i.i.i ], [ %.val1.i.i, %.split166.us.i.thread.i.i ]
  %.sroa.4.03.i.i = phi i64 [ %.val1.i.i, %.split166.us.i.i.i ], [ %i.do, %.split.us.i11.i.i.i ], [ %.lcssa33.i.i, %.loopexit42.split.us.i.i.i ], [ %i.dc, %.loopexit43.i.i.i ], [ %i.gw, %.split.us.i21.i.i.i ], [ %.val1.i.i, %.split166.us.i.thread.i.i ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !6305, !noundef !15 ; 2 uses
  %i.ha = sub nuw i64 %.sroa.4.03.i.i, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gz
  store i64 %.sroa.9.0.i.i, ptr %i.gy, align 8, !alias.scope !6305
  br label %_RNvMsl_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_14SplitNInternalReE4nextCs5yxAJGbRKSL_4ring.exit

bb.al:                                            ; preds = %._crit_edge.i13.i.i.i, %._crit_edge.i.i.i.i, %.loopexit44.i.i.i, %bb.r, %bb.q, %.preheader.i.i.i
  store i8 1, ptr %i.d, align 1, !alias.scope !6329
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hd = load i8, ptr %i.hc, align 8, !range !34, !alias.scope !6329, !noundef !15
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %._crit_edge.i.i.i, label %bb.am

._crit_edge.i.i.i:                                ; preds = %bb.al
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !6329
  %.phi.trans.insert2.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i.i.i = load i64, ptr %.phi.trans.insert2.i.i.i, align 8, !alias.scope !6329
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !6329, !noundef !15 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hi = load i64, ptr %i.hh, align 8, !alias.scope !6329, !noundef !15 ; 2 uses
  %.not.i2.i.i = icmp eq i64 %i.hg, %i.hi
  br i1 %.not.i2.i.i, label %_RNvMsl_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_14SplitNInternalReE4nextCs5yxAJGbRKSL_4ring.exit, label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge.i.i.i
  %i.hj = phi i64 [ %.pre3.i.i.i, %._crit_edge.i.i.i ], [ %i.hg, %bb.am ]
  %i.hk = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.hi, %bb.am ] ; 2 uses
  %i.hl = sub nuw i64 %i.hj, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.hk
  br label %_RNvMsl_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_14SplitNInternalReE4nextCs5yxAJGbRKSL_4ring.exit

bb.ao:                                            ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !alias.scope !6303
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !range !34, !alias.scope !6330, !noundef !15
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %_RNvMsl_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_14SplitNInternalReE4nextCs5yxAJGbRKSL_4ring.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i8 1, ptr %i.hn, align 1, !alias.scope !6330
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hr = load i8, ptr %i.hq, align 8, !range !34, !alias.scope !6330, !noundef !15
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %._crit_edge.i.i, label %bb.aq

._crit_edge.i.i:                                  ; preds = %bb.ap
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !6330
  %.phi.trans.insert2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i.i = load i64, ptr %.phi.trans.insert2.i.i, align 8, !alias.scope !6330
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !6330, !noundef !15 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !6330, !noundef !15 ; 2 uses
  %.not.i.i = icmp eq i64 %i.hu, %i.hw
  br i1 %.not.i.i, label %_RNvMsl_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_14SplitNInternalReE4nextCs5yxAJGbRKSL_4ring.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge.i.i
  %i.hx = phi i64 [ %.pre3.i.i, %._crit_edge.i.i ], [ %i.hu, %bb.aq ]
  %i.hy = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.hw, %bb.aq ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i1.i = load ptr, ptr %i.hz, align 8, !alias.scope !6330, !nonnull !15, !noundef !15
  %i.ia = sub nuw i64 %i.hx, %i.hy
  %i.ib = getelementptr inbounds nuw i8, ptr %.val.i1.i, i64 %i.hy
  br label %_RNvMsl_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_14SplitNInternalReE4nextCs5yxAJGbRKSL_4ring.exit

_RNvMsl_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_14SplitNInternalReE4nextCs5yxAJGbRKSL_4ring.exit: ; preds = %bb.a, %bb.b, %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, %bb.am, %bb.an, %bb.ao, %bb.aq, %bb.ar
  %.sroa.4.0.i = phi i64 [ undef, %bb.a ], [ undef, %bb.am ], [ undef, %bb.b ], [ %i.ha, %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ], [ %i.hl, %bb.an ], [ %i.ia, %bb.ar ], [ undef, %bb.aq ], [ undef, %bb.ao ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ null, %bb.am ], [ null, %bb.b ], [ %i.hb, %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ], [ %i.hm, %bb.an ], [ %i.ib, %bb.ar ], [ null, %bb.aq ], [ null, %bb.ao ]
  %i.ic = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.id = insertvalue { ptr, i64 } %i.ic, i64 %.sroa.4.0.i, 1
  ret { ptr, i64 } %i.id
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1o_NtCs3oUPovFnLWP_4core3fmtRhNtB6_8LowerHex3fmtCs5yxAJGbRKSL_4ring(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.b = tail call noundef zeroext i1 @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCs5yxAJGbRKSL_4ring6digestNtB5_6DigestNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs5yxAJGbRKSL_4ring6digest9AlgorithmNtB6_5Debug3fmtBA_, ptr %.sroa.44.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %i.g = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @296, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.g, label %_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_bytes.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 89
  %i.j = load i8, ptr %i.i, align 1, !range !44, !noundef !15
  %i.k = zext nneg i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.01.02.i = phi ptr [ %i.l, %bb.b ], [ %i.o, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6333
  store ptr %.sroa.01.02.i, ptr %i.b, align 8, !noalias !6333, !captures !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6333
  store ptr %i.b, ptr %i.a, align 8, !noalias !6333
  store ptr @_RNvXs1o_NtCs3oUPovFnLWP_4core3fmtRhNtB6_8LowerHex3fmtCs5yxAJGbRKSL_4ring, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !6333
  %i.n = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @177, ptr noundef nonnull %i.a)
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6333
  br label %_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_bytes.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.02.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6333
  %.not3.i = icmp eq ptr %i.o, %i.m
  br i1 %.not3.i, label %_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_bytes.exit, label %bb.c

_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_bytes.exit: ; preds = %bb.e, %bb.a, %bb.d
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ true, %bb.d ], [ false, %bb.e ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCs5yxAJGbRKSL_4ring9agreementNtB5_9PublicKeyNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @279, i64 noundef 9)
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 9, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !6338)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6339)
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6340, !noundef !15 ; 3 uses
  %i.f = icmp ult i64 %i.e, 98
  br i1 %i.f, label %_RNvXs1_NtCs5yxAJGbRKSL_4ring9agreementNtB5_9PublicKeyINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref.exit, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef 97, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #41, !noalias !6340
  unreachable

_RNvXs1_NtCs5yxAJGbRKSL_4ring9agreementNtB5_9PublicKeyINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.h, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @298, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @178)
  %i.j = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs2_NtNtCs5yxAJGbRKSL_4ring2io6writerINtNtCs1xwejQucwHj_5alloc5boxed3BoxShEINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_6WriterE4from(ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 8 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %i.b, align 8, !noundef !15
  %.not = icmp eq i64 %i.f, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @300) #42
          to label %bb.h unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 5 uses
end_hunk_0
begin_hunk_1_@llvm.experimental.cttz.elts.i64.v16i1
!6115 = distinct !{!6115, !20, !21}
!6116 = distinct !{!6116, !20, !21}
!6117 = distinct !{!6117, !21, !20}
!6118 = distinct !{!6118, i1 true, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa7padding3pssNtB1J_3PSSNtB1L_12Verification6verifys_0EB1P_"}
!6119 = distinct !{!6119, !6118, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa7padding3pssNtB1J_3PSSNtB1L_12Verification6verifys_0EB1P_: argument 0"}
!6120 = !{!6099}
!6121 = !{!6101}
!6122 = !{!6103}
!6123 = !{!6108, !6107, !6105}
!6124 = !{!6110, !6108, !6107, !6105}
!6125 = !{!6114, !6112}
!6126 = !{!6119}
!6127 = distinct !{!6127, i1 true, !"_RNvMs_NtCsjVYLllkLn3D_9untrusted6readerNtB4_6Reader10read_bytes"}
!6128 = distinct !{!6128, !6127, !"_RNvMs_NtCsjVYLllkLn3D_9untrusted6readerNtB4_6Reader10read_bytes: argument 0"}
!6129 = !{!6128}
!6130 = distinct !{!6130, i1 true, !"_RNvXs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB5_3KeyNtB7_12EncryptBlock20encrypt_iv_xor_block"}
!6131 = distinct !{!6131, !6130, !"_RNvXs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB5_3KeyNtB7_12EncryptBlock20encrypt_iv_xor_block: argument 3"}
!6132 = distinct !{!6132, !6130, !"_RNvXs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB5_3KeyNtB7_12EncryptBlock20encrypt_iv_xor_block: argument 2"}
!6133 = distinct !{!6133, !6130, !"_RNvXs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB5_3KeyNtB7_12EncryptBlock20encrypt_iv_xor_block: argument 1"}
!6134 = distinct !{!6134, !6130, !"_RNvXs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB5_3KeyNtB7_12EncryptBlock20encrypt_iv_xor_block: argument 0"}
!6135 = distinct !{!6135, i1 true, !"_RNvXs1_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within"}
!6136 = distinct !{!6136, !6135, !"_RNvXs1_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within: argument 1"}
!6137 = distinct !{!6137, i1 true, !"_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvMs4_NtNtBa_3aes3ffiNtB1J_7AES_KEY20ctr32_encrypt_blocks0EBc_"}
!6138 = distinct !{!6138, !6137, !"_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvMs4_NtNtBa_3aes3ffiNtB1J_7AES_KEY20ctr32_encrypt_blocks0EBc_: argument 1"}
!6139 = distinct !{!6139, !6137, !"_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvMs4_NtNtBa_3aes3ffiNtB1J_7AES_KEY20ctr32_encrypt_blocks0EBc_: argument 0"}
!6140 = distinct !{!6140, i1 true, !"_RNCNvMs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes3ffiNtB7_7AES_KEY20ctr32_encrypt_blocks0Bd_"}
!6141 = distinct !{!6141, !6140, !"_RNCNvMs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes3ffiNtB7_7AES_KEY20ctr32_encrypt_blocks0Bd_: argument 0"}
!6142 = !{!6134, !6133, !6132, !6131}
!6143 = !{!6134, !6133, !6131}
!6144 = !{!6141, !6139, !6138, !6136, !6134, !6132, !6131}
!6145 = !{!6133, !6132, !6131}
!6146 = distinct !{!6146, i1 true, !"_RNvXs1_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within"}
!6147 = distinct !{!6147, !6146, !"_RNvXs1_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within: argument 1"}
!6148 = distinct !{!6148, i1 true, !"_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvMs4_NtNtBa_3aes3ffiNtB1J_7AES_KEY20ctr32_encrypt_blocks0EBc_"}
!6149 = distinct !{!6149, !6148, !"_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvMs4_NtNtBa_3aes3ffiNtB1J_7AES_KEY20ctr32_encrypt_blocks0EBc_: argument 1"}
!6150 = distinct !{!6150, !6148, !"_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvMs4_NtNtBa_3aes3ffiNtB1J_7AES_KEY20ctr32_encrypt_blocks0EBc_: argument 0"}
!6151 = distinct !{!6151, i1 true, !"_RNCNvMs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes3ffiNtB7_7AES_KEY20ctr32_encrypt_blocks0Bd_"}
!6152 = distinct !{!6152, !6151, !"_RNCNvMs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes3ffiNtB7_7AES_KEY20ctr32_encrypt_blocks0Bd_: argument 0"}
!6153 = !{!6152, !6150, !6149, !6147}
!6154 = distinct !{!6154, i1 true, !"_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvMs4_NtNtBa_3aes3ffiNtB1J_7AES_KEY20ctr32_encrypt_blocks0EBc_"}
!6155 = distinct !{!6155, !6154, !"_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvMs4_NtNtBa_3aes3ffiNtB1J_7AES_KEY20ctr32_encrypt_blocks0EBc_: argument 0"}
!6156 = distinct !{!6156, i1 true, !"_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_"}
!6157 = distinct !{!6157, !6156, !"_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_: argument 0"}
!6158 = distinct !{!6158, !6154, !"_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvMs4_NtNtBa_3aes3ffiNtB1J_7AES_KEY20ctr32_encrypt_blocks0EBc_: argument 1"}
!6159 = distinct !{!6159, i1 true, !"_RNCNvMs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes3ffiNtB7_7AES_KEY20ctr32_encrypt_blocks0Bd_"}
!6160 = distinct !{!6160, !6159, !"_RNCNvMs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes3ffiNtB7_7AES_KEY20ctr32_encrypt_blocks0Bd_: argument 0"}
!6161 = !{!6155}
!6162 = !{!6157}
!6163 = !{!6157, !6155}
!6164 = !{!6157, !6155, !6158}
!6165 = !{!6160, !6155, !6158}
!6166 = distinct !{!6166, i1 true, !"_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback5ghash"}
!6167 = distinct !{!6167, !6166, !"_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback5ghash: argument 0"}
!6168 = distinct !{!6168, !6166, !"_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback5ghash: argument 1"}
!6169 = distinct !{!6169, i1 true, !"_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback15with_swapped_xiNCNvB2_5ghash0EB8_"}
!6170 = distinct !{!6170, !6169, !"_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback15with_swapped_xiNCNvB2_5ghash0EB8_: argument 0"}
!6171 = distinct !{!6171, i1 true, !"_RNCNCNvNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback5ghash00Bb_"}
!6172 = distinct !{!6172, !6171, !"_RNCNCNvNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback5ghash00Bb_: argument 0"}
!6173 = distinct !{!6173, !6169, !"_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback15with_swapped_xiNCNvB2_5ghash0EB8_: argument 1"}
!6174 = distinct !{!6174, i1 true, !"_RNCNvNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback5ghash0B9_"}
!6175 = distinct !{!6175, !6174, !"_RNCNvNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback5ghash0B9_: argument 1"}
!6176 = distinct !{!6176, !6174, !"_RNCNvNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback5ghash0B9_: argument 0"}
!6177 = distinct !{!6177, i1 true, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterAhj10_ENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNCNvNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback5ghash00EB1X_"}
!6178 = distinct !{!6178, !6177, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterAhj10_ENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNCNvNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback5ghash00EB1X_: argument 1"}
!6179 = distinct !{!6179, !6177, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterAhj10_ENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNCNvNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback5ghash00EB1X_: argument 0"}
!6180 = distinct !{!6180, i1 true, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs5yxAJGbRKSL_4ring"}
!6181 = distinct !{!6181, !6180, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs5yxAJGbRKSL_4ring: argument 1"}
!6182 = distinct !{!6182, !6180, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs5yxAJGbRKSL_4ring: argument 0"}
!6183 = distinct !{!6183, i1 true, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs5yxAJGbRKSL_4ring"}
!6184 = distinct !{!6184, !6183, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs5yxAJGbRKSL_4ring: argument 1"}
!6185 = distinct !{!6185, !6183, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs5yxAJGbRKSL_4ring: argument 0"}
!6186 = !{!6167}
!6187 = !{!6168}
!6188 = !{!6170}
!6189 = !{!6170, !6167}
!6190 = !{!6172, !6168}
!6191 = !{!6179, !6178, !6176, !6175, !6170, !6173}
!6192 = !{!6182, !6181, !6170, !6167}
!6193 = !{!6185, !6184, !6170, !6167}
!6194 = distinct !{!6194, i1 true, !"_RNvXs3_NtCs5yxAJGbRKSL_4ring4hmacNtB5_3KeyINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB7_4hkdf3OkmNtB5_9AlgorithmEE4from"}
!6195 = distinct !{!6195, !6194, !"_RNvXs3_NtCs5yxAJGbRKSL_4ring4hmacNtB5_3KeyINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB7_4hkdf3OkmNtB5_9AlgorithmEE4from: argument 1"}
!6196 = distinct !{!6196, !6194, !"_RNvXs3_NtCs5yxAJGbRKSL_4ring4hmacNtB5_3KeyINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB7_4hkdf3OkmNtB5_9AlgorithmEE4from: argument 0"}
!6197 = distinct !{!6197, i1 true, !"_RINvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB6_3Key9constructNCNvXs3_B6_Bw_INtNtCs3oUPovFnLWP_4core7convert4FromINtNtB8_4hkdf3OkmNtB6_9AlgorithmEE4from0EB8_"}
!6198 = distinct !{!6198, !6197, !"_RINvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB6_3Key9constructNCNvXs3_B6_Bw_INtNtCs3oUPovFnLWP_4core7convert4FromINtNtB8_4hkdf3OkmNtB6_9AlgorithmEE4from0EB8_: argument 1"}
!6199 = distinct !{!6199, !6197, !"_RINvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB6_3Key9constructNCNvXs3_B6_Bw_INtNtCs3oUPovFnLWP_4core7convert4FromINtNtB8_4hkdf3OkmNtB6_9AlgorithmEE4from0EB8_: argument 2"}
!6200 = distinct !{!6200, !6197, !"_RINvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB6_3Key9constructNCNvXs3_B6_Bw_INtNtCs3oUPovFnLWP_4core7convert4FromINtNtB8_4hkdf3OkmNtB6_9AlgorithmEE4from0EB8_: argument 0"}
!6201 = distinct !{!6201, i1 true, !"_RNCNvXs3_NtCs5yxAJGbRKSL_4ring4hmacNtB7_3KeyINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB9_4hkdf3OkmNtB7_9AlgorithmEE4from0B9_"}
!6202 = distinct !{!6202, !6201, !"_RNCNvXs3_NtCs5yxAJGbRKSL_4ring4hmacNtB7_3KeyINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB9_4hkdf3OkmNtB7_9AlgorithmEE4from0B9_: argument 0"}
!6203 = distinct !{!6203, i1 true, !"_RNvMs4_NtCs5yxAJGbRKSL_4ring4hkdfINtB5_3OkmNtNtB7_4hmac9AlgorithmE4fillB7_"}
!6204 = distinct !{!6204, !6203, !"_RNvMs4_NtCs5yxAJGbRKSL_4ring4hkdfINtB5_3OkmNtNtB7_4hmac9AlgorithmE4fillB7_: argument 0"}
!6205 = distinct !{!6205, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs5yxAJGbRKSL_4ring4hmac3KeyNtNtNtBL_5error11unspecified11UnspecifiedE6unwrapBL_"}
!6206 = distinct !{!6206, !6205, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs5yxAJGbRKSL_4ring4hmac3KeyNtNtNtBL_5error11unspecified11UnspecifiedE6unwrapBL_: argument 1"}
!6207 = distinct !{!6207, !6205, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs5yxAJGbRKSL_4ring4hmac3KeyNtNtNtBL_5error11unspecified11UnspecifiedE6unwrapBL_: argument 0"}
!6208 = !{!6196, !6195}
!6209 = !{!6198}
!6210 = !{!6200, !6198, !6199, !6196, !6195}
!6211 = !{!6204, !6202, !6200, !6198, !6199, !6196, !6195}
!6212 = !{!6200, !6199, !6196, !6195}
!6213 = !{!6207, !6206, !6196, !6195}
!6214 = distinct !{!6214, i1 true, !"_RNvXs0_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB5_9PublicKeyINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref"}
!6215 = distinct !{!6215, !6214, !"_RNvXs0_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB5_9PublicKeyINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref: argument 0"}
!6216 = !{!6215}
!6217 = distinct !{!6217, i1 true, !"_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_tuple"}
!6218 = distinct !{!6218, !6217, !"_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_tuple: argument 0"}
!6219 = distinct !{!6219, i1 true, !"_RNvXs_NtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB4_9PublicKeyINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref"}
!6220 = distinct !{!6220, !6219, !"_RNvXs_NtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB4_9PublicKeyINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref: argument 0"}
!6221 = !{!6218}
!6222 = !{!6220}
!6223 = distinct !{!6223, i1 true, !"_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvMs4_NtNtBa_3aes3ffiNtB1J_7AES_KEY20ctr32_encrypt_blocks0EBc_"}
!6224 = distinct !{!6224, !6223, !"_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvMs4_NtNtBa_3aes3ffiNtB1J_7AES_KEY20ctr32_encrypt_blocks0EBc_: argument 0"}
!6225 = distinct !{!6225, i1 true, !"_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_"}
!6226 = distinct !{!6226, !6225, !"_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_: argument 0"}
!6227 = distinct !{!6227, !6223, !"_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvMs4_NtNtBa_3aes3ffiNtB1J_7AES_KEY20ctr32_encrypt_blocks0EBc_: argument 1"}
!6228 = distinct !{!6228, i1 true, !"_RNCNvMs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes3ffiNtB7_7AES_KEY20ctr32_encrypt_blocks0Bd_"}
!6229 = distinct !{!6229, !6228, !"_RNCNvMs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes3ffiNtB7_7AES_KEY20ctr32_encrypt_blocks0Bd_: argument 0"}
!6230 = !{!6224}
!6231 = !{!6226}
!6232 = !{!6226, !6224}
!6233 = !{!6226, !6224, !6227}
!6234 = !{!6229, !6224, !6227}
!6235 = distinct !{!6235, i1 true, !"_RNvXNtCs5yxAJGbRKSL_4ring2ecNtB2_5CurveNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt"}
!6236 = distinct !{!6236, !6235, !"_RNvXNtCs5yxAJGbRKSL_4ring2ecNtB2_5CurveNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt: argument 0"}
!6237 = !{!6236}
!6238 = distinct !{!6238, i1 true, !"_RNvXsh_NtCs5yxAJGbRKSL_4ring6digestNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt"}
!6239 = distinct !{!6239, !6238, !"_RNvXsh_NtCs5yxAJGbRKSL_4ring6digestNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt: argument 0"}
!6240 = !{!6239}
!6241 = distinct !{!6241, i1 true, !"_RNvXs7_NtCs5yxAJGbRKSL_4ring9agreementNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt"}
!6242 = distinct !{!6242, !6241, !"_RNvXs7_NtCs5yxAJGbRKSL_4ring9agreementNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt: argument 1"}
!6243 = distinct !{!6243, !6241, !"_RNvXs7_NtCs5yxAJGbRKSL_4ring9agreementNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt: argument 0"}
!6244 = !{!6243, !6242}
!6245 = !{!6243}
!6246 = distinct !{!6246, i1 true, !"_RNvXs2_NtNtCs5yxAJGbRKSL_4ring4aead9algorithmNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt"}
!6247 = distinct !{!6247, !6246, !"_RNvXs2_NtNtCs5yxAJGbRKSL_4ring4aead9algorithmNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt: argument 0"}
!6248 = !{!6247}
!6249 = distinct !{!6249, i1 true, !"_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs5yxAJGbRKSL_4ring6digest9AlgorithmNtB6_5Debug3fmtBA_"}
!6250 = distinct !{!6250, !6249, !"_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs5yxAJGbRKSL_4ring6digest9AlgorithmNtB6_5Debug3fmtBA_: argument 0"}
!6251 = distinct !{!6251, i1 true, !"_RNvXsh_NtCs5yxAJGbRKSL_4ring6digestNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt"}
!6252 = distinct !{!6252, !6251, !"_RNvXsh_NtCs5yxAJGbRKSL_4ring6digestNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt: argument 0"}
!6253 = distinct !{!6253, !6249, !"_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs5yxAJGbRKSL_4ring6digest9AlgorithmNtB6_5Debug3fmtBA_: argument 1"}
!6254 = !{!6250}
!6255 = !{!6252}
!6256 = !{!6250, !6253}
!6257 = !{!6252, !6250}
!6258 = distinct !{!6258, i1 true, !"_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRShNtB6_5Debug3fmtCs5yxAJGbRKSL_4ring"}
!6259 = distinct !{!6259, !6258, !"_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRShNtB6_5Debug3fmtCs5yxAJGbRKSL_4ring: argument 0"}
!6260 = distinct !{!6260, i1 true, !"_RNvXsr_NtCs3oUPovFnLWP_4core3fmtShNtB5_5Debug3fmtCs5yxAJGbRKSL_4ring"}
!6261 = distinct !{!6261, !6260, !"_RNvXsr_NtCs3oUPovFnLWP_4core3fmtShNtB5_5Debug3fmtCs5yxAJGbRKSL_4ring: argument 1"}
!6262 = distinct !{!6262, !6260, !"_RNvXsr_NtCs3oUPovFnLWP_4core3fmtShNtB5_5Debug3fmtCs5yxAJGbRKSL_4ring: argument 0"}
!6263 = distinct !{!6263, i1 true, !"_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs5yxAJGbRKSL_4ring"}
!6264 = distinct !{!6264, !6263, !"_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs5yxAJGbRKSL_4ring: argument 0"}
!6265 = !{!6262, !6261, !6259}
!6266 = !{!6262}
!6267 = !{!6264, !6262, !6261, !6259}
!6268 = distinct !{!6268, i1 true, !"_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt"}
!6269 = distinct !{!6269, !6268, !"_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt: argument 1"}
!6270 = !{!6269}
!6271 = distinct !{!6271, i1 true, !"_RNvMsl_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_14SplitNInternalReE4nextCs5yxAJGbRKSL_4ring"}
!6272 = distinct !{!6272, !6271, !"_RNvMsl_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_14SplitNInternalReE4nextCs5yxAJGbRKSL_4ring: argument 0"}
!6273 = distinct !{!6273, i1 true, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE4nextCs5yxAJGbRKSL_4ring"}
!6274 = distinct !{!6274, !6273, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE4nextCs5yxAJGbRKSL_4ring: argument 0"}
!6275 = distinct !{!6275, i1 true, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match"}
!6276 = distinct !{!6276, !6275, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 1"}
!6277 = distinct !{!6277, i1 true, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!6278 = distinct !{!6278, !6277, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!6279 = distinct !{!6279, i1 true, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!6280 = distinct !{!6280, !6279, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!6281 = distinct !{!6281, !6275, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 0"}
!6282 = distinct !{!6282, i1 true, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!6283 = distinct !{!6283, !6282, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!6284 = distinct !{!6284, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5yxAJGbRKSL_4ring"}
!6285 = distinct !{!6285, !6284, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5yxAJGbRKSL_4ring: argument 0"}
!6286 = distinct !{!6286, !6282, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!6287 = distinct !{!6287, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr"}
!6288 = distinct !{!6288, !6287, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr: argument 0"}
!6289 = distinct !{!6289, i1 true, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5yxAJGbRKSL_4ring"}
!6290 = distinct !{!6290, !6289, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5yxAJGbRKSL_4ring: argument 1"}
!6291 = distinct !{!6291, !6289, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5yxAJGbRKSL_4ring: argument 2"}
!6292 = distinct !{!6292, !6289, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5yxAJGbRKSL_4ring: argument 3"}
!6293 = distinct !{!6293, !6289, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5yxAJGbRKSL_4ring: argument 0"}
!6294 = distinct !{!6294, i1 true, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5yxAJGbRKSL_4ring"}
!6295 = distinct !{!6295, !6294, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5yxAJGbRKSL_4ring: argument 1"}
!6296 = distinct !{!6296, !6294, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5yxAJGbRKSL_4ring: argument 2"}
!6297 = distinct !{!6297, !6294, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5yxAJGbRKSL_4ring: argument 3"}
!6298 = distinct !{!6298, !6294, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5yxAJGbRKSL_4ring: argument 0"}
!6299 = distinct !{!6299, i1 true, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE7get_endCs5yxAJGbRKSL_4ring"}
!6300 = distinct !{!6300, !6299, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE7get_endCs5yxAJGbRKSL_4ring: argument 0"}
!6301 = distinct !{!6301, i1 true, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE7get_endCs5yxAJGbRKSL_4ring"}
!6302 = distinct !{!6302, !6301, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE7get_endCs5yxAJGbRKSL_4ring: argument 0"}
!6303 = !{!6272}
!6304 = !{!6274}
!6305 = !{!6274, !6272}
!6306 = !{!6276}
!6307 = !{!6276, !6274, !6272}
!6308 = !{!6278}
!6309 = !{!6280}
!6310 = !{!6283, !6278, !6281, !6276, !6274, !6272}
!6311 = !{!6285, !6283, !6278, !6281, !6276, !6274, !6272}
!6312 = !{!6278, !6276, !6274, !6272}
!6313 = !{!6286}
!6314 = !{!6283, !6286, !6281, !6276, !6274, !6272}
!6315 = !{!6286, !6276, !6274, !6272}
!6316 = !{!6285, !6283, !6286, !6281, !6276, !6274, !6272}
!6317 = !{!6281, !6276, !6274, !6272}
!6318 = !{!6288}
!6319 = !{!6290}
!6320 = !{!6291}
!6321 = !{!6292}
!6322 = !{!6290, !6276, !6274, !6272}
!6323 = !{!6293, !6290, !6291, !6292, !6281, !6276, !6274, !6272}
!6324 = !{!6295}
!6325 = !{!6296}
!6326 = !{!6297}
!6327 = !{!6295, !6276, !6274, !6272}
!6328 = !{!6298, !6295, !6296, !6297, !6281, !6276, !6274, !6272}
!6329 = !{!6300, !6274, !6272}
!6330 = !{!6302, !6272}
!6331 = distinct !{!6331, i1 true, !"_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_bytes"}
!6332 = distinct !{!6332, !6331, !"_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_bytes: argument 0"}
!6333 = !{!6332}
!6334 = distinct !{!6334, i1 true, !"_RNvXs1_NtCs5yxAJGbRKSL_4ring9agreementNtB5_9PublicKeyINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref"}
!6335 = distinct !{!6335, !6334, !"_RNvXs1_NtCs5yxAJGbRKSL_4ring9agreementNtB5_9PublicKeyINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref: argument 0"}
!6336 = distinct !{!6336, i1 true, !"_RNvXs0_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB5_9PublicKeyINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref"}
!6337 = distinct !{!6337, !6336, !"_RNvXs0_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB5_9PublicKeyINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref: argument 0"}
!6338 = !{!6335}
!6339 = !{!6337}
!6340 = !{!6337, !6335}
!6341 = distinct !{!6341, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE16into_boxed_sliceCs5yxAJGbRKSL_4ring"}
!6342 = distinct !{!6342, !6341, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE16into_boxed_sliceCs5yxAJGbRKSL_4ring: argument 0"}
!6343 = distinct !{!6343, i1 true, !"_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs5yxAJGbRKSL_4ring"}
!6344 = distinct !{!6344, !6343, !"_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs5yxAJGbRKSL_4ring: argument 0"}
!6345 = distinct !{!6345, i1 true, !"_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs5yxAJGbRKSL_4ring"}
!6346 = distinct !{!6346, !6345, !"_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs5yxAJGbRKSL_4ring: argument 0"}
!6347 = !{!6346, !6344, !6342}
!6348 = !{!6342}
!6349 = distinct !{!6349, i1 true, !"_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6finish"}
!6350 = distinct !{!6350, !6349, !"_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6finish: argument 0"}
!6351 = distinct !{!6351, !6349, !"_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6finish: argument 1"}
!6352 = distinct !{!6352, i1 true, !"_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context10try_finish"}
!6353 = distinct !{!6353, !6352, !"_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context10try_finish: argument 1"}
!6354 = distinct !{!6354, !6352, !"_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context10try_finish: argument 0"}
!6355 = distinct !{!6355, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs5yxAJGbRKSL_4ring6digest6DigestNtNtNtBL_5error11unspecified11UnspecifiedE6unwrapBL_"}
!6356 = distinct !{!6356, !6355, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs5yxAJGbRKSL_4ring6digest6DigestNtNtNtBL_5error11unspecified11UnspecifiedE6unwrapBL_: argument 1"}
!6357 = distinct !{!6357, !6355, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs5yxAJGbRKSL_4ring6digest6DigestNtNtNtBL_5error11unspecified11UnspecifiedE6unwrapBL_: argument 0"}
!6358 = distinct !{!6358, i1 true, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs5yxAJGbRKSL_4ring"}
!6359 = distinct !{!6359, !6358, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs5yxAJGbRKSL_4ring: argument 0"}
!6360 = distinct !{!6360, !6358, !"_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs5yxAJGbRKSL_4ring: argument 1"}
!6361 = !{!6350}
!6362 = !{!6350, !6351}
!6363 = !{!6354, !6353, !6350, !6351}
!6364 = !{!6354, !6350}
!6365 = !{!6353, !6350, !6351}
!6366 = !{!6357, !6356, !6350}
!6367 = !{!6351}
!6368 = !{!6357}
!6369 = !{!6356}
!6370 = !{!6359}
!6371 = !{!6360}
!6372 = !{!6359, !6360}
!6373 = distinct !{!6373, i1 true, !"_RNvXs3_NtCs5yxAJGbRKSL_4ring4hmacNtB5_3KeyINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB7_4hkdf3OkmNtB5_9AlgorithmEE4from"}
!6374 = distinct !{!6374, !6373, !"_RNvXs3_NtCs5yxAJGbRKSL_4ring4hmacNtB5_3KeyINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB7_4hkdf3OkmNtB5_9AlgorithmEE4from: argument 1"}
!6375 = distinct !{!6375, !6373, !"_RNvXs3_NtCs5yxAJGbRKSL_4ring4hmacNtB5_3KeyINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB7_4hkdf3OkmNtB5_9AlgorithmEE4from: argument 0"}
!6376 = distinct !{!6376, i1 true, !"_RINvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB6_3Key9constructNCNvXs3_B6_Bw_INtNtCs3oUPovFnLWP_4core7convert4FromINtNtB8_4hkdf3OkmNtB6_9AlgorithmEE4from0EB8_"}
!6377 = distinct !{!6377, !6376, !"_RINvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB6_3Key9constructNCNvXs3_B6_Bw_INtNtCs3oUPovFnLWP_4core7convert4FromINtNtB8_4hkdf3OkmNtB6_9AlgorithmEE4from0EB8_: argument 1"}
!6378 = distinct !{!6378, !6376, !"_RINvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB6_3Key9constructNCNvXs3_B6_Bw_INtNtCs3oUPovFnLWP_4core7convert4FromINtNtB8_4hkdf3OkmNtB6_9AlgorithmEE4from0EB8_: argument 2"}
!6379 = distinct !{!6379, !6376, !"_RINvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB6_3Key9constructNCNvXs3_B6_Bw_INtNtCs3oUPovFnLWP_4core7convert4FromINtNtB8_4hkdf3OkmNtB6_9AlgorithmEE4from0EB8_: argument 0"}
!6380 = distinct !{!6380, i1 true, !"_RNCNvXs3_NtCs5yxAJGbRKSL_4ring4hmacNtB7_3KeyINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB9_4hkdf3OkmNtB7_9AlgorithmEE4from0B9_"}
!6381 = distinct !{!6381, !6380, !"_RNCNvXs3_NtCs5yxAJGbRKSL_4ring4hmacNtB7_3KeyINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB9_4hkdf3OkmNtB7_9AlgorithmEE4from0B9_: argument 0"}
!6382 = distinct !{!6382, i1 true, !"_RNvMs4_NtCs5yxAJGbRKSL_4ring4hkdfINtB5_3OkmNtNtB7_4hmac9AlgorithmE4fillB7_"}
!6383 = distinct !{!6383, !6382, !"_RNvMs4_NtCs5yxAJGbRKSL_4ring4hkdfINtB5_3OkmNtNtB7_4hmac9AlgorithmE4fillB7_: argument 0"}
!6384 = distinct !{!6384, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs5yxAJGbRKSL_4ring4hmac3KeyNtNtNtBL_5error11unspecified11UnspecifiedE6unwrapBL_"}
!6385 = distinct !{!6385, !6384, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs5yxAJGbRKSL_4ring4hmac3KeyNtNtNtBL_5error11unspecified11UnspecifiedE6unwrapBL_: argument 1"}
!6386 = distinct !{!6386, !6384, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs5yxAJGbRKSL_4ring4hmac3KeyNtNtNtBL_5error11unspecified11UnspecifiedE6unwrapBL_: argument 0"}
!6387 = !{!6375, !6374}
!6388 = !{!6377}
!6389 = !{!6379, !6377, !6378, !6375, !6374}
!6390 = !{!6383, !6381, !6379, !6377, !6378, !6375, !6374}
!6391 = !{!6379, !6378, !6375, !6374}
!6392 = !{!6386, !6385, !6375, !6374}
!6393 = distinct !{!6393, i1 true, !"_RINvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB6_3Key9constructNCNvXs3_B6_Bw_INtNtCs3oUPovFnLWP_4core7convert4FromINtNtB8_4hkdf3OkmNtB6_9AlgorithmEE4from0EB8_"}
!6394 = distinct !{!6394, !6393, !"_RINvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB6_3Key9constructNCNvXs3_B6_Bw_INtNtCs3oUPovFnLWP_4core7convert4FromINtNtB8_4hkdf3OkmNtB6_9AlgorithmEE4from0EB8_: argument 1"}
!6395 = distinct !{!6395, !6393, !"_RINvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB6_3Key9constructNCNvXs3_B6_Bw_INtNtCs3oUPovFnLWP_4core7convert4FromINtNtB8_4hkdf3OkmNtB6_9AlgorithmEE4from0EB8_: argument 2"}
!6396 = distinct !{!6396, !6393, !"_RINvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB6_3Key9constructNCNvXs3_B6_Bw_INtNtCs3oUPovFnLWP_4core7convert4FromINtNtB8_4hkdf3OkmNtB6_9AlgorithmEE4from0EB8_: argument 0"}
!6397 = distinct !{!6397, i1 true, !"_RNCNvXs3_NtCs5yxAJGbRKSL_4ring4hmacNtB7_3KeyINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB9_4hkdf3OkmNtB7_9AlgorithmEE4from0B9_"}
!6398 = distinct !{!6398, !6397, !"_RNCNvXs3_NtCs5yxAJGbRKSL_4ring4hmacNtB7_3KeyINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB9_4hkdf3OkmNtB7_9AlgorithmEE4from0B9_: argument 0"}
!6399 = distinct !{!6399, i1 true, !"_RNvMs4_NtCs5yxAJGbRKSL_4ring4hkdfINtB5_3OkmNtNtB7_4hmac9AlgorithmE4fillB7_"}
!6400 = distinct !{!6400, !6399, !"_RNvMs4_NtCs5yxAJGbRKSL_4ring4hkdfINtB5_3OkmNtNtB7_4hmac9AlgorithmE4fillB7_: argument 0"}
!6401 = distinct !{!6401, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs5yxAJGbRKSL_4ring4hmac3KeyNtNtNtBL_5error11unspecified11UnspecifiedE6unwrapBL_"}
!6402 = distinct !{!6402, !6401, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs5yxAJGbRKSL_4ring4hmac3KeyNtNtNtBL_5error11unspecified11UnspecifiedE6unwrapBL_: argument 1"}
!6403 = distinct !{!6403, !6401, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs5yxAJGbRKSL_4ring4hmac3KeyNtNtNtBL_5error11unspecified11UnspecifiedE6unwrapBL_: argument 0"}
!6404 = !{!6394}
!6405 = !{!6395}
!6406 = !{!6396, !6394, !6395}
!6407 = !{!6398}
!6408 = !{!6400}
!6409 = !{!6400, !6398, !6395}
!6410 = !{!6400, !6398, !6396, !6394, !6395}
!6411 = !{!6396, !6395}
!6412 = !{!6403, !6402}
!6413 = distinct !{!6413, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs5yxAJGbRKSL_4ring"}
!6414 = distinct !{!6414, !6413, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs5yxAJGbRKSL_4ring: argument 0"}
!6415 = !{!6414}
!6416 = distinct !{!6416, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs5yxAJGbRKSL_4ring"}
!6417 = distinct !{!6417, !6416, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs5yxAJGbRKSL_4ring: argument 0"}
!6418 = distinct !{!6418, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5yxAJGbRKSL_4ring"}
!6419 = distinct !{!6419, !6418, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5yxAJGbRKSL_4ring: argument 0"}
!6420 = !{!6417}
!6421 = !{!6419, !6417}
!6422 = distinct !{!6422, i1 true, !"_RNvXs3_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptBlock20encrypt_iv_xor_block"}
!6423 = distinct !{!6423, !6422, !"_RNvXs3_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptBlock20encrypt_iv_xor_block: argument 3"}
!6424 = distinct !{!6424, !6422, !"_RNvXs3_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptBlock20encrypt_iv_xor_block: argument 2"}
!6425 = distinct !{!6425, !6422, !"_RNvXs3_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptBlock20encrypt_iv_xor_block: argument 1"}
!6426 = distinct !{!6426, !6422, !"_RNvXs3_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptBlock20encrypt_iv_xor_block: argument 0"}
!6427 = !{!6426, !6425, !6424, !6423}
!6428 = !{!6426, !6425, !6423}
!6429 = !{!6426, !6424, !6423}
!6430 = !{!6425, !6424, !6423}
!6431 = distinct !{!6431, i1 true, !"_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_"}
!6432 = distinct !{!6432, !6431, !"_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_: argument 0"}
!6433 = distinct !{!6433, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring"}
!6434 = distinct !{!6434, !6433, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring: argument 0"}
!6435 = distinct !{!6435, i1 true, !"_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_8Schedule17expand_round_keys"}
!6436 = distinct !{!6436, !6435, !"_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_8Schedule17expand_round_keys: argument 0"}
!6437 = distinct !{!6437, !6435, !"_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_8Schedule17expand_round_keys: argument 1"}
!6438 = distinct !{!6438, i1 true, !"_RINvNtCs3oUPovFnLWP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback5BatchEKjf_NCINvMBJ_BG_10wrap_mut_1jNCNvMs1_B1p_NtB1p_8Schedule17expand_round_keys0E0EB1v_"}
!6439 = distinct !{!6439, !6438, !"_RINvNtCs3oUPovFnLWP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback5BatchEKjf_NCINvMBJ_BG_10wrap_mut_1jNCNvMs1_B1p_NtB1p_8Schedule17expand_round_keys0E0EB1v_: argument 1"}
!6440 = distinct !{!6440, !6438, !"_RINvNtCs3oUPovFnLWP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback5BatchEKjf_NCINvMBJ_BG_10wrap_mut_1jNCNvMs1_B1p_NtB1p_8Schedule17expand_round_keys0E0EB1v_: argument 0"}
!6441 = distinct !{!6441, i1 true, !"_RINvNtCs3oUPovFnLWP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback5BatchENCINvMBQ_BN_10wrap_mut_1jNCNvMs1_B1w_NtB1w_8Schedule17expand_round_keys0E0EB1C_"}
!6442 = distinct !{!6442, !6441, !"_RINvNtCs3oUPovFnLWP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback5BatchENCINvMBQ_BN_10wrap_mut_1jNCNvMs1_B1w_NtB1w_8Schedule17expand_round_keys0E0EB1C_: argument 0"}
!6443 = distinct !{!6443, !6441, !"_RINvNtCs3oUPovFnLWP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback5BatchENCINvMBQ_BN_10wrap_mut_1jNCNvMs1_B1w_NtB1w_8Schedule17expand_round_keys0E0EB1C_: argument 1"}
!6444 = distinct !{!6444, i1 true, !"_RNCINvMNtNtCs3oUPovFnLWP_4core3ops9try_traitINtB5_17NeverShortCircuitNtNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback5BatchE10wrap_mut_1jNCNvMs1_B17_NtB17_8Schedule17expand_round_keys0E0B1d_"}
!6445 = distinct !{!6445, !6444, !"_RNCINvMNtNtCs3oUPovFnLWP_4core3ops9try_traitINtB5_17NeverShortCircuitNtNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback5BatchE10wrap_mut_1jNCNvMs1_B17_NtB17_8Schedule17expand_round_keys0E0B1d_: argument 1"}
!6446 = distinct !{!6446, !6444, !"_RNCINvMNtNtCs3oUPovFnLWP_4core3ops9try_traitINtB5_17NeverShortCircuitNtNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback5BatchE10wrap_mut_1jNCNvMs1_B17_NtB17_8Schedule17expand_round_keys0E0B1d_: argument 0"}
!6447 = distinct !{!6447, i1 true, !"_RNCNvMs1_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB7_8Schedule17expand_round_keys0Bd_"}
!6448 = distinct !{!6448, !6447, !"_RNCNvMs1_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB7_8Schedule17expand_round_keys0Bd_: argument 1"}
!6449 = distinct !{!6449, !6447, !"_RNCNvMs1_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB7_8Schedule17expand_round_keys0Bd_: argument 0"}
!6450 = distinct !{!6450, i1 true, !"_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_5Batch7encrypt"}
!6451 = distinct !{!6451, !6450, !"_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_5Batch7encrypt: argument 0"}
!6452 = distinct !{!6452, !6450, !"_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_5Batch7encrypt: argument 1"}
!6453 = distinct !{!6453, i1 true, !"_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB4_5Batch13add_round_key"}
!6454 = distinct !{!6454, !6453, !"_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB4_5Batch13add_round_key: argument 0"}
!6455 = distinct !{!6455, !6453, !"_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB4_5Batch13add_round_key: argument 1"}
!6456 = distinct !{!6456, i1 true, !"_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutyEINtB10_4IteryEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQyRyENCINvNtCs5yxAJGbRKSL_4ring2bb19xor_assign_at_startQAyj8_RB3X_E0E0EB3f_"}
!6457 = distinct !{!6457, !6456, !"_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutyEINtB10_4IteryEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQyRyENCINvNtCs5yxAJGbRKSL_4ring2bb19xor_assign_at_startQAyj8_RB3X_E0E0EB3f_: argument 0"}
!6458 = distinct !{!6458, i1 true, !"_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callTQyRyENCINvNtCs5yxAJGbRKSL_4ring2bb19xor_assign_at_startQAyj8_RB2a_E0E0B1s_"}
!6459 = distinct !{!6459, !6458, !"_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callTQyRyENCINvNtCs5yxAJGbRKSL_4ring2bb19xor_assign_at_startQAyj8_RB2a_E0E0B1s_: argument 0"}
!6460 = distinct !{!6460, i1 true, !"_RNCINvNtCs5yxAJGbRKSL_4ring2bb19xor_assign_at_startQAyj8_RBO_E0B6_"}
!6461 = distinct !{!6461, !6460, !"_RNCINvNtCs5yxAJGbRKSL_4ring2bb19xor_assign_at_startQAyj8_RBO_E0B6_: argument 0"}
!6462 = distinct !{!6462, i1 true, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback5BatchENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMs0_BS_BQ_7encrypt0EBY_"}
!6463 = distinct !{!6463, !6462, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback5BatchENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMs0_BS_BQ_7encrypt0EBY_: argument 0"}
!6464 = distinct !{!6464, i1 true, !"_RNCNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB7_5Batch7encrypt0Bd_"}
!6465 = distinct !{!6465, !6464, !"_RNCNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB7_5Batch7encrypt0Bd_: argument 0"}
!6466 = distinct !{!6466, i1 true, !"_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_5Batch11mix_columns"}
!6467 = distinct !{!6467, !6466, !"_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_5Batch11mix_columns: argument 0"}
!6468 = distinct !{!6468, i1 true, !"_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB4_5Batch13add_round_key"}
!6469 = distinct !{!6469, !6468, !"_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB4_5Batch13add_round_key: argument 0"}
!6470 = distinct !{!6470, !6468, !"_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB4_5Batch13add_round_key: argument 1"}
!6471 = distinct !{!6471, i1 true, !"_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutyEINtB10_4IteryEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQyRyENCINvNtCs5yxAJGbRKSL_4ring2bb19xor_assign_at_startQAyj8_RB3X_E0E0EB3f_"}
!6472 = distinct !{!6472, !6471, !"_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutyEINtB10_4IteryEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQyRyENCINvNtCs5yxAJGbRKSL_4ring2bb19xor_assign_at_startQAyj8_RB3X_E0E0EB3f_: argument 0"}
!6473 = distinct !{!6473, i1 true, !"_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callTQyRyENCINvNtCs5yxAJGbRKSL_4ring2bb19xor_assign_at_startQAyj8_RB2a_E0E0B1s_"}
!6474 = distinct !{!6474, !6473, !"_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callTQyRyENCINvNtCs5yxAJGbRKSL_4ring2bb19xor_assign_at_startQAyj8_RB2a_E0E0B1s_: argument 0"}
!6475 = distinct !{!6475, i1 true, !"_RNCINvNtCs5yxAJGbRKSL_4ring2bb19xor_assign_at_startQAyj8_RBO_E0B6_"}
!6476 = distinct !{!6476, !6475, !"_RNCINvNtCs5yxAJGbRKSL_4ring2bb19xor_assign_at_startQAyj8_RBO_E0B6_: argument 0"}
!6477 = distinct !{!6477, i1 true, !"_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB4_5Batch13add_round_key"}
!6478 = distinct !{!6478, !6477, !"_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB4_5Batch13add_round_key: argument 0"}
!6479 = distinct !{!6479, !6477, !"_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB4_5Batch13add_round_key: argument 1"}
!6480 = distinct !{!6480, i1 true, !"_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutyEINtB10_4IteryEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQyRyENCINvNtCs5yxAJGbRKSL_4ring2bb19xor_assign_at_startQAyj8_RB3X_E0E0EB3f_"}
!6481 = distinct !{!6481, !6480, !"_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutyEINtB10_4IteryEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQyRyENCINvNtCs5yxAJGbRKSL_4ring2bb19xor_assign_at_startQAyj8_RB3X_E0E0EB3f_: argument 0"}
!6482 = distinct !{!6482, i1 true, !"_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callTQyRyENCINvNtCs5yxAJGbRKSL_4ring2bb19xor_assign_at_startQAyj8_RB2a_E0E0B1s_"}
!6483 = distinct !{!6483, !6482, !"_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callTQyRyENCINvNtCs5yxAJGbRKSL_4ring2bb19xor_assign_at_startQAyj8_RB2a_E0E0B1s_: argument 0"}
!6484 = distinct !{!6484, i1 true, !"_RNCINvNtCs5yxAJGbRKSL_4ring2bb19xor_assign_at_startQAyj8_RBO_E0B6_"}
!6485 = distinct !{!6485, !6484, !"_RNCINvNtCs5yxAJGbRKSL_4ring2bb19xor_assign_at_startQAyj8_RBO_E0B6_: argument 0"}
!6486 = distinct !{!6486, i1 true, !"_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE8split_atNCINvB2_17split_first_chunkKj10_NCNvXs4_NtNtBa_3aes8fallbackNtB20_3KeyNtB22_12EncryptCtr3220ctr32_encrypt_within0E0EBc_"}
!6487 = distinct !{!6487, !6486, !"_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE8split_atNCINvB2_17split_first_chunkKj10_NCNvXs4_NtNtBa_3aes8fallbackNtB20_3KeyNtB22_12EncryptCtr3220ctr32_encrypt_within0E0EBc_: argument 2"}
!6488 = distinct !{!6488, !6486, !"_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE8split_atNCINvB2_17split_first_chunkKj10_NCNvXs4_NtNtBa_3aes8fallbackNtB20_3KeyNtB22_12EncryptCtr3220ctr32_encrypt_within0E0EBc_: argument 1"}
!6489 = distinct !{!6489, !6486, !"_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE8split_atNCINvB2_17split_first_chunkKj10_NCNvXs4_NtNtBa_3aes8fallbackNtB20_3KeyNtB22_12EncryptCtr3220ctr32_encrypt_within0E0EBc_: argument 0"}
!6490 = distinct !{!6490, i1 true, !"_RNCINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB8_11OverlappinghE17split_first_chunkKj10_NCNvXs4_NtNtBc_3aes8fallbackNtB1L_3KeyNtB1N_12EncryptCtr3220ctr32_encrypt_within0E0Be_"}
!6491 = distinct !{!6491, !6490, !"_RNCINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB8_11OverlappinghE17split_first_chunkKj10_NCNvXs4_NtNtBc_3aes8fallbackNtB1L_3KeyNtB1N_12EncryptCtr3220ctr32_encrypt_within0E0Be_: argument 1"}
!6492 = distinct !{!6492, !6490, !"_RNCINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB8_11OverlappinghE17split_first_chunkKj10_NCNvXs4_NtNtBc_3aes8fallbackNtB1L_3KeyNtB1N_12EncryptCtr3220ctr32_encrypt_within0E0Be_: argument 0"}
!6493 = distinct !{!6493, i1 true, !"_RNCNvXs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB7_3KeyNtB9_12EncryptCtr3220ctr32_encrypt_within0Bd_"}
!6494 = distinct !{!6494, !6493, !"_RNCNvXs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB7_3KeyNtB9_12EncryptCtr3220ctr32_encrypt_within0Bd_: argument 1"}
!6495 = distinct !{!6495, !6493, !"_RNCNvXs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB7_3KeyNtB9_12EncryptCtr3220ctr32_encrypt_within0Bd_: argument 0"}
!6496 = distinct !{!6496, i1 true, !"_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRAhj10_E0E0EB3h_"}
!6497 = distinct !{!6497, !6496, !"_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRAhj10_E0E0EB3h_: argument 0"}
!6498 = !{!6432}
!6499 = !{!6434}
!6500 = !{!6436}
!6501 = !{!6437}
!6502 = !{!6440, !6439, !6436, !6437}
!6503 = !{!6442}
!6504 = !{!6449, !6448, !6446, !6445, !6442, !6443, !6440, !6439}
!6505 = !{!6442, !6443, !6440, !6439, !6436, !6437}
!6506 = !{!6451}
!6507 = !{!6452}
!6508 = !{!6454}
!6509 = !{!6455}
!6510 = !{!6455, !6452}
!6511 = !{!6457}
!6512 = !{!6461, !6459, !6454, !6451}
!6513 = !{i32 10, i32 15}
!6514 = !{!6463}
!6515 = !{!6465}
!6516 = !{!6463, !6451}
end_hunk_1
