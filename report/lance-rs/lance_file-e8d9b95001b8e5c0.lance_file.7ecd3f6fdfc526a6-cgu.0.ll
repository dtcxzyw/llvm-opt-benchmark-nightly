Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_file-e8d9b95001b8e5c0.lance_file.7ecd3f6fdfc526a6-cgu.0?download=true
inline.NumInlined: 17611
inline.NumDeleted: 7469
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryENCINvNtB2_7message5mergeBJ_QRShE0B2I_ECsaSXGKSfiU2E_10lance_file:bb.a
  %i.an = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1) ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = extractvalue { i64, ptr } %i.an, 1      ; 2 uses
  %i.aq = trunc nuw i64 %i.ao to i1
  br i1 %i.aq, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37_crit_edge

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37_crit_edge: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit
  %i.ar = ptrtoint ptr %i.ap to i64
  %.val.i17.pre = load i64, ptr %i.n, align 8
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37_crit_edge, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i
  %.val.i17 = phi i64 [ %.val.i17.pre, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37_crit_edge ], [ %i.t, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.al, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 4 uses
  %.sroa.6.0.i40 = phi i64 [ %i.ar, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37_crit_edge ], [ %i.v, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.ae, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 3 uses
  %i.as = icmp ult i64 %.val.i17, %.sroa.6.0.i40
  br i1 %i.as, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37
  %i.at = sub nuw i64 %.val.i17, %.sroa.6.0.i40   ; 2 uses
  %.not69 = icmp eq i64 %.sroa.6.0.i40, 0
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ax = load ptr, ptr %0, align 8, !nonnull !58 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.l

bb.k:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 -9223372036854775801, ptr %i.m, align 8
  %i.bb = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54

thread-pre-split:                                 ; preds = %bb.ae, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit31, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit
  %.val.i18.pr = load i64, ptr %i.n, align 8      ; 3 uses
  %i.bc = icmp ugt i64 %.val.i18.pr, %i.at
  br i1 %i.bc, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %thread-pre-split, %bb.j
  %.val.i18.lcssa = phi i64 [ %.val.i17, %bb.j ], [ %.val.i18.pr, %thread-pre-split ]
  %.not = icmp eq i64 %.val.i18.lcssa, %i.at
  br i1 %.not, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54, label %bb.al

bb.l:                                             ; preds = %.lr.ph, %thread-pre-split
  %.val.i1868 = phi i64 [ %.val.i17, %.lr.ph ], [ %.val.i18.pr, %thread-pre-split ] ; 4 uses
  %.val.i.i22 = load ptr, ptr %.val.i, align 8, !noalias !10148, !nonnull !58, !noundef !58 ; 4 uses
  %i.bd = load i8, ptr %.val.i.i22, align 1, !noalias !10148, !noundef !58 ; 2 uses
  %i.be = icmp sgt i8 %i.bd, -1
  br i1 %i.be, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = icmp ugt i64 %.val.i1868, 10
  br i1 %i.bf, label %bb.n, label %bb.o

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27: ; preds = %bb.l
  %i.bg = add i64 %.val.i1868, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i22, i64 1
  store ptr %i.bh, ptr %.val.i, align 8, !alias.scope !10149, !noalias !10148
  store i64 %i.bg, ptr %i.n, align 8, !alias.scope !10149, !noalias !10148
  %i.bi = zext nneg i8 %i.bd to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread

bb.n:                                             ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10148
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i22, i64 noundef %.val.i1868), !noalias !10148
  %i.bj = load i64, ptr %i.e, align 8, !range !68, !noalias !10148, !noundef !58
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread44, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bl = getelementptr i8, ptr %.val.i.i22, i64 %.val.i1868
  %i.bm = getelementptr i8, ptr %i.bl, i64 -1
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !10148, !noundef !58
  %i.bo = icmp sgt i8 %i.bn, -1
  br i1 %i.bo, label %bb.n, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28, !prof !67

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread44: ; preds = %bb.n
  %i.bp = load ptr, ptr %i.au, align 8, !noalias !10148, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10148
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.bq = load i64, ptr %i.au, align 8, !noalias !10148, !noundef !58
  %i.br = load i64, ptr %i.av, align 8, !noalias !10148, !noundef !58 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10148
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10150), !noalias !10151
  %i.bs = load i64, ptr %i.n, align 8, !alias.scope !10150, !noalias !10148, !noundef !58 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  br i1 %i.bt, label %bb.q, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26, !prof !57

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10152
  store i64 %i.br, ptr %i.d, align 8, !noalias !10152
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.bs, ptr %i.bu, align 8, !noalias !10152
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) #49, !noalias !10152
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26: ; preds = %bb.p
  %i.bv = load ptr, ptr %.val.i, align 8, !alias.scope !10150, !noalias !10148, !nonnull !58, !noundef !58
  %i.bw = sub nuw i64 %i.bs, %i.br
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.br
  store ptr %i.bx, ptr %.val.i, align 8, !alias.scope !10150, !noalias !10148
  store i64 %i.bw, ptr %i.n, align 8, !alias.scope !10150, !noalias !10148
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread: ; preds = %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26
  %.sroa.6.0.i24.ph = phi i64 [ %i.bq, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26 ], [ %i.bi, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27 ] ; 2 uses
  %i.by = inttoptr i64 %.sroa.6.0.i24.ph to ptr
  br label %bb.r

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28: ; preds = %bb.o
  %i.bz = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1), !noalias !10151 ; 2 uses
  %i.ca = extractvalue { i64, ptr } %i.bz, 0
  %i.cb = extractvalue { i64, ptr } %i.bz, 1      ; 3 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = trunc nuw i64 %i.ca to i1
  br i1 %i.cd, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28
  %i.ce = phi ptr [ %i.by, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread ], [ %i.cb, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ]
  %.sroa.6.0.i2443 = phi i64 [ %.sroa.6.0.i24.ph, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread ], [ %i.cc, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ] ; 3 uses
  %i.cf = icmp ugt ptr %i.ce, inttoptr (i64 4294967295 to ptr)
  br i1 %i.cf, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = and i64 %.sroa.6.0.i2443, 7             ; 3 uses
  %switch = icmp samesign ult i64 %i.cg, 6
  br i1 %switch, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10153
  store i64 %.sroa.6.0.i2443, ptr %i.ba, align 8, !noalias !10153
  store i64 -9223372036854775804, ptr %i.h, align 8, !noalias !10153
  %i.ch = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.h), !noalias !10154, !inline_history !10126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10153
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10153
  store i64 %i.cg, ptr %i.aw, align 8, !noalias !10153
  store i64 -9223372036854775805, ptr %i.f, align 8, !noalias !10153
  %i.ci = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f), !noalias !10154, !inline_history !10126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10153
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.cj = trunc nuw i64 %.sroa.6.0.i2443 to i32
  %i.ck = lshr i32 %i.cj, 3                       ; 3 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10153
  store i64 -9223372036854775803, ptr %i.g, align 8, !noalias !10153
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g), !noalias !10154, !inline_history !10126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10153
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread44, %bb.w, %bb.u, %bb.t
  %.sroa.11.0.ph = phi ptr [ %i.ch, %bb.t ], [ %i.bp, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread44 ], [ %i.cm, %bb.w ], [ %i.ci, %bb.u ], [ %i.cb, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph) ]
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54

bb.x:                                             ; preds = %bb.v
  %.sroa.11.8.extract.trunc = trunc nuw nsw i64 %i.cg to i8 ; 4 uses
  switch i32 %i.ck, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit [
    i32 1, label %bb.y
    i32 2, label %bb.ab
    i32 3, label %bb.ae
  ]

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10155)
  %i.cn = load ptr, ptr %i.ax, align 8, !alias.scope !10155, !noalias !10156, !align !59, !noundef !58
  %.not.i29 = icmp eq ptr %i.cn, null
  br i1 %.not.i29, label %bb.z, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit31

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10157
  %i.co = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !10157 ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.aa, label %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i30, !prof !57

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #49, !noalias !10157
  unreachable

_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i30: ; preds = %bb.z
  store i64 -1, ptr %i.co, align 8, !noalias !10157
  store ptr %i.co, ptr %i.ax, align 8, !alias.scope !10155, !noalias !10156
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit31

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit31: ; preds = %bb.y, %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i30
  %i.cq = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, ptr noalias noundef align 8 dereferenceable(8) %i.ax, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10158, !inline_history !10134 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.cq, null
  br i1 %.not8.i.i, label %thread-pre-split, label %bb.af

bb.ab:                                            ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10159)
  %i.cr = load ptr, ptr %i.az, align 8, !alias.scope !10159, !noalias !10156, !align !59, !noundef !58
  %.not.i = icmp eq ptr %i.cr, null
  br i1 %.not.i, label %bb.ac, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10160
  %i.cs = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !10160 ; 3 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.ad, label %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i, !prof !57

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #49, !noalias !10160
  unreachable

_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.ac
  store i64 -1, ptr %i.cs, align 8, !noalias !10160
  store ptr %i.cs, ptr %i.az, align 8, !alias.scope !10159, !noalias !10156
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ab, %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i
  %i.cu = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, ptr noalias noundef align 8 dereferenceable(8) %i.az, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10158, !inline_history !10134 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.cu, null
  br i1 %.not7.i.i, label %thread-pre-split, label %bb.ah

bb.ae:                                            ; preds = %bb.x
  %i.cv = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint325mergeQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, ptr noalias noundef align 4 dereferenceable(4) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %.not.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i, label %thread-pre-split, label %bb.aj

bb.af:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cq, ptr %i.a, align 8, !noalias !10161
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @325, i64 noundef 7)
          to label %_RNCINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit unwind label %bb.ag, !noalias !10158

common.resume:                                    ; preds = %bb.ak, %bb.ai, %bb.ag
  %.sink = phi ptr [ %i.c, %bb.ak ], [ %i.b, %bb.ai ], [ %i.a, %bb.ag ]
  %common.resume.op = phi { ptr, i32 } [ %i.da, %bb.ak ], [ %i.cy, %bb.ai ], [ %i.cw, %bb.ag ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink) #50, !noalias !10158
  resume { ptr, i32 } %common.resume.op

bb.ag:                                            ; preds = %bb.af
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNCINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.af
  %i.cx = load ptr, ptr %i.a, align 8, !noalias !10161, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54

bb.ah:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.cu, ptr %i.b, align 8, !noalias !10162
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @362, i64 noundef 5)
          to label %_RNCINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit unwind label %bb.ai, !noalias !10158

bb.ai:                                            ; preds = %bb.ah
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNCINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ah
  %i.cz = load ptr, ptr %i.b, align 8, !noalias !10162, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.cv, ptr %i.c, align 8, !noalias !10163
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @361, i64 noundef 20)
          to label %_RNCINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsaSXGKSfiU2E_10lance_file.exit unwind label %bb.ak, !noalias !10164

bb.ak:                                            ; preds = %bb.aj
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNCINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.aj
  %i.db = load ptr, ptr %i.c, align 8, !noalias !10163, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.x
  %i.dc = tail call fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10skip_fieldQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, i32 noundef %i.ck, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10165, !inline_history !10134 ; 2 uses
  %.not14 = icmp eq ptr %i.dc, null
  br i1 %.not14, label %thread-pre-split, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54

bb.al:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 -9223372036854775800, ptr %i.l, align 8
  %i.dd = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54: ; preds = %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread, %bb.g, %bb.b, %_RNCINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit, %_RNCINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsaSXGKSfiU2E_10lance_file.exit, %_RNCINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit, %._crit_edge, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit, %bb.al, %bb.k
  %.sroa.0.0 = phi ptr [ %i.ap, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit ], [ %i.bb, %bb.k ], [ null, %._crit_edge ], [ %i.dd, %bb.al ], [ %i.p, %bb.b ], [ %i.cz, %_RNCINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit ], [ %i.cx, %_RNCINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit ], [ %i.db, %_RNCINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsaSXGKSfiU2E_10lance_file.exit ], [ %i.ad, %bb.g ], [ %.sroa.11.0.ph, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread ], [ %i.dc, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructENCINvNtB2_7message5mergeBJ_QRShE0B2K_ECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10198)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !10198, !nonnull !58, !align !59, !noundef !58 ; 9 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !10198, !nonnull !58, !noundef !58 ; 4 uses
  %i.m = getelementptr i8, ptr %.val.i, i64 8     ; 9 uses
  %.val1.i.i = load i64, ptr %i.m, align 8, !noalias !10198, !noundef !58 ; 5 uses
  %i.n = icmp eq i64 %.val1.i.i, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10198
  store i64 -9223372036854775807, ptr %i.j, align 8, !noalias !10198
  %i.o = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.j), !noalias !10198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10198
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.c:                                             ; preds = %bb.a
  %i.p = load i8, ptr %.val.i.i, align 1, !noalias !10198, !noundef !58 ; 2 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ugt i64 %.val1.i.i, 10
  br i1 %i.r, label %bb.e, label %bb.f

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.c
  %i.s = add i64 %.val1.i.i, -1                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1
  store ptr %i.t, ptr %.val.i, align 8, !alias.scope !10199, !noalias !10198
  store i64 %i.s, ptr %i.m, align 8, !alias.scope !10199, !noalias !10198
  %i.u = zext nneg i8 %i.p to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34

bb.e:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10198
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i), !noalias !10198
  %i.v = load i64, ptr %i.i, align 8, !range !68, !noalias !10198, !noundef !58
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !noalias !10198, !noundef !58
  %i.ab = icmp sgt i8 %i.aa, -1
  br i1 %i.ab, label %bb.e, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit, !prof !67

bb.g:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.x, align 8, !noalias !10198, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10198
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.h:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.x, align 8, !noalias !10198, !noundef !58
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noalias !10198, !noundef !58 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10198
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10200)
  %i.ag = load i64, ptr %i.m, align 8, !alias.scope !10200, !noalias !10198, !noundef !58 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.i, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i, !prof !57

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10201
  store i64 %i.af, ptr %i.h, align 8, !noalias !10201
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ag, ptr %i.ai, align 8, !noalias !10201
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h) #49, !noalias !10201
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i: ; preds = %bb.h
  %i.aj = load ptr, ptr %.val.i, align 8, !alias.scope !10200, !noalias !10198, !nonnull !58, !noundef !58
  %i.ak = sub nuw i64 %i.ag, %i.af                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.af
  store ptr %i.al, ptr %.val.i, align 8, !alias.scope !10200, !noalias !10198
  store i64 %i.ak, ptr %i.m, align 8, !alias.scope !10200, !noalias !10198
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f
  %i.am = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1) ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0
  %i.ao = extractvalue { i64, ptr } %i.am, 1      ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1
  br i1 %i.ap, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit
  %i.aq = ptrtoint ptr %i.ao to i64
  %.val.i17.pre = load i64, ptr %i.m, align 8
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i
  %.val.i17 = phi i64 [ %.val.i17.pre, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge ], [ %i.s, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.ak, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 4 uses
  %.sroa.6.0.i37 = phi i64 [ %i.aq, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge ], [ %i.u, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.ad, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 3 uses
  %i.ar = icmp ult i64 %.val.i17, %.sroa.6.0.i37
  br i1 %i.ar, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34
  %i.as = sub nuw i64 %.val.i17, %.sroa.6.0.i37   ; 2 uses
  %.not63 = icmp eq i64 %.sroa.6.0.i37, 0
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aw = load ptr, ptr %0, align 8, !nonnull !58 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.l

bb.k:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 -9223372036854775801, ptr %i.l, align 8
  %i.az = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

thread-pre-split:                                 ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit, %bb.y, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit
  %.val.i18.pr = load i64, ptr %i.m, align 8      ; 3 uses
  %i.ba = icmp ugt i64 %.val.i18.pr, %i.as
  br i1 %i.ba, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %thread-pre-split, %bb.j
  %.val.i18.lcssa = phi i64 [ %.val.i17, %bb.j ], [ %.val.i18.pr, %thread-pre-split ]
  %.not = icmp eq i64 %.val.i18.lcssa, %i.as
  br i1 %.not, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51, label %bb.ag

bb.l:                                             ; preds = %.lr.ph, %thread-pre-split
  %.val.i1862 = phi i64 [ %.val.i17, %.lr.ph ], [ %.val.i18.pr, %thread-pre-split ] ; 4 uses
  %.val.i.i22 = load ptr, ptr %.val.i, align 8, !noalias !10202, !nonnull !58, !noundef !58 ; 4 uses
  %i.bb = load i8, ptr %.val.i.i22, align 1, !noalias !10202, !noundef !58 ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = icmp ugt i64 %.val.i1862, 10
  br i1 %i.bd, label %bb.n, label %bb.o

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27: ; preds = %bb.l
  %i.be = add i64 %.val.i1862, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i.i22, i64 1
  store ptr %i.bf, ptr %.val.i, align 8, !alias.scope !10203, !noalias !10202
  store i64 %i.be, ptr %i.m, align 8, !alias.scope !10203, !noalias !10202
  %i.bg = zext nneg i8 %i.bb to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread

bb.n:                                             ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10202
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i22, i64 noundef %.val.i1862), !noalias !10202
  %i.bh = load i64, ptr %i.d, align 8, !range !68, !noalias !10202, !noundef !58
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bj = getelementptr i8, ptr %.val.i.i22, i64 %.val.i1862
  %i.bk = getelementptr i8, ptr %i.bj, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !10202, !noundef !58
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.n, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28, !prof !67

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41: ; preds = %bb.n
  %i.bn = load ptr, ptr %i.at, align 8, !noalias !10202, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10202
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.bo = load i64, ptr %i.at, align 8, !noalias !10202, !noundef !58
  %i.bp = load i64, ptr %i.au, align 8, !noalias !10202, !noundef !58 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10202
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10204), !noalias !10205
  %i.bq = load i64, ptr %i.m, align 8, !alias.scope !10204, !noalias !10202, !noundef !58 ; 3 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  br i1 %i.br, label %bb.q, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26, !prof !57

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10206
  store i64 %i.bp, ptr %i.c, align 8, !noalias !10206
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.bq, ptr %i.bs, align 8, !noalias !10206
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) #49, !noalias !10206
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26: ; preds = %bb.p
  %i.bt = load ptr, ptr %.val.i, align 8, !alias.scope !10204, !noalias !10202, !nonnull !58, !noundef !58
  %i.bu = sub nuw i64 %i.bq, %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bp
  store ptr %i.bv, ptr %.val.i, align 8, !alias.scope !10204, !noalias !10202
  store i64 %i.bu, ptr %i.m, align 8, !alias.scope !10204, !noalias !10202
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread: ; preds = %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26
  %.sroa.6.0.i24.ph = phi i64 [ %i.bo, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26 ], [ %i.bg, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27 ] ; 2 uses
  %i.bw = inttoptr i64 %.sroa.6.0.i24.ph to ptr
  br label %bb.r

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28: ; preds = %bb.o
  %i.bx = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1), !noalias !10205 ; 2 uses
  %i.by = extractvalue { i64, ptr } %i.bx, 0
  %i.bz = extractvalue { i64, ptr } %i.bx, 1      ; 3 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = trunc nuw i64 %i.by to i1
  br i1 %i.cb, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28
  %i.cc = phi ptr [ %i.bw, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread ], [ %i.bz, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ]
  %.sroa.6.0.i2440 = phi i64 [ %.sroa.6.0.i24.ph, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread ], [ %i.ca, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ] ; 3 uses
  %i.cd = icmp ugt ptr %i.cc, inttoptr (i64 4294967295 to ptr)
  br i1 %i.cd, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = and i64 %.sroa.6.0.i2440, 7             ; 3 uses
  %switch = icmp samesign ult i64 %i.ce, 6
  br i1 %switch, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10207
  store i64 %.sroa.6.0.i2440, ptr %i.ay, align 8, !noalias !10207
  store i64 -9223372036854775804, ptr %i.g, align 8, !noalias !10207
  %i.cf = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g), !noalias !10208, !inline_history !10184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10207
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10207
  store i64 %i.ce, ptr %i.av, align 8, !noalias !10207
  store i64 -9223372036854775805, ptr %i.e, align 8, !noalias !10207
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e), !noalias !10208, !inline_history !10184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10207
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.ch = trunc nuw i64 %.sroa.6.0.i2440 to i32
  %i.ci = lshr i32 %i.ch, 3                       ; 3 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10207
  store i64 -9223372036854775803, ptr %i.f, align 8, !noalias !10207
  %i.ck = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f), !noalias !10208, !inline_history !10184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10207
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41, %bb.w, %bb.u, %bb.t
  %.sroa.11.0.ph = phi ptr [ %i.cf, %bb.t ], [ %i.bn, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41 ], [ %i.ck, %bb.w ], [ %i.cg, %bb.u ], [ %i.bz, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph) ]
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.x:                                             ; preds = %bb.v
  %.sroa.11.8.extract.trunc = trunc nuw nsw i64 %i.ce to i8 ; 3 uses
  switch i32 %i.ci, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit [
    i32 1, label %bb.y
    i32 2, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.cl = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6414merge_repeatedQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %.not5.i.i = icmp eq ptr %i.cl, null
  br i1 %.not5.i.i, label %thread-pre-split, label %bb.ac

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10209)
  %i.cm = load ptr, ptr %i.ax, align 8, !alias.scope !10209, !noalias !10210, !align !59, !noundef !58
  %.not.i = icmp eq ptr %i.cm, null
  br i1 %.not.i, label %bb.aa, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10211
  %i.cn = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !10211 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.ab, label %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i, !prof !57

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #49, !noalias !10211
  unreachable

_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.aa
  store i64 -1, ptr %i.cn, align 8, !noalias !10211
  store ptr %i.cn, ptr %i.ax, align 8, !alias.scope !10209, !noalias !10210
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.z, %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i
  %i.cp = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, ptr noalias noundef align 8 dereferenceable(8) %i.ax, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10212, !inline_history !10192 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i, label %thread-pre-split, label %bb.ae

bb.ac:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cl, ptr %i.a, align 8, !noalias !10213
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 12, ptr noalias noundef nonnull readonly captures(address, read_provenance) @298, i64 noundef 14)
          to label %_RNCINvXs3X_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_12PackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit unwind label %bb.ad, !noalias !10210

common.resume:                                    ; preds = %bb.af, %bb.ad
  %.sink = phi ptr [ %i.b, %bb.af ], [ %i.a, %bb.ad ]
  %common.resume.op = phi { ptr, i32 } [ %i.cs, %bb.af ], [ %i.cq, %bb.ad ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink) #50, !noalias !10212
  resume { ptr, i32 } %common.resume.op

bb.ad:                                            ; preds = %bb.ac
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNCINvXs3X_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_12PackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ac
  %i.cr = load ptr, ptr %i.a, align 8, !noalias !10213, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.ae:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.cp, ptr %i.b, align 8, !noalias !10214
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 12, ptr noalias noundef nonnull readonly captures(address, read_provenance) @367, i64 noundef 6)
          to label %_RNCINvXs3X_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_12PackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit unwind label %bb.af, !noalias !10212

bb.af:                                            ; preds = %bb.ae
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNCINvXs3X_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_12PackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ae
  %i.ct = load ptr, ptr %i.b, align 8, !noalias !10214, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.x
  %i.cu = tail call fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10skip_fieldQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, i32 noundef %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10215, !inline_history !10192 ; 2 uses
  %.not14 = icmp eq ptr %i.cu, null
  br i1 %.not14, label %thread-pre-split, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.ag:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 -9223372036854775800, ptr %i.k, align 8
  %i.cv = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51: ; preds = %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread, %bb.g, %bb.b, %_RNCINvXs3X_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_12PackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit, %_RNCINvXs3X_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_12PackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit, %._crit_edge, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit, %bb.ag, %bb.k
  %.sroa.0.0 = phi ptr [ %i.ao, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit ], [ %i.az, %bb.k ], [ null, %._crit_edge ], [ %i.cv, %bb.ag ], [ %i.o, %bb.b ], [ %i.ct, %_RNCINvXs3X_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_12PackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit ], [ %i.cr, %_RNCINvXs3X_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_12PackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit ], [ %i.ac, %bb.g ], [ %.sroa.11.0.ph, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread ], [ %i.cu, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListENCINvNtB2_7message5mergeBJ_QRShE0B2L_ECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10250)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !10250, !nonnull !58, !align !59, !noundef !58 ; 9 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !10250, !nonnull !58, !noundef !58 ; 4 uses
  %i.n = getelementptr i8, ptr %.val.i, i64 8     ; 9 uses
  %.val1.i.i = load i64, ptr %i.n, align 8, !noalias !10250, !noundef !58 ; 5 uses
  %i.o = icmp eq i64 %.val1.i.i, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10250
  store i64 -9223372036854775807, ptr %i.k, align 8, !noalias !10250
  %i.p = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.k), !noalias !10250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10250
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.c:                                             ; preds = %bb.a
  %i.q = load i8, ptr %.val.i.i, align 1, !noalias !10250, !noundef !58 ; 2 uses
  %i.r = icmp sgt i8 %i.q, -1
  br i1 %i.r, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i64 %.val1.i.i, 10
  br i1 %i.s, label %bb.e, label %bb.f

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.c
  %i.t = add i64 %.val1.i.i, -1                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1
  store ptr %i.u, ptr %.val.i, align 8, !alias.scope !10251, !noalias !10250
  store i64 %i.t, ptr %i.n, align 8, !alias.scope !10251, !noalias !10250
  %i.v = zext nneg i8 %i.q to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34

bb.e:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10250
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i), !noalias !10250
  %i.w = load i64, ptr %i.j, align 8, !range !68, !noalias !10250, !noundef !58
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br i1 %i.x, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.aa = getelementptr i8, ptr %i.z, i64 -1
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !10250, !noundef !58
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %bb.e, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit, !prof !67

bb.g:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.y, align 8, !noalias !10250, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10250
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.h:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %i.y, align 8, !noalias !10250, !noundef !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noalias !10250, !noundef !58 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10250
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10252)
  %i.ah = load i64, ptr %i.n, align 8, !alias.scope !10252, !noalias !10250, !noundef !58 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  br i1 %i.ai, label %bb.i, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i, !prof !57

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10253
  store i64 %i.ag, ptr %i.i, align 8, !noalias !10253
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !noalias !10253
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i) #49, !noalias !10253
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i: ; preds = %bb.h
  %i.ak = load ptr, ptr %.val.i, align 8, !alias.scope !10252, !noalias !10250, !nonnull !58, !noundef !58
  %i.al = sub nuw i64 %i.ah, %i.ag                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ag
  store ptr %i.am, ptr %.val.i, align 8, !alias.scope !10252, !noalias !10250
  store i64 %i.al, ptr %i.n, align 8, !alias.scope !10252, !noalias !10250
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f
  %i.an = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1) ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = extractvalue { i64, ptr } %i.an, 1      ; 2 uses
  %i.aq = trunc nuw i64 %i.ao to i1
  br i1 %i.aq, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit
  %i.ar = ptrtoint ptr %i.ap to i64
  %.val.i17.pre = load i64, ptr %i.n, align 8
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i
  %.val.i17 = phi i64 [ %.val.i17.pre, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge ], [ %i.t, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.al, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 4 uses
  %.sroa.6.0.i37 = phi i64 [ %i.ar, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge ], [ %i.v, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.ae, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 3 uses
  %i.as = icmp ult i64 %.val.i17, %.sroa.6.0.i37
  br i1 %i.as, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34
  %i.at = sub nuw i64 %.val.i17, %.sroa.6.0.i37   ; 2 uses
  %.not65 = icmp eq i64 %.sroa.6.0.i37, 0
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ax = load ptr, ptr %0, align 8, !nonnull !58 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.l

bb.k:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 -9223372036854775801, ptr %i.m, align 8
  %i.bb = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

thread-pre-split:                                 ; preds = %bb.ac, %bb.y, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit
  %.val.i18.pr = load i64, ptr %i.n, align 8      ; 3 uses
  %i.bc = icmp ugt i64 %.val.i18.pr, %i.at
  br i1 %i.bc, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %thread-pre-split, %bb.j
  %.val.i18.lcssa = phi i64 [ %.val.i17, %bb.j ], [ %.val.i18.pr, %thread-pre-split ]
  %.not = icmp eq i64 %.val.i18.lcssa, %i.at
  br i1 %.not, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51, label %bb.aj

bb.l:                                             ; preds = %.lr.ph, %thread-pre-split
  %.val.i1864 = phi i64 [ %.val.i17, %.lr.ph ], [ %.val.i18.pr, %thread-pre-split ] ; 4 uses
  %.val.i.i22 = load ptr, ptr %.val.i, align 8, !noalias !10254, !nonnull !58, !noundef !58 ; 4 uses
  %i.bd = load i8, ptr %.val.i.i22, align 1, !noalias !10254, !noundef !58 ; 2 uses
  %i.be = icmp sgt i8 %i.bd, -1
  br i1 %i.be, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = icmp ugt i64 %.val.i1864, 10
  br i1 %i.bf, label %bb.n, label %bb.o

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27: ; preds = %bb.l
  %i.bg = add i64 %.val.i1864, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i22, i64 1
  store ptr %i.bh, ptr %.val.i, align 8, !alias.scope !10255, !noalias !10254
  store i64 %i.bg, ptr %i.n, align 8, !alias.scope !10255, !noalias !10254
  %i.bi = zext nneg i8 %i.bd to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread

bb.n:                                             ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10254
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i22, i64 noundef %.val.i1864), !noalias !10254
  %i.bj = load i64, ptr %i.e, align 8, !range !68, !noalias !10254, !noundef !58
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bl = getelementptr i8, ptr %.val.i.i22, i64 %.val.i1864
  %i.bm = getelementptr i8, ptr %i.bl, i64 -1
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !10254, !noundef !58
  %i.bo = icmp sgt i8 %i.bn, -1
  br i1 %i.bo, label %bb.n, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28, !prof !67

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41: ; preds = %bb.n
  %i.bp = load ptr, ptr %i.au, align 8, !noalias !10254, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10254
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.bq = load i64, ptr %i.au, align 8, !noalias !10254, !noundef !58
  %i.br = load i64, ptr %i.av, align 8, !noalias !10254, !noundef !58 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10254
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10256), !noalias !10257
  %i.bs = load i64, ptr %i.n, align 8, !alias.scope !10256, !noalias !10254, !noundef !58 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  br i1 %i.bt, label %bb.q, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26, !prof !57

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10258
  store i64 %i.br, ptr %i.d, align 8, !noalias !10258
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.bs, ptr %i.bu, align 8, !noalias !10258
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) #49, !noalias !10258
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26: ; preds = %bb.p
  %i.bv = load ptr, ptr %.val.i, align 8, !alias.scope !10256, !noalias !10254, !nonnull !58, !noundef !58
  %i.bw = sub nuw i64 %i.bs, %i.br
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.br
  store ptr %i.bx, ptr %.val.i, align 8, !alias.scope !10256, !noalias !10254
  store i64 %i.bw, ptr %i.n, align 8, !alias.scope !10256, !noalias !10254
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread: ; preds = %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26
  %.sroa.6.0.i24.ph = phi i64 [ %i.bq, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26 ], [ %i.bi, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27 ] ; 2 uses
  %i.by = inttoptr i64 %.sroa.6.0.i24.ph to ptr
  br label %bb.r

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28: ; preds = %bb.o
  %i.bz = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1), !noalias !10257 ; 2 uses
  %i.ca = extractvalue { i64, ptr } %i.bz, 0
  %i.cb = extractvalue { i64, ptr } %i.bz, 1      ; 3 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = trunc nuw i64 %i.ca to i1
  br i1 %i.cd, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28
  %i.ce = phi ptr [ %i.by, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread ], [ %i.cb, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ]
  %.sroa.6.0.i2440 = phi i64 [ %.sroa.6.0.i24.ph, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread ], [ %i.cc, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ] ; 3 uses
  %i.cf = icmp ugt ptr %i.ce, inttoptr (i64 4294967295 to ptr)
  br i1 %i.cf, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = and i64 %.sroa.6.0.i2440, 7             ; 3 uses
  %switch = icmp samesign ult i64 %i.cg, 6
  br i1 %switch, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10259
  store i64 %.sroa.6.0.i2440, ptr %i.ba, align 8, !noalias !10259
  store i64 -9223372036854775804, ptr %i.h, align 8, !noalias !10259
  %i.ch = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.h), !noalias !10260, !inline_history !10234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10259
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10259
  store i64 %i.cg, ptr %i.aw, align 8, !noalias !10259
  store i64 -9223372036854775805, ptr %i.f, align 8, !noalias !10259
  %i.ci = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f), !noalias !10260, !inline_history !10234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10259
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.cj = trunc nuw i64 %.sroa.6.0.i2440 to i32
  %i.ck = lshr i32 %i.cj, 3                       ; 3 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10259
  store i64 -9223372036854775803, ptr %i.g, align 8, !noalias !10259
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g), !noalias !10260, !inline_history !10234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10259
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41, %bb.w, %bb.u, %bb.t
  %.sroa.11.0.ph = phi ptr [ %i.ch, %bb.t ], [ %i.bp, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41 ], [ %i.cm, %bb.w ], [ %i.ci, %bb.u ], [ %i.cb, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph) ]
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.x:                                             ; preds = %bb.v
  %.sroa.11.8.extract.trunc = trunc nuw nsw i64 %i.cg to i8 ; 4 uses
  switch i32 %i.ck, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit [
    i32 1, label %bb.y
    i32 2, label %bb.z
    i32 3, label %bb.ac
  ]

bb.y:                                             ; preds = %bb.x
  %i.cn = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint645mergeQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %.not8.i.i = icmp eq ptr %i.cn, null
  br i1 %.not8.i.i, label %thread-pre-split, label %bb.ad

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10261)
  %i.co = load ptr, ptr %i.az, align 8, !alias.scope !10261, !noalias !10262, !align !59, !noundef !58
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %bb.aa, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10263
  %i.cp = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !10263 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.ab, label %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i, !prof !57

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #49, !noalias !10263
  unreachable

_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.aa
  store i64 -1, ptr %i.cp, align 8, !noalias !10263
  store ptr %i.cp, ptr %i.az, align 8, !alias.scope !10261, !noalias !10262
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.z, %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i
  %i.cr = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, ptr noalias noundef align 8 dereferenceable(8) %i.az, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10264, !inline_history !10242 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.cr, null
  br i1 %.not7.i.i, label %thread-pre-split, label %bb.af

bb.ac:                                            ; preds = %bb.x
  %i.cs = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding4bool5mergeQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, ptr noalias noundef dereferenceable(1) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %.not.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i, label %thread-pre-split, label %bb.ah

bb.ad:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cn, ptr %i.a, align 8, !noalias !10265
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @372, i64 noundef 15)
          to label %_RNCINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit unwind label %bb.ae, !noalias !10266

common.resume:                                    ; preds = %bb.ai, %bb.ag, %bb.ae
  %.sink = phi ptr [ %i.c, %bb.ai ], [ %i.b, %bb.ag ], [ %i.a, %bb.ae ]
  %common.resume.op = phi { ptr, i32 } [ %i.cx, %bb.ai ], [ %i.cv, %bb.ag ], [ %i.ct, %bb.ae ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink) #50, !noalias !10264
  resume { ptr, i32 } %common.resume.op

bb.ae:                                            ; preds = %bb.ad
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNCINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ad
  %i.cu = load ptr, ptr %i.a, align 8, !noalias !10265, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.af:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.cr, ptr %i.b, align 8, !noalias !10267
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @367, i64 noundef 6)
          to label %_RNCINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit unwind label %bb.ag, !noalias !10264

bb.ag:                                            ; preds = %bb.af
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNCINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.af
  %i.cw = load ptr, ptr %i.b, align 8, !noalias !10267, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.ah:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.cs, ptr %i.c, align 8, !noalias !10268
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @373, i64 noundef 12)
          to label %_RNCINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsaSXGKSfiU2E_10lance_file.exit unwind label %bb.ai, !noalias !10266

bb.ai:                                            ; preds = %bb.ah
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNCINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ah
  %i.cy = load ptr, ptr %i.c, align 8, !noalias !10268, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.x
  %i.cz = tail call fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10skip_fieldQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, i32 noundef %i.ck, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10269, !inline_history !10242 ; 2 uses
  %.not14 = icmp eq ptr %i.cz, null
  br i1 %.not14, label %thread-pre-split, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.aj:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 -9223372036854775800, ptr %i.l, align 8
  %i.da = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51: ; preds = %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread, %bb.g, %bb.b, %_RNCINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit, %_RNCINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsaSXGKSfiU2E_10lance_file.exit, %_RNCINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit, %._crit_edge, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit, %bb.aj, %bb.k
  %.sroa.0.0 = phi ptr [ %i.ap, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit ], [ %i.bb, %bb.k ], [ null, %._crit_edge ], [ %i.da, %bb.aj ], [ %i.p, %bb.b ], [ %i.cw, %_RNCINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit ], [ %i.cu, %_RNCINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit ], [ %i.cy, %_RNCINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsaSXGKSfiU2E_10lance_file.exit ], [ %i.ad, %bb.g ], [ %.sroa.11.0.ph, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread ], [ %i.cz, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitENCINvNtB2_7message5mergeBJ_QRShE0B2N_ECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10300)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !10300, !nonnull !58, !align !59, !noundef !58 ; 9 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !10300, !nonnull !58, !noundef !58 ; 4 uses
  %i.l = getelementptr i8, ptr %.val.i, i64 8     ; 9 uses
  %.val1.i.i = load i64, ptr %i.l, align 8, !noalias !10300, !noundef !58 ; 5 uses
  %i.m = icmp eq i64 %.val1.i.i, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10300
  store i64 -9223372036854775807, ptr %i.i, align 8, !noalias !10300
  %i.n = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.i), !noalias !10300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10300
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.o = load i8, ptr %.val.i.i, align 1, !noalias !10300, !noundef !58 ; 2 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ugt i64 %.val1.i.i, 10
  br i1 %i.q, label %bb.e, label %bb.f

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.c
  %i.r = add i64 %.val1.i.i, -1                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1
  store ptr %i.s, ptr %.val.i, align 8, !alias.scope !10301, !noalias !10300
  store i64 %i.r, ptr %i.l, align 8, !alias.scope !10301, !noalias !10300
  %i.t = zext nneg i8 %i.o to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34

bb.e:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10300
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i), !noalias !10300
  %i.u = load i64, ptr %i.h, align 8, !range !68, !noalias !10300, !noundef !58
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.y = getelementptr i8, ptr %i.x, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !noalias !10300, !noundef !58
  %i.aa = icmp sgt i8 %i.z, -1
  br i1 %i.aa, label %bb.e, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit, !prof !67

bb.g:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.w, align 8, !noalias !10300, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10300
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %i.w, align 8, !noalias !10300, !noundef !58
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !10300, !noundef !58 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10300
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10302)
  %i.af = load i64, ptr %i.l, align 8, !alias.scope !10302, !noalias !10300, !noundef !58 ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  br i1 %i.ag, label %bb.i, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i, !prof !57

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10303
  store i64 %i.ae, ptr %i.g, align 8, !noalias !10303
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !noalias !10303
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g) #49, !noalias !10303
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i: ; preds = %bb.h
  %i.ai = load ptr, ptr %.val.i, align 8, !alias.scope !10302, !noalias !10300, !nonnull !58, !noundef !58
  %i.aj = sub nuw i64 %i.af, %i.ae                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ae
  store ptr %i.ak, ptr %.val.i, align 8, !alias.scope !10302, !noalias !10300
  store i64 %i.aj, ptr %i.l, align 8, !alias.scope !10302, !noalias !10300
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f
  %i.al = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1) ; 2 uses
  %i.am = extractvalue { i64, ptr } %i.al, 0
  %i.an = extractvalue { i64, ptr } %i.al, 1      ; 2 uses
  %i.ao = trunc nuw i64 %i.am to i1
  br i1 %i.ao, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit
  %i.ap = ptrtoint ptr %i.an to i64
  %.val.i17.pre = load i64, ptr %i.l, align 8
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i
  %.val.i17 = phi i64 [ %.val.i17.pre, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge ], [ %i.r, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.aj, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 4 uses
  %.sroa.6.0.i37 = phi i64 [ %i.ap, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge ], [ %i.t, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.ac, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 3 uses
  %i.aq = icmp ult i64 %.val.i17, %.sroa.6.0.i37
  br i1 %i.aq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34
  %i.ar = sub nuw i64 %.val.i17, %.sroa.6.0.i37   ; 2 uses
  %.not60 = icmp eq i64 %.sroa.6.0.i37, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.av = load ptr, ptr %0, align 8, !nonnull !58 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.l

bb.k:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 -9223372036854775801, ptr %i.k, align 8
  %i.ax = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread

thread-pre-split:                                 ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file.exit
  %.val.i18.pr = load i64, ptr %i.l, align 8      ; 3 uses
  %i.ay = icmp ugt i64 %.val.i18.pr, %i.ar
  br i1 %i.ay, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %thread-pre-split, %bb.j
  %.val.i18.lcssa = phi i64 [ %.val.i17, %bb.j ], [ %.val.i18.pr, %thread-pre-split ]
  %.not = icmp eq i64 %.val.i18.lcssa, %i.ar
  br i1 %.not, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.ad

bb.l:                                             ; preds = %.lr.ph, %thread-pre-split
  %.val.i1859 = phi i64 [ %.val.i17, %.lr.ph ], [ %.val.i18.pr, %thread-pre-split ] ; 4 uses
  %.val.i.i22 = load ptr, ptr %.val.i, align 8, !noalias !10304, !nonnull !58, !noundef !58 ; 4 uses
  %i.az = load i8, ptr %.val.i.i22, align 1, !noalias !10304, !noundef !58 ; 2 uses
  %i.ba = icmp sgt i8 %i.az, -1
  br i1 %i.ba, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = icmp ugt i64 %.val.i1859, 10
  br i1 %i.bb, label %bb.n, label %bb.o

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27: ; preds = %bb.l
  %i.bc = add i64 %.val.i1859, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i.i22, i64 1
  store ptr %i.bd, ptr %.val.i, align 8, !alias.scope !10305, !noalias !10304
  store i64 %i.bc, ptr %i.l, align 8, !alias.scope !10305, !noalias !10304
  %i.be = zext nneg i8 %i.az to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread

bb.n:                                             ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10304
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i22, i64 noundef %.val.i1859), !noalias !10304
  %i.bf = load i64, ptr %i.c, align 8, !range !68, !noalias !10304, !noundef !58
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bh = getelementptr i8, ptr %.val.i.i22, i64 %.val.i1859
  %i.bi = getelementptr i8, ptr %i.bh, i64 -1
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !10304, !noundef !58
  %i.bk = icmp sgt i8 %i.bj, -1
  br i1 %i.bk, label %bb.n, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28, !prof !67

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41: ; preds = %bb.n
  %i.bl = load ptr, ptr %i.as, align 8, !noalias !10304, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10304
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.bm = load i64, ptr %i.as, align 8, !noalias !10304, !noundef !58
  %i.bn = load i64, ptr %i.at, align 8, !noalias !10304, !noundef !58 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10306), !noalias !10307
  %i.bo = load i64, ptr %i.l, align 8, !alias.scope !10306, !noalias !10304, !noundef !58 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  br i1 %i.bp, label %bb.q, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26, !prof !57

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10308
  store i64 %i.bn, ptr %i.b, align 8, !noalias !10308
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bo, ptr %i.bq, align 8, !noalias !10308
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) #49, !noalias !10308
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26: ; preds = %bb.p
  %i.br = load ptr, ptr %.val.i, align 8, !alias.scope !10306, !noalias !10304, !nonnull !58, !noundef !58
  %i.bs = sub nuw i64 %i.bo, %i.bn
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bn
  store ptr %i.bt, ptr %.val.i, align 8, !alias.scope !10306, !noalias !10304
  store i64 %i.bs, ptr %i.l, align 8, !alias.scope !10306, !noalias !10304
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread: ; preds = %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26
  %.sroa.6.0.i24.ph = phi i64 [ %i.bm, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26 ], [ %i.be, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27 ] ; 2 uses
  %i.bu = inttoptr i64 %.sroa.6.0.i24.ph to ptr
  br label %bb.r

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28: ; preds = %bb.o
  %i.bv = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1), !noalias !10307 ; 2 uses
  %i.bw = extractvalue { i64, ptr } %i.bv, 0
  %i.bx = extractvalue { i64, ptr } %i.bv, 1      ; 3 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = trunc nuw i64 %i.bw to i1
  br i1 %i.bz, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28
  %i.ca = phi ptr [ %i.bu, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread ], [ %i.bx, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ]
  %.sroa.6.0.i2440 = phi i64 [ %.sroa.6.0.i24.ph, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread ], [ %i.by, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ] ; 3 uses
  %i.cb = icmp ugt ptr %i.ca, inttoptr (i64 4294967295 to ptr)
  br i1 %i.cb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = and i64 %.sroa.6.0.i2440, 7             ; 3 uses
  %switch = icmp samesign ult i64 %i.cc, 6
  br i1 %switch, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10309
  store i64 %.sroa.6.0.i2440, ptr %i.aw, align 8, !noalias !10309
  store i64 -9223372036854775804, ptr %i.f, align 8, !noalias !10309
  %i.cd = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f), !noalias !10310, !inline_history !10288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10309
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10309
  store i64 %i.cc, ptr %i.au, align 8, !noalias !10309
  store i64 -9223372036854775805, ptr %i.d, align 8, !noalias !10309
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d), !noalias !10310, !inline_history !10288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10309
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.cf = trunc nuw i64 %.sroa.6.0.i2440 to i32
  %i.cg = lshr i32 %i.cf, 3                       ; 3 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10309
  store i64 -9223372036854775803, ptr %i.e, align 8, !noalias !10309
  %i.ci = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e), !noalias !10310, !inline_history !10288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10309
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41, %bb.w, %bb.u, %bb.t
  %.sroa.11.0.ph = phi ptr [ %i.cd, %bb.t ], [ %i.bl, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41 ], [ %i.ci, %bb.w ], [ %i.ce, %bb.u ], [ %i.bx, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph) ]
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread

bb.x:                                             ; preds = %bb.v
  %.sroa.11.8.extract.trunc = trunc nuw nsw i64 %i.cc to i8 ; 2 uses
  %i.cj = icmp eq i32 %i.cg, 1
  br i1 %i.cj, label %bb.y, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file.exit

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10311)
  %i.ck = load ptr, ptr %i.av, align 8, !alias.scope !10311, !noalias !10312, !align !59, !noundef !58
  %.not.i = icmp eq ptr %i.ck, null
  br i1 %.not.i, label %bb.z, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10313
  %i.cl = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !10313 ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.aa, label %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i, !prof !57

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #49, !noalias !10313
  unreachable

_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.z
  store i64 -1, ptr %i.cl, align 8, !noalias !10313
  store ptr %i.cl, ptr %i.av, align 8, !alias.scope !10311, !noalias !10312
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.y, %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i
  %i.cn = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, ptr noalias noundef align 8 dereferenceable(8) %i.av, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10314, !inline_history !10296 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i, label %thread-pre-split, label %bb.ab

bb.ab:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cn, ptr %i.a, align 8, !noalias !10315
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @379, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @367, i64 noundef 6)
          to label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread50 unwind label %bb.ac, !noalias !10314

bb.ac:                                            ; preds = %bb.ab
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #50, !noalias !10314
  resume { ptr, i32 } %i.co

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread50: ; preds = %bb.ab
  %i.cp = load ptr, ptr %i.a, align 8, !noalias !10315, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.x
  %i.cq = tail call fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10skip_fieldQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, i32 noundef %i.cg, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10316, !inline_history !10296 ; 2 uses
  %.not14 = icmp eq ptr %i.cq, null
  br i1 %.not14, label %thread-pre-split, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread

bb.ad:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 -9223372036854775800, ptr %i.j, align 8
  %i.cr = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file.exit, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread, %bb.g, %bb.b, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread50, %._crit_edge, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit, %bb.ad, %bb.k
  %.sroa.0.0 = phi ptr [ %i.an, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit ], [ %i.ax, %bb.k ], [ null, %._crit_edge ], [ %i.cr, %bb.ad ], [ %i.n, %bb.b ], [ %i.cp, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread50 ], [ %i.ab, %bb.g ], [ %.sroa.11.0.ph, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread ], [ %i.cq, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingENCINvNtB2_7message5mergeBJ_QRShE0B2R_ECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10349)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !10349, !nonnull !58, !align !59, !noundef !58 ; 9 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !10349, !nonnull !58, !noundef !58 ; 4 uses
  %i.m = getelementptr i8, ptr %.val.i, i64 8     ; 9 uses
  %.val1.i.i = load i64, ptr %i.m, align 8, !noalias !10349, !noundef !58 ; 5 uses
  %i.n = icmp eq i64 %.val1.i.i, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10349
  store i64 -9223372036854775807, ptr %i.j, align 8, !noalias !10349
  %i.o = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.j), !noalias !10349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10349
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.c:                                             ; preds = %bb.a
  %i.p = load i8, ptr %.val.i.i, align 1, !noalias !10349, !noundef !58 ; 2 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ugt i64 %.val1.i.i, 10
  br i1 %i.r, label %bb.e, label %bb.f

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.c
  %i.s = add i64 %.val1.i.i, -1                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1
  store ptr %i.t, ptr %.val.i, align 8, !alias.scope !10350, !noalias !10349
  store i64 %i.s, ptr %i.m, align 8, !alias.scope !10350, !noalias !10349
  %i.u = zext nneg i8 %i.p to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34

bb.e:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10349
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i), !noalias !10349
  %i.v = load i64, ptr %i.i, align 8, !range !68, !noalias !10349, !noundef !58
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !noalias !10349, !noundef !58
  %i.ab = icmp sgt i8 %i.aa, -1
  br i1 %i.ab, label %bb.e, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit, !prof !67

bb.g:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.x, align 8, !noalias !10349, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10349
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.h:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.x, align 8, !noalias !10349, !noundef !58
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noalias !10349, !noundef !58 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10349
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10351)
  %i.ag = load i64, ptr %i.m, align 8, !alias.scope !10351, !noalias !10349, !noundef !58 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.i, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i, !prof !57

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10352
  store i64 %i.af, ptr %i.h, align 8, !noalias !10352
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ag, ptr %i.ai, align 8, !noalias !10352
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h) #49, !noalias !10352
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i: ; preds = %bb.h
  %i.aj = load ptr, ptr %.val.i, align 8, !alias.scope !10351, !noalias !10349, !nonnull !58, !noundef !58
  %i.ak = sub nuw i64 %i.ag, %i.af                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.af
  store ptr %i.al, ptr %.val.i, align 8, !alias.scope !10351, !noalias !10349
  store i64 %i.ak, ptr %i.m, align 8, !alias.scope !10351, !noalias !10349
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f
  %i.am = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1) ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0
  %i.ao = extractvalue { i64, ptr } %i.am, 1      ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1
  br i1 %i.ap, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit
  %i.aq = ptrtoint ptr %i.ao to i64
  %.val.i17.pre = load i64, ptr %i.m, align 8
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i
  %.val.i17 = phi i64 [ %.val.i17.pre, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge ], [ %i.s, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.ak, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 4 uses
  %.sroa.6.0.i37 = phi i64 [ %i.aq, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge ], [ %i.u, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.ad, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 3 uses
  %i.ar = icmp ult i64 %.val.i17, %.sroa.6.0.i37
  br i1 %i.ar, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34
  %i.as = sub nuw i64 %.val.i17, %.sroa.6.0.i37   ; 2 uses
  %.not63 = icmp eq i64 %.sroa.6.0.i37, 0
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aw = load ptr, ptr %0, align 8, !nonnull !58 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.l

bb.k:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 -9223372036854775801, ptr %i.l, align 8
  %i.az = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

thread-pre-split:                                 ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit, %bb.y, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit
  %.val.i18.pr = load i64, ptr %i.m, align 8      ; 3 uses
  %i.ba = icmp ugt i64 %.val.i18.pr, %i.as
  br i1 %i.ba, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %thread-pre-split, %bb.j
  %.val.i18.lcssa = phi i64 [ %.val.i17, %bb.j ], [ %.val.i18.pr, %thread-pre-split ]
  %.not = icmp eq i64 %.val.i18.lcssa, %i.as
  br i1 %.not, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51, label %bb.ag

bb.l:                                             ; preds = %.lr.ph, %thread-pre-split
  %.val.i1862 = phi i64 [ %.val.i17, %.lr.ph ], [ %.val.i18.pr, %thread-pre-split ] ; 4 uses
  %.val.i.i22 = load ptr, ptr %.val.i, align 8, !noalias !10353, !nonnull !58, !noundef !58 ; 4 uses
  %i.bb = load i8, ptr %.val.i.i22, align 1, !noalias !10353, !noundef !58 ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = icmp ugt i64 %.val.i1862, 10
  br i1 %i.bd, label %bb.n, label %bb.o

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27: ; preds = %bb.l
  %i.be = add i64 %.val.i1862, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i.i22, i64 1
  store ptr %i.bf, ptr %.val.i, align 8, !alias.scope !10354, !noalias !10353
  store i64 %i.be, ptr %i.m, align 8, !alias.scope !10354, !noalias !10353
  %i.bg = zext nneg i8 %i.bb to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread

bb.n:                                             ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10353
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i22, i64 noundef %.val.i1862), !noalias !10353
  %i.bh = load i64, ptr %i.d, align 8, !range !68, !noalias !10353, !noundef !58
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bj = getelementptr i8, ptr %.val.i.i22, i64 %.val.i1862
  %i.bk = getelementptr i8, ptr %i.bj, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !10353, !noundef !58
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.n, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28, !prof !67

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41: ; preds = %bb.n
  %i.bn = load ptr, ptr %i.at, align 8, !noalias !10353, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10353
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.bo = load i64, ptr %i.at, align 8, !noalias !10353, !noundef !58
  %i.bp = load i64, ptr %i.au, align 8, !noalias !10353, !noundef !58 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10353
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10355), !noalias !10356
  %i.bq = load i64, ptr %i.m, align 8, !alias.scope !10355, !noalias !10353, !noundef !58 ; 3 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  br i1 %i.br, label %bb.q, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26, !prof !57

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10357
  store i64 %i.bp, ptr %i.c, align 8, !noalias !10357
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.bq, ptr %i.bs, align 8, !noalias !10357
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) #49, !noalias !10357
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26: ; preds = %bb.p
  %i.bt = load ptr, ptr %.val.i, align 8, !alias.scope !10355, !noalias !10353, !nonnull !58, !noundef !58
  %i.bu = sub nuw i64 %i.bq, %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bp
  store ptr %i.bv, ptr %.val.i, align 8, !alias.scope !10355, !noalias !10353
  store i64 %i.bu, ptr %i.m, align 8, !alias.scope !10355, !noalias !10353
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread: ; preds = %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26
  %.sroa.6.0.i24.ph = phi i64 [ %i.bo, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26 ], [ %i.bg, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27 ] ; 2 uses
  %i.bw = inttoptr i64 %.sroa.6.0.i24.ph to ptr
  br label %bb.r

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28: ; preds = %bb.o
  %i.bx = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1), !noalias !10356 ; 2 uses
  %i.by = extractvalue { i64, ptr } %i.bx, 0
  %i.bz = extractvalue { i64, ptr } %i.bx, 1      ; 3 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = trunc nuw i64 %i.by to i1
  br i1 %i.cb, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28
  %i.cc = phi ptr [ %i.bw, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread ], [ %i.bz, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ]
  %.sroa.6.0.i2440 = phi i64 [ %.sroa.6.0.i24.ph, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread ], [ %i.ca, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ] ; 3 uses
  %i.cd = icmp ugt ptr %i.cc, inttoptr (i64 4294967295 to ptr)
  br i1 %i.cd, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = and i64 %.sroa.6.0.i2440, 7             ; 3 uses
  %switch = icmp samesign ult i64 %i.ce, 6
  br i1 %switch, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10358
  store i64 %.sroa.6.0.i2440, ptr %i.ay, align 8, !noalias !10358
  store i64 -9223372036854775804, ptr %i.g, align 8, !noalias !10358
  %i.cf = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g), !noalias !10359, !inline_history !10335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10358
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10358
  store i64 %i.ce, ptr %i.av, align 8, !noalias !10358
  store i64 -9223372036854775805, ptr %i.e, align 8, !noalias !10358
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e), !noalias !10359, !inline_history !10335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10358
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.ch = trunc nuw i64 %.sroa.6.0.i2440 to i32
  %i.ci = lshr i32 %i.ch, 3                       ; 3 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10358
  store i64 -9223372036854775803, ptr %i.f, align 8, !noalias !10358
  %i.ck = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f), !noalias !10359, !inline_history !10335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10358
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41, %bb.w, %bb.u, %bb.t
  %.sroa.11.0.ph = phi ptr [ %i.cf, %bb.t ], [ %i.bn, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41 ], [ %i.ck, %bb.w ], [ %i.cg, %bb.u ], [ %i.bz, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph) ]
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.x:                                             ; preds = %bb.v
  %.sroa.11.8.extract.trunc = trunc nuw nsw i64 %i.ce to i8 ; 3 uses
  switch i32 %i.ci, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit [
    i32 1, label %bb.y
    i32 3, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.cl = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint645mergeQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %.not5.i.i = icmp eq ptr %i.cl, null
  br i1 %.not5.i.i, label %thread-pre-split, label %bb.ac

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10360)
  %i.cm = load ptr, ptr %i.ax, align 8, !alias.scope !10360, !noalias !10361, !align !59, !noundef !58
  %.not.i = icmp eq ptr %i.cm, null
  br i1 %.not.i, label %bb.aa, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10362
  %i.cn = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !10362 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.ab, label %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i, !prof !57

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #49, !noalias !10362
  unreachable

_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.aa
  store i64 -1, ptr %i.cn, align 8, !noalias !10362
  store ptr %i.cn, ptr %i.ax, align 8, !alias.scope !10360, !noalias !10361
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.z, %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i
  %i.cp = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, ptr noalias noundef align 8 dereferenceable(8) %i.ax, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10363, !inline_history !10343 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i, label %thread-pre-split, label %bb.ae

bb.ac:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cl, ptr %i.a, align 8, !noalias !10364
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @310, i64 noundef 19, ptr noalias noundef nonnull readonly captures(address, read_provenance) @306, i64 noundef 27)
          to label %_RNCINvXs3j_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_19OutOfLineBitpackingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit unwind label %bb.ad, !noalias !10365

common.resume:                                    ; preds = %bb.af, %bb.ad
  %.sink = phi ptr [ %i.b, %bb.af ], [ %i.a, %bb.ad ]
  %common.resume.op = phi { ptr, i32 } [ %i.cs, %bb.af ], [ %i.cq, %bb.ad ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink) #50, !noalias !10363
  resume { ptr, i32 } %common.resume.op

bb.ad:                                            ; preds = %bb.ac
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNCINvXs3j_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_19OutOfLineBitpackingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ac
  %i.cr = load ptr, ptr %i.a, align 8, !noalias !10364, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.ae:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.cp, ptr %i.b, align 8, !noalias !10366
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @310, i64 noundef 19, ptr noalias noundef nonnull readonly captures(address, read_provenance) @367, i64 noundef 6)
          to label %_RNCINvXs3j_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_19OutOfLineBitpackingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit unwind label %bb.af, !noalias !10363

bb.af:                                            ; preds = %bb.ae
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNCINvXs3j_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_19OutOfLineBitpackingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ae
  %i.ct = load ptr, ptr %i.b, align 8, !noalias !10366, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.x
  %i.cu = tail call fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10skip_fieldQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, i32 noundef %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10367, !inline_history !10343 ; 2 uses
  %.not14 = icmp eq ptr %i.cu, null
  br i1 %.not14, label %thread-pre-split, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.ag:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 -9223372036854775800, ptr %i.k, align 8
  %i.cv = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51: ; preds = %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread, %bb.g, %bb.b, %_RNCINvXs3j_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_19OutOfLineBitpackingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit, %_RNCINvXs3j_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_19OutOfLineBitpackingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit, %._crit_edge, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit, %bb.ag, %bb.k
  %.sroa.0.0 = phi ptr [ %i.ao, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit ], [ %i.az, %bb.k ], [ null, %._crit_edge ], [ %i.cv, %bb.ag ], [ %i.o, %bb.b ], [ %i.ct, %_RNCINvXs3j_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_19OutOfLineBitpackingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit ], [ %i.cr, %_RNCINvXs3j_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_19OutOfLineBitpackingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit ], [ %i.ac, %bb.g ], [ %.sroa.11.0.ph, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread ], [ %i.cu, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleENCINvNtB2_7message5mergeBJ_QRShE0B2A_ECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10402)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !10402, !nonnull !58, !align !59, !noundef !58 ; 9 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !10402, !nonnull !58, !noundef !58 ; 4 uses
  %i.m = getelementptr i8, ptr %.val.i, i64 8     ; 9 uses
  %.val1.i.i = load i64, ptr %i.m, align 8, !noalias !10402, !noundef !58 ; 5 uses
  %i.n = icmp eq i64 %.val1.i.i, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10402
  store i64 -9223372036854775807, ptr %i.j, align 8, !noalias !10402
  %i.o = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.j), !noalias !10402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10402
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54

bb.c:                                             ; preds = %bb.a
  %i.p = load i8, ptr %.val.i.i, align 1, !noalias !10402, !noundef !58 ; 2 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ugt i64 %.val1.i.i, 10
  br i1 %i.r, label %bb.e, label %bb.f

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.c
  %i.s = add i64 %.val1.i.i, -1                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1
  store ptr %i.t, ptr %.val.i, align 8, !alias.scope !10403, !noalias !10402
  store i64 %i.s, ptr %i.m, align 8, !alias.scope !10403, !noalias !10402
  %i.u = zext nneg i8 %i.p to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37

bb.e:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10402
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i), !noalias !10402
  %i.v = load i64, ptr %i.i, align 8, !range !68, !noalias !10402, !noundef !58
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !noalias !10402, !noundef !58
  %i.ab = icmp sgt i8 %i.aa, -1
  br i1 %i.ab, label %bb.e, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit, !prof !67

bb.g:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.x, align 8, !noalias !10402, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10402
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54

bb.h:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.x, align 8, !noalias !10402, !noundef !58
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noalias !10402, !noundef !58 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10404)
  %i.ag = load i64, ptr %i.m, align 8, !alias.scope !10404, !noalias !10402, !noundef !58 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.i, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i, !prof !57

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10405
  store i64 %i.af, ptr %i.h, align 8, !noalias !10405
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ag, ptr %i.ai, align 8, !noalias !10405
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h) #49, !noalias !10405
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i: ; preds = %bb.h
  %i.aj = load ptr, ptr %.val.i, align 8, !alias.scope !10404, !noalias !10402, !nonnull !58, !noundef !58
  %i.ak = sub nuw i64 %i.ag, %i.af                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.af
  store ptr %i.al, ptr %.val.i, align 8, !alias.scope !10404, !noalias !10402
  store i64 %i.ak, ptr %i.m, align 8, !alias.scope !10404, !noalias !10402
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f
  %i.am = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1) ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0
  %i.ao = extractvalue { i64, ptr } %i.am, 1      ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1
  br i1 %i.ap, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37_crit_edge

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37_crit_edge: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit
  %i.aq = ptrtoint ptr %i.ao to i64
  %.val.i17.pre = load i64, ptr %i.m, align 8
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37_crit_edge, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i
  %.val.i17 = phi i64 [ %.val.i17.pre, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37_crit_edge ], [ %i.s, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.ak, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 4 uses
  %.sroa.6.0.i40 = phi i64 [ %i.aq, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37_crit_edge ], [ %i.u, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.ad, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 3 uses
  %i.ar = icmp ult i64 %.val.i17, %.sroa.6.0.i40
  br i1 %i.ar, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37
  %i.as = sub nuw i64 %.val.i17, %.sroa.6.0.i40   ; 2 uses
  %.not67 = icmp eq i64 %.sroa.6.0.i40, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aw = load ptr, ptr %0, align 8, !nonnull !58 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.l

bb.k:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 -9223372036854775801, ptr %i.l, align 8
  %i.az = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54

thread-pre-split:                                 ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit31, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit
  %.val.i18.pr = load i64, ptr %i.m, align 8      ; 3 uses
  %i.ba = icmp ugt i64 %.val.i18.pr, %i.as
  br i1 %i.ba, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %thread-pre-split, %bb.j
  %.val.i18.lcssa = phi i64 [ %.val.i17, %bb.j ], [ %.val.i18.pr, %thread-pre-split ]
  %.not = icmp eq i64 %.val.i18.lcssa, %i.as
  br i1 %.not, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54, label %bb.ai

bb.l:                                             ; preds = %.lr.ph, %thread-pre-split
  %.val.i1866 = phi i64 [ %.val.i17, %.lr.ph ], [ %.val.i18.pr, %thread-pre-split ] ; 4 uses
  %.val.i.i22 = load ptr, ptr %.val.i, align 8, !noalias !10406, !nonnull !58, !noundef !58 ; 4 uses
  %i.bb = load i8, ptr %.val.i.i22, align 1, !noalias !10406, !noundef !58 ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = icmp ugt i64 %.val.i1866, 10
  br i1 %i.bd, label %bb.n, label %bb.o

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27: ; preds = %bb.l
  %i.be = add i64 %.val.i1866, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i.i22, i64 1
  store ptr %i.bf, ptr %.val.i, align 8, !alias.scope !10407, !noalias !10406
  store i64 %i.be, ptr %i.m, align 8, !alias.scope !10407, !noalias !10406
  %i.bg = zext nneg i8 %i.bb to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread

bb.n:                                             ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10406
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i22, i64 noundef %.val.i1866), !noalias !10406
  %i.bh = load i64, ptr %i.d, align 8, !range !68, !noalias !10406, !noundef !58
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread44, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bj = getelementptr i8, ptr %.val.i.i22, i64 %.val.i1866
  %i.bk = getelementptr i8, ptr %i.bj, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !10406, !noundef !58
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.n, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28, !prof !67

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread44: ; preds = %bb.n
  %i.bn = load ptr, ptr %i.at, align 8, !noalias !10406, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10406
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.bo = load i64, ptr %i.at, align 8, !noalias !10406, !noundef !58
  %i.bp = load i64, ptr %i.au, align 8, !noalias !10406, !noundef !58 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10406
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10408), !noalias !10409
  %i.bq = load i64, ptr %i.m, align 8, !alias.scope !10408, !noalias !10406, !noundef !58 ; 3 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  br i1 %i.br, label %bb.q, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26, !prof !57

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10410
  store i64 %i.bp, ptr %i.c, align 8, !noalias !10410
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.bq, ptr %i.bs, align 8, !noalias !10410
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) #49, !noalias !10410
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26: ; preds = %bb.p
  %i.bt = load ptr, ptr %.val.i, align 8, !alias.scope !10408, !noalias !10406, !nonnull !58, !noundef !58
  %i.bu = sub nuw i64 %i.bq, %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bp
  store ptr %i.bv, ptr %.val.i, align 8, !alias.scope !10408, !noalias !10406
  store i64 %i.bu, ptr %i.m, align 8, !alias.scope !10408, !noalias !10406
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread: ; preds = %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26
  %.sroa.6.0.i24.ph = phi i64 [ %i.bo, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26 ], [ %i.bg, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27 ] ; 2 uses
  %i.bw = inttoptr i64 %.sroa.6.0.i24.ph to ptr
  br label %bb.r

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28: ; preds = %bb.o
  %i.bx = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1), !noalias !10409 ; 2 uses
  %i.by = extractvalue { i64, ptr } %i.bx, 0
  %i.bz = extractvalue { i64, ptr } %i.bx, 1      ; 3 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = trunc nuw i64 %i.by to i1
  br i1 %i.cb, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28
  %i.cc = phi ptr [ %i.bw, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread ], [ %i.bz, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ]
  %.sroa.6.0.i2443 = phi i64 [ %.sroa.6.0.i24.ph, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread ], [ %i.ca, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ] ; 3 uses
  %i.cd = icmp ugt ptr %i.cc, inttoptr (i64 4294967295 to ptr)
  br i1 %i.cd, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = and i64 %.sroa.6.0.i2443, 7             ; 3 uses
  %switch = icmp samesign ult i64 %i.ce, 6
  br i1 %switch, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10411
  store i64 %.sroa.6.0.i2443, ptr %i.ay, align 8, !noalias !10411
  store i64 -9223372036854775804, ptr %i.g, align 8, !noalias !10411
  %i.cf = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g), !noalias !10412, !inline_history !10386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10411
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10411
  store i64 %i.ce, ptr %i.av, align 8, !noalias !10411
  store i64 -9223372036854775805, ptr %i.e, align 8, !noalias !10411
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e), !noalias !10412, !inline_history !10386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10411
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.ch = trunc nuw i64 %.sroa.6.0.i2443 to i32
  %i.ci = lshr i32 %i.ch, 3                       ; 3 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10411
  store i64 -9223372036854775803, ptr %i.f, align 8, !noalias !10411
  %i.ck = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f), !noalias !10412, !inline_history !10386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10411
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread44, %bb.w, %bb.u, %bb.t
  %.sroa.11.0.ph = phi ptr [ %i.cf, %bb.t ], [ %i.bn, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread44 ], [ %i.ck, %bb.w ], [ %i.cg, %bb.u ], [ %i.bz, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph) ]
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54

bb.x:                                             ; preds = %bb.v
  %.sroa.11.8.extract.trunc = trunc nuw nsw i64 %i.ce to i8 ; 3 uses
  switch i32 %i.ci, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit [
    i32 1, label %bb.y
    i32 2, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10413)
  %i.cl = load ptr, ptr %i.aw, align 8, !alias.scope !10413, !noalias !10414, !align !59, !noundef !58
  %.not.i29 = icmp eq ptr %i.cl, null
  br i1 %.not.i29, label %bb.z, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit31

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10415
  %i.cm = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !10415 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.aa, label %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i30, !prof !57

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #49, !noalias !10415
  unreachable

_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i30: ; preds = %bb.z
  store i64 -1, ptr %i.cm, align 8, !noalias !10415
  store ptr %i.cm, ptr %i.aw, align 8, !alias.scope !10413, !noalias !10414
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit31

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit31: ; preds = %bb.y, %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i30
  %i.co = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, ptr noalias noundef align 8 dereferenceable(8) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10416, !inline_history !10394 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.co, null
  br i1 %.not5.i.i, label %thread-pre-split, label %bb.ae

bb.ab:                                            ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10417)
  %i.cp = load ptr, ptr %i.ax, align 8, !alias.scope !10417, !noalias !10414, !align !59, !noundef !58
  %.not.i = icmp eq ptr %i.cp, null
  br i1 %.not.i, label %bb.ac, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10418
  %i.cq = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !10418 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.ad, label %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i, !prof !57

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #49, !noalias !10418
  unreachable

_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.ac
  store i64 -1, ptr %i.cq, align 8, !noalias !10418
  store ptr %i.cq, ptr %i.ax, align 8, !alias.scope !10417, !noalias !10414
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ab, %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i
  %i.cs = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, ptr noalias noundef align 8 dereferenceable(8) %i.ax, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10416, !inline_history !10394 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i, label %thread-pre-split, label %bb.ag

bb.ae:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.co, ptr %i.a, align 8, !noalias !10419
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @365, i64 noundef 3, ptr noalias noundef nonnull readonly captures(address, read_provenance) @367, i64 noundef 6)
          to label %_RNCINvXs3L_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_3RleNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit unwind label %bb.af, !noalias !10416

common.resume:                                    ; preds = %bb.ah, %bb.af
  %.sink = phi ptr [ %i.b, %bb.ah ], [ %i.a, %bb.af ]
  %common.resume.op = phi { ptr, i32 } [ %i.cv, %bb.ah ], [ %i.ct, %bb.af ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink) #50, !noalias !10416
  resume { ptr, i32 } %common.resume.op

bb.af:                                            ; preds = %bb.ae
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNCINvXs3L_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_3RleNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ae
  %i.cu = load ptr, ptr %i.a, align 8, !noalias !10419, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54

bb.ag:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.cs, ptr %i.b, align 8, !noalias !10420
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @365, i64 noundef 3, ptr noalias noundef nonnull readonly captures(address, read_provenance) @370, i64 noundef 11)
          to label %_RNCINvXs3L_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_3RleNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit unwind label %bb.ah, !noalias !10416

bb.ah:                                            ; preds = %bb.ag
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNCINvXs3L_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_3RleNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ag
  %i.cw = load ptr, ptr %i.b, align 8, !noalias !10420, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.x
  %i.cx = tail call fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10skip_fieldQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, i32 noundef %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10421, !inline_history !10394 ; 2 uses
  %.not14 = icmp eq ptr %i.cx, null
  br i1 %.not14, label %thread-pre-split, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54

bb.ai:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 -9223372036854775800, ptr %i.k, align 8
  %i.cy = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread54: ; preds = %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread, %bb.g, %bb.b, %_RNCINvXs3L_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_3RleNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit, %_RNCINvXs3L_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_3RleNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit, %._crit_edge, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit, %bb.ai, %bb.k
  %.sroa.0.0 = phi ptr [ %i.ao, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit ], [ %i.az, %bb.k ], [ null, %._crit_edge ], [ %i.cy, %bb.ai ], [ %i.o, %bb.b ], [ %i.cw, %_RNCINvXs3L_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_3RleNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit ], [ %i.cu, %_RNCINvXs3L_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_3RleNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit ], [ %i.ac, %bb.g ], [ %.sroa.11.0.ph, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread ], [ %i.cx, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstENCINvNtB2_7message5mergeBJ_QRShE0B2B_ECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10454)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !10454, !nonnull !58, !align !59, !noundef !58 ; 9 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !10454, !nonnull !58, !noundef !58 ; 4 uses
  %i.m = getelementptr i8, ptr %.val.i, i64 8     ; 9 uses
  %.val1.i.i = load i64, ptr %i.m, align 8, !noalias !10454, !noundef !58 ; 5 uses
  %i.n = icmp eq i64 %.val1.i.i, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10454
  store i64 -9223372036854775807, ptr %i.j, align 8, !noalias !10454
  %i.o = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.j), !noalias !10454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10454
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.c:                                             ; preds = %bb.a
  %i.p = load i8, ptr %.val.i.i, align 1, !noalias !10454, !noundef !58 ; 2 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ugt i64 %.val1.i.i, 10
  br i1 %i.r, label %bb.e, label %bb.f

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.c
  %i.s = add i64 %.val1.i.i, -1                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1
  store ptr %i.t, ptr %.val.i, align 8, !alias.scope !10455, !noalias !10454
  store i64 %i.s, ptr %i.m, align 8, !alias.scope !10455, !noalias !10454
  %i.u = zext nneg i8 %i.p to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34

bb.e:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10454
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i), !noalias !10454
  %i.v = load i64, ptr %i.i, align 8, !range !68, !noalias !10454, !noundef !58
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !noalias !10454, !noundef !58
  %i.ab = icmp sgt i8 %i.aa, -1
  br i1 %i.ab, label %bb.e, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit, !prof !67

bb.g:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.x, align 8, !noalias !10454, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10454
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.h:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.x, align 8, !noalias !10454, !noundef !58
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noalias !10454, !noundef !58 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10454
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10456)
  %i.ag = load i64, ptr %i.m, align 8, !alias.scope !10456, !noalias !10454, !noundef !58 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.i, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i, !prof !57

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10457
  store i64 %i.af, ptr %i.h, align 8, !noalias !10457
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ag, ptr %i.ai, align 8, !noalias !10457
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h) #49, !noalias !10457
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i: ; preds = %bb.h
  %i.aj = load ptr, ptr %.val.i, align 8, !alias.scope !10456, !noalias !10454, !nonnull !58, !noundef !58
  %i.ak = sub nuw i64 %i.ag, %i.af                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.af
  store ptr %i.al, ptr %.val.i, align 8, !alias.scope !10456, !noalias !10454
  store i64 %i.ak, ptr %i.m, align 8, !alias.scope !10456, !noalias !10454
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f
  %i.am = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1) ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0
  %i.ao = extractvalue { i64, ptr } %i.am, 1      ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1
  br i1 %i.ap, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit
  %i.aq = ptrtoint ptr %i.ao to i64
  %.val.i17.pre = load i64, ptr %i.m, align 8
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i
  %.val.i17 = phi i64 [ %.val.i17.pre, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge ], [ %i.s, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.ak, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 4 uses
  %.sroa.6.0.i37 = phi i64 [ %i.aq, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34_crit_edge ], [ %i.u, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.ad, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 3 uses
  %i.ar = icmp ult i64 %.val.i17, %.sroa.6.0.i37
  br i1 %i.ar, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34
  %i.as = sub nuw i64 %.val.i17, %.sroa.6.0.i37   ; 2 uses
  %.not63 = icmp eq i64 %.sroa.6.0.i37, 0
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aw = load ptr, ptr %0, align 8, !nonnull !58 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.l

bb.k:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 -9223372036854775801, ptr %i.l, align 8
  %i.az = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

thread-pre-split:                                 ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit, %bb.y, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit
  %.val.i18.pr = load i64, ptr %i.m, align 8      ; 3 uses
  %i.ba = icmp ugt i64 %.val.i18.pr, %i.as
  br i1 %i.ba, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %thread-pre-split, %bb.j
  %.val.i18.lcssa = phi i64 [ %.val.i17, %bb.j ], [ %.val.i18.pr, %thread-pre-split ]
  %.not = icmp eq i64 %.val.i18.lcssa, %i.as
  br i1 %.not, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51, label %bb.ag

bb.l:                                             ; preds = %.lr.ph, %thread-pre-split
  %.val.i1862 = phi i64 [ %.val.i17, %.lr.ph ], [ %.val.i18.pr, %thread-pre-split ] ; 4 uses
  %.val.i.i22 = load ptr, ptr %.val.i, align 8, !noalias !10458, !nonnull !58, !noundef !58 ; 4 uses
  %i.bb = load i8, ptr %.val.i.i22, align 1, !noalias !10458, !noundef !58 ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = icmp ugt i64 %.val.i1862, 10
  br i1 %i.bd, label %bb.n, label %bb.o

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27: ; preds = %bb.l
  %i.be = add i64 %.val.i1862, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i.i22, i64 1
  store ptr %i.bf, ptr %.val.i, align 8, !alias.scope !10459, !noalias !10458
  store i64 %i.be, ptr %i.m, align 8, !alias.scope !10459, !noalias !10458
  %i.bg = zext nneg i8 %i.bb to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread

bb.n:                                             ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10458
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i22, i64 noundef %.val.i1862), !noalias !10458
  %i.bh = load i64, ptr %i.d, align 8, !range !68, !noalias !10458, !noundef !58
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bj = getelementptr i8, ptr %.val.i.i22, i64 %.val.i1862
  %i.bk = getelementptr i8, ptr %i.bj, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !10458, !noundef !58
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.n, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28, !prof !67

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41: ; preds = %bb.n
  %i.bn = load ptr, ptr %i.at, align 8, !noalias !10458, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10458
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.bo = load i64, ptr %i.at, align 8, !noalias !10458, !noundef !58
  %i.bp = load i64, ptr %i.au, align 8, !noalias !10458, !noundef !58 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10458
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10460), !noalias !10461
  %i.bq = load i64, ptr %i.m, align 8, !alias.scope !10460, !noalias !10458, !noundef !58 ; 3 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  br i1 %i.br, label %bb.q, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26, !prof !57

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10462
  store i64 %i.bp, ptr %i.c, align 8, !noalias !10462
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.bq, ptr %i.bs, align 8, !noalias !10462
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) #49, !noalias !10462
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26: ; preds = %bb.p
  %i.bt = load ptr, ptr %.val.i, align 8, !alias.scope !10460, !noalias !10458, !nonnull !58, !noundef !58
  %i.bu = sub nuw i64 %i.bq, %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bp
  store ptr %i.bv, ptr %.val.i, align 8, !alias.scope !10460, !noalias !10458
  store i64 %i.bu, ptr %i.m, align 8, !alias.scope !10460, !noalias !10458
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread: ; preds = %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26
  %.sroa.6.0.i24.ph = phi i64 [ %i.bo, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26 ], [ %i.bg, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27 ] ; 2 uses
  %i.bw = inttoptr i64 %.sroa.6.0.i24.ph to ptr
  br label %bb.r

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28: ; preds = %bb.o
  %i.bx = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1), !noalias !10461 ; 2 uses
  %i.by = extractvalue { i64, ptr } %i.bx, 0
  %i.bz = extractvalue { i64, ptr } %i.bx, 1      ; 3 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = trunc nuw i64 %i.by to i1
  br i1 %i.cb, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28
  %i.cc = phi ptr [ %i.bw, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread ], [ %i.bz, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ]
  %.sroa.6.0.i2440 = phi i64 [ %.sroa.6.0.i24.ph, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread ], [ %i.ca, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ] ; 3 uses
  %i.cd = icmp ugt ptr %i.cc, inttoptr (i64 4294967295 to ptr)
  br i1 %i.cd, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = and i64 %.sroa.6.0.i2440, 7             ; 3 uses
  %switch = icmp samesign ult i64 %i.ce, 6
  br i1 %switch, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10463
  store i64 %.sroa.6.0.i2440, ptr %i.ay, align 8, !noalias !10463
  store i64 -9223372036854775804, ptr %i.g, align 8, !noalias !10463
  %i.cf = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g), !noalias !10464, !inline_history !10440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10463
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10463
  store i64 %i.ce, ptr %i.av, align 8, !noalias !10463
  store i64 -9223372036854775805, ptr %i.e, align 8, !noalias !10463
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e), !noalias !10464, !inline_history !10440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10463
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.ch = trunc nuw i64 %.sroa.6.0.i2440 to i32
  %i.ci = lshr i32 %i.ch, 3                       ; 3 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10463
  store i64 -9223372036854775803, ptr %i.f, align 8, !noalias !10463
  %i.ck = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f), !noalias !10464, !inline_history !10440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10463
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41, %bb.w, %bb.u, %bb.t
  %.sroa.11.0.ph = phi ptr [ %i.cf, %bb.t ], [ %i.bn, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread41 ], [ %i.ck, %bb.w ], [ %i.cg, %bb.u ], [ %i.bz, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph) ]
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.x:                                             ; preds = %bb.v
  %.sroa.11.8.extract.trunc = trunc nuw nsw i64 %i.ce to i8 ; 3 uses
  switch i32 %i.ci, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit [
    i32 1, label %bb.y
    i32 2, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.cl = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes5mergeNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %.not5.i.i = icmp eq ptr %i.cl, null
  br i1 %.not5.i.i, label %thread-pre-split, label %bb.ac

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10465)
  %i.cm = load ptr, ptr %i.ax, align 8, !alias.scope !10465, !noalias !10466, !align !59, !noundef !58
  %.not.i = icmp eq ptr %i.cm, null
  br i1 %.not.i, label %bb.aa, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10467
  %i.cn = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !10467 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.ab, label %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i, !prof !57

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #49, !noalias !10467
  unreachable

_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.aa
  store i64 -1, ptr %i.cn, align 8, !noalias !10467
  store ptr %i.cn, ptr %i.ax, align 8, !alias.scope !10465, !noalias !10466
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.z, %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i
  %i.cp = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, ptr noalias noundef align 8 dereferenceable(8) %i.ax, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10468, !inline_history !10448 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i, label %thread-pre-split, label %bb.ae

bb.ac:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cl, ptr %i.a, align 8, !noalias !10469
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @350, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 12)
          to label %_RNCINvXs3z_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_4FsstNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit unwind label %bb.ad, !noalias !10470

common.resume:                                    ; preds = %bb.af, %bb.ad
  %.sink = phi ptr [ %i.b, %bb.af ], [ %i.a, %bb.ad ]
  %common.resume.op = phi { ptr, i32 } [ %i.cs, %bb.af ], [ %i.cq, %bb.ad ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink) #50, !noalias !10468
  resume { ptr, i32 } %common.resume.op

bb.ad:                                            ; preds = %bb.ac
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNCINvXs3z_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_4FsstNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ac
  %i.cr = load ptr, ptr %i.a, align 8, !noalias !10469, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.ae:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.cp, ptr %i.b, align 8, !noalias !10471
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @350, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @367, i64 noundef 6)
          to label %_RNCINvXs3z_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_4FsstNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit unwind label %bb.af, !noalias !10468

bb.af:                                            ; preds = %bb.ae
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNCINvXs3z_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_4FsstNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ae
  %i.ct = load ptr, ptr %i.b, align 8, !noalias !10471, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.x
  %i.cu = tail call fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10skip_fieldQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, i32 noundef %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10472, !inline_history !10448 ; 2 uses
  %.not14 = icmp eq ptr %i.cu, null
  br i1 %.not14, label %thread-pre-split, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

bb.ag:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 -9223372036854775800, ptr %i.k, align 8
  %i.cv = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread51: ; preds = %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread, %bb.g, %bb.b, %_RNCINvXs3z_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_4FsstNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit, %_RNCINvXs3z_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_4FsstNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit, %._crit_edge, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit, %bb.ag, %bb.k
  %.sroa.0.0 = phi ptr [ %i.ao, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit ], [ %i.az, %bb.k ], [ null, %._crit_edge ], [ %i.cv, %bb.ag ], [ %i.o, %bb.b ], [ %i.ct, %_RNCINvXs3z_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_4FsstNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit ], [ %i.cr, %_RNCINvXs3z_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_4FsstNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit ], [ %i.ac, %bb.g ], [ %.sroa.11.0.ph, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread ], [ %i.cu, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralENCINvNtB2_7message5mergeBJ_QRShE0B2E_ECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10507)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !10507, !nonnull !58, !align !59, !noundef !58 ; 9 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !10507, !nonnull !58, !noundef !58 ; 4 uses
  %i.m = getelementptr i8, ptr %.val.i, i64 8     ; 9 uses
  %.val1.i.i = load i64, ptr %i.m, align 8, !noalias !10507, !noundef !58 ; 5 uses
  %i.n = icmp eq i64 %.val1.i.i, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10507
  store i64 -9223372036854775807, ptr %i.j, align 8, !noalias !10507
  %i.o = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.j), !noalias !10507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10507
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52

bb.c:                                             ; preds = %bb.a
  %i.p = load i8, ptr %.val.i.i, align 1, !noalias !10507, !noundef !58 ; 2 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ugt i64 %.val1.i.i, 10
  br i1 %i.r, label %bb.e, label %bb.f

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.c
  %i.s = add i64 %.val1.i.i, -1                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1
  store ptr %i.t, ptr %.val.i, align 8, !alias.scope !10508, !noalias !10507
  store i64 %i.s, ptr %i.m, align 8, !alias.scope !10508, !noalias !10507
  %i.u = zext nneg i8 %i.p to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35

bb.e:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10507
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i), !noalias !10507
  %i.v = load i64, ptr %i.i, align 8, !range !68, !noalias !10507, !noundef !58
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !noalias !10507, !noundef !58
  %i.ab = icmp sgt i8 %i.aa, -1
  br i1 %i.ab, label %bb.e, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit, !prof !67

bb.g:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.x, align 8, !noalias !10507, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10507
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52

bb.h:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.x, align 8, !noalias !10507, !noundef !58
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noalias !10507, !noundef !58 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10507
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10509)
  %i.ag = load i64, ptr %i.m, align 8, !alias.scope !10509, !noalias !10507, !noundef !58 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.i, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i, !prof !57

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10510
  store i64 %i.af, ptr %i.h, align 8, !noalias !10510
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ag, ptr %i.ai, align 8, !noalias !10510
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h) #49, !noalias !10510
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i: ; preds = %bb.h
  %i.aj = load ptr, ptr %.val.i, align 8, !alias.scope !10509, !noalias !10507, !nonnull !58, !noundef !58
  %i.ak = sub nuw i64 %i.ag, %i.af                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.af
  store ptr %i.al, ptr %.val.i, align 8, !alias.scope !10509, !noalias !10507
  store i64 %i.ak, ptr %i.m, align 8, !alias.scope !10509, !noalias !10507
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f
  %i.am = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1) ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0
  %i.ao = extractvalue { i64, ptr } %i.am, 1      ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1
  br i1 %i.ap, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35_crit_edge

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35_crit_edge: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit
  %i.aq = ptrtoint ptr %i.ao to i64
  %.val.i17.pre = load i64, ptr %i.m, align 8
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35_crit_edge, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i
  %.val.i17 = phi i64 [ %.val.i17.pre, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35_crit_edge ], [ %i.s, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.ak, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 4 uses
  %.sroa.6.0.i38 = phi i64 [ %i.aq, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35_crit_edge ], [ %i.u, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.ad, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 3 uses
  %i.ar = icmp ult i64 %.val.i17, %.sroa.6.0.i38
  br i1 %i.ar, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35
  %i.as = sub nuw i64 %.val.i17, %.sroa.6.0.i38   ; 2 uses
  %.not64 = icmp eq i64 %.sroa.6.0.i38, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aw = load ptr, ptr %0, align 8, !nonnull !58 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.l

bb.k:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 -9223372036854775801, ptr %i.l, align 8
  %i.az = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52

thread-pre-split:                                 ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2117BufferCompressionE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit
  %.val.i18.pr = load i64, ptr %i.m, align 8      ; 3 uses
  %i.ba = icmp ugt i64 %.val.i18.pr, %i.as
  br i1 %i.ba, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %thread-pre-split, %bb.j
  %.val.i18.lcssa = phi i64 [ %.val.i17, %bb.j ], [ %.val.i18.pr, %thread-pre-split ]
  %.not = icmp eq i64 %.val.i18.lcssa, %i.as
  br i1 %.not, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52, label %bb.ah

bb.l:                                             ; preds = %.lr.ph, %thread-pre-split
  %.val.i1863 = phi i64 [ %.val.i17, %.lr.ph ], [ %.val.i18.pr, %thread-pre-split ] ; 4 uses
  %.val.i.i22 = load ptr, ptr %.val.i, align 8, !noalias !10511, !nonnull !58, !noundef !58 ; 4 uses
  %i.bb = load i8, ptr %.val.i.i22, align 1, !noalias !10511, !noundef !58 ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = icmp ugt i64 %.val.i1863, 10
  br i1 %i.bd, label %bb.n, label %bb.o

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27: ; preds = %bb.l
  %i.be = add i64 %.val.i1863, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i.i22, i64 1
  store ptr %i.bf, ptr %.val.i, align 8, !alias.scope !10512, !noalias !10511
  store i64 %i.be, ptr %i.m, align 8, !alias.scope !10512, !noalias !10511
  %i.bg = zext nneg i8 %i.bb to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread

bb.n:                                             ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10511
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i22, i64 noundef %.val.i1863), !noalias !10511
  %i.bh = load i64, ptr %i.d, align 8, !range !68, !noalias !10511, !noundef !58
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread42, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bj = getelementptr i8, ptr %.val.i.i22, i64 %.val.i1863
  %i.bk = getelementptr i8, ptr %i.bj, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !10511, !noundef !58
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.n, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28, !prof !67

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread42: ; preds = %bb.n
  %i.bn = load ptr, ptr %i.at, align 8, !noalias !10511, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10511
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.bo = load i64, ptr %i.at, align 8, !noalias !10511, !noundef !58
  %i.bp = load i64, ptr %i.au, align 8, !noalias !10511, !noundef !58 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10511
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10513), !noalias !10514
  %i.bq = load i64, ptr %i.m, align 8, !alias.scope !10513, !noalias !10511, !noundef !58 ; 3 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  br i1 %i.br, label %bb.q, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26, !prof !57

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10515
  store i64 %i.bp, ptr %i.c, align 8, !noalias !10515
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.bq, ptr %i.bs, align 8, !noalias !10515
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) #49, !noalias !10515
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26: ; preds = %bb.p
  %i.bt = load ptr, ptr %.val.i, align 8, !alias.scope !10513, !noalias !10511, !nonnull !58, !noundef !58
  %i.bu = sub nuw i64 %i.bq, %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bp
  store ptr %i.bv, ptr %.val.i, align 8, !alias.scope !10513, !noalias !10511
  store i64 %i.bu, ptr %i.m, align 8, !alias.scope !10513, !noalias !10511
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread: ; preds = %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26
  %.sroa.6.0.i24.ph = phi i64 [ %i.bo, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26 ], [ %i.bg, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27 ] ; 2 uses
  %i.bw = inttoptr i64 %.sroa.6.0.i24.ph to ptr
  br label %bb.r

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28: ; preds = %bb.o
  %i.bx = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1), !noalias !10514 ; 2 uses
  %i.by = extractvalue { i64, ptr } %i.bx, 0
  %i.bz = extractvalue { i64, ptr } %i.bx, 1      ; 3 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = trunc nuw i64 %i.by to i1
  br i1 %i.cb, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28
  %i.cc = phi ptr [ %i.bw, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread ], [ %i.bz, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ]
  %.sroa.6.0.i2441 = phi i64 [ %.sroa.6.0.i24.ph, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread ], [ %i.ca, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ] ; 3 uses
  %i.cd = icmp ugt ptr %i.cc, inttoptr (i64 4294967295 to ptr)
  br i1 %i.cd, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = and i64 %.sroa.6.0.i2441, 7             ; 3 uses
  %switch = icmp samesign ult i64 %i.ce, 6
  br i1 %switch, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10516
  store i64 %.sroa.6.0.i2441, ptr %i.ay, align 8, !noalias !10516
  store i64 -9223372036854775804, ptr %i.g, align 8, !noalias !10516
  %i.cf = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g), !noalias !10517, !inline_history !10491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10516
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10516
  store i64 %i.ce, ptr %i.av, align 8, !noalias !10516
  store i64 -9223372036854775805, ptr %i.e, align 8, !noalias !10516
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e), !noalias !10517, !inline_history !10491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10516
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.ch = trunc nuw i64 %.sroa.6.0.i2441 to i32
  %i.ci = lshr i32 %i.ch, 3                       ; 3 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10516
  store i64 -9223372036854775803, ptr %i.f, align 8, !noalias !10516
  %i.ck = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f), !noalias !10517, !inline_history !10491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10516
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread42, %bb.w, %bb.u, %bb.t
  %.sroa.11.0.ph = phi ptr [ %i.cf, %bb.t ], [ %i.bn, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread42 ], [ %i.ck, %bb.w ], [ %i.cg, %bb.u ], [ %i.bz, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph) ]
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52

bb.x:                                             ; preds = %bb.v
  %.sroa.11.8.extract.trunc = trunc nuw nsw i64 %i.ce to i8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10518)
  switch i32 %i.ci, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit [
    i32 1, label %bb.y
    i32 3, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.cl = load i32, ptr %i.ax, align 4, !range !76, !alias.scope !10519, !noalias !10520, !noundef !58
  %.not.i29 = icmp eq i32 %i.cl, -1
  br i1 %.not.i29, label %bb.z, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2117BufferCompressionE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.ax, align 4, !alias.scope !10519, !noalias !10520
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !10519, !noalias !10520
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2117BufferCompressionE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2117BufferCompressionE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.y, %bb.z
  %i.cm = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2117BufferCompressionQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, ptr noalias noundef align 4 dereferenceable(12) %i.ax, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10521, !inline_history !10499 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.cm, null
  br i1 %.not5.i.i, label %thread-pre-split, label %bb.ad

bb.aa:                                            ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10522)
  %i.cn = load ptr, ptr %i.aw, align 8, !alias.scope !10522, !noalias !10523, !align !59, !noundef !58
  %.not.i = icmp eq ptr %i.cn, null
  br i1 %.not.i, label %bb.ab, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10524
  %i.co = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !10524 ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.ac, label %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i, !prof !57

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #49, !noalias !10524
  unreachable

_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.ab
  store i64 -1, ptr %i.co, align 8, !noalias !10524
  store ptr %i.co, ptr %i.aw, align 8, !alias.scope !10522, !noalias !10523
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.aa, %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i
  %i.cq = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, ptr noalias noundef align 8 dereferenceable(8) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10521, !inline_history !10499 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i, label %thread-pre-split, label %bb.af

bb.ad:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2117BufferCompressionE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cm, ptr %i.a, align 8, !noalias !10525
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @387, i64 noundef 7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @299, i64 noundef 11)
          to label %_RNCINvXs49_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_7GeneralNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit unwind label %bb.ae, !noalias !10526

common.resume:                                    ; preds = %bb.ag, %bb.ae
  %.sink = phi ptr [ %i.b, %bb.ag ], [ %i.a, %bb.ae ]
  %common.resume.op = phi { ptr, i32 } [ %i.ct, %bb.ag ], [ %i.cr, %bb.ae ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink) #50, !noalias !10521
  resume { ptr, i32 } %common.resume.op

bb.ae:                                            ; preds = %bb.ad
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNCINvXs49_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_7GeneralNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ad
  %i.cs = load ptr, ptr %i.a, align 8, !noalias !10525, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52

bb.af:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.cq, ptr %i.b, align 8, !noalias !10527
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @387, i64 noundef 7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @367, i64 noundef 6)
          to label %_RNCINvXs49_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_7GeneralNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit unwind label %bb.ag, !noalias !10521

bb.ag:                                            ; preds = %bb.af
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNCINvXs49_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_7GeneralNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.af
  %i.cu = load ptr, ptr %i.b, align 8, !noalias !10527, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.x
  %i.cv = tail call fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10skip_fieldQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, i32 noundef %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10528, !inline_history !10499 ; 2 uses
  %.not14 = icmp eq ptr %i.cv, null
  br i1 %.not14, label %thread-pre-split, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52

bb.ah:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 -9223372036854775800, ptr %i.k, align 8
  %i.cw = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52: ; preds = %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread, %bb.g, %bb.b, %_RNCINvXs49_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_7GeneralNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit, %_RNCINvXs49_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_7GeneralNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit, %._crit_edge, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit, %bb.ah, %bb.k
  %.sroa.0.0 = phi ptr [ %i.ao, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit ], [ %i.az, %bb.k ], [ null, %._crit_edge ], [ %i.cw, %bb.ah ], [ %i.o, %bb.b ], [ %i.cu, %_RNCINvXs49_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_7GeneralNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit ], [ %i.cs, %_RNCINvXs49_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_7GeneralNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit ], [ %i.ac, %bb.g ], [ %.sroa.11.0.ph, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread ], [ %i.cv, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableENCINvNtB2_7message5mergeBJ_QRShE0B2F_ECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10563)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !10563, !nonnull !58, !align !59, !noundef !58 ; 9 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !10563, !nonnull !58, !noundef !58 ; 4 uses
  %i.m = getelementptr i8, ptr %.val.i, i64 8     ; 9 uses
  %.val1.i.i = load i64, ptr %i.m, align 8, !noalias !10563, !noundef !58 ; 5 uses
  %i.n = icmp eq i64 %.val1.i.i, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10563
  store i64 -9223372036854775807, ptr %i.j, align 8, !noalias !10563
  %i.o = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.j), !noalias !10563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10563
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52

bb.c:                                             ; preds = %bb.a
  %i.p = load i8, ptr %.val.i.i, align 1, !noalias !10563, !noundef !58 ; 2 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ugt i64 %.val1.i.i, 10
  br i1 %i.r, label %bb.e, label %bb.f

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.c
  %i.s = add i64 %.val1.i.i, -1                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1
  store ptr %i.t, ptr %.val.i, align 8, !alias.scope !10564, !noalias !10563
  store i64 %i.s, ptr %i.m, align 8, !alias.scope !10564, !noalias !10563
  %i.u = zext nneg i8 %i.p to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35

bb.e:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10563
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i), !noalias !10563
  %i.v = load i64, ptr %i.i, align 8, !range !68, !noalias !10563, !noundef !58
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !noalias !10563, !noundef !58
  %i.ab = icmp sgt i8 %i.aa, -1
  br i1 %i.ab, label %bb.e, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit, !prof !67

bb.g:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.x, align 8, !noalias !10563, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10563
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52

bb.h:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.x, align 8, !noalias !10563, !noundef !58
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noalias !10563, !noundef !58 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10565)
  %i.ag = load i64, ptr %i.m, align 8, !alias.scope !10565, !noalias !10563, !noundef !58 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.i, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i, !prof !57

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10566
  store i64 %i.af, ptr %i.h, align 8, !noalias !10566
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ag, ptr %i.ai, align 8, !noalias !10566
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h) #49, !noalias !10566
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i: ; preds = %bb.h
  %i.aj = load ptr, ptr %.val.i, align 8, !alias.scope !10565, !noalias !10563, !nonnull !58, !noundef !58
  %i.ak = sub nuw i64 %i.ag, %i.af                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.af
  store ptr %i.al, ptr %.val.i, align 8, !alias.scope !10565, !noalias !10563
  store i64 %i.ak, ptr %i.m, align 8, !alias.scope !10565, !noalias !10563
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f
  %i.am = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1) ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0
  %i.ao = extractvalue { i64, ptr } %i.am, 1      ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1
  br i1 %i.ap, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35_crit_edge

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35_crit_edge: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit
  %i.aq = ptrtoint ptr %i.ao to i64
  %.val.i17.pre = load i64, ptr %i.m, align 8
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35_crit_edge, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i
  %.val.i17 = phi i64 [ %.val.i17.pre, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35_crit_edge ], [ %i.s, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.ak, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 4 uses
  %.sroa.6.0.i38 = phi i64 [ %i.aq, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35_crit_edge ], [ %i.u, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.ad, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 3 uses
  %i.ar = icmp ult i64 %.val.i17, %.sroa.6.0.i38
  br i1 %i.ar, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35
  %i.as = sub nuw i64 %.val.i17, %.sroa.6.0.i38   ; 2 uses
  %.not64 = icmp eq i64 %.sroa.6.0.i38, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aw = load ptr, ptr %0, align 8, !nonnull !58 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.l

bb.k:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 -9223372036854775801, ptr %i.l, align 8
  %i.az = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52

thread-pre-split:                                 ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2117BufferCompressionE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit
  %.val.i18.pr = load i64, ptr %i.m, align 8      ; 3 uses
  %i.ba = icmp ugt i64 %.val.i18.pr, %i.as
  br i1 %i.ba, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %thread-pre-split, %bb.j
  %.val.i18.lcssa = phi i64 [ %.val.i17, %bb.j ], [ %.val.i18.pr, %thread-pre-split ]
  %.not = icmp eq i64 %.val.i18.lcssa, %i.as
  br i1 %.not, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52, label %bb.ah

bb.l:                                             ; preds = %.lr.ph, %thread-pre-split
  %.val.i1863 = phi i64 [ %.val.i17, %.lr.ph ], [ %.val.i18.pr, %thread-pre-split ] ; 4 uses
  %.val.i.i22 = load ptr, ptr %.val.i, align 8, !noalias !10567, !nonnull !58, !noundef !58 ; 4 uses
  %i.bb = load i8, ptr %.val.i.i22, align 1, !noalias !10567, !noundef !58 ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = icmp ugt i64 %.val.i1863, 10
  br i1 %i.bd, label %bb.n, label %bb.o

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27: ; preds = %bb.l
  %i.be = add i64 %.val.i1863, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i.i22, i64 1
  store ptr %i.bf, ptr %.val.i, align 8, !alias.scope !10568, !noalias !10567
  store i64 %i.be, ptr %i.m, align 8, !alias.scope !10568, !noalias !10567
  %i.bg = zext nneg i8 %i.bb to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread

bb.n:                                             ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10567
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i22, i64 noundef %.val.i1863), !noalias !10567
  %i.bh = load i64, ptr %i.d, align 8, !range !68, !noalias !10567, !noundef !58
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread42, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bj = getelementptr i8, ptr %.val.i.i22, i64 %.val.i1863
  %i.bk = getelementptr i8, ptr %i.bj, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !10567, !noundef !58
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.n, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28, !prof !67

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread42: ; preds = %bb.n
  %i.bn = load ptr, ptr %i.at, align 8, !noalias !10567, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10567
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.bo = load i64, ptr %i.at, align 8, !noalias !10567, !noundef !58
  %i.bp = load i64, ptr %i.au, align 8, !noalias !10567, !noundef !58 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10567
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10569), !noalias !10570
  %i.bq = load i64, ptr %i.m, align 8, !alias.scope !10569, !noalias !10567, !noundef !58 ; 3 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  br i1 %i.br, label %bb.q, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26, !prof !57

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10571
  store i64 %i.bp, ptr %i.c, align 8, !noalias !10571
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.bq, ptr %i.bs, align 8, !noalias !10571
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) #49, !noalias !10571
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26: ; preds = %bb.p
  %i.bt = load ptr, ptr %.val.i, align 8, !alias.scope !10569, !noalias !10567, !nonnull !58, !noundef !58
  %i.bu = sub nuw i64 %i.bq, %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bp
  store ptr %i.bv, ptr %.val.i, align 8, !alias.scope !10569, !noalias !10567
  store i64 %i.bu, ptr %i.m, align 8, !alias.scope !10569, !noalias !10567
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread: ; preds = %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26
  %.sroa.6.0.i24.ph = phi i64 [ %i.bo, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i26 ], [ %i.bg, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i27 ] ; 2 uses
  %i.bw = inttoptr i64 %.sroa.6.0.i24.ph to ptr
  br label %bb.r

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28: ; preds = %bb.o
  %i.bx = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1), !noalias !10570 ; 2 uses
  %i.by = extractvalue { i64, ptr } %i.bx, 0
  %i.bz = extractvalue { i64, ptr } %i.bx, 1      ; 3 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = trunc nuw i64 %i.by to i1
  br i1 %i.cb, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28
  %i.cc = phi ptr [ %i.bw, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread ], [ %i.bz, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ]
  %.sroa.6.0.i2441 = phi i64 [ %.sroa.6.0.i24.ph, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread ], [ %i.ca, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ] ; 3 uses
  %i.cd = icmp ugt ptr %i.cc, inttoptr (i64 4294967295 to ptr)
  br i1 %i.cd, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = and i64 %.sroa.6.0.i2441, 7             ; 3 uses
  %switch = icmp samesign ult i64 %i.ce, 6
  br i1 %switch, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10572
  store i64 %.sroa.6.0.i2441, ptr %i.ay, align 8, !noalias !10572
  store i64 -9223372036854775804, ptr %i.g, align 8, !noalias !10572
  %i.cf = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g), !noalias !10573, !inline_history !10547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10572
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10572
  store i64 %i.ce, ptr %i.av, align 8, !noalias !10572
  store i64 -9223372036854775805, ptr %i.e, align 8, !noalias !10572
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e), !noalias !10573, !inline_history !10547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10572
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.ch = trunc nuw i64 %.sroa.6.0.i2441 to i32
  %i.ci = lshr i32 %i.ch, 3                       ; 3 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10572
  store i64 -9223372036854775803, ptr %i.f, align 8, !noalias !10572
  %i.ck = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f), !noalias !10573, !inline_history !10547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10572
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread42, %bb.w, %bb.u, %bb.t
  %.sroa.11.0.ph = phi ptr [ %i.cf, %bb.t ], [ %i.bn, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28.thread42 ], [ %i.ck, %bb.w ], [ %i.cg, %bb.u ], [ %i.bz, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit28 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph) ]
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52

bb.x:                                             ; preds = %bb.v
  %.sroa.11.8.extract.trunc = trunc nuw nsw i64 %i.ce to i8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10574)
  switch i32 %i.ci, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit [
    i32 1, label %bb.y
    i32 2, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10575)
  %i.cl = load ptr, ptr %i.aw, align 8, !alias.scope !10575, !noalias !10576, !align !59, !noundef !58
  %.not.i29 = icmp eq ptr %i.cl, null
  br i1 %.not.i29, label %bb.z, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10577
  %i.cm = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !10577 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.aa, label %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i, !prof !57

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #49, !noalias !10577
  unreachable

_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.z
  store i64 -1, ptr %i.cm, align 8, !noalias !10577
  store ptr %i.cm, ptr %i.aw, align 8, !alias.scope !10575, !noalias !10576
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.y, %_RNvYNvYINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingENtNtCscI6d9CVNmLh_4core7default7Default7defaultINtNtNtB1Q_3ops8function6FnOnceuE9call_onceCsaSXGKSfiU2E_10lance_file.exit.i
  %i.co = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, ptr noalias noundef align 8 dereferenceable(8) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10578, !inline_history !10556 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.co, null
  br i1 %.not5.i.i, label %thread-pre-split, label %bb.ad

bb.ab:                                            ; preds = %bb.x
  %i.cp = load i32, ptr %i.ax, align 4, !range !76, !alias.scope !10579, !noalias !10580, !noundef !58
  %.not.i = icmp eq i32 %i.cp, -1
  br i1 %.not.i, label %bb.ac, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2117BufferCompressionE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.ax, align 4, !alias.scope !10579, !noalias !10580
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !10579, !noalias !10580
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2117BufferCompressionE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2117BufferCompressionE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ab, %bb.ac
  %i.cq = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2117BufferCompressionQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, ptr noalias noundef align 4 dereferenceable(12) %i.ax, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10578, !inline_history !10556 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i, label %thread-pre-split, label %bb.af

bb.ad:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.co, ptr %i.a, align 8, !noalias !10581
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @345, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef 7)
          to label %_RNCINvXs34_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_8VariableNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit unwind label %bb.ae, !noalias !10578

common.resume:                                    ; preds = %bb.ag, %bb.ae
  %.sink = phi ptr [ %i.b, %bb.ag ], [ %i.a, %bb.ae ]
  %common.resume.op = phi { ptr, i32 } [ %i.ct, %bb.ag ], [ %i.cr, %bb.ae ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink) #50, !noalias !10578
  resume { ptr, i32 } %common.resume.op

bb.ae:                                            ; preds = %bb.ad
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNCINvXs34_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_8VariableNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ad
  %i.cs = load ptr, ptr %i.a, align 8, !noalias !10581, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52

bb.af:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2117BufferCompressionE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.cq, ptr %i.b, align 8, !noalias !10582
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @345, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @367, i64 noundef 6)
          to label %_RNCINvXs34_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_8VariableNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit unwind label %bb.ag, !noalias !10583

bb.ag:                                            ; preds = %bb.af
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNCINvXs34_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_8VariableNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.af
  %i.cu = load ptr, ptr %i.b, align 8, !noalias !10582, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.x
  %i.cv = tail call fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10skip_fieldQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc, i32 noundef %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2), !noalias !10584, !inline_history !10556 ; 2 uses
  %.not14 = icmp eq ptr %i.cv, null
  br i1 %.not14, label %thread-pre-split, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52

bb.ah:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 -9223372036854775800, ptr %i.k, align 8
  %i.cw = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread52: ; preds = %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread, %bb.g, %bb.b, %_RNCINvXs34_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_8VariableNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit, %_RNCINvXs34_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_8VariableNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit, %._crit_edge, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit, %bb.ah, %bb.k
  %.sroa.0.0 = phi ptr [ %i.ao, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit ], [ %i.az, %bb.k ], [ null, %._crit_edge ], [ %i.cw, %bb.ah ], [ %i.o, %bb.b ], [ %i.cu, %_RNCINvXs34_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_8VariableNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file.exit ], [ %i.cs, %_RNCINvXs34_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_8VariableNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file.exit ], [ %i.ac, %bb.g ], [ %.sroa.11.0.ph, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread ], [ %i.cv, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2120VariablePackedStructNCINvNtB2_7message5mergeBJ_QRShE0B2i_ECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef range(i32 0, -3) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 6 uses
  %i.s = alloca [48 x i8], align 8                ; 6 uses
  %i.t = alloca [56 x i8], align 8                ; 5 uses
  %i.u = alloca [56 x i8], align 8                ; 10 uses
  %i.v = alloca [48 x i8], align 8                ; 5 uses
  %i.w = alloca [48 x i8], align 8                ; 4 uses
  %i.x = alloca [48 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [48 x i8], align 8               ; 4 uses
  %i.ab = alloca [48 x i8], align 8               ; 4 uses
  %i.ac = alloca [48 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10670)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !10670, !nonnull !58, !align !59, !noundef !58 ; 17 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !10670, !nonnull !58, !noundef !58 ; 4 uses
  %i.ad = getelementptr i8, ptr %.val.i, i64 8    ; 18 uses
  %.val1.i.i = load i64, ptr %i.ad, align 8, !noalias !10670, !noundef !58 ; 5 uses
  %i.ae = icmp eq i64 %.val1.i.i, 0
  %.sink346.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink346.sroa.gep539 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !10670
  store i64 -9223372036854775807, ptr %i.aa, align 8, !noalias !10670
  %i.af = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.aa), !noalias !10670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10670
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.ag = load i8, ptr %.val.i.i, align 1, !noalias !10670, !noundef !58 ; 2 uses
  %i.ah = icmp sgt i8 %i.ag, -1
  br i1 %i.ah, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp ugt i64 %.val1.i.i, 10
  br i1 %i.ai, label %bb.e, label %bb.f

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.c
  %i.aj = add i64 %.val1.i.i, -1                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1
  store ptr %i.ak, ptr %.val.i, align 8, !alias.scope !10671, !noalias !10670
  store i64 %i.aj, ptr %i.ad, align 8, !alias.scope !10671, !noalias !10670
  %i.al = zext nneg i8 %i.ag to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread72

bb.e:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !10670
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i), !noalias !10670
  %i.am = load i64, ptr %i.z, align 8, !range !68, !noalias !10670, !noundef !58
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br i1 %i.an, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ap = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !10670, !noundef !58
  %i.as = icmp sgt i8 %i.ar, -1
  br i1 %i.as, label %bb.e, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit, !prof !67

bb.g:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %i.ao, align 8, !noalias !10670, !nonnull !58, !align !59, !noundef !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10670
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.au = load i64, ptr %i.ao, align 8, !noalias !10670, !noundef !58
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !10670, !noundef !58 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10670
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10672)
  %i.ax = load i64, ptr %i.ad, align 8, !alias.scope !10672, !noalias !10670, !noundef !58 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  br i1 %i.ay, label %bb.i, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i, !prof !57

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !10673
  store i64 %i.aw, ptr %i.y, align 8, !noalias !10673
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.ax, ptr %i.az, align 8, !noalias !10673
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y) #49, !noalias !10673
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i: ; preds = %bb.h
  %i.ba = load ptr, ptr %.val.i, align 8, !alias.scope !10672, !noalias !10670, !nonnull !58, !noundef !58
  %i.bb = sub nuw i64 %i.ax, %i.aw                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.aw
  store ptr %i.bc, ptr %.val.i, align 8, !alias.scope !10672, !noalias !10670
  store i64 %i.bb, ptr %i.ad, align 8, !alias.scope !10672, !noalias !10670
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread72

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f
  %i.bd = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1) ; 2 uses
  %i.be = extractvalue { i64, ptr } %i.bd, 0
  %i.bf = extractvalue { i64, ptr } %i.bd, 1      ; 2 uses
  %i.bg = trunc nuw i64 %i.be to i1
  br i1 %i.bg, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread72_crit_edge

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread72_crit_edge: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit
  %i.bh = ptrtoint ptr %i.bf to i64
  %.val.i17.pre = load i64, ptr %i.ad, align 8
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread72

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread72: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread72_crit_edge, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i
  %.val.i17 = phi i64 [ %.val.i17.pre, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread72_crit_edge ], [ %i.aj, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.bb, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 4 uses
  %.sroa.6.0.i75 = phi i64 [ %i.bh, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread72_crit_edge ], [ %i.al, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.au, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i ] ; 3 uses
  %i.bi = icmp ult i64 %.val.i17, %.sroa.6.0.i75
  br i1 %i.bi, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread72
  %i.bj = sub nuw i64 %.val.i17, %.sroa.6.0.i75   ; 2 uses
  %.not190 = icmp eq i64 %.sroa.6.0.i75, 0
  br i1 %.not190, label %._crit_edge188, label %.lr.ph187

.lr.ph187:                                        ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 8 uses
  %i.bo = icmp eq i32 %2, 0
  %i.bp = add i32 %2, -1                          ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  br label %bb.l

bb.k:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 -9223372036854775801, ptr %i.ac, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread

thread-pre-split:                                 ; preds = %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2120VariablePackedStructQRShE0CsaSXGKSfiU2E_10lance_file.exit.thread, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2120VariablePackedStructQRShE0CsaSXGKSfiU2E_10lance_file.exit
  %.val.i18.pr = load i64, ptr %i.ad, align 8     ; 3 uses
  %i.cb = icmp ugt i64 %.val.i18.pr, %i.bj
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!9958 = distinct !{!9958, !9957, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2117SparseValiditySetEECsaSXGKSfiU2E_10lance_file: argument 0"}
!9959 = !{!9948}
!9960 = !{!9954, !9952, !9950, !9948}
!9961 = !{!9958, !9956, !9950, !9948}
!9962 = distinct !{!9962, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaEECsaSXGKSfiU2E_10lance_file"}
!9963 = distinct !{!9963, !9962, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaEECsaSXGKSfiU2E_10lance_file: argument 0"}
!9964 = !{!9963}
!9965 = distinct !{!9965, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsaSXGKSfiU2E_10lance_file"}
!9966 = distinct !{!9966, !9965, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsaSXGKSfiU2E_10lance_file: argument 0"}
!9967 = distinct !{!9967, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsaSXGKSfiU2E_10lance_file"}
!9968 = distinct !{!9968, !9967, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsaSXGKSfiU2E_10lance_file: argument 0"}
!9969 = distinct !{!9969, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsaSXGKSfiU2E_10lance_file"}
!9970 = distinct !{!9970, !9969, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsaSXGKSfiU2E_10lance_file: argument 0"}
!9971 = distinct !{!9971, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderEECsaSXGKSfiU2E_10lance_file"}
!9972 = distinct !{!9972, !9971, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderEECsaSXGKSfiU2E_10lance_file: argument 0"}
!9973 = !{!9966}
!9974 = !{!9968}
!9975 = !{!9968, !9966}
!9976 = !{!9972, !9970, !9966}
!9977 = distinct !{!9977, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file"}
!9978 = distinct !{!9978, !9977, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file: argument 0"}
!9979 = !{!9978}
!9980 = distinct !{!9980, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEBF_"}
!9981 = distinct !{!9981, !9980, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEBF_: argument 0"}
!9982 = !{!9981}
!9983 = distinct !{!9983, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoECsaSXGKSfiU2E_10lance_file"}
!9984 = distinct !{!9984, !9983, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoECsaSXGKSfiU2E_10lance_file: argument 0"}
!9985 = distinct !{!9985, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder12PageEncodingECsaSXGKSfiU2E_10lance_file"}
!9986 = distinct !{!9986, !9985, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder12PageEncodingECsaSXGKSfiU2E_10lance_file: argument 0"}
!9987 = distinct !{!9987, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSTyyEEECsaSXGKSfiU2E_10lance_file"}
!9988 = distinct !{!9988, !9987, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSTyyEEECsaSXGKSfiU2E_10lance_file: argument 0"}
!9989 = distinct !{!9989, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSTyyEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file"}
!9990 = distinct !{!9990, !9989, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSTyyEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file: argument 0"}
!9991 = distinct !{!9991, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSTyyEEECsaSXGKSfiU2E_10lance_file"}
!9992 = distinct !{!9992, !9991, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSTyyEEECsaSXGKSfiU2E_10lance_file: argument 0"}
!9993 = distinct !{!9993, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSTyyEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file"}
!9994 = distinct !{!9994, !9993, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSTyyEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file: argument 0"}
!9995 = !{!9984}
!9996 = !{!9986, !9984}
!9997 = !{!9988}
!9998 = !{!9990}
!9999 = !{!9990, !9988, !9984}
!10000 = !{!9992}
!10001 = !{!9994}
!10002 = !{!9994, !9992, !9984}
!10003 = distinct !{!10003, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file"}
!10004 = distinct !{!10004, !10003, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file: argument 0"}
!10005 = distinct !{!10005, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file"}
!10006 = distinct !{!10006, !10005, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file: argument 0"}
!10007 = distinct !{!10007, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file"}
!10008 = distinct !{!10008, !10007, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file: argument 0"}
!10009 = distinct !{!10009, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file"}
!10010 = distinct !{!10010, !10009, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file: argument 0"}
!10011 = distinct !{!10011, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file"}
!10012 = distinct !{!10012, !10011, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file: argument 0"}
!10013 = distinct !{!10013, i1 true, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file"}
!10014 = distinct !{!10014, !10013, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file: argument 0"}
!10015 = !{!10004}
!10016 = !{!10006}
!10017 = !{!10006, !10004}
!10018 = !{!10008}
!10019 = !{!10010}
!10020 = !{!10010, !10008}
!10021 = !{!10012}
!10022 = !{!10014}
!10023 = !{!10014, !10012}
!10024 = distinct !{!10024, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueEECsaSXGKSfiU2E_10lance_file"}
!10025 = distinct !{!10025, !10024, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueEECsaSXGKSfiU2E_10lance_file: argument 0"}
!10026 = !{!10025}
!10027 = !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueEECsaSXGKSfiU2E_10lance_file}
!10028 = distinct !{!10028, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEB1J_"}
!10029 = distinct !{!10029, !10028, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEB1J_: argument 0"}
!10030 = distinct !{!10030, i1 true, !"_RNvXNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2_8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1d_"}
!10031 = distinct !{!10031, !10030, !"_RNvXNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2_8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1d_: argument 0"}
!10032 = distinct !{!10032, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8IntoIterlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEB1J_"}
!10033 = distinct !{!10033, !10032, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8IntoIterlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEB1J_: argument 0"}
!10034 = distinct !{!10034, i1 true, !"_RNvXsy_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoIterlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1g_"}
!10035 = distinct !{!10035, !10034, !"_RNvXsy_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoIterlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1g_: argument 0"}
!10036 = !{!10029}
!10037 = !{!10031}
!10038 = !{!10031, !10029}
!10039 = !{!10035, !10033, !10031, !10029}
!10040 = distinct !{!10040, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10041 = distinct !{!10041, !10040, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10042 = distinct !{!10042, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10043 = distinct !{!10043, !10042, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10044 = distinct !{!10044, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10045 = distinct !{!10045, !10044, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10046 = distinct !{!10046, i1 true, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEQRShE0CsaSXGKSfiU2E_10lance_file"}
!10047 = distinct !{!10047, !10046, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10048 = distinct !{!10048, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file"}
!10049 = distinct !{!10049, !10048, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10050 = distinct !{!10050, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10051 = distinct !{!10051, !10050, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10052 = distinct !{!10052, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10053 = distinct !{!10053, !10052, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10054 = distinct !{!10054, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10055 = distinct !{!10055, !10054, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10056 = distinct !{!10056, !10046, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEQRShE0CsaSXGKSfiU2E_10lance_file: argument 1"}
!10057 = distinct !{!10057, !10048, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10058 = distinct !{null}
!10059 = distinct !{!10059, i1 true, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10060 = distinct !{!10060, !10059, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10061 = distinct !{null, null}
!10062 = !{!10041}
!10063 = !{!10043}
!10064 = !{!10045}
!10065 = !{!10045, !10041}
!10066 = !{!10051, !10049, !10047}
!10067 = !{!10053}
!10068 = !{!10055}
!10069 = !{!10049, !10047}
!10070 = !{!10055, !10051, !10049, !10047}
!10071 = !{!10049, !10057, !10047, !10056}
!10072 = !{!10049, !10047, !10056}
!10073 = !{!10060}
!10074 = distinct !{!10074, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10075 = distinct !{!10075, !10074, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10076 = distinct !{!10076, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10077 = distinct !{!10077, !10076, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10078 = distinct !{!10078, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10079 = distinct !{!10079, !10078, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10080 = distinct !{!10080, i1 true, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14ColumnEncodingEQRShE0CsaSXGKSfiU2E_10lance_file"}
!10081 = distinct !{!10081, !10080, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14ColumnEncodingEQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10082 = distinct !{!10082, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file"}
!10083 = distinct !{!10083, !10082, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10084 = distinct !{!10084, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10085 = distinct !{!10085, !10084, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10086 = distinct !{!10086, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10087 = distinct !{!10087, !10086, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10088 = distinct !{!10088, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10089 = distinct !{!10089, !10088, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10090 = distinct !{!10090, !10080, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14ColumnEncodingEQRShE0CsaSXGKSfiU2E_10lance_file: argument 1"}
!10091 = distinct !{!10091, !10082, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10092 = distinct !{null}
!10093 = distinct !{!10093, i1 true, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14ColumnEncodingENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10094 = distinct !{!10094, !10093, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14ColumnEncodingENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10095 = distinct !{null, null}
!10096 = !{!10075}
!10097 = !{!10077}
!10098 = !{!10079}
!10099 = !{!10079, !10075}
!10100 = !{!10085, !10083, !10081}
!10101 = !{!10087}
!10102 = !{!10089}
!10103 = !{!10083, !10081}
!10104 = !{!10089, !10085, !10083, !10081}
!10105 = !{!10083, !10091, !10081, !10090}
!10106 = !{!10083, !10081, !10090}
!10107 = !{!10094}
!10108 = distinct !{!10108, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10109 = distinct !{!10109, !10108, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10110 = distinct !{!10110, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10111 = distinct !{!10111, !10110, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10112 = distinct !{!10112, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10113 = distinct !{!10113, !10112, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10114 = distinct !{!10114, i1 true, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file"}
!10115 = distinct !{!10115, !10114, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10116 = distinct !{!10116, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file"}
!10117 = distinct !{!10117, !10116, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10118 = distinct !{!10118, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10119 = distinct !{!10119, !10118, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10120 = distinct !{!10120, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10121 = distinct !{!10121, !10120, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10122 = distinct !{!10122, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10123 = distinct !{!10123, !10122, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10124 = distinct !{!10124, !10114, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryEQRShE0CsaSXGKSfiU2E_10lance_file: argument 1"}
!10125 = distinct !{!10125, !10116, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10126 = distinct !{null}
!10127 = distinct !{!10127, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file"}
!10128 = distinct !{!10128, !10127, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file: argument 0"}
!10129 = distinct !{!10129, i1 true, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10130 = distinct !{!10130, !10129, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10131 = distinct !{!10131, !10129, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110DictionaryENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10132 = distinct !{!10132, i1 true, !"_RINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10133 = distinct !{!10133, !10132, !"_RINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10134 = distinct !{null, null, null}
!10135 = distinct !{!10135, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file"}
!10136 = distinct !{!10136, !10135, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file: argument 0"}
!10137 = distinct !{!10137, i1 true, !"_RNCINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file"}
!10138 = distinct !{!10138, !10137, !"_RNCINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10139 = distinct !{!10139, i1 true, !"_RNCINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file"}
!10140 = distinct !{!10140, !10139, !"_RNCINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10141 = distinct !{!10141, !10132, !"_RINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10142 = distinct !{!10142, i1 true, !"_RNCINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsaSXGKSfiU2E_10lance_file"}
!10143 = distinct !{!10143, !10142, !"_RNCINvXs3F_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_10DictionaryNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10144 = !{!10109}
!10145 = !{!10111}
!10146 = !{!10113}
!10147 = !{!10113, !10109}
!10148 = !{!10119, !10117, !10115}
!10149 = !{!10121}
!10150 = !{!10123}
!10151 = !{!10117, !10115}
!10152 = !{!10123, !10119, !10117, !10115}
!10153 = !{!10117, !10125, !10115, !10124}
!10154 = !{!10117, !10115, !10124}
!10155 = !{!10128}
!10156 = !{!10133, !10131, !10130}
!10157 = !{!10128, !10133, !10131, !10130}
!10158 = !{!10131}
!10159 = !{!10136}
!10160 = !{!10136, !10133, !10131, !10130}
!10161 = !{!10138, !10131}
!10162 = !{!10140, !10131}
!10163 = !{!10143, !10141, !10133, !10131, !10130}
!10164 = !{!10141, !10133, !10131, !10130}
!10165 = !{!10141, !10131}
!10166 = distinct !{!10166, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10167 = distinct !{!10167, !10166, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10168 = distinct !{!10168, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10169 = distinct !{!10169, !10168, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10170 = distinct !{!10170, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10171 = distinct !{!10171, !10170, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10172 = distinct !{!10172, i1 true, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file"}
!10173 = distinct !{!10173, !10172, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10174 = distinct !{!10174, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file"}
!10175 = distinct !{!10175, !10174, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10176 = distinct !{!10176, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10177 = distinct !{!10177, !10176, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10178 = distinct !{!10178, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10179 = distinct !{!10179, !10178, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10180 = distinct !{!10180, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10181 = distinct !{!10181, !10180, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10182 = distinct !{!10182, !10172, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEQRShE0CsaSXGKSfiU2E_10lance_file: argument 1"}
!10183 = distinct !{!10183, !10174, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10184 = distinct !{null}
!10185 = distinct !{!10185, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file"}
!10186 = distinct !{!10186, !10185, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file: argument 0"}
!10187 = distinct !{!10187, i1 true, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10188 = distinct !{!10188, !10187, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10189 = distinct !{!10189, !10187, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10190 = distinct !{!10190, i1 true, !"_RINvXs3X_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_12PackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10191 = distinct !{!10191, !10190, !"_RINvXs3X_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_12PackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10192 = distinct !{null, null, null}
!10193 = distinct !{!10193, i1 true, !"_RNCINvXs3X_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_12PackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file"}
!10194 = distinct !{!10194, !10193, !"_RNCINvXs3X_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_12PackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10195 = distinct !{!10195, i1 true, !"_RNCINvXs3X_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_12PackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file"}
!10196 = distinct !{!10196, !10195, !"_RNCINvXs3X_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_12PackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10197 = distinct !{!10197, !10190, !"_RINvXs3X_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_12PackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10198 = !{!10167}
!10199 = !{!10169}
!10200 = !{!10171}
!10201 = !{!10171, !10167}
!10202 = !{!10177, !10175, !10173}
!10203 = !{!10179}
!10204 = !{!10181}
!10205 = !{!10175, !10173}
!10206 = !{!10181, !10177, !10175, !10173}
!10207 = !{!10175, !10183, !10173, !10182}
!10208 = !{!10175, !10173, !10182}
!10209 = !{!10186}
!10210 = !{!10191, !10189, !10188}
!10211 = !{!10186, !10191, !10189, !10188}
!10212 = !{!10189}
!10213 = !{!10194, !10191, !10189, !10188}
!10214 = !{!10196, !10189}
!10215 = !{!10197, !10189}
!10216 = distinct !{!10216, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10217 = distinct !{!10217, !10216, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10218 = distinct !{!10218, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10219 = distinct !{!10219, !10218, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10220 = distinct !{!10220, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10221 = distinct !{!10221, !10220, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10222 = distinct !{!10222, i1 true, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file"}
!10223 = distinct !{!10223, !10222, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10224 = distinct !{!10224, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file"}
!10225 = distinct !{!10225, !10224, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10226 = distinct !{!10226, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10227 = distinct !{!10227, !10226, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10228 = distinct !{!10228, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10229 = distinct !{!10229, !10228, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10230 = distinct !{!10230, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10231 = distinct !{!10231, !10230, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10232 = distinct !{!10232, !10222, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEQRShE0CsaSXGKSfiU2E_10lance_file: argument 1"}
!10233 = distinct !{!10233, !10224, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10234 = distinct !{null}
!10235 = distinct !{!10235, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file"}
!10236 = distinct !{!10236, !10235, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file: argument 0"}
!10237 = distinct !{!10237, i1 true, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10238 = distinct !{!10238, !10237, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10239 = distinct !{!10239, !10237, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10240 = distinct !{!10240, i1 true, !"_RINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10241 = distinct !{!10241, !10240, !"_RINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10242 = distinct !{null, null, null}
!10243 = distinct !{!10243, !10240, !"_RINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10244 = distinct !{!10244, i1 true, !"_RNCINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file"}
!10245 = distinct !{!10245, !10244, !"_RNCINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10246 = distinct !{!10246, i1 true, !"_RNCINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file"}
!10247 = distinct !{!10247, !10246, !"_RNCINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10248 = distinct !{!10248, i1 true, !"_RNCINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsaSXGKSfiU2E_10lance_file"}
!10249 = distinct !{!10249, !10248, !"_RNCINvXs3R_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_13FixedSizeListNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs0_0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10250 = !{!10217}
!10251 = !{!10219}
!10252 = !{!10221}
!10253 = !{!10221, !10217}
!10254 = !{!10227, !10225, !10223}
!10255 = !{!10229}
!10256 = !{!10231}
!10257 = !{!10225, !10223}
!10258 = !{!10231, !10227, !10225, !10223}
!10259 = !{!10225, !10233, !10223, !10232}
!10260 = !{!10225, !10223, !10232}
!10261 = !{!10236}
!10262 = !{!10241, !10239, !10238}
!10263 = !{!10236, !10241, !10239, !10238}
!10264 = !{!10239}
!10265 = !{!10245, !10243, !10241, !10239, !10238}
!10266 = !{!10243, !10241, !10239, !10238}
!10267 = !{!10247, !10239}
!10268 = !{!10249, !10243, !10241, !10239, !10238}
!10269 = !{!10243, !10239}
!10270 = distinct !{!10270, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10271 = distinct !{!10271, !10270, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10272 = distinct !{!10272, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10273 = distinct !{!10273, !10272, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10274 = distinct !{!10274, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10275 = distinct !{!10275, !10274, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10276 = distinct !{!10276, i1 true, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file"}
!10277 = distinct !{!10277, !10276, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10278 = distinct !{!10278, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file"}
!10279 = distinct !{!10279, !10278, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10280 = distinct !{!10280, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10281 = distinct !{!10281, !10280, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10282 = distinct !{!10282, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10283 = distinct !{!10283, !10282, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10284 = distinct !{!10284, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10285 = distinct !{!10285, !10284, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10286 = distinct !{!10286, !10276, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitEQRShE0CsaSXGKSfiU2E_10lance_file: argument 1"}
!10287 = distinct !{!10287, !10278, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10288 = distinct !{null}
!10289 = distinct !{!10289, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file"}
!10290 = distinct !{!10290, !10289, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file: argument 0"}
!10291 = distinct !{!10291, i1 true, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10292 = distinct !{!10292, !10291, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10293 = distinct !{!10293, !10291, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115ByteStreamSplitENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10294 = distinct !{!10294, i1 true, !"_RINvXs4f_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_15ByteStreamSplitNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10295 = distinct !{!10295, !10294, !"_RINvXs4f_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_15ByteStreamSplitNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10296 = distinct !{null, null, null}
!10297 = distinct !{!10297, i1 true, !"_RNCINvXs4f_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_15ByteStreamSplitNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file"}
!10298 = distinct !{!10298, !10297, !"_RNCINvXs4f_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_15ByteStreamSplitNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10299 = distinct !{!10299, !10294, !"_RINvXs4f_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_15ByteStreamSplitNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10300 = !{!10271}
!10301 = !{!10273}
!10302 = !{!10275}
!10303 = !{!10275, !10271}
!10304 = !{!10281, !10279, !10277}
!10305 = !{!10283}
!10306 = !{!10285}
!10307 = !{!10279, !10277}
!10308 = !{!10285, !10281, !10279, !10277}
!10309 = !{!10279, !10287, !10277, !10286}
!10310 = !{!10279, !10277, !10286}
!10311 = !{!10290}
!10312 = !{!10295, !10293, !10292}
!10313 = !{!10290, !10295, !10293, !10292}
!10314 = !{!10293}
!10315 = !{!10298, !10293}
!10316 = !{!10299, !10293}
!10317 = distinct !{!10317, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10318 = distinct !{!10318, !10317, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10319 = distinct !{!10319, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10320 = distinct !{!10320, !10319, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10321 = distinct !{!10321, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10322 = distinct !{!10322, !10321, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10323 = distinct !{!10323, i1 true, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file"}
!10324 = distinct !{!10324, !10323, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10325 = distinct !{!10325, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file"}
!10326 = distinct !{!10326, !10325, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10327 = distinct !{!10327, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10328 = distinct !{!10328, !10327, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10329 = distinct !{!10329, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10330 = distinct !{!10330, !10329, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10331 = distinct !{!10331, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10332 = distinct !{!10332, !10331, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10333 = distinct !{!10333, !10323, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingEQRShE0CsaSXGKSfiU2E_10lance_file: argument 1"}
!10334 = distinct !{!10334, !10325, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10335 = distinct !{null}
!10336 = distinct !{!10336, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file"}
!10337 = distinct !{!10337, !10336, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file: argument 0"}
!10338 = distinct !{!10338, i1 true, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10339 = distinct !{!10339, !10338, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10340 = distinct !{!10340, !10338, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119OutOfLineBitpackingENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10341 = distinct !{!10341, i1 true, !"_RINvXs3j_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_19OutOfLineBitpackingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10342 = distinct !{!10342, !10341, !"_RINvXs3j_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_19OutOfLineBitpackingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10343 = distinct !{null, null, null}
!10344 = distinct !{!10344, !10341, !"_RINvXs3j_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_19OutOfLineBitpackingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10345 = distinct !{!10345, i1 true, !"_RNCINvXs3j_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_19OutOfLineBitpackingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file"}
!10346 = distinct !{!10346, !10345, !"_RNCINvXs3j_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_19OutOfLineBitpackingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10347 = distinct !{!10347, i1 true, !"_RNCINvXs3j_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_19OutOfLineBitpackingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file"}
!10348 = distinct !{!10348, !10347, !"_RNCINvXs3j_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_19OutOfLineBitpackingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10349 = !{!10318}
!10350 = !{!10320}
!10351 = !{!10322}
!10352 = !{!10322, !10318}
!10353 = !{!10328, !10326, !10324}
!10354 = !{!10330}
!10355 = !{!10332}
!10356 = !{!10326, !10324}
!10357 = !{!10332, !10328, !10326, !10324}
!10358 = !{!10326, !10334, !10324, !10333}
!10359 = !{!10326, !10324, !10333}
!10360 = !{!10337}
!10361 = !{!10342, !10340, !10339}
!10362 = !{!10337, !10342, !10340, !10339}
!10363 = !{!10340}
!10364 = !{!10346, !10344, !10342, !10340, !10339}
!10365 = !{!10344, !10342, !10340, !10339}
!10366 = !{!10348, !10340}
!10367 = !{!10344, !10340}
!10368 = distinct !{!10368, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10369 = distinct !{!10369, !10368, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10370 = distinct !{!10370, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10371 = distinct !{!10371, !10370, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10372 = distinct !{!10372, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10373 = distinct !{!10373, !10372, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10374 = distinct !{!10374, i1 true, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file"}
!10375 = distinct !{!10375, !10374, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10376 = distinct !{!10376, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file"}
!10377 = distinct !{!10377, !10376, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10378 = distinct !{!10378, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10379 = distinct !{!10379, !10378, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10380 = distinct !{!10380, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10381 = distinct !{!10381, !10380, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10382 = distinct !{!10382, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10383 = distinct !{!10383, !10382, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10384 = distinct !{!10384, !10374, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleEQRShE0CsaSXGKSfiU2E_10lance_file: argument 1"}
!10385 = distinct !{!10385, !10376, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10386 = distinct !{null}
!10387 = distinct !{!10387, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file"}
!10388 = distinct !{!10388, !10387, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file: argument 0"}
!10389 = distinct !{!10389, i1 true, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10390 = distinct !{!10390, !10389, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10391 = distinct !{!10391, !10389, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb213RleENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10392 = distinct !{!10392, i1 true, !"_RINvXs3L_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_3RleNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10393 = distinct !{!10393, !10392, !"_RINvXs3L_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_3RleNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10394 = distinct !{null, null, null}
!10395 = distinct !{!10395, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file"}
!10396 = distinct !{!10396, !10395, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file: argument 0"}
!10397 = distinct !{!10397, i1 true, !"_RNCINvXs3L_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_3RleNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file"}
!10398 = distinct !{!10398, !10397, !"_RNCINvXs3L_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_3RleNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10399 = distinct !{!10399, i1 true, !"_RNCINvXs3L_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_3RleNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file"}
!10400 = distinct !{!10400, !10399, !"_RNCINvXs3L_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_3RleNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10401 = distinct !{!10401, !10392, !"_RINvXs3L_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_3RleNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10402 = !{!10369}
!10403 = !{!10371}
!10404 = !{!10373}
!10405 = !{!10373, !10369}
!10406 = !{!10379, !10377, !10375}
!10407 = !{!10381}
!10408 = !{!10383}
!10409 = !{!10377, !10375}
!10410 = !{!10383, !10379, !10377, !10375}
!10411 = !{!10377, !10385, !10375, !10384}
!10412 = !{!10377, !10375, !10384}
!10413 = !{!10388}
!10414 = !{!10393, !10391, !10390}
!10415 = !{!10388, !10393, !10391, !10390}
!10416 = !{!10391}
!10417 = !{!10396}
!10418 = !{!10396, !10393, !10391, !10390}
!10419 = !{!10398, !10391}
!10420 = !{!10400, !10391}
!10421 = !{!10401, !10391}
!10422 = distinct !{!10422, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10423 = distinct !{!10423, !10422, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10424 = distinct !{!10424, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10425 = distinct !{!10425, !10424, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10426 = distinct !{!10426, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10427 = distinct !{!10427, !10426, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10428 = distinct !{!10428, i1 true, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file"}
!10429 = distinct !{!10429, !10428, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10430 = distinct !{!10430, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file"}
!10431 = distinct !{!10431, !10430, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10432 = distinct !{!10432, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10433 = distinct !{!10433, !10432, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10434 = distinct !{!10434, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10435 = distinct !{!10435, !10434, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10436 = distinct !{!10436, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10437 = distinct !{!10437, !10436, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10438 = distinct !{!10438, !10428, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstEQRShE0CsaSXGKSfiU2E_10lance_file: argument 1"}
!10439 = distinct !{!10439, !10430, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10440 = distinct !{null}
!10441 = distinct !{!10441, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file"}
!10442 = distinct !{!10442, !10441, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file: argument 0"}
!10443 = distinct !{!10443, i1 true, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10444 = distinct !{!10444, !10443, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10445 = distinct !{!10445, !10443, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb214FsstENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10446 = distinct !{!10446, i1 true, !"_RINvXs3z_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_4FsstNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10447 = distinct !{!10447, !10446, !"_RINvXs3z_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_4FsstNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10448 = distinct !{null, null, null}
!10449 = distinct !{!10449, !10446, !"_RINvXs3z_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_4FsstNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10450 = distinct !{!10450, i1 true, !"_RNCINvXs3z_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_4FsstNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file"}
!10451 = distinct !{!10451, !10450, !"_RNCINvXs3z_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_4FsstNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10452 = distinct !{!10452, i1 true, !"_RNCINvXs3z_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_4FsstNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file"}
!10453 = distinct !{!10453, !10452, !"_RNCINvXs3z_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_4FsstNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10454 = !{!10423}
!10455 = !{!10425}
!10456 = !{!10427}
!10457 = !{!10427, !10423}
!10458 = !{!10433, !10431, !10429}
!10459 = !{!10435}
!10460 = !{!10437}
!10461 = !{!10431, !10429}
!10462 = !{!10437, !10433, !10431, !10429}
!10463 = !{!10431, !10439, !10429, !10438}
!10464 = !{!10431, !10429, !10438}
!10465 = !{!10442}
!10466 = !{!10447, !10445, !10444}
!10467 = !{!10442, !10447, !10445, !10444}
!10468 = !{!10445}
!10469 = !{!10451, !10449, !10447, !10445, !10444}
!10470 = !{!10449, !10447, !10445, !10444}
!10471 = !{!10453, !10445}
!10472 = !{!10449, !10445}
!10473 = distinct !{!10473, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10474 = distinct !{!10474, !10473, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10475 = distinct !{!10475, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10476 = distinct !{!10476, !10475, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10477 = distinct !{!10477, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10478 = distinct !{!10478, !10477, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10479 = distinct !{!10479, i1 true, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file"}
!10480 = distinct !{!10480, !10479, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10481 = distinct !{!10481, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file"}
!10482 = distinct !{!10482, !10481, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10483 = distinct !{!10483, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10484 = distinct !{!10484, !10483, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10485 = distinct !{!10485, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10486 = distinct !{!10486, !10485, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10487 = distinct !{!10487, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10488 = distinct !{!10488, !10487, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10489 = distinct !{!10489, !10479, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralEQRShE0CsaSXGKSfiU2E_10lance_file: argument 1"}
!10490 = distinct !{!10490, !10481, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10491 = distinct !{null}
!10492 = distinct !{!10492, i1 true, !"_RINvXs49_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_7GeneralNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10493 = distinct !{!10493, !10492, !"_RINvXs49_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_7GeneralNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10494 = distinct !{!10494, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2117BufferCompressionE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file"}
!10495 = distinct !{!10495, !10494, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2117BufferCompressionE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file: argument 0"}
!10496 = distinct !{!10496, i1 true, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10497 = distinct !{!10497, !10496, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10498 = distinct !{!10498, !10496, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb217GeneralENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10499 = distinct !{null, null, null}
!10500 = distinct !{!10500, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file"}
!10501 = distinct !{!10501, !10500, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file: argument 0"}
!10502 = distinct !{!10502, !10492, !"_RINvXs49_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_7GeneralNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10503 = distinct !{!10503, i1 true, !"_RNCINvXs49_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_7GeneralNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file"}
!10504 = distinct !{!10504, !10503, !"_RNCINvXs49_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_7GeneralNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10505 = distinct !{!10505, i1 true, !"_RNCINvXs49_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_7GeneralNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file"}
!10506 = distinct !{!10506, !10505, !"_RNCINvXs49_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_7GeneralNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10507 = !{!10474}
!10508 = !{!10476}
!10509 = !{!10478}
!10510 = !{!10478, !10474}
!10511 = !{!10484, !10482, !10480}
!10512 = !{!10486}
!10513 = !{!10488}
!10514 = !{!10482, !10480}
!10515 = !{!10488, !10484, !10482, !10480}
!10516 = !{!10482, !10490, !10480, !10489}
!10517 = !{!10482, !10480, !10489}
!10518 = !{!10493}
!10519 = !{!10495, !10493}
!10520 = !{!10498, !10497}
!10521 = !{!10498}
!10522 = !{!10501}
!10523 = !{!10502, !10498, !10497}
!10524 = !{!10501, !10502, !10498, !10497}
!10525 = !{!10504, !10493, !10502, !10498, !10497}
!10526 = !{!10493, !10502, !10498, !10497}
!10527 = !{!10506, !10498}
!10528 = !{!10493, !10498}
!10529 = distinct !{!10529, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10530 = distinct !{!10530, !10529, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10531 = distinct !{!10531, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10532 = distinct !{!10532, !10531, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10533 = distinct !{!10533, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10534 = distinct !{!10534, !10533, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10535 = distinct !{!10535, i1 true, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file"}
!10536 = distinct !{!10536, !10535, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10537 = distinct !{!10537, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file"}
!10538 = distinct !{!10538, !10537, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10539 = distinct !{!10539, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10540 = distinct !{!10540, !10539, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10541 = distinct !{!10541, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10542 = distinct !{!10542, !10541, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10543 = distinct !{!10543, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10544 = distinct !{!10544, !10543, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10545 = distinct !{!10545, !10535, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableEQRShE0CsaSXGKSfiU2E_10lance_file: argument 1"}
!10546 = distinct !{!10546, !10537, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10547 = distinct !{null}
!10548 = distinct !{!10548, i1 true, !"_RINvXs34_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_8VariableNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10549 = distinct !{!10549, !10548, !"_RINvXs34_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_8VariableNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10550 = distinct !{!10550, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file"}
!10551 = distinct !{!10551, !10550, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file: argument 0"}
!10552 = distinct !{!10552, i1 true, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10553 = distinct !{!10553, !10552, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10554 = distinct !{!10554, !10552, !"_RINvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb218VariableENtB3_7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10555 = distinct !{!10555, !10548, !"_RINvXs34_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_8VariableNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10556 = distinct !{null, null, null}
!10557 = distinct !{!10557, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2117BufferCompressionE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file"}
!10558 = distinct !{!10558, !10557, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2117BufferCompressionE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file: argument 0"}
!10559 = distinct !{!10559, i1 true, !"_RNCINvXs34_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_8VariableNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file"}
!10560 = distinct !{!10560, !10559, !"_RNCINvXs34_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_8VariableNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10561 = distinct !{!10561, i1 true, !"_RNCINvXs34_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_8VariableNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file"}
!10562 = distinct !{!10562, !10561, !"_RNCINvXs34_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_8VariableNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10563 = !{!10530}
!10564 = !{!10532}
!10565 = !{!10534}
!10566 = !{!10534, !10530}
!10567 = !{!10540, !10538, !10536}
!10568 = !{!10542}
!10569 = !{!10544}
!10570 = !{!10538, !10536}
!10571 = !{!10544, !10540, !10538, !10536}
!10572 = !{!10538, !10546, !10536, !10545}
!10573 = !{!10538, !10536, !10545}
!10574 = !{!10549}
!10575 = !{!10551}
!10576 = !{!10555, !10554, !10553}
!10577 = !{!10551, !10555, !10554, !10553}
!10578 = !{!10554}
!10579 = !{!10558, !10549}
!10580 = !{!10554, !10553}
!10581 = !{!10560, !10554}
!10582 = !{!10562, !10549, !10555, !10554, !10553}
!10583 = !{!10549, !10555, !10554, !10553}
!10584 = !{!10549, !10554}
!10585 = distinct !{!10585, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10586 = distinct !{!10586, !10585, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10587 = distinct !{!10587, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10588 = distinct !{!10588, !10587, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10589 = distinct !{!10589, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10590 = distinct !{!10590, !10589, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10591 = distinct !{!10591, i1 true, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2120VariablePackedStructQRShE0CsaSXGKSfiU2E_10lance_file"}
!10592 = distinct !{!10592, !10591, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2120VariablePackedStructQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10593 = distinct !{!10593, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file"}
!10594 = distinct !{!10594, !10593, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10595 = distinct !{!10595, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10596 = distinct !{!10596, !10595, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10597 = distinct !{!10597, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10598 = distinct !{!10598, !10597, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10599 = distinct !{!10599, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10600 = distinct !{!10600, !10599, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10601 = distinct !{!10601, !10591, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2120VariablePackedStructQRShE0CsaSXGKSfiU2E_10lance_file: argument 1"}
!10602 = distinct !{!10602, !10593, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10603 = distinct !{null}
!10604 = distinct !{!10604, i1 true, !"_RINvXs43_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_20VariablePackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10605 = distinct !{!10605, !10604, !"_RINvXs43_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_20VariablePackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10606 = distinct !{!10606, !10604, !"_RINvXs43_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB7_20VariablePackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10607 = distinct !{!10607, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message14merge_repeatedNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingQRShECsaSXGKSfiU2E_10lance_file"}
!10608 = distinct !{!10608, !10607, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message14merge_repeatedNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10609 = distinct !{!10609, !10607, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message14merge_repeatedNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10610 = distinct !{!10610, i1 true, !"_RNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_structNtB5_13FieldEncodingNtNtCscI6d9CVNmLh_4core7default7Default7default"}
!10611 = distinct !{!10611, !10610, !"_RNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_structNtB5_13FieldEncodingNtNtCscI6d9CVNmLh_4core7default7Default7default: argument 0"}
!10612 = distinct !{!10612, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingQRShECsaSXGKSfiU2E_10lance_file"}
!10613 = distinct !{!10613, !10612, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10614 = distinct !{!10614, !10612, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10615 = distinct !{null, null, null, null}
!10616 = distinct !{!10616, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingNCINvNtB2_7message5mergeBJ_QRShE0B2B_ECsaSXGKSfiU2E_10lance_file"}
!10617 = distinct !{!10617, !10616, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingNCINvNtB2_7message5mergeBJ_QRShE0B2B_ECsaSXGKSfiU2E_10lance_file: argument 0"}
!10618 = distinct !{!10618, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10619 = distinct !{!10619, !10618, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10620 = distinct !{!10620, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10621 = distinct !{!10621, !10620, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10622 = distinct !{!10622, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10623 = distinct !{!10623, !10622, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10624 = distinct !{!10624, !10616, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingNCINvNtB2_7message5mergeBJ_QRShE0B2B_ECsaSXGKSfiU2E_10lance_file: argument 1"}
!10625 = distinct !{!10625, i1 true, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingQRShE0CsaSXGKSfiU2E_10lance_file"}
!10626 = distinct !{!10626, !10625, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10627 = distinct !{!10627, !10625, !"_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingQRShE0CsaSXGKSfiU2E_10lance_file: argument 1"}
!10628 = distinct !{!10628, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file"}
!10629 = distinct !{!10629, !10628, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10630 = distinct !{!10630, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10631 = distinct !{!10631, !10630, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10632 = distinct !{!10632, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10633 = distinct !{!10633, !10632, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10634 = distinct !{!10634, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10635 = distinct !{!10635, !10634, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10636 = distinct !{!10636, !10628, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10637 = distinct !{!10637, i1 true, !"_RINvXs2_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_structNtB6_13FieldEncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file"}
!10638 = distinct !{!10638, !10637, !"_RINvXs2_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_structNtB6_13FieldEncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10639 = distinct !{!10639, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file"}
!10640 = distinct !{!10640, !10639, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file: argument 0"}
!10641 = distinct !{!10641, i1 true, !"_RINvMs5_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct14field_encodingNtB6_6Layout5mergeQRShECsaSXGKSfiU2E_10lance_file"}
!10642 = distinct !{!10642, !10641, !"_RINvMs5_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct14field_encodingNtB6_6Layout5mergeQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10643 = distinct !{!10643, !10641, !"_RINvMs5_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct14field_encodingNtB6_6Layout5mergeQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10644 = distinct !{!10644, i1 true, !"_RNCINvXs2_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_structNtB8_13FieldEncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file"}
!10645 = distinct !{!10645, !10644, !"_RNCINvXs2_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_structNtB8_13FieldEncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10646 = distinct !{!10646, i1 true, !"_RNCINvXs2_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_structNtB8_13FieldEncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file"}
!10647 = distinct !{!10647, !10646, !"_RNCINvXs2_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_structNtB8_13FieldEncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10648 = distinct !{null, null, null}
!10649 = distinct !{!10649, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingECsaSXGKSfiU2E_10lance_file"}
!10650 = distinct !{!10650, !10649, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingECsaSXGKSfiU2E_10lance_file: argument 0"}
!10651 = distinct !{!10651, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEECsaSXGKSfiU2E_10lance_file"}
!10652 = distinct !{!10652, !10651, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEECsaSXGKSfiU2E_10lance_file: argument 0"}
!10653 = distinct !{null, null, null, null, null, null}
!10654 = distinct !{!10654, i1 true, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingE8push_mutCsaSXGKSfiU2E_10lance_file"}
!10655 = distinct !{!10655, !10654, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingE8push_mutCsaSXGKSfiU2E_10lance_file: argument 0"}
!10656 = distinct !{!10656, !10654, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingE8push_mutCsaSXGKSfiU2E_10lance_file: argument 1"}
!10657 = distinct !{!10657, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingECsaSXGKSfiU2E_10lance_file"}
!10658 = distinct !{!10658, !10657, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingECsaSXGKSfiU2E_10lance_file: argument 0"}
!10659 = distinct !{!10659, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEECsaSXGKSfiU2E_10lance_file"}
!10660 = distinct !{!10660, !10659, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEECsaSXGKSfiU2E_10lance_file: argument 0"}
!10661 = distinct !{null}
!10662 = distinct !{!10662, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingECsaSXGKSfiU2E_10lance_file"}
!10663 = distinct !{!10663, !10662, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2122variable_packed_struct13FieldEncodingECsaSXGKSfiU2E_10lance_file: argument 0"}
!10664 = distinct !{!10664, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEECsaSXGKSfiU2E_10lance_file"}
!10665 = distinct !{!10665, !10664, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEECsaSXGKSfiU2E_10lance_file: argument 0"}
!10666 = distinct !{null, null, null, null}
!10667 = distinct !{!10667, i1 true, !"_RNCINvXs43_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_20VariablePackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file"}
!10668 = distinct !{!10668, !10667, !"_RNCINvXs43_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtB9_20VariablePackedStructNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0CsaSXGKSfiU2E_10lance_file: argument 0"}
!10669 = distinct !{null, null}
!10670 = !{!10586}
!10671 = !{!10588}
!10672 = !{!10590}
!10673 = !{!10590, !10586}
!10674 = !{!10596, !10594, !10592}
!10675 = !{!10598}
!10676 = !{!10600}
!10677 = !{!10594, !10592}
!10678 = !{!10600, !10596, !10594, !10592}
!10679 = !{!10594, !10602, !10592, !10601}
!10680 = !{!10594, !10592, !10601}
!10681 = !{!10609, !10608, !10606, !10605}
!10682 = !{!10611}
!10683 = !{!10613}
!10684 = !{!10613, !10614, !10609, !10606}
!10685 = !{!10619, !10617, !10609, !10606}
!10686 = !{!10619, !10617, !10613, !10614, !10609, !10606}
!10687 = !{!10621}
!10688 = !{!10623}
!10689 = !{!10617, !10609, !10606}
!10690 = !{!10623, !10619, !10617, !10613, !10614, !10609, !10606}
!10691 = !{!10609, !10606}
!10692 = !{!10617, !10624, !10613, !10614, !10609, !10606}
!10693 = !{!10626}
!10694 = !{!10631, !10629, !10626, !10627, !10609, !10606}
!10695 = !{!10633}
!10696 = !{!10631, !10629, !10626, !10627, !10613, !10614, !10609, !10606}
!10697 = !{!10635}
!10698 = !{!10629, !10609, !10606}
!10699 = !{!10635, !10631, !10629, !10626, !10627, !10613, !10614, !10609, !10606}
!10700 = !{!10629, !10636, !10626, !10627, !10613, !10614, !10609, !10606}
!10701 = !{!10640, !10638, !10626, !10613}
!10702 = !{!10642}
!10703 = !{!10642, !10643}
!10704 = !{!10645}
!10705 = !{!10647}
!10706 = !{!10652, !10650}
!10707 = !{!10655}
!10708 = !{!10656}
!10709 = !{!10660, !10658, !10656}
!10710 = !{!10665, !10663}
!10711 = !{!10606, !10605}
!10712 = !{!10668, !10606, !10605}
!10713 = !{!10606}
!10714 = distinct !{!10714, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file"}
!10715 = distinct !{!10715, !10714, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file: argument 0"}
!10716 = distinct !{!10716, !10714, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file: argument 1"}
!10717 = distinct !{!10717, i1 true, !"_RNvXs3_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance"}
!10718 = distinct !{!10718, !10717, !"_RNvXs3_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance: argument 0:thread"}
!10719 = distinct !{!10719, i1 true, !"_RNvXs3_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance"}
!10720 = distinct !{!10720, !10719, !"_RNvXs3_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance: argument 0"}
!10721 = !{!10715}
!10722 = !{!10715, !10716}
!10723 = !{!10718}
!10724 = !{!10720}
!10725 = distinct !{!10725, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10726 = distinct !{!10726, !10725, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10727 = distinct !{!10727, i1 true, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file"}
!10728 = distinct !{!10728, !10727, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10729 = distinct !{!10729, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10730 = distinct !{!10730, !10729, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10731 = distinct !{!10731, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10732 = distinct !{!10732, !10731, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10733 = distinct !{!10733, i1 true, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file"}
!10734 = distinct !{!10734, !10733, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file: argument 0"}
!10735 = distinct !{!10735, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10736 = distinct !{!10736, !10735, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10737 = distinct !{!10737, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10738 = distinct !{!10738, !10737, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10739 = distinct !{!10739, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10740 = distinct !{!10740, !10739, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10741 = distinct !{!10741, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10742 = distinct !{!10742, !10741, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10743 = distinct !{!10743, !10727, !"_RINvNtCskAO0uQb8M5a_5prost8encoding10decode_keyQRShECsaSXGKSfiU2E_10lance_file: argument 1"}
!10744 = distinct !{!10744, i1 true, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!10745 = distinct !{!10745, !10744, !"_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!10746 = !{!10726}
!10747 = !{!10728}
!10748 = !{!10730}
!10749 = !{!10732}
!10750 = !{!10732, !10730}
!10751 = !{!10734}
!10752 = !{!10736}
!10753 = !{!10738}
!10754 = !{!10738, !10734}
!10755 = !{!10726, !10728}
!10756 = !{!10740}
!10757 = !{!10742}
!10758 = !{!10742, !10726, !10728}
!10759 = !{!10728, !10743}
!10760 = !{!10745}
!10761 = distinct !{!10761, i1 true, !"_RNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural18field_column_shape"}
!10762 = distinct !{!10762, !10761, !"_RNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural18field_column_shape: argument 0"}
!10763 = distinct !{!10763, i1 true, !"_RNCINvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural21validate_field_lengthNCNvB4_20prepared_read_length0E0B8_"}
!10764 = distinct !{!10764, !10763, !"_RNCINvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural21validate_field_lengthNCNvB4_20prepared_read_length0E0B8_: argument 1"}
!10765 = distinct !{!10765, !10763, !"_RNCINvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural21validate_field_lengthNCNvB4_20prepared_read_length0E0B8_: argument 0"}
!10766 = distinct !{!10766, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file"}
!10767 = distinct !{!10767, !10766, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file: argument 1"}
!10768 = distinct !{!10768, i1 true, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file"}
!10769 = distinct !{!10769, !10768, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file: argument 1"}
!10770 = distinct !{!10770, i1 true, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoBy_E4intoCsaSXGKSfiU2E_10lance_file"}
!10771 = distinct !{!10771, !10770, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoBy_E4intoCsaSXGKSfiU2E_10lance_file: argument 1"}
!10772 = distinct !{!10772, !10770, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoBy_E4intoCsaSXGKSfiU2E_10lance_file: argument 0"}
!10773 = distinct !{!10773, i1 true, !"_RNvXs2_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4FromBy_E4fromCsaSXGKSfiU2E_10lance_file"}
!10774 = distinct !{!10774, !10773, !"_RNvXs2_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4FromBy_E4fromCsaSXGKSfiU2E_10lance_file: argument 1"}
!10775 = distinct !{!10775, !10773, !"_RNvXs2_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4FromBy_E4fromCsaSXGKSfiU2E_10lance_file: argument 0"}
!10776 = distinct !{!10776, !10768, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file: argument 2"}
!10777 = distinct !{!10777, !10768, !"_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file: argument 0"}
!10778 = distinct !{!10778, i1 true, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsaSXGKSfiU2E_10lance_file"}
!10779 = distinct !{!10779, !10778, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsaSXGKSfiU2E_10lance_file: argument 0"}
!10780 = distinct !{!10780, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsaSXGKSfiU2E_10lance_file"}
!10781 = distinct !{!10781, !10780, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsaSXGKSfiU2E_10lance_file: argument 0"}
end_hunk_1
