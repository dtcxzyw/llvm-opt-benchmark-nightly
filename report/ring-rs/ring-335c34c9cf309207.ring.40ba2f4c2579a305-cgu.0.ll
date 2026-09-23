Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RNvXs3_NtNtCs5yxAJGbRKSL_4ring2io6writerNtB5_6WriterNtB5_11Accumulator11write_bytes:bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs5yxAJGbRKSL_4ring.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5yxAJGbRKSL_4ring.exit.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5yxAJGbRKSL_4ring.exit.thread.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5yxAJGbRKSL_4ring.exit.thread.i ], [ %i.b, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5yxAJGbRKSL_4ring.exit.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !6831, !nonnull !15, !noundef !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !6831
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs5yxAJGbRKSL_4ring.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs5yxAJGbRKSL_4ring.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5yxAJGbRKSL_4ring.exit.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5yxAJGbRKSL_4ring.exit.i ]
  %i.n = add nuw i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !6831
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPairNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @312, i64 noundef 10)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @314, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313)
  %i.d = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtNtCs5yxAJGbRKSL_4ring5error11unspecifiedNtB5_11UnspecifiedNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @315, i64 noundef 11)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptBlock13encrypt_block(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(248) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 1                ; 4 uses
  %i.c = alloca [16 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6838
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(16) %2, i64 16, i1 false), !noalias !6839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6838
  store ptr %i.c, ptr %i.a, align 8, !noalias !6838
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 16, ptr %i.d, align 8, !noalias !6838
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.e, align 8, !noalias !6838
  call void @_RNvXs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull dereferenceable(16) %i.b) #39, !noalias !6840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !6841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6838
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptBlock20encrypt_iv_xor_block(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(248) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %2, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 1                ; 4 uses
  %i.c = alloca [16 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 16, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.e, align 8
  call void @_RNvXs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull dereferenceable(16) %i.b) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7ContextNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(288) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @316, i64 noundef 7)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val = load ptr, ptr %i.e, align 8, !nonnull !15, !align !17
  %i.f = select i1 %i.d, ptr %.val, ptr %i.c
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 9, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @269)
  %i.h = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtCs5yxAJGbRKSL_4ring4aead4quicNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !53, !noundef !15 ; 2 uses
  %i.c = zext nneg i8 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs4_NtNtCs5yxAJGbRKSL_4ring4aead4quicNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = zext nneg i8 %i.b to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs4_NtNtCs5yxAJGbRKSL_4ring4aead4quicNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.557, i64 %i.d
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.e
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvXs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(248) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef captures(none) dereferenceable(16) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [960 x i8], align 8               ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [64 x i8], align 16               ; 18 uses
  %i.d = alloca [64 x i8], align 16               ; 15 uses
  %i.e = alloca [968 x i8], align 8               ; 14 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6910)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !6910, !noundef !15 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !6910, !noundef !15 ; 2 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #41, !noalias !6910
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit: ; preds = %bb.a
  %i.l = sub nuw i64 %i.h, %i.j                   ; 3 uses
  %i.m = and i64 %i.l, 15                         ; 2 uses
  store i64 %i.m, ptr %i.f, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit34, label %bb.d, !prof !19

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit34: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.o = icmp ugt i64 %i.l, 68719476735
  %i.p = shl nuw i64 %i.l, 28
  %.sroa.025.0.insert.insert = select i1 %i.o, i64 513, i64 %i.p ; 2 uses
  %i.q = trunc i64 %.sroa.025.0.insert.insert to i1
  br i1 %i.q, label %bb.c, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit, !prof !16

bb.c:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6911
  store i8 2, ptr %i.b, align 1, !noalias !6911
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @320) #41
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit34
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.025.0.insert.insert, 32 ; 3 uses
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  %.not = icmp eq i64 %.sroa.6.0.extract.shift.i, 0
  br i1 %.not, label %bb.l, label %bb.e

bb.d:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @29, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @322) #41
  unreachable

bb.e:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6913)
  %i.r = load i64, ptr %0, align 8, !range !22, !alias.scope !6913, !noalias !6912, !noundef !15
  %i.s = trunc nuw i64 %i.r to i1                 ; 2 uses
  %..i = select i1 %i.s, i64 15, i64 11           ; 2 uses
  %.3.i = select i1 %i.s, i32 14, i32 10          ; 2 uses
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6914
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6915)
  %i.t = zext nneg i32 %.3.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %storemerge61.i.i.i = phi i64 [ 0, %bb.e ], [ %i.ae, %bb.h ] ; 6 uses
  %.not.i.i.i.i.i = icmp samesign ugt i64 %storemerge61.i.i.i, %i.t
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp samesign ult i64 %storemerge61.i.i.i, %..i
  br i1 %i.u, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2_5Batch3set.exit.i.i.i.i.i, label %.noexc.i.i.i

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2_5Batch3set.exit.i.i.i.i.i: ; preds = %bb.g
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i, i64 %storemerge61.i.i.i
  %i.w = load <2 x i64>, ptr %i.v, align 8, !alias.scope !6913, !noalias !6916 ; 4 uses
  %3 = lshr <2 x i64> %i.w, splat (i64 1)
  %4 = xor <2 x i64> %3, %i.w
  %5 = and <2 x i64> %4, splat (i64 6148914691236517205) ; 3 uses
  %6 = shl nuw <2 x i64> %5, splat (i64 1)        ; 2 uses
  %7 = shufflevector <2 x i64> %6, <2 x i64> %5, <2 x i32> <i32 0, i32 2>
  %8 = shufflevector <2 x i64> %i.w, <2 x i64> poison, <2 x i32> zeroinitializer
  %9 = xor <2 x i64> %7, %8                       ; 3 uses
  %i.x = shufflevector <2 x i64> %9, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.y = lshr <2 x i64> %9, splat (i64 2)
  %i.z = xor <2 x i64> %i.y, %9
  %i.aa = and <2 x i64> %i.z, splat (i64 3689348814741910323) ; 2 uses
  %i.ab = shl nuw <2 x i64> %i.aa, splat (i64 2)
  %i.ac = shufflevector <2 x i64> %i.aa, <2 x i64> %i.ab, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ad = xor <4 x i64> %i.ac, %i.x
  %10 = shufflevector <2 x i64> %6, <2 x i64> %5, <2 x i32> <i32 1, i32 3>
  %11 = shufflevector <2 x i64> %i.w, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %12 = xor <2 x i64> %10, %11                    ; 3 uses
  %13 = shufflevector <2 x i64> %12, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %14 = lshr <2 x i64> %12, splat (i64 2)
  %15 = xor <2 x i64> %14, %12
  %16 = and <2 x i64> %15, splat (i64 3689348814741910323) ; 2 uses
  %17 = shl nuw <2 x i64> %16, splat (i64 2)
  %18 = shufflevector <2 x i64> %16, <2 x i64> %17, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %19 = xor <4 x i64> %18, %13
  br label %bb.h

.noexc.i.i.i:                                     ; preds = %bb.g
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %storemerge61.i.i.i, i64 noundef %..i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #41, !noalias !6917
  unreachable

bb.h:                                             ; preds = %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2_5Batch3set.exit.i.i.i.i.i, %bb.f
  %20 = phi <4 x i64> [ %i.ad, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2_5Batch3set.exit.i.i.i.i.i ], [ zeroinitializer, %bb.f ]
  %21 = phi <4 x i64> [ %19, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2_5Batch3set.exit.i.i.i.i.i ], [ zeroinitializer, %bb.f ]
  %22 = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %storemerge61.i.i.i ; 2 uses
  store <4 x i64> %20, ptr %22, align 8, !alias.scope !6915, !noalias !6918
  %.sroa.1059.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %22, i64 32
  store <4 x i64> %21, ptr %.sroa.1059.0..sroa_idx.i.i.i, align 8, !alias.scope !6915, !noalias !6918
  %i.ae = add nuw nsw i64 %storemerge61.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ae, 15
  br i1 %exitcond.not.i.i.i, label %_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_8Schedule17expand_round_keys.exit, label %bb.f

_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_8Schedule17expand_round_keys.exit: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(968) %i.e, ptr noundef nonnull align 8 dereferenceable(960) %i.a, i64 960, i1 false), !noalias !6913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6914
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 960 ; 2 uses
  store i32 %.3.i, ptr %i.af, align 8, !alias.scope !6912, !noalias !6913
  %.sroa.0.sroa.0.0.copyload = load i64, ptr %2, align 1 ; 3 uses
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.7.0.copyload = load i32, ptr %.sroa.0.sroa.7.0..sroa_idx, align 1 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 1
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %.sroa.4.0.copyload) ; 2 uses
  %i.ah = add i32 %i.ag, %.sroa.6.0.extract.trunc.i
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.ah)
  store i32 %i.ai, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.4.0.insert.ext = zext i32 %.sroa.0.sroa.7.0.copyload to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.10.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %.sroa.13.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %.sroa.16.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 5 uses
  %.sroa.20.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %.sroa.23.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 4 uses
  %.sroa.26.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.promoted54 = load ptr, ptr %1, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.4.sroa.0.0.insert.ext = zext i32 %.sroa.0.sroa.7.0.copyload to i64 ; 3 uses
  %i.ay = lshr i64 %.sroa.0.sroa.0.0.copyload, 4
  %i.az = xor i64 %i.ay, %.sroa.0.sroa.0.0.copyload
  %i.ba = and i64 %i.az, 67555025218437360
  %i.bb = mul nuw nsw i64 %i.ba, 17
  %i.bc = xor i64 %i.bb, %.sroa.0.sroa.0.0.copyload ; 3 uses
  %i.bd = lshr i64 %i.bc, 8
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = and i64 %i.be, 280375465148160
  %i.bg = mul nuw nsw i64 %i.bf, 257
  %i.bh = xor i64 %i.bg, %i.bc                    ; 3 uses
  %i.bi = lshr i64 %i.bh, 16
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = and i64 %i.bj, 4294901760
  %i.bl = mul nuw nsw i64 %i.bk, 65537
  %i.bm = xor i64 %i.bl, %i.bh                    ; 2 uses
  %i.bn = and i64 %i.bm, 4294967295               ; 4 uses
  %i.bo = lshr i64 %i.bm, 32                      ; 4 uses
  %.sroa.543.0.copyload = load i64, ptr %i.i, align 8
  %.sroa.543.0.copyload.fr = freeze i64 %.sroa.543.0.copyload ; 5 uses
  %i.bp = icmp ugt i64 %.sroa.543.0.copyload.fr, -17
  %i.bq = add nuw i64 %.sroa.543.0.copyload.fr, 16 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.i.i

_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_8Schedule17expand_round_keys.exit, %bb.k
  %.promoted4958 = phi i64 [ %i.h, %_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_8Schedule17expand_round_keys.exit ], [ %.lcssa84, %bb.k ] ; 3 uses
  %.promoted56 = phi ptr [ %.promoted54, %_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_8Schedule17expand_round_keys.exit ], [ %.lcssa, %bb.k ] ; 5 uses
  %.sroa.07.0 = phi i64 [ %.sroa.6.0.extract.shift.i, %_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_8Schedule17expand_round_keys.exit ], [ %i.uk, %bb.k ] ; 7 uses
  %.sroa.04.0 = phi i32 [ %i.ag, %_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_8Schedule17expand_round_keys.exit ], [ %i.um, %bb.k ] ; 5 uses
  %i.bs = call i32 @llvm.bswap.i32(i32 %.sroa.04.0)
  %i.bt = add i32 %.sroa.04.0, 2
  %i.bu = call i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bv = add i32 %.sroa.04.0, 3
  %i.bw = call i32 @llvm.bswap.i32(i32 %i.bv)
  %.sroa.13.60.insert.ext = zext i32 %i.bw to i64
  %.sroa.13.60.insert.shift = shl nuw i64 %.sroa.13.60.insert.ext, 32
  %.sroa.13.60.insert.insert = or disjoint i64 %.sroa.13.60.insert.shift, %.sroa.4.0.insert.ext ; 3 uses
  %..i35 = call noundef i64 @llvm.umin.i64(i64 %.sroa.07.0, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.4.sroa.4.0.insert.ext = zext i32 %i.bs to i64
  %.sroa.4.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.sroa.4.0.insert.ext, 32
  %.sroa.4.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.sroa.4.0.insert.shift, %.sroa.4.sroa.0.0.insert.ext ; 3 uses
  %i.bx = lshr i64 %.sroa.4.sroa.0.0.insert.insert, 4
  %i.by = xor i64 %i.bx, %.sroa.4.sroa.0.0.insert.insert
  %i.bz = and i64 %i.by, 67555025218437360
  %i.ca = mul nuw nsw i64 %i.bz, 17
  %i.cb = xor i64 %i.ca, %.sroa.4.sroa.0.0.insert.insert ; 3 uses
  %i.cc = lshr i64 %i.cb, 8
  %i.cd = xor i64 %i.cc, %i.cb
  %i.ce = and i64 %i.cd, 280375465148160
  %i.cf = mul nuw nsw i64 %i.ce, 257
  %i.cg = xor i64 %i.cf, %i.cb                    ; 3 uses
  %i.ch = lshr i64 %i.cg, 16
  %i.ci = xor i64 %i.ch, %i.cg
  %i.cj = and i64 %i.ci, 4294901760
  %i.ck = mul nuw nsw i64 %i.cj, 65537
  %i.cl = xor i64 %i.ck, %i.cg                    ; 2 uses
  %i.cm = shl i64 %i.cl, 32
  %i.cn = or disjoint i64 %i.cm, %i.bn            ; 2 uses
  %i.co = and i64 %i.cl, -4294967296
  %i.cp = or disjoint i64 %i.co, %i.bo            ; 2 uses
  %i.cq = icmp eq i64 %.sroa.07.0, 1              ; 2 uses
  br i1 %i.cq, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2_5Batch10from_bytes.exit, label %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.1.i.i

_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.1.i.i: ; preds = %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.i.i
  %i.cr = add i32 %.sroa.04.0, 1
  %i.cs = call i32 @llvm.bswap.i32(i32 %i.cr)
  %.sroa.7.sroa.4.0.insert.ext = zext i32 %i.cs to i64
  %.sroa.7.sroa.4.0.insert.shift = shl nuw i64 %.sroa.7.sroa.4.0.insert.ext, 32
  %.sroa.7.sroa.0.0.insert.insert = or disjoint i64 %.sroa.7.sroa.4.0.insert.shift, %.sroa.4.sroa.0.0.insert.ext ; 3 uses
  %i.ct = lshr i64 %.sroa.7.sroa.0.0.insert.insert, 4
  %i.cu = xor i64 %i.ct, %.sroa.7.sroa.0.0.insert.insert
  %i.cv = and i64 %i.cu, 67555025218437360
  %i.cw = mul nuw nsw i64 %i.cv, 17
  %i.cx = xor i64 %i.cw, %.sroa.7.sroa.0.0.insert.insert ; 3 uses
  %i.cy = lshr i64 %i.cx, 8
  %i.cz = xor i64 %i.cy, %i.cx
  %i.da = and i64 %i.cz, 280375465148160
  %i.db = mul nuw nsw i64 %i.da, 257
  %i.dc = xor i64 %i.db, %i.cx                    ; 3 uses
  %i.dd = lshr i64 %i.dc, 16
  %i.de = xor i64 %i.dd, %i.dc
  %i.df = and i64 %i.de, 4294901760
  %i.dg = mul nuw nsw i64 %i.df, 65537
  %i.dh = xor i64 %i.dg, %i.dc                    ; 2 uses
  %i.di = shl i64 %i.dh, 32
  %i.dj = or disjoint i64 %i.di, %i.bn            ; 3 uses
  %i.dk = and i64 %i.dh, -4294967296
  %i.dl = or disjoint i64 %i.dk, %i.bo            ; 3 uses
  %i.dm = icmp eq i64 %.sroa.07.0, 2
  br i1 %i.dm, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2_5Batch10from_bytes.exit, label %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.2.i.i

_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.2.i.i: ; preds = %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.1.i.i
  %.sroa.10.sroa.4.0.insert.ext = zext i32 %i.bu to i64
  %.sroa.10.sroa.4.0.insert.shift = shl nuw i64 %.sroa.10.sroa.4.0.insert.ext, 32
  %.sroa.10.sroa.0.0.insert.insert = or disjoint i64 %.sroa.10.sroa.4.0.insert.shift, %.sroa.4.sroa.0.0.insert.ext ; 3 uses
  %i.dn = lshr i64 %.sroa.10.sroa.0.0.insert.insert, 4
  %i.do = xor i64 %i.dn, %.sroa.10.sroa.0.0.insert.insert
  %i.dp = and i64 %i.do, 67555025218437360
  %i.dq = mul nuw nsw i64 %i.dp, 17
  %i.dr = xor i64 %i.dq, %.sroa.10.sroa.0.0.insert.insert ; 3 uses
  %i.ds = lshr i64 %i.dr, 8
  %i.dt = xor i64 %i.ds, %i.dr
  %i.du = and i64 %i.dt, 280375465148160
  %i.dv = mul nuw nsw i64 %i.du, 257
  %i.dw = xor i64 %i.dv, %i.dr                    ; 3 uses
  %i.dx = lshr i64 %i.dw, 16
  %i.dy = xor i64 %i.dx, %i.dw
  %i.dz = and i64 %i.dy, 4294901760
  %i.ea = mul nuw nsw i64 %i.dz, 65537
  %i.eb = xor i64 %i.ea, %i.dw                    ; 2 uses
  %i.ec = shl i64 %i.eb, 32
  %i.ed = or disjoint i64 %i.ec, %i.bn            ; 2 uses
  %i.ee = and i64 %i.eb, -4294967296
  %i.ef = or disjoint i64 %i.ee, %i.bo            ; 2 uses
  %i.eg = icmp eq i64 %.sroa.07.0, 3
  br i1 %i.eg, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2_5Batch10from_bytes.exit, label %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.3.i.i

_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.3.i.i: ; preds = %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.2.i.i
  %i.eh = lshr i64 %.sroa.13.60.insert.insert, 4
  %i.ei = xor i64 %i.eh, %.sroa.13.60.insert.insert
  %i.ej = and i64 %i.ei, 67555025218437360
  %i.ek = mul nuw nsw i64 %i.ej, 17
  %i.el = xor i64 %i.ek, %.sroa.13.60.insert.insert ; 3 uses
  %i.em = lshr i64 %i.el, 8
  %i.en = xor i64 %i.em, %i.el
  %i.eo = and i64 %i.en, 280375465148160
  %i.ep = mul nuw nsw i64 %i.eo, 257
  %i.eq = xor i64 %i.ep, %i.el                    ; 3 uses
  %i.er = lshr i64 %i.eq, 16
  %i.es = xor i64 %i.er, %i.eq
  %i.et = and i64 %i.es, 4294901760
  %i.eu = mul nuw nsw i64 %i.et, 65537
  %i.ev = xor i64 %i.eu, %i.eq                    ; 2 uses
  %i.ew = shl i64 %i.ev, 32
  %i.ex = or disjoint i64 %i.ew, %i.bn
  %i.ey = and i64 %i.ev, -4294967296
  %i.ez = or disjoint i64 %i.ey, %i.bo
  br label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2_5Batch10from_bytes.exit

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2_5Batch10from_bytes.exit: ; preds = %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.i.i, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.1.i.i, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.2.i.i, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.3.i.i
  %.sroa.26.0.i = phi i64 [ %i.ez, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.3.i.i ], [ 0, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.i.i ], [ 0, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.1.i.i ], [ 0, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.2.i.i ] ; 2 uses
  %.sroa.23.0.i = phi i64 [ %i.ef, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.3.i.i ], [ 0, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.i.i ], [ 0, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.1.i.i ], [ %i.ef, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.2.i.i ] ; 2 uses
  %.sroa.20.0.i = phi i64 [ %i.dl, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.3.i.i ], [ 0, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.i.i ], [ %i.dl, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.1.i.i ], [ %i.dl, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.2.i.i ] ; 2 uses
  %.sroa.13.0.i = phi i64 [ %i.ex, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.3.i.i ], [ 0, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.i.i ], [ 0, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.1.i.i ], [ 0, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.2.i.i ] ; 2 uses
  %.sroa.10.0.i = phi i64 [ %i.ed, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.3.i.i ], [ 0, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.i.i ], [ 0, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.1.i.i ], [ %i.ed, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.2.i.i ] ; 2 uses
  %.sroa.7.0.i = phi i64 [ %i.dj, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.3.i.i ], [ 0, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.i.i ], [ %i.dj, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.1.i.i ], [ %i.dj, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRAhj10_uNCINvNvB1e_8for_each4callTjB21_ENCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB2K_5Batch10from_bytes0E0E0B2Q_.exit.2.i.i ] ; 2 uses
  %i.fa = lshr i64 %i.cn, 1
  %i.fb = xor i64 %.sroa.7.0.i, %i.fa
  %i.fc = and i64 %i.fb, 6148914691236517205      ; 2 uses
  %i.fd = shl nuw i64 %i.fc, 1
  %i.fe = xor i64 %i.fd, %i.cn                    ; 2 uses
  %i.ff = xor i64 %i.fc, %.sroa.7.0.i             ; 2 uses
  %i.fg = lshr i64 %.sroa.10.0.i, 1
  %i.fh = xor i64 %i.fg, %.sroa.13.0.i
  %i.fi = and i64 %i.fh, 6148914691236517205      ; 2 uses
end_hunk_0
