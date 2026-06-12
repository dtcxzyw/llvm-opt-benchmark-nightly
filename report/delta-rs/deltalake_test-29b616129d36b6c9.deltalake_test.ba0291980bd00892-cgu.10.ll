inline.NumInlined: 438
inline.NumDeleted: 204
begin_hunk_0_@_RINvNtCseqDwI8vvjGQ_10serde_json4read11next_or_eofINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test:bb.a
bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !291
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @_RNvXs_NtCseqDwI8vvjGQ_10serde_json4iterINtB4_15LineColIteratorINtNtCs2pqxYH9ZEk8_3std2io5BytesNtNtB13_2fs4FileEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i), !noalias !289
  %i.j = load i8, ptr %i.a, align 8, !range !292, !noalias !291, !noundef !3
  switch i8 %i.j, label %bb.i [
    i8 2, label %bb.j
    i8 0, label %bb.d
  ], !prof !293

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.l = load i8, ptr %i.k, align 1, !noalias !291, !noundef !3 ; 2 uses
  %i.m = load i64, ptr %1, align 8, !range !197, !alias.scope !286, !noalias !289, !noundef !3 ; 2 uses
  %.not4.i = icmp eq i64 %i.m, -9223372036854775808
  br i1 %.not4.i, label %.thread19, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !294, !noalias !289, !noundef !3 ; 3 uses
  %i.p = icmp eq i64 %i.o, %i.m
  br i1 %i.p, label %bb.f, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !289
  br label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit.i

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !294, !noalias !289, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  store i8 %i.l, ptr %i.s, align 1, !noalias !289
  %i.t = add i64 %i.o, 1
  store i64 %i.t, ptr %i.n, align 8, !alias.scope !294, !noalias !289
  br label %.thread19

bb.g:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !297, !noalias !289, !noundef !3 ; 3 uses
  %i.w = icmp eq i64 %i.v, %i.h
  br i1 %i.w, label %bb.h, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit6.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !289
  br label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit6.i

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit6.i: ; preds = %bb.h, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !297, !noalias !289, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 %i.g, ptr %i.z, align 1, !noalias !289
  %i.aa = add i64 %i.v, 1
  store i64 %i.aa, ptr %i.u, align 8, !alias.scope !297, !noalias !289
  br label %.thread

bb.i:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !291, !nonnull !3, !noundef !3
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.ac), !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !291
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  store i8 1, ptr %0, align 8
  br label %bb.k

.thread19:                                        ; preds = %bb.d, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !291
  br label %.thread

.thread:                                          ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit6.i, %bb.b, %.thread19
  %.sroa.10.1818 = phi i8 [ %i.l, %.thread19 ], [ %i.g, %bb.b ], [ %i.g, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit6.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.10.1818, ptr %i.af, align 1
  store i8 0, ptr %0, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 4, ptr %i.b, align 8
  %.val = load i64, ptr %i.i, align 8, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val2 = load i64, ptr %i.ag, align 8, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.ah = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val, i64 noundef %.val2), !noalias !300
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !alias.scope !300, !noalias !303
  store i8 1, ptr %0, align 8, !alias.scope !300, !noalias !303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j, %bb.i
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvNtCseqDwI8vvjGQ_10serde_json4read20parse_unicode_escapeINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call fastcc void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read17decode_hex_escapeCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef align 8 dereferenceable(64) %0)
  %i.k = load i16, ptr %i.j, align 8, !range !305, !noundef !3
  %i.l = trunc nuw i16 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !align !15, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.p = load i16, ptr %i.o, align 2, !noundef !3 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.q = and i16 %i.p, -1024
  %or.cond4 = icmp eq i16 %i.q, -9216
  br i1 %or.cond4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 20, ptr %i.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val21 = load i64, ptr %i.r, align 8, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val22 = load i64, ptr %i.s, align 8, !noundef !3
  %i.t = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %.val21, i64 noundef %.val22)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit

bb.e:                                             ; preds = %bb.c
  %i.u = add i16 %i.p, 9216
  %or.cond6 = icmp ult i16 %i.u, -1024
  br i1 %or.cond6, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.w = load i8, ptr %i.v, align 8, !range !104, !alias.scope !312, !noalias !313, !noundef !3
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 4 uses
  br i1 %i.x, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !312, !noalias !313, !noundef !3
  br label %_RINvNtCseqDwI8vvjGQ_10serde_json4read11peek_or_eofINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !316
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @_RNvXs_NtCseqDwI8vvjGQ_10serde_json4iterINtB4_15LineColIteratorINtNtCs2pqxYH9ZEk8_3std2io5BytesNtNtB13_2fs4FileEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa), !noalias !313
  %i.ab = load i8, ptr %i.c, align 8, !range !292, !noalias !316, !noundef !3
  switch i8 %i.ab, label %bb.h [
    i8 2, label %bb.i
    i8 0, label %.thread18.i
  ], !prof !293

.thread18.i:                                      ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !316, !noundef !3 ; 2 uses
  store i8 1, ptr %i.v, align 8, !alias.scope !312, !noalias !313
  store i8 %i.ad, ptr %i.y, align 1, !alias.scope !312, !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !316
  br label %_RINvNtCseqDwI8vvjGQ_10serde_json4read11peek_or_eofINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !316, !nonnull !3, !noundef !3
  %i.ag = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.af), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !316
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !317
  store i64 4, ptr %i.d, align 8, !noalias !317
  %.val.i = load i64, ptr %i.aa, align 8, !alias.scope !306, !noalias !318, !noundef !3
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i = load i64, ptr %i.ah, align 8, !alias.scope !306, !noalias !318, !noundef !3
  %i.ai = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.val.i, i64 noundef %.val2.i), !noalias !319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !317
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit

_RINvNtCseqDwI8vvjGQ_10serde_json4read11peek_or_eofINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %.thread18.i, %.thread.i
  %i.aj = phi i8 [ %i.z, %.thread.i ], [ %i.ad, %.thread18.i ]
  %i.ak = icmp eq i8 %i.aj, 92
  br i1 %i.ak, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_RINvNtCseqDwI8vvjGQ_10serde_json4read11peek_or_eofINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test.exit
  store i8 0, ptr %i.v, align 8, !alias.scope !322
  %i.al = load i64, ptr %0, align 8, !range !197, !alias.scope !322, !noundef !3 ; 2 uses
  %.not.i.not = icmp eq i64 %i.al, -9223372036854775808
  br i1 %.not.i.not, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !325, !noundef !3 ; 3 uses
  %i.ao = icmp eq i64 %i.an, %i.al
  br i1 %i.ao, label %bb.l, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test.exit

bb.l:                                             ; preds = %bb.k
  call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
  br label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test.exit

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.k, %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !325, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.an
  store i8 92, ptr %i.ar, align 1
  %i.as = add i64 %i.an, 1
  store i64 %i.as, ptr %i.am, align 8, !alias.scope !325
  %.pre = load i8, ptr %i.v, align 8, !range !104, !alias.scope !328, !noalias !333
  %i.at = trunc nuw i8 %.pre to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  br i1 %i.at, label %.thread.i27, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test.exit.thread

.thread.i27:                                      ; preds = %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test.exit
  %i.au = load i8, ptr %i.y, align 1, !alias.scope !328, !noalias !333, !noundef !3
  br label %_RINvNtCseqDwI8vvjGQ_10serde_json4read11peek_or_eofINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test.exit28

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test.exit.thread: ; preds = %bb.j, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !338
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @_RNvXs_NtCseqDwI8vvjGQ_10serde_json4iterINtB4_15LineColIteratorINtNtCs2pqxYH9ZEk8_3std2io5BytesNtNtB13_2fs4FileEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.av), !noalias !333
  %i.aw = load i8, ptr %i.a, align 8, !range !292, !noalias !338, !noundef !3
  switch i8 %i.aw, label %bb.m [
    i8 2, label %bb.n
    i8 0, label %.thread18.i23
  ], !prof !293

.thread18.i23:                                    ; preds = %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !338, !noundef !3 ; 2 uses
  store i8 1, ptr %i.v, align 8, !alias.scope !328, !noalias !333
  store i8 %i.ay, ptr %i.y, align 1, !alias.scope !328, !noalias !333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !338
  br label %_RINvNtCseqDwI8vvjGQ_10serde_json4read11peek_or_eofINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test.exit28

bb.m:                                             ; preds = %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !338, !nonnull !3, !noundef !3
  %i.bb = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.ba), !noalias !333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !338
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit

bb.n:                                             ; preds = %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !339
  store i64 4, ptr %i.b, align 8, !noalias !339
  %.val.i25 = load i64, ptr %i.av, align 8, !alias.scope !336, !noalias !340, !noundef !3
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i26 = load i64, ptr %i.bc, align 8, !alias.scope !336, !noalias !340, !noundef !3
  %i.bd = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val.i25, i64 noundef %.val2.i26), !noalias !341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !339
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit

bb.o:                                             ; preds = %_RINvNtCseqDwI8vvjGQ_10serde_json4read11peek_or_eofINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test.exit
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 23, ptr %i.h, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.be, align 8, !noundef !3
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val16 = load i64, ptr %i.bf, align 8, !noundef !3
  %i.bg = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %.val, i64 noundef %.val16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit

_RINvNtCseqDwI8vvjGQ_10serde_json4read11peek_or_eofINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test.exit28: ; preds = %.thread18.i23, %.thread.i27
  %i.bh = phi i8 [ %i.au, %.thread.i27 ], [ %i.ay, %.thread18.i23 ]
  %i.bi = icmp eq i8 %i.bh, 117
  br i1 %i.bi, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_RINvNtCseqDwI8vvjGQ_10serde_json4read11peek_or_eofINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test.exit28
  store i8 0, ptr %i.v, align 8, !alias.scope !344
  %i.bj = load i64, ptr %0, align 8, !range !197, !alias.scope !344, !noundef !3 ; 2 uses
  %.not.i29.not = icmp eq i64 %i.bj, -9223372036854775808
  br i1 %.not.i29.not, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test.exit32, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !347, !noundef !3 ; 3 uses
  %i.bm = icmp eq i64 %i.bl, %i.bj
  br i1 %i.bm, label %bb.r, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit.i31

bb.r:                                             ; preds = %bb.q
  call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
  br label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit.i31

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit.i31: ; preds = %bb.r, %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !347, !nonnull !3, !noundef !3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bl
  store i8 117, ptr %i.bp, align 1
  %i.bq = add i64 %i.bl, 1
  store i64 %i.bq, ptr %i.bk, align 8, !alias.scope !347
  br label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test.exit32

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test.exit32: ; preds = %bb.p, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit.i31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read17decode_hex_escapeCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef align 8 dereferenceable(64) %0)
  %i.br = load i16, ptr %i.f, align 8, !range !305, !noundef !3
  %i.bs = trunc nuw i16 %i.br to i1
  br i1 %i.bs, label %bb.t, label %bb.u

bb.s:                                             ; preds = %_RINvNtCseqDwI8vvjGQ_10serde_json4read11peek_or_eofINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test.exit28
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 23, ptr %i.g, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val17 = load i64, ptr %i.bt, align 8, !noundef !3
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val18 = load i64, ptr %i.bu, align 8, !noundef !3
  %i.bv = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %.val17, i64 noundef %.val18)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit

bb.t:                                             ; preds = %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test.exit32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !3, !align !15, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit

bb.u:                                             ; preds = %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test.exit32
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bz = load i16, ptr %i.by, align 2, !noundef !3 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ca = add i16 %i.bz, 8192
  %or.cond = icmp ult i16 %i.ca, -1024
  br i1 %or.cond, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = add nsw i16 %i.p, 10240
  %i.cc = zext nneg i16 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 10
  %i.ce = add nsw i16 %i.bz, 9216
  %i.cf = zext nneg i16 %i.ce to i32
  %i.cg = or disjoint i32 %i.cd, %i.cf            ; 2 uses
  %i.ch = add nuw nsw i32 %i.cg, 65536            ; 2 uses
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !350, !nonnull !3, !noundef !3
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !350, !noundef !3 ; 2 uses
  %i.cm = icmp sgt i64 %i.cl, -1
  call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl
  %i.co = lshr i32 %i.ch, 18
  %i.cp = lshr i32 %i.ch, 12
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = lshr i32 %i.cg, 6
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = trunc i16 %i.bz to i8
  %i.cu = trunc nuw nsw i32 %i.co to i8
  %i.cv = insertelement <4 x i8> poison, i8 %i.cu, i64 0
  %i.cw = insertelement <4 x i8> %i.cv, i8 %i.cq, i64 1
  %i.cx = insertelement <4 x i8> %i.cw, i8 %i.cs, i64 2
  %i.cy = insertelement <4 x i8> %i.cx, i8 %i.ct, i64 3
  %i.cz = and <4 x i8> %i.cy, <i8 -1, i8 63, i8 63, i8 63>
  %i.da = or disjoint <4 x i8> %i.cz, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.da, ptr %i.cn, align 1
  %i.db = load i64, ptr %i.ck, align 8, !alias.scope !350, !noundef !3 ; 2 uses
  %i.dc = icmp sgt i64 %i.db, -1
  call void @llvm.assume(i1 %i.dc)
  %i.dd = add nuw i64 %i.db, 4
  store i64 %i.dd, ptr %i.ck, align 8, !alias.scope !350
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 20, ptr %i.e, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val19 = load i64, ptr %i.de, align 8, !noundef !3
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val20 = load i64, ptr %i.df, align 8, !noundef !3
  %i.dg = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %.val19, i64 noundef %.val20)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit

_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit: ; preds = %bb.m, %bb.n, %bb.h, %bb.i, %bb.ad, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit.i34, %bb.o, %bb.s, %bb.t, %bb.v, %bb.w, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.n, %bb.b ], [ %i.t, %bb.d ], [ %i.bg, %bb.o ], [ null, %bb.ad ], [ %i.ai, %bb.i ], [ %i.bx, %bb.t ], [ %i.dg, %bb.w ], [ null, %bb.v ], [ %i.bv, %bb.s ], [ null, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit.i34 ], [ %i.ag, %bb.h ], [ %i.bb, %bb.m ], [ %i.bd, %bb.n ]
  ret ptr %.sroa.0.0

bb.x:                                             ; preds = %bb.e
  %i.dh = icmp ult i16 %i.p, 128
  br i1 %i.dh, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4)
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !353, !nonnull !3, !noundef !3
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !353, !noundef !3 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, -1
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dl ; 3 uses
  %i.do = icmp ult i16 %i.p, 2048
  br i1 %i.do, label %bb.ab, label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.dp = trunc nuw nsw i16 %i.p to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !356, !noundef !3 ; 3 uses
  %i.ds = load i64, ptr %1, align 8, !range !4, !alias.scope !356, !noundef !3
  %i.dt = icmp eq i64 %i.dr, %i.ds
  br i1 %i.dt, label %bb.aa, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit.i34

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit.i34

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit.i34: ; preds = %bb.aa, %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !356, !nonnull !3, !noundef !3
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dr
  store i8 %i.dp, ptr %i.dw, align 1
  %i.dx = add i64 %i.dr, 1
  store i64 %i.dx, ptr %i.dq, align 8, !alias.scope !356
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit

bb.ab:                                            ; preds = %bb.y
  %i.dy = lshr i16 %i.p, 6
  %i.dz = trunc nuw nsw i16 %i.dy to i8
  %i.ea = or disjoint i8 %i.dz, -64
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.ec = lshr i16 %i.p, 12
  %i.ed = trunc nuw nsw i16 %i.ec to i8
  %i.ee = or disjoint i8 %i.ed, -32
  %i.ef = lshr i16 %i.p, 6
  %i.eg = trunc i16 %i.ef to i8
  %i.eh = and i8 %i.eg, 63
  %i.ei = or disjoint i8 %i.eh, -128
  store i8 %i.ei, ptr %i.eb, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink = phi i8 [ %i.ea, %bb.ab ], [ %i.ee, %bb.ac ]
  %.sroa.0.0.i = phi i64 [ 2, %bb.ab ], [ 3, %bb.ac ] ; 2 uses
  store i8 %.sink, ptr %i.dn, align 1
  %i.ej = getelementptr i8, ptr %i.dn, i64 %.sroa.0.0.i
  %i.ek = getelementptr i8, ptr %i.ej, i64 -1
  %i.el = trunc i16 %i.p to i8
  %i.em = and i8 %i.el, 63
  %i.en = or disjoint i8 %i.em, -128
  store i8 %i.en, ptr %i.ek, align 1
  %i.eo = load i64, ptr %i.dk, align 8, !alias.scope !353, !noundef !3 ; 2 uses
  %i.ep = icmp sgt i64 %i.eo, -1
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = add nuw i64 %i.eo, %.sroa.0.0.i
  store i64 %i.eq, ptr %i.dk, align 8, !alias.scope !353
  br label %_RNvNtCseqDwI8vvjGQ_10serde_json4read19push_wtf8_codepoint.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB19_8snapshotNtB2j_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4o_5error5ErrorEEs_0B3a_ECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(184) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [184 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
end_hunk_0
begin_hunk_1_@_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read10ignore_strCsfY7SmN0bPrO_14deltalake_test:bb.a
bb.f:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.i, align 1, !noalias !608, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !608
  switch i8 %i.t, label %bb.g [
    i8 34, label %.backedge
    i8 92, label %.backedge
    i8 47, label %.backedge
    i8 98, label %.backedge
    i8 102, label %.backedge
    i8 110, label %.backedge
    i8 114, label %.backedge
    i8 116, label %.backedge
    i8 117, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !608
  store i64 12, ptr %i.a, align 8, !noalias !608
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i64, ptr %i.u, align 8, !alias.scope !608, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.v, align 8, !alias.scope !608, !noundef !3
  %i.w = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val.i, i64 noundef %.val1.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !608
  br label %_RINvNtCseqDwI8vvjGQ_10serde_json4read13ignore_escapeINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test.exit.thread

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !608
  call fastcc void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read17decode_hex_escapeCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
  %i.x = load i16, ptr %i.b, align 8, !range !305, !noalias !608, !noundef !3
  %i.y = trunc nuw i16 %i.x to i1
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !608, !nonnull !3, !align !15, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !608
  br label %_RINvNtCseqDwI8vvjGQ_10serde_json4read13ignore_escapeINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test.exit.thread

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !608
  br label %.backedge

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 16, ptr %i.d, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.ab, align 8, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load i64, ptr %i.ac, align 8, !noundef !3
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.val, i64 noundef %.val3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCseqDwI8vvjGQ_10serde_json4read13ignore_escapeINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test.exit.thread

_RINvNtCseqDwI8vvjGQ_10serde_json4read13ignore_escapeINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test.exit.thread: ; preds = %bb.b, %bb.i, %bb.g, %bb.e, %bb.k, %._crit_edge
  %.sroa.0.0 = phi ptr [ %i.k, %._crit_edge ], [ %i.ad, %bb.k ], [ %i.s, %bb.e ], [ %i.aa, %bb.i ], [ %i.w, %bb.g ], [ null, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read17decode_hex_escapeCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RINvNtCseqDwI8vvjGQ_10serde_json4read11next_or_eofINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef align 8 dereferenceable(64) %1)
  %i.f = load i8, ptr %i.e, align 8, !range !104, !noundef !3
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !align !15, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store i16 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.l = load i8, ptr %i.k, align 1, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RINvNtCseqDwI8vvjGQ_10serde_json4read11next_or_eofINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef align 8 dereferenceable(64) %1)
  %i.m = load i8, ptr %i.d, align 8, !range !104, !noundef !3
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !align !15, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store i16 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.s = load i8, ptr %i.r, align 1, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtCseqDwI8vvjGQ_10serde_json4read11next_or_eofINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef align 8 dereferenceable(64) %1)
  %i.t = load i8, ptr %i.c, align 8, !range !104, !noundef !3
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !3, !align !15, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i16 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.z = load i8, ptr %i.y, align 1, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCseqDwI8vvjGQ_10serde_json4read11next_or_eofINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(64) %1)
  %i.aa = load i8, ptr %i.b, align 8, !range !104, !noundef !3
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !3, !align !15, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  store i16 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ah = zext i8 %i.l to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr @_RNvNtCseqDwI8vvjGQ_10serde_json4read4HEX1, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !noundef !3
  %i.ak = zext i8 %i.s to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr @_RNvNtCseqDwI8vvjGQ_10serde_json4read4HEX0, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !noundef !3
  %i.an = zext i8 %i.ag to i64
  %i.ao = zext i8 %i.z to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr @_RNvNtCseqDwI8vvjGQ_10serde_json4read4HEX1, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !noundef !3
  %i.ar = sext i16 %i.aq to i32
  %i.as = getelementptr inbounds nuw [2 x i8], ptr @_RNvNtCseqDwI8vvjGQ_10serde_json4read4HEX0, i64 %i.an
  %i.at = load i16, ptr %i.as, align 2, !noundef !3
  %i.au = sext i16 %i.at to i32
  %i.av = or i16 %i.am, %i.aj
  %i.aw = sext i16 %i.av to i32
  %i.ax = shl nsw i32 %i.aw, 8
  %i.ay = or i32 %i.ax, %i.ar
  %i.az = or i32 %i.ay, %i.au                     ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = trunc i32 %i.az to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.bb, ptr %i.bc, align 2
  store i16 0, ptr %0, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 12, ptr %i.a, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i64, ptr %i.bd, align 8, !noundef !3
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val2 = load i64, ptr %i.be, align 8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.bf = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val, i64 noundef %.val2), !noalias !611
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !alias.scope !611, !noalias !614
  store i16 1, ptr %0, align 8, !alias.scope !611, !noalias !614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.b, %bb.f, %bb.h, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !104, !noundef !3
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.e = load i8, ptr %i.d, align 1
  store i8 0, ptr %i.a, align 8
  br i1 %i.c, label %1, label %bb.b

1:                                                ; preds = %bb.a
  %2 = load i64, ptr %0, align 8, !range !197, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %2, -9223372036854775808
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit, %1, %bb.a
  ret void

bb.c:                                             ; preds = %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !616, !noundef !3 ; 3 uses
  %i.h = icmp eq i64 %i.g, %2
  br i1 %i.h, label %bb.d, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !616, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  store i8 %i.e, ptr %i.k, align 1
  %i.l = add i64 %i.g, 1
  store i64 %i.l, ptr %i.f, align 8, !alias.scope !616
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read9parse_strCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !624
  call fastcc void @_RINvNtCseqDwI8vvjGQ_10serde_json4read11next_or_eofINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !626
  %i.g = load i8, ptr %i.f, align 8, !range !104, !noalias !624, !noundef !3
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !624, !nonnull !3, !align !15, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !624
  br label %_RINvMs1_NtCseqDwI8vvjGQ_10serde_json4readINtB6_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileE15parse_str_bytesReINvB6_6as_strBD_EECsfY7SmN0bPrO_14deltalake_test.exit.thread

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.o = load i8, ptr %i.i, align 1, !noalias !624, !noundef !3 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !624
  switch i8 %i.o, label %bb.d [
    i8 34, label %bb.c
    i8 92, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !alias.scope !622, !noalias !627, !nonnull !3, !noundef !3
  %i.q = load i64, ptr %i.k, align 8, !alias.scope !622, !noalias !627, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val8.i = load i64, ptr %i.r, align 8, !alias.scope !619, !noalias !626
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val9.i = load i64, ptr %i.s, align 8, !alias.scope !619, !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !628
  call void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef range(i64 0, -9223372036854775808) %i.q), !noalias !635
  %i.t = load i64, ptr %i.d, align 8, !range !6, !noalias !628, !noundef !3
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %_RINvMs1_NtCseqDwI8vvjGQ_10serde_json4readINtB6_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileE15parse_str_bytesReINvB6_6as_strBD_EECsfY7SmN0bPrO_14deltalake_test.exit.thread4, label %bb.s

_RINvMs1_NtCseqDwI8vvjGQ_10serde_json4readINtB6_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileE15parse_str_bytesReINvB6_6as_strBD_EECsfY7SmN0bPrO_14deltalake_test.exit.thread4: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !628
  store i64 15, ptr %i.c, align 8, !noalias !628
  %i.v = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.val8.i, i64 noundef %.val9.i), !noalias !636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !628
  br label %_RINvMs1_NtCseqDwI8vvjGQ_10serde_json4readINtB6_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileE15parse_str_bytesReINvB6_6as_strBD_EECsfY7SmN0bPrO_14deltalake_test.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.w = icmp ult i8 %i.o, 32
  br i1 %i.w, label %bb.r, label %bb.q

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !644
  call fastcc void @_RINvNtCseqDwI8vvjGQ_10serde_json4read11next_or_eofINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !645
  %i.x = load i8, ptr %i.b, align 8, !range !104, !noalias !644, !noundef !3
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !644, !nonnull !3, !align !15, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !644
  br label %_RINvMs1_NtCseqDwI8vvjGQ_10serde_json4readINtB6_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileE15parse_str_bytesReINvB6_6as_strBD_EECsfY7SmN0bPrO_14deltalake_test.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ab = load i8, ptr %i.j, align 1, !noalias !644, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !644
  switch i8 %i.ab, label %bb.h [
    i8 34, label %bb.i
    i8 92, label %bb.j
    i8 47, label %bb.k
    i8 98, label %bb.l
    i8 102, label %bb.m
    i8 110, label %bb.n
    i8 114, label %bb.o
    i8 116, label %bb.p
    i8 117, label %_RINvNtCseqDwI8vvjGQ_10serde_json4read12parse_escapeINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test.exit.i
  ], !prof !646

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !644
  store i64 12, ptr %i.a, align 8, !noalias !644
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i = load i64, ptr %i.ac, align 8, !alias.scope !647, !noalias !648, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i.i = load i64, ptr %i.ad, align 8, !alias.scope !647, !noalias !648, !noundef !3
  %i.ae = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val.i.i, i64 noundef %.val1.i.i), !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !644
  br label %_RINvMs1_NtCseqDwI8vvjGQ_10serde_json4readINtB6_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileE15parse_str_bytesReINvB6_6as_strBD_EECsfY7SmN0bPrO_14deltalake_test.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.af = load i64, ptr %i.k, align 8, !alias.scope !649, !noalias !652, !noundef !3 ; 3 uses
  %i.ag = load i64, ptr %2, align 8, !range !4, !alias.scope !649, !noalias !652, !noundef !3
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %.backedge.sink.split.sink.split.i, label %.backedge.sink.split.i

bb.j:                                             ; preds = %bb.g
  %i.ai = load i64, ptr %i.k, align 8, !alias.scope !653, !noalias !652, !noundef !3 ; 3 uses
  %i.aj = load i64, ptr %2, align 8, !range !4, !alias.scope !653, !noalias !652, !noundef !3
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %.backedge.sink.split.sink.split.i, label %.backedge.sink.split.i

bb.k:                                             ; preds = %bb.g
  %i.al = load i64, ptr %i.k, align 8, !alias.scope !656, !noalias !652, !noundef !3 ; 3 uses
  %i.am = load i64, ptr %2, align 8, !range !4, !alias.scope !656, !noalias !652, !noundef !3
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %.backedge.sink.split.sink.split.i, label %.backedge.sink.split.i

bb.l:                                             ; preds = %bb.g
  %i.ao = load i64, ptr %i.k, align 8, !alias.scope !659, !noalias !652, !noundef !3 ; 3 uses
  %i.ap = load i64, ptr %2, align 8, !range !4, !alias.scope !659, !noalias !652, !noundef !3
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %.backedge.sink.split.sink.split.i, label %.backedge.sink.split.i

bb.m:                                             ; preds = %bb.g
  %i.ar = load i64, ptr %i.k, align 8, !alias.scope !662, !noalias !652, !noundef !3 ; 3 uses
  %i.as = load i64, ptr %2, align 8, !range !4, !alias.scope !662, !noalias !652, !noundef !3
  %i.at = icmp eq i64 %i.ar, %i.as
  br i1 %i.at, label %.backedge.sink.split.sink.split.i, label %.backedge.sink.split.i

bb.n:                                             ; preds = %bb.g
  %i.au = load i64, ptr %i.k, align 8, !alias.scope !665, !noalias !652, !noundef !3 ; 3 uses
  %i.av = load i64, ptr %2, align 8, !range !4, !alias.scope !665, !noalias !652, !noundef !3
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %.backedge.sink.split.sink.split.i, label %.backedge.sink.split.i

bb.o:                                             ; preds = %bb.g
  %i.ax = load i64, ptr %i.k, align 8, !alias.scope !668, !noalias !652, !noundef !3 ; 3 uses
  %i.ay = load i64, ptr %2, align 8, !range !4, !alias.scope !668, !noalias !652, !noundef !3
  %i.az = icmp eq i64 %i.ax, %i.ay
  br i1 %i.az, label %.backedge.sink.split.sink.split.i, label %.backedge.sink.split.i

bb.p:                                             ; preds = %bb.g
  %i.ba = load i64, ptr %i.k, align 8, !alias.scope !671, !noalias !652, !noundef !3 ; 3 uses
  %i.bb = load i64, ptr %2, align 8, !range !4, !alias.scope !671, !noalias !652, !noundef !3
  %i.bc = icmp eq i64 %i.ba, %i.bb
  br i1 %i.bc, label %.backedge.sink.split.sink.split.i, label %.backedge.sink.split.i

_RINvNtCseqDwI8vvjGQ_10serde_json4read12parse_escapeINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.g
  %i.bd = tail call fastcc noundef align 8 ptr @_RINvNtCseqDwI8vvjGQ_10serde_json4read20parse_unicode_escapeINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %.backedge.i, label %_RINvMs1_NtCseqDwI8vvjGQ_10serde_json4readINtB6_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileE15parse_str_bytesReINvB6_6as_strBD_EECsfY7SmN0bPrO_14deltalake_test.exit.thread

bb.q:                                             ; preds = %bb.d
  %i.be = load i64, ptr %i.k, align 8, !alias.scope !674, !noalias !627, !noundef !3 ; 3 uses
  %i.bf = load i64, ptr %2, align 8, !range !4, !alias.scope !674, !noalias !627, !noundef !3
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %.backedge.sink.split.sink.split.i, label %.backedge.sink.split.i

.backedge.sink.split.sink.split.i:                ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink19.ph.i = phi i64 [ %i.ba, %bb.p ], [ %i.ax, %bb.o ], [ %i.au, %bb.n ], [ %i.ar, %bb.m ], [ %i.ao, %bb.l ], [ %i.al, %bb.k ], [ %i.ai, %bb.j ], [ %i.af, %bb.i ], [ %i.be, %bb.q ]
  %.sink.ph.i = phi i8 [ 9, %bb.p ], [ 13, %bb.o ], [ 10, %bb.n ], [ 12, %bb.m ], [ 8, %bb.l ], [ 47, %bb.k ], [ 92, %bb.j ], [ 34, %bb.i ], [ %i.o, %bb.q ]
  tail call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !677
  br label %.backedge.sink.split.i

.backedge.sink.split.i:                           ; preds = %.backedge.sink.split.sink.split.i, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink19.i = phi i64 [ %i.ai, %bb.j ], [ %i.al, %bb.k ], [ %i.ao, %bb.l ], [ %i.ar, %bb.m ], [ %i.au, %bb.n ], [ %i.ax, %bb.o ], [ %i.ba, %bb.p ], [ %i.af, %bb.i ], [ %i.be, %bb.q ], [ %.sink19.ph.i, %.backedge.sink.split.sink.split.i ] ; 2 uses
  %.sink.i = phi i8 [ 92, %bb.j ], [ 47, %bb.k ], [ 8, %bb.l ], [ 12, %bb.m ], [ 10, %bb.n ], [ 13, %bb.o ], [ 9, %bb.p ], [ 34, %bb.i ], [ %i.o, %bb.q ], [ %.sink.ph.i, %.backedge.sink.split.sink.split.i ]
  %i.bh = load ptr, ptr %i.l, align 8, !alias.scope !622, !noalias !627, !nonnull !3, !noundef !3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink19.i
  store i8 %.sink.i, ptr %i.bi, align 1, !noalias !677
  %i.bj = add i64 %.sink19.i, 1
  store i64 %i.bj, ptr %i.k, align 8, !alias.scope !622, !noalias !627
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.sink.split.i, %_RINvNtCseqDwI8vvjGQ_10serde_json4read12parse_escapeINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !624
  call fastcc void @_RINvNtCseqDwI8vvjGQ_10serde_json4read11next_or_eofINtB2_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !677
  %i.bk = load i8, ptr %i.f, align 8, !range !104, !noalias !624, !noundef !3
  %i.bl = trunc nuw i8 %i.bk to i1
end_hunk_1
