Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_file-e8d9b95001b8e5c0.lance_file.7ecd3f6fdfc526a6-cgu.0?download=true
inline.NumInlined: 17611
inline.NumDeleted: 7469
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile16DeferredEncodingQRShEBT_:bb.a
  %i.bj = load i64, ptr %i.d, align 8, !range !86, !noalias !13157, !noundef !76
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bl = getelementptr i8, ptr %.val.i.i.i.i, i64 %.val.i1862.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 -1
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !13157, !noundef !76
  %i.bo = icmp sgt i8 %i.bn, -1
  br i1 %i.bo, label %bb.p, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i.i, !prof !85

bb.r:                                             ; preds = %bb.p
  %i.bp = load ptr, ptr %i.ay, align 8, !noalias !13157, !nonnull !76, !align !77, !noundef !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13157
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread.i.i

bb.s:                                             ; preds = %bb.p
  %i.bq = load i64, ptr %i.ay, align 8, !noalias !13157, !noundef !76
  %i.br = load i64, ptr %i.az, align 8, !noalias !13157, !noundef !76 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13157
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13159), !noalias !13160
  %i.bs = load i64, ptr %i.r, align 8, !alias.scope !13159, !noalias !13157, !noundef !76 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  br i1 %i.bt, label %bb.t, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i.i.i, !prof !75

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13161
  store i64 %i.br, ptr %i.c, align 8, !noalias !13161
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.bs, ptr %i.bu, align 8, !noalias !13161
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) #49, !noalias !13161
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i.i.i: ; preds = %bb.s
  %i.bv = load ptr, ptr %.val.i.i, align 8, !alias.scope !13159, !noalias !13157, !nonnull !76, !noundef !76
  %i.bw = sub nuw i64 %i.bs, %i.br
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.br
  store ptr %i.bx, ptr %.val.i.i, align 8, !alias.scope !13159, !noalias !13157
  store i64 %i.bw, ptr %i.r, align 8, !alias.scope !13159, !noalias !13157
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread6.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread6.i.i: ; preds = %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i.i.i, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %.sroa.6.0.i.ph5.i.i = phi i64 [ %i.bi, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ %i.bq, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i.i.i ] ; 2 uses
  %i.by = inttoptr i64 %.sroa.6.0.i.ph5.i.i to ptr
  br label %bb.u

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.q
  %i.bz = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2), !noalias !13162 ; 2 uses
  %i.ca = extractvalue { i64, ptr } %i.bz, 0
  %i.cb = extractvalue { i64, ptr } %i.bz, 1      ; 3 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = trunc nuw i64 %i.ca to i1
  br i1 %i.cd, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread6.i.i
  %i.ce = phi ptr [ %i.by, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread6.i.i ], [ %i.cb, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i.i ]
  %.sroa.6.0.i9.i.i = phi i64 [ %.sroa.6.0.i.ph5.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread6.i.i ], [ %i.cc, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i.i ] ; 3 uses
  %i.cf = icmp ugt ptr %i.ce, inttoptr (i64 4294967295 to ptr)
  br i1 %i.cf, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = and i64 %.sroa.6.0.i9.i.i, 7            ; 3 uses
  %switch.i.i = icmp samesign ult i64 %i.cg, 6
  br i1 %switch.i.i, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13163
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.6.0.i9.i.i, ptr %i.ch, align 8, !noalias !13163
  store i64 -9223372036854775804, ptr %i.g, align 8, !noalias !13163
  %i.ci = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g), !noalias !13164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13163
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread.i.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13163
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.cg, ptr %i.cj, align 8, !noalias !13163
  store i64 -9223372036854775805, ptr %i.e, align 8, !noalias !13163
  %i.ck = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e), !noalias !13164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13163
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread.i.i

bb.y:                                             ; preds = %bb.v
  %i.cl = trunc nuw i64 %.sroa.6.0.i9.i.i to i32
  %i.cm = lshr i32 %i.cl, 3                       ; 3 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13163
  store i64 -9223372036854775803, ptr %i.f, align 8, !noalias !13163
  %i.co = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f), !noalias !13164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13163
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.z, %bb.x, %bb.w, %bb.r
  %.sroa.11.0.ph.i.i = phi ptr [ %i.bp, %bb.r ], [ %i.ci, %bb.w ], [ %i.co, %bb.z ], [ %i.ck, %bb.x ], [ %i.cb, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph.i.i) ]
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile16DeferredEncodingNCINvNtB2_7message5mergeBJ_QRShE0B2c_EBP_.exit

bb.aa:                                            ; preds = %bb.y
  %.sroa.11.8.extract.trunc.i.i = trunc nuw nsw i64 %i.cg to i8 ; 3 uses
  switch i32 %i.cm, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile16DeferredEncodingQRShE0BV_.exit.i [
    i32 1, label %bb.ab
    i32 2, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.cp = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint645mergeQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2) ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not5.i.i.i, label %thread-pre-split.i, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cq = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint645mergeQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef align 8 dereferenceable(8) %i.ba, ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i, label %thread-pre-split.i, label %bb.af

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13165
  store ptr %i.cp, ptr %i.b, align 8, !noalias !13166
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @390, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @391, i64 noundef 15)
          to label %_RNCINvXs5_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB8_16DeferredEncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i.i unwind label %bb.ae, !noalias !13165

common.resume.i.i.i:                              ; preds = %bb.ag, %bb.ae
  %.sink.i.i.i = phi ptr [ %i.a, %bb.ag ], [ %i.b, %bb.ae ]
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ct, %bb.ag ], [ %i.cr, %bb.ae ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink.i.i.i) #50, !noalias !13165
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i

_RNCINvXs5_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB8_16DeferredEncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i.i: ; preds = %bb.ad
  %i.cs = load ptr, ptr %i.b, align 8, !noalias !13166, !nonnull !76, !align !77, !noundef !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13165
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile16DeferredEncodingNCINvNtB2_7message5mergeBJ_QRShE0B2c_EBP_.exit

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13165
  store ptr %i.cq, ptr %i.a, align 8, !noalias !13167
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @390, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @392, i64 noundef 13)
          to label %_RNCINvXs5_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB8_16DeferredEncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0Bc_.exit.i.i.i unwind label %bb.ag, !noalias !13165

bb.ag:                                            ; preds = %bb.af
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i

_RNCINvXs5_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB8_16DeferredEncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0Bc_.exit.i.i.i: ; preds = %bb.af
  %i.cu = load ptr, ptr %i.a, align 8, !noalias !13167, !nonnull !76, !align !77, !noundef !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13165
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile16DeferredEncodingNCINvNtB2_7message5mergeBJ_QRShE0B2c_EBP_.exit

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile16DeferredEncodingQRShE0BV_.exit.i: ; preds = %bb.aa
  %i.cv = tail call fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10skip_fieldQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, i32 noundef %i.cm, ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2, i32 noundef range(i32 97, 99) %i.q), !noalias !13168 ; 2 uses
  %.not14.i = icmp eq ptr %i.cv, null
  br i1 %.not14.i, label %thread-pre-split.i, label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile16DeferredEncodingNCINvNtB2_7message5mergeBJ_QRShE0B2c_EBP_.exit

bb.ah:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13156
  store i64 -9223372036854775800, ptr %i.k, align 8, !noalias !13156
  %i.cw = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.k), !noalias !13156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13156
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile16DeferredEncodingNCINvNtB2_7message5mergeBJ_QRShE0B2c_EBP_.exit

_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile16DeferredEncodingNCINvNtB2_7message5mergeBJ_QRShE0B2c_EBP_.exit: ; preds = %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile16DeferredEncodingQRShE0BV_.exit.i, %bb.ah, %_RNCINvXs5_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB8_16DeferredEncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0Bc_.exit.i.i.i, %_RNCINvXs5_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB8_16DeferredEncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread.i.i, %._crit_edge.i, %bb.m, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i, %bb.i, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.p, %bb.b ], [ %i.at, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.bb, %bb.m ], [ null, %._crit_edge.i ], [ %i.cw, %bb.ah ], [ %i.t, %bb.d ], [ %.sroa.11.0.ph.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread.i.i ], [ %i.cu, %_RNCINvXs5_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB8_16DeferredEncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShEs_0Bc_.exit.i.i.i ], [ %i.cs, %_RNCINvXs5_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB8_16DeferredEncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i.i ], [ %i.ah, %bb.i ], [ %i.cv, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile16DeferredEncodingQRShE0BV_.exit.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBT_(i8 noundef range(i8 0, 6) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, i32 noundef range(i32 99, 101) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !13188 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %.not = icmp eq i8 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  store i8 2, ptr %i.k, align 1
  store i64 -9223372036854775802, ptr %i.i, align 8
  %i.l = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0B23_EBP_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = add nsw i32 %3, -1                       ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13190)
  %i.n = tail call fastcc { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2), !noalias !13189 ; 2 uses
  %i.o = extractvalue { i64, ptr } %i.n, 0
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = trunc nuw i64 %i.o to i1
  br i1 %i.r, label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0B23_EBP_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !13190, !nonnull !76, !align !77, !noundef !76
  %i.s = getelementptr i8, ptr %.val.i, i64 16    ; 2 uses
  %.val.i.i = load i64, ptr %i.s, align 8, !noalias !13191, !noundef !76 ; 2 uses
  %i.t = icmp ult i64 %.val.i.i, %i.q
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = sub nuw i64 %.val.i.i, %i.q              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.652.0..sroa.641.24..sroa_idx53.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13191
  store i64 -9223372036854775801, ptr %i.h, align 8, !noalias !13191
  %i.w = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.h), !noalias !13191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13191
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0B23_EBP_.exit

bb.g:                                             ; preds = %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0BV_.exit.i, %bb.e
  %.val.i17.i = load i64, ptr %i.s, align 8, !noalias !13191, !noundef !76 ; 2 uses
  %i.x = icmp ugt i64 %.val.i17.i, %i.u
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq i64 %.val.i17.i, %i.u
  br i1 %.not.i, label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0B23_EBP_.exit, label %bb.ar

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13192)
  %i.y = tail call fastcc { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2), !noalias !13193 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0
  %i.aa = extractvalue { i64, ptr } %i.y, 1       ; 4 uses
  %i.ab = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ac = trunc nuw i64 %i.z to i1
  br i1 %i.ac, label %.loopexit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp ugt ptr %i.aa, inttoptr (i64 4294967295 to ptr)
  br i1 %i.ad, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = and i64 %i.ab, 7                        ; 3 uses
  %switch.i.i = icmp samesign ult i64 %i.ae, 6
  br i1 %switch.i.i, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13194
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ab, ptr %i.af, align 8, !noalias !13194
  store i64 -9223372036854775804, ptr %i.f, align 8, !noalias !13194
  %i.ag = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f), !noalias !13195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13194
  br label %.loopexit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13194
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ae, ptr %i.ah, align 8, !noalias !13194
  store i64 -9223372036854775805, ptr %i.d, align 8, !noalias !13194
  %i.ai = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d), !noalias !13195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13194
  br label %.loopexit.i

bb.n:                                             ; preds = %bb.k
  %i.aj = trunc nuw i64 %i.ab to i32
  %i.ak = lshr i32 %i.aj, 3                       ; 3 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13194
  store i64 -9223372036854775803, ptr %i.e, align 8, !noalias !13194
  %i.am = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e), !noalias !13195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13194
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.i, %bb.o, %bb.m, %bb.l
  %.sroa.11.0.ph.i.i = phi ptr [ %i.ag, %bb.l ], [ %i.am, %bb.o ], [ %i.ai, %bb.m ], [ %i.aa, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph.i.i) ]
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0B23_EBP_.exit

bb.p:                                             ; preds = %bb.n
  %.sroa.11.8.extract.trunc.i.i = trunc nuw nsw i64 %i.ae to i8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13196)
  %switch.i.i.i = icmp ult ptr %i.aa, inttoptr (i64 32 to ptr)
  br i1 %switch.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = tail call fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10skip_fieldQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, i32 noundef %i.ak, ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.m), !noalias !13197
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0BV_.exit.i

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13198)
  %i.ao = load i64, ptr %1, align 8, !range !139, !alias.scope !13199, !noundef !76 ; 13 uses
  %.not22.i.i.i.i = icmp eq i64 %i.ao, -1         ; 5 uses
  switch i32 %i.ak, label %default.unreachable.i.i.i [
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %bb.u
  ], !prof !137

default.unreachable.i.i.i:                        ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  br i1 %.not22.i.i.i.i, label %bb.w, label %bb.v

bb.t:                                             ; preds = %bb.r
  br i1 %.not22.i.i.i.i, label %bb.ad, label %bb.ac

bb.u:                                             ; preds = %bb.r
  br i1 %.not22.i.i.i.i, label %bb.an, label %bb.am

bb.v:                                             ; preds = %bb.s
  %i.ap = icmp ne i64 %i.ao, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.ao, -9223372036854775808
  br i1 %i.aq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !13200
  %i.ar = call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile16DeferredEncodingQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBT_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.m), !noalias !13199 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not23.i.i.i.i, label %bb.y, label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.as = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile16DeferredEncodingQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBT_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef align 8 dereferenceable(16) %i.v, ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.m)
  br label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.at = load <2 x i64>, ptr %i.c, align 16, !noalias !13200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13201)
  %.val11.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !13202 ; 2 uses
  br i1 %.not22.i.i.i.i, label %_RNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB8_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0Be_.exit.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.au = icmp ne i64 %i.ao, -9223372036854775807
  tail call void @llvm.assume(i1 %i.au)
  %or.cond.i.i.i.i.i.i.i = icmp slt i64 %i.ao, 1
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB8_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0Be_.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i.i.i.i.i, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !13203
  br label %_RNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB8_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0Be_.exit.i.i.i.i

_RNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB8_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0Be_.exit.i.i.i.i: ; preds = %bb.aa, %bb.z, %bb.y
  store i64 -9223372036854775808, ptr %1, align 8, !alias.scope !13202
  store <2 x i64> %i.at, ptr %i.v, align 8, !alias.scope !13202
  br label %bb.ab

bb.ab:                                            ; preds = %_RNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB8_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0Be_.exit.i.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13200
  br label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.i.i.i

bb.ac:                                            ; preds = %bb.t
  %i.av = icmp ne i64 %i.ao, -9223372036854775807
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = icmp sgt i64 %i.ao, -1
  br i1 %i.aw, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13200
  store i64 0, ptr %i.b, align 8, !noalias !13200
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !noalias !13200
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !13200
  %i.ax = invoke fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14DirectEncodingQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBT_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.m)
          to label %bb.af unwind label %bb.ak, !noalias !13199 ; 2 uses

bb.ae:                                            ; preds = %bb.ac
  %i.ay = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14DirectEncodingQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBT_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.m)
  br label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.i.i.i

bb.af:                                            ; preds = %bb.ad
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !13200 ; 3 uses
  %.sroa.5.0.copyload.i.i.i.i = load ptr, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !noalias !13200 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !13200
  %.not19.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not19.i.i.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.az = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 0
  br i1 %i.az, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtBK_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEs_0EBQ_.exit.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !13200
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtBK_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEs_0EBQ_.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.af
  br i1 %.not22.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encoding8LocationEEB15_.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ba = icmp ne i64 %i.ao, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ba)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encoding8LocationEEB15_.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encoding8LocationEEB15_.exit.i.i.i.i: ; preds = %bb.aj, %bb.ai
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %1, align 8, !alias.scope !13199
  store ptr %.sroa.5.0.copyload.i.i.i.i, ptr %i.v, align 8, !alias.scope !13199
  store i64 %.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.652.0..sroa.641.24..sroa_idx53.i.i.i.i, align 8, !alias.scope !13199
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtBK_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEs_0EBQ_.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtBK_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEs_0EBQ_.exit.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encoding8LocationEEB15_.exit.i.i.i.i, %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13200
  br label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.i.i.i

common.resume.i.i.i:                              ; preds = %bb.aq, %bb.al, %bb.ak
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.aq ], [ %i.bb, %bb.al ], [ %i.bb, %bb.ak ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.ak:                                            ; preds = %bb.ad
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !13200 ; 2 uses
  %i.bc = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.bc, label %common.resume.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val24.i.i.i.i = load ptr, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !noalias !13200, !nonnull !76, !noundef !76
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !13200
  br label %common.resume.i.i.i

bb.am:                                            ; preds = %bb.u
  %i.bd = icmp ne i64 %i.ao, -9223372036854775807
  tail call void @llvm.assume(i1 %i.bd)
  %4 = icmp ne i64 %i.ao, -9223372036854775806
  %i.be = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeuQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.m), !noalias !13199 ; 2 uses
  %.not1759.i.i.i.i = icmp eq ptr %i.be, null
  %or.cond.i.i.i.i = and i1 %4, %.not1759.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.ao, label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.i.i.i

bb.an:                                            ; preds = %bb.u
  %i.bf = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeuQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.m), !noalias !13199 ; 2 uses
  %.not17.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not17.i.i.i.i, label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.thread.i.i.i.a, label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.thread5.i.i.i

bb.ao:                                            ; preds = %bb.am
  %or.cond.i.i33.i.i.i.i = icmp slt i64 %i.ao, 1
  br i1 %or.cond.i.i33.i.i.i.i, label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.thread.i.i.i.a, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.val2661.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !13199, !nonnull !76, !noundef !76
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2661.i.i.i.i, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !13200
  br label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.thread.i.i.i.a

_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.thread.i.i.i.a: ; preds = %bb.ap, %bb.ao, %bb.an
  store i64 -9223372036854775806, ptr %1, align 8, !alias.scope !13199
  br label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0BV_.exit.i

_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.i.i.i: ; preds = %bb.am, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtBK_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEs_0EBQ_.exit.i.i.i.i, %bb.ae, %bb.ab, %bb.x
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.as, %bb.x ], [ %i.ar, %bb.ab ], [ %i.ay, %bb.ae ], [ %i.ax, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtBK_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEs_0EBQ_.exit.i.i.i.i ], [ %i.be, %bb.am ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0BV_.exit.i, label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.thread5.i.i.i

_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.thread5.i.i.i: ; preds = %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.i.i.i, %bb.an
  %.sroa.0.0.i8.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.i.i.i ], [ %i.bf, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13204
  store ptr %.sroa.0.0.i8.i.i.i, ptr %i.a, align 8, !noalias !13205
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @418, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @419, i64 noundef 8)
          to label %_RNCINvXsl_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB8_8EncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0Bc_.exit.i.i.i unwind label %bb.aq, !noalias !13204

bb.aq:                                            ; preds = %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.thread5.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #50, !noalias !13204
  br label %common.resume.i.i.i

_RNCINvXsl_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB8_8EncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0Bc_.exit.i.i.i: ; preds = %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.thread5.i.i.i
  %i.bh = load ptr, ptr %i.a, align 8, !noalias !13205, !nonnull !76, !align !77, !noundef !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13204
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0B23_EBP_.exit

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0BV_.exit.i: ; preds = %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.i.i.i, %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.thread.i.i.i.a, %bb.q
  %.sroa.0.0.i.i = phi ptr [ null, %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.i.i.i ], [ %i.an, %bb.q ], [ null, %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEBc_.exit.thread.i.i.i.a ] ; 2 uses
  %.not14.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not14.i, label %bb.g, label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0B23_EBP_.exit

bb.ar:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13191
  store i64 -9223372036854775800, ptr %i.g, align 8, !noalias !13191
  %i.bi = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g), !noalias !13191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13191
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0B23_EBP_.exit

_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0B23_EBP_.exit: ; preds = %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0BV_.exit.i, %bb.ar, %_RNCINvXsl_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB8_8EncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0Bc_.exit.i.i.i, %.loopexit.i, %bb.h, %bb.f, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.l, %bb.b ], [ %i.p, %bb.c ], [ %i.w, %bb.f ], [ null, %bb.h ], [ %i.bi, %bb.ar ], [ %.sroa.11.0.ph.i.i, %.loopexit.i ], [ %i.bh, %_RNCINvXsl_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB8_8EncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0Bc_.exit.i.i.i ], [ %.sroa.0.0.i.i, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0BV_.exit.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingQRShEBT_(i8 noundef range(i8 0, 6) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, i32 noundef range(i32 99, 101) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !13237 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
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
  %i.n = alloca [48 x i8], align 8                ; 6 uses
  %.not = icmp eq i8 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 %0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  store i8 2, ptr %i.p, align 1
  store i64 -9223372036854775802, ptr %i.n, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit

bb.c:                                             ; preds = %bb.a
  %i.r = add nsw i32 %3, -1                       ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13240)
  %.val.i.i = load ptr, ptr %2, align 8, !alias.scope !13241, !nonnull !76, !align !77, !noundef !76 ; 9 uses
  %.val.i.i.i = load ptr, ptr %.val.i.i, align 8, !noalias !13242, !nonnull !76, !noundef !76 ; 4 uses
  %i.s = getelementptr i8, ptr %.val.i.i, i64 8   ; 9 uses
  %.val1.i.i.i = load i64, ptr %i.s, align 8, !noalias !13242, !noundef !76 ; 5 uses
  %i.t = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13242
  store i64 -9223372036854775807, ptr %i.k, align 8, !noalias !13242
  %i.u = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.k), !noalias !13242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13242
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit

bb.e:                                             ; preds = %bb.c
  %i.v = load i8, ptr %.val.i.i.i, align 1, !noalias !13242, !noundef !76 ; 2 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp ugt i64 %.val1.i.i.i, 10
  br i1 %i.x, label %bb.g, label %bb.h

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.e
  %i.y = add i64 %.val1.i.i.i, -1                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 1
  store ptr %i.z, ptr %.val.i.i, align 8, !alias.scope !13243, !noalias !13242
  store i64 %i.y, ptr %i.s, align 8, !alias.scope !13243, !noalias !13242
  %i.aa = zext nneg i8 %i.v to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26.i

bb.g:                                             ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13242
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i), !noalias !13242
  %i.ab = load i64, ptr %i.j, align 8, !range !86, !noalias !13242, !noundef !76
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br i1 %i.ac, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %.val.i.i.i, i64 %.val1.i.i.i
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  %i.ag = load i8, ptr %i.af, align 1, !noalias !13242, !noundef !76
  %i.ah = icmp sgt i8 %i.ag, -1
  br i1 %i.ah, label %bb.g, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i, !prof !85

bb.i:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.ad, align 8, !noalias !13242, !nonnull !76, !align !77, !noundef !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13242
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit

bb.j:                                             ; preds = %bb.g
  %i.aj = load i64, ptr %i.ad, align 8, !noalias !13242, !noundef !76
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noalias !13242, !noundef !76 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13242
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13244)
  %i.am = load i64, ptr %i.s, align 8, !alias.scope !13244, !noalias !13242, !noundef !76 ; 3 uses
  %i.an = icmp ult i64 %i.am, %i.al
  br i1 %i.an, label %bb.k, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i.i, !prof !75

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13245
  store i64 %i.al, ptr %i.i, align 8, !noalias !13245
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !noalias !13245
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i) #49, !noalias !13245
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i.i: ; preds = %bb.j
  %i.ap = load ptr, ptr %.val.i.i, align 8, !alias.scope !13244, !noalias !13242, !nonnull !76, !noundef !76
  %i.aq = sub nuw i64 %i.am, %i.al                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.al
  store ptr %i.ar, ptr %.val.i.i, align 8, !alias.scope !13244, !noalias !13242
  store i64 %i.aq, ptr %i.s, align 8, !alias.scope !13244, !noalias !13242
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.h
  %i.as = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2), !noalias !13238 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0
  %i.au = extractvalue { i64, ptr } %i.as, 1      ; 2 uses
  %i.av = trunc nuw i64 %i.at to i1
  br i1 %i.av, label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26_crit_edge.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26_crit_edge.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i
  %i.aw = ptrtoint ptr %i.au to i64
  %.val.i17.pre.i = load i64, ptr %i.s, align 8, !noalias !13246
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26_crit_edge.i, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i.i, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i.i
  %.val.i17.i = phi i64 [ %.val.i17.pre.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26_crit_edge.i ], [ %i.y, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i.i ], [ %i.aq, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i.i ] ; 4 uses
  %.sroa.6.0.i29.i = phi i64 [ %i.aw, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26_crit_edge.i ], [ %i.aa, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i.i ], [ %i.aj, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i.i ] ; 3 uses
  %i.ax = icmp ult i64 %.val.i17.i, %.sroa.6.0.i29.i
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26.i
  %i.ay = sub nuw i64 %.val.i17.i, %.sroa.6.0.i29.i ; 2 uses
  %.not64.i = icmp eq i64 %.sroa.6.0.i29.i, 0
  br i1 %.not64.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.652.0..sroa.641.24..sroa_idx53.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.n

bb.m:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !13246
  store i64 -9223372036854775801, ptr %i.m, align 8, !noalias !13246
  %i.bc = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.m), !noalias !13246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13246
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit

thread-pre-split.i:                               ; preds = %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingQRShE0BV_.exit.i, %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQRShEBc_.exit.i.i.i, %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQRShEBc_.exit.thread.i.i.i.a
  %.val.i18.pr.i = load i64, ptr %i.s, align 8, !noalias !13246 ; 3 uses
  %i.bd = icmp ugt i64 %.val.i18.pr.i, %i.ay
  br i1 %i.bd, label %bb.n, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %thread-pre-split.i, %bb.l
  %.val.i18.lcssa.i = phi i64 [ %.val.i17.i, %bb.l ], [ %.val.i18.pr.i, %thread-pre-split.i ]
  %.not.i = icmp eq i64 %.val.i18.lcssa.i, %i.ay
  br i1 %.not.i, label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit, label %bb.bb

bb.n:                                             ; preds = %thread-pre-split.i, %.lr.ph.i
  %.val.i1863.i = phi i64 [ %.val.i17.i, %.lr.ph.i ], [ %.val.i18.pr.i, %thread-pre-split.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13247)
  %.val.i.i.i.i = load ptr, ptr %.val.i.i, align 8, !noalias !13248, !nonnull !76, !noundef !76 ; 4 uses
  %i.be = load i8, ptr %.val.i.i.i.i, align 1, !noalias !13248, !noundef !76 ; 2 uses
  %i.bf = icmp sgt i8 %i.be, -1
  br i1 %i.bf, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = icmp ugt i64 %.val.i1863.i, 10
  br i1 %i.bg, label %bb.p, label %bb.q

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %bb.n
  %i.bh = add i64 %.val.i1863.i, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 1
  store ptr %i.bi, ptr %.val.i.i, align 8, !alias.scope !13249, !noalias !13248
  store i64 %i.bh, ptr %i.s, align 8, !alias.scope !13249, !noalias !13248
  %i.bj = zext nneg i8 %i.be to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread6.i.i

bb.p:                                             ; preds = %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13248
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i, i64 noundef %.val.i1863.i), !noalias !13248
  %i.bk = load i64, ptr %i.e, align 8, !range !86, !noalias !13248, !noundef !76
  %i.bl = trunc nuw i64 %i.bk to i1
  br i1 %i.bl, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bm = getelementptr i8, ptr %.val.i.i.i.i, i64 %.val.i1863.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -1
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !13248, !noundef !76
  %i.bp = icmp sgt i8 %i.bo, -1
  br i1 %i.bp, label %bb.p, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i.i, !prof !85

bb.r:                                             ; preds = %bb.p
  %i.bq = load ptr, ptr %i.az, align 8, !noalias !13248, !nonnull !76, !align !77, !noundef !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13248
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread.i.i

bb.s:                                             ; preds = %bb.p
  %i.br = load i64, ptr %i.az, align 8, !noalias !13248, !noundef !76
  %i.bs = load i64, ptr %i.ba, align 8, !noalias !13248, !noundef !76 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13250), !noalias !13251
  %i.bt = load i64, ptr %i.s, align 8, !alias.scope !13250, !noalias !13248, !noundef !76 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  br i1 %i.bu, label %bb.t, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i.i.i, !prof !75

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13252
  store i64 %i.bs, ptr %i.d, align 8, !noalias !13252
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.bt, ptr %i.bv, align 8, !noalias !13252
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) #49, !noalias !13252
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i.i.i: ; preds = %bb.s
  %i.bw = load ptr, ptr %.val.i.i, align 8, !alias.scope !13250, !noalias !13248, !nonnull !76, !noundef !76
  %i.bx = sub nuw i64 %i.bt, %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bs
  store ptr %i.by, ptr %.val.i.i, align 8, !alias.scope !13250, !noalias !13248
  store i64 %i.bx, ptr %i.s, align 8, !alias.scope !13250, !noalias !13248
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread6.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread6.i.i: ; preds = %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i.i.i, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %.sroa.6.0.i.ph5.i.i = phi i64 [ %i.bj, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ %i.br, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i.i.i ] ; 2 uses
  %i.bz = inttoptr i64 %.sroa.6.0.i.ph5.i.i to ptr
  br label %bb.u

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.q
  %i.ca = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2), !noalias !13253 ; 2 uses
  %i.cb = extractvalue { i64, ptr } %i.ca, 0
  %i.cc = extractvalue { i64, ptr } %i.ca, 1      ; 3 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = trunc nuw i64 %i.cb to i1
  br i1 %i.ce, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread6.i.i
  %i.cf = phi ptr [ %i.bz, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread6.i.i ], [ %i.cc, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i.i ]
  %.sroa.6.0.i9.i.i = phi i64 [ %.sroa.6.0.i.ph5.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread6.i.i ], [ %i.cd, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i.i ] ; 4 uses
  %i.cg = icmp ugt ptr %i.cf, inttoptr (i64 4294967295 to ptr)
  br i1 %i.cg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = and i64 %.sroa.6.0.i9.i.i, 7            ; 3 uses
  %switch.i.i = icmp samesign ult i64 %i.ch, 6
  br i1 %switch.i.i, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13254
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.6.0.i9.i.i, ptr %i.ci, align 8, !noalias !13254
  store i64 -9223372036854775804, ptr %i.h, align 8, !noalias !13254
  %i.cj = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.h), !noalias !13255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13254
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread.i.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13254
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ch, ptr %i.ck, align 8, !noalias !13254
  store i64 -9223372036854775805, ptr %i.f, align 8, !noalias !13254
  %i.cl = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f), !noalias !13255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13254
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread.i.i

bb.y:                                             ; preds = %bb.v
  %i.cm = trunc nuw i64 %.sroa.6.0.i9.i.i to i32
  %i.cn = lshr i32 %i.cm, 3                       ; 3 uses
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13254
  store i64 -9223372036854775803, ptr %i.g, align 8, !noalias !13254
  %i.cp = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g), !noalias !13255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13254
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.z, %bb.x, %bb.w, %bb.r
  %.sroa.11.0.ph.i.i = phi ptr [ %i.bq, %bb.r ], [ %i.cj, %bb.w ], [ %i.cp, %bb.z ], [ %i.cl, %bb.x ], [ %i.cc, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph.i.i) ]
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit

bb.aa:                                            ; preds = %bb.y
  %.sroa.11.8.extract.trunc.i.i = trunc nuw nsw i64 %i.ch to i8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13256)
  %switch.i.i.i = icmp ult i64 %.sroa.6.0.i9.i.i, 32
  br i1 %switch.i.i.i, label %bb.ab, label %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingQRShE0BV_.exit.i

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13257)
  %i.cq = load i64, ptr %1, align 8, !range !139, !alias.scope !13258, !noundef !76 ; 13 uses
  %.not22.i.i.i.i = icmp eq i64 %i.cq, -1         ; 5 uses
  switch i32 %i.cn, label %default.unreachable.i.i.i [
    i32 1, label %bb.ac
    i32 2, label %bb.ad
    i32 3, label %bb.ae
  ], !prof !137

default.unreachable.i.i.i:                        ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not22.i.i.i.i, label %bb.ag, label %bb.af

bb.ad:                                            ; preds = %bb.ab
  br i1 %.not22.i.i.i.i, label %bb.an, label %bb.am

bb.ae:                                            ; preds = %bb.ab
  br i1 %.not22.i.i.i.i, label %bb.ax, label %bb.aw

bb.af:                                            ; preds = %bb.ac
  %i.cr = icmp ne i64 %i.cq, -9223372036854775807
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = icmp eq i64 %i.cq, -9223372036854775808
  br i1 %i.cs, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13259
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !13259
  %i.ct = call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile16DeferredEncodingQRShEBT_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.r), !noalias !13258 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not23.i.i.i.i, label %bb.ai, label %bb.al

bb.ah:                                            ; preds = %bb.af
  %i.cu = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile16DeferredEncodingQRShEBT_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef align 8 dereferenceable(16) %i.bb, ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.r)
  br label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQRShEBc_.exit.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.cv = load <2 x i64>, ptr %i.c, align 16, !noalias !13259
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13260)
  %.val11.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !13261 ; 2 uses
  br i1 %.not22.i.i.i.i, label %_RNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB8_8Location5mergeQRShE0Be_.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cw = icmp ne i64 %i.cq, -9223372036854775807
  tail call void @llvm.assume(i1 %i.cw)
  %or.cond.i.i.i.i.i.i.i = icmp slt i64 %i.cq, 1
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB8_8Location5mergeQRShE0Be_.exit.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i.i.i.i.i, i64 noundef %i.cq, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !13262
  br label %_RNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB8_8Location5mergeQRShE0Be_.exit.i.i.i.i

_RNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB8_8Location5mergeQRShE0Be_.exit.i.i.i.i: ; preds = %bb.ak, %bb.aj, %bb.ai
  store i64 -9223372036854775808, ptr %1, align 8, !alias.scope !13261
  store <2 x i64> %i.cv, ptr %i.bb, align 8, !alias.scope !13261
  br label %bb.al

bb.al:                                            ; preds = %_RNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB8_8Location5mergeQRShE0Be_.exit.i.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13259
  br label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQRShEBc_.exit.i.i.i

bb.am:                                            ; preds = %bb.ad
  %i.cx = icmp ne i64 %i.cq, -9223372036854775807
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp sgt i64 %i.cq, -1
  br i1 %i.cy, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13259
  store i64 0, ptr %i.b, align 8, !noalias !13259
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !noalias !13259
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !13259
  %i.cz = invoke fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14DirectEncodingQRShEBT_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.r)
          to label %bb.ap unwind label %bb.au, !noalias !13258 ; 2 uses

bb.ao:                                            ; preds = %bb.am
  %i.da = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14DirectEncodingQRShEBT_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.r)
  br label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQRShEBc_.exit.i.i.i

bb.ap:                                            ; preds = %bb.an
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !13259 ; 3 uses
  %.sroa.5.0.copyload.i.i.i.i = load ptr, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !noalias !13259 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !13259
  %.not19.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not19.i.i.i.i, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.db = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 0
  br i1 %i.db, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtBK_8Location5mergeQRShEs_0EBQ_.exit.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !13259
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtBK_8Location5mergeQRShEs_0EBQ_.exit.i.i.i.i

bb.as:                                            ; preds = %bb.ap
  br i1 %.not22.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encoding8LocationEEB15_.exit.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dc = icmp ne i64 %i.cq, -9223372036854775807
  tail call void @llvm.assume(i1 %i.dc)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encoding8LocationEEB15_.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encoding8LocationEEB15_.exit.i.i.i.i: ; preds = %bb.at, %bb.as
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %1, align 8, !alias.scope !13258
  store ptr %.sroa.5.0.copyload.i.i.i.i, ptr %i.bb, align 8, !alias.scope !13258
  store i64 %.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.652.0..sroa.641.24..sroa_idx53.i.i.i.i, align 8, !alias.scope !13258
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtBK_8Location5mergeQRShEs_0EBQ_.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtBK_8Location5mergeQRShEs_0EBQ_.exit.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encoding8LocationEEB15_.exit.i.i.i.i, %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13259
  br label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQRShEBc_.exit.i.i.i

common.resume.i.i.i:                              ; preds = %bb.ba, %bb.av, %bb.au
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.di, %bb.ba ], [ %i.dd, %bb.av ], [ %i.dd, %bb.au ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.au:                                            ; preds = %bb.an
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i2.i.i = load i64, ptr %i.b, align 8, !noalias !13259 ; 2 uses
  %i.de = icmp eq i64 %.val.i.i2.i.i, 0
  br i1 %i.de, label %common.resume.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.val24.i.i.i.i = load ptr, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !noalias !13259, !nonnull !76, !noundef !76
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24.i.i.i.i, i64 noundef %.val.i.i2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !13259
  br label %common.resume.i.i.i

bb.aw:                                            ; preds = %bb.ae
  %i.df = icmp ne i64 %i.cq, -9223372036854775807
  tail call void @llvm.assume(i1 %i.df)
  %4 = icmp ne i64 %i.cq, -9223372036854775806
  %i.dg = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeuQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.r), !noalias !13258 ; 2 uses
  %.not1759.i.i.i.i = icmp eq ptr %i.dg, null
  %or.cond.i.i.i.i = and i1 %4, %.not1759.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.ay, label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQRShEBc_.exit.i.i.i

bb.ax:                                            ; preds = %bb.ae
  %i.dh = tail call fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeuQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.r), !noalias !13258 ; 2 uses
  %.not17.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not17.i.i.i.i, label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQRShEBc_.exit.thread.i.i.i.a, label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQRShEBc_.exit.thread5.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %or.cond.i.i33.i.i.i.i = icmp slt i64 %i.cq, 1
  br i1 %or.cond.i.i33.i.i.i.i, label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQRShEBc_.exit.thread.i.i.i.a, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.val2661.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !13258, !nonnull !76, !noundef !76
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2661.i.i.i.i, i64 noundef %i.cq, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !13259
  br label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQRShEBc_.exit.thread.i.i.i.a

_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQRShEBc_.exit.thread.i.i.i.a: ; preds = %bb.az, %bb.ay, %bb.ax
  store i64 -9223372036854775806, ptr %1, align 8, !alias.scope !13258
  br label %thread-pre-split.i

_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQRShEBc_.exit.i.i.i: ; preds = %bb.aw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtBK_8Location5mergeQRShEs_0EBQ_.exit.i.i.i.i, %bb.ao, %bb.al, %bb.ah
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.cu, %bb.ah ], [ %i.ct, %bb.al ], [ %i.da, %bb.ao ], [ %i.cz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtBK_8Location5mergeQRShEs_0EBQ_.exit.i.i.i.i ], [ %i.dg, %bb.aw ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i.i, label %thread-pre-split.i, label %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQRShEBc_.exit.thread5.i.i.i

_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQRShEBc_.exit.thread5.i.i.i: ; preds = %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQRShEBc_.exit.i.i.i, %bb.ax
  %.sroa.0.0.i8.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQRShEBc_.exit.i.i.i ], [ %i.dh, %bb.ax ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13263
  store ptr %.sroa.0.0.i8.i.i.i, ptr %i.a, align 8, !noalias !13264
  invoke void @_RNvMNtCskAO0uQb8M5a_5prost5errorNtB2_11DecodeError4push(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @418, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @419, i64 noundef 8)
          to label %_RNCINvXsl_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB8_8EncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i.i unwind label %bb.ba, !noalias !13263

bb.ba:                                            ; preds = %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQRShEBc_.exit.thread5.i.i.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #50, !noalias !13263
  br label %common.resume.i.i.i

_RNCINvXsl_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB8_8EncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i.i: ; preds = %_RINvMs3_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8encodingNtB6_8Location5mergeQRShEBc_.exit.thread5.i.i.i
  %i.dj = load ptr, ptr %i.a, align 8, !noalias !13264, !nonnull !76, !align !77, !noundef !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13263
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit

_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingQRShE0BV_.exit.i: ; preds = %bb.aa
  %i.dk = tail call fastcc noundef align 8 ptr @_RINvNtCskAO0uQb8M5a_5prost8encoding10skip_fieldQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i.i, i32 noundef %i.cn, ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2, i32 noundef range(i32 98, 100) %i.r), !noalias !13265 ; 2 uses
  %.not14.i = icmp eq ptr %i.dk, null
  br i1 %.not14.i, label %thread-pre-split.i, label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit

bb.bb:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13246
  store i64 -9223372036854775800, ptr %i.l, align 8, !noalias !13246
  %i.dl = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.l), !noalias !13246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13246
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit

_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingNCINvNtB2_7message5mergeBJ_QRShE0B23_EBP_.exit: ; preds = %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingQRShE0BV_.exit.i, %bb.bb, %_RNCINvXsl_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB8_8EncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread.i.i, %._crit_edge.i, %bb.m, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i, %bb.i, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.q, %bb.b ], [ %i.au, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.bc, %bb.m ], [ null, %._crit_edge.i ], [ %i.dl, %bb.bb ], [ %i.u, %bb.d ], [ %.sroa.11.0.ph.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread.i.i ], [ %i.dj, %_RNCINvXsl_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB8_8EncodingNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i.i ], [ %i.ai, %bb.i ], [ %i.dk, %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingQRShE0BV_.exit.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb11CompressionQRShECsaSXGKSfiU2E_10lance_file(i8 noundef range(i8 0, 6) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, i32 noundef range(i32 0, -1) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !13296 {
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
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 6 uses
  %.not = icmp eq i8 %0, 2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %3, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 %0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  store i8 2, ptr %i.q, align 1
  store i64 -9223372036854775802, ptr %i.n, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb11CompressionNCINvNtB2_7message5mergeBJ_QRShE0B27_ECsaSXGKSfiU2E_10lance_file.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 -9223372036854775806, ptr %i.m, align 8
  %i.s = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb11CompressionNCINvNtB2_7message5mergeBJ_QRShE0B27_ECsaSXGKSfiU2E_10lance_file.exit

bb.e:                                             ; preds = %bb.b
  %i.t = add i32 %3, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13299)
  %.val.i.i = load ptr, ptr %2, align 8, !alias.scope !13300, !nonnull !76, !align !77, !noundef !76 ; 9 uses
  %.val.i.i.i = load ptr, ptr %.val.i.i, align 8, !noalias !13301, !nonnull !76, !noundef !76 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i, i64 8   ; 9 uses
  %.val1.i.i.i = load i64, ptr %i.u, align 8, !noalias !13301, !noundef !76 ; 5 uses
  %i.v = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13301
  store i64 -9223372036854775807, ptr %i.j, align 8, !noalias !13301
  %i.w = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.j), !noalias !13301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13301
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb11CompressionNCINvNtB2_7message5mergeBJ_QRShE0B27_ECsaSXGKSfiU2E_10lance_file.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load i8, ptr %.val.i.i.i, align 1, !noalias !13301, !noundef !76 ; 2 uses
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = icmp ugt i64 %.val1.i.i.i, 10
  br i1 %i.z, label %bb.i, label %bb.j

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.g
  %i.aa = add i64 %.val1.i.i.i, -1                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 1
  store ptr %i.ab, ptr %.val.i.i, align 8, !alias.scope !13302, !noalias !13301
  store i64 %i.aa, ptr %i.u, align 8, !alias.scope !13302, !noalias !13301
  %i.ac = zext nneg i8 %i.x to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26.i

bb.i:                                             ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13301
  call fastcc void @_RNvNtNtCskAO0uQb8M5a_5prost8encoding6varint19decode_varint_slice(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i), !noalias !13301
  %i.ad = load i64, ptr %i.i, align 8, !range !86, !noalias !13301, !noundef !76
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.ae, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr i8, ptr %.val.i.i.i, i64 %.val1.i.i.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !13301, !noundef !76
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %bb.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i, !prof !85

bb.k:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.af, align 8, !noalias !13301, !nonnull !76, !align !77, !noundef !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13301
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb11CompressionNCINvNtB2_7message5mergeBJ_QRShE0B27_ECsaSXGKSfiU2E_10lance_file.exit

bb.l:                                             ; preds = %bb.i
  %i.al = load i64, ptr %i.af, align 8, !noalias !13301, !noundef !76
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noalias !13301, !noundef !76 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13301
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13303)
  %i.ao = load i64, ptr %i.u, align 8, !alias.scope !13303, !noalias !13301, !noundef !76 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  br i1 %i.ap, label %bb.m, label %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i.i, !prof !75

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13304
  store i64 %i.an, ptr %i.h, align 8, !noalias !13304
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !noalias !13304
  call void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h) #49, !noalias !13304
  unreachable

_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i.i: ; preds = %bb.l
  %i.ar = load ptr, ptr %.val.i.i, align 8, !alias.scope !13303, !noalias !13301, !nonnull !76, !noundef !76
  %i.as = sub nuw i64 %i.ao, %i.an                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.an
  store ptr %i.at, ptr %.val.i.i, align 8, !alias.scope !13303, !noalias !13301
  store i64 %i.as, ptr %i.u, align 8, !alias.scope !13303, !noalias !13301
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.j
  %i.au = tail call { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint18decode_varint_slowQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %2), !noalias !13297 ; 2 uses
  %i.av = extractvalue { i64, ptr } %i.au, 0
  %i.aw = extractvalue { i64, ptr } %i.au, 1      ; 2 uses
  %i.ax = trunc nuw i64 %i.av to i1
  br i1 %i.ax, label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb11CompressionNCINvNtB2_7message5mergeBJ_QRShE0B27_ECsaSXGKSfiU2E_10lance_file.exit, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26_crit_edge.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26_crit_edge.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.i
  %i.ay = ptrtoint ptr %i.aw to i64
  %.val.i17.pre.i = load i64, ptr %i.u, align 8, !noalias !13305
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26_crit_edge.i, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i.i, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i.i
  %.val.i17.i = phi i64 [ %.val.i17.pre.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26_crit_edge.i ], [ %i.aa, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i.i ], [ %i.as, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i.i ] ; 4 uses
  %.sroa.6.0.i29.i = phi i64 [ %i.ay, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit._RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26_crit_edge.i ], [ %i.ac, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit.i.i ], [ %i.al, %_RNvXNtNtCs4XDKJNDGLq7_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsaSXGKSfiU2E_10lance_file.exit6.i.i ] ; 3 uses
  %i.az = icmp ult i64 %.val.i17.i, %.sroa.6.0.i29.i
  br i1 %i.az, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26.i
  %i.ba = sub nuw i64 %.val.i17.i, %.sroa.6.0.i29.i ; 2 uses
  %.not63.i = icmp eq i64 %.sroa.6.0.i29.i, 0
  br i1 %.not63.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQRShECsaSXGKSfiU2E_10lance_file.exit.thread26.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13305
  store i64 -9223372036854775801, ptr %i.l, align 8, !noalias !13305
  %i.bf = call noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.l), !noalias !13305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13305
  br label %_RINvNtCskAO0uQb8M5a_5prost8encoding10merge_loopNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb11CompressionNCINvNtB2_7message5mergeBJ_QRShE0B27_ECsaSXGKSfiU2E_10lance_file.exit

thread-pre-split.i:                               ; preds = %_RNCINvNtNtCskAO0uQb8M5a_5prost8encoding7message5mergeNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb11CompressionQRShE0CsaSXGKSfiU2E_10lance_file.exit.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionlE18get_or_insert_withNvYlNtNtB5_7default7Default7defaultECsaSXGKSfiU2E_10lance_file.exit.i.i.i, %bb.ad
  %.val.i18.pr.i = load i64, ptr %i.u, align 8, !noalias !13305 ; 3 uses
  %i.bg = icmp ugt i64 %.val.i18.pr.i, %i.ba
  br i1 %i.bg, label %bb.p, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %thread-pre-split.i, %bb.n
  %.val.i18.lcssa.i = phi i64 [ %.val.i17.i, %bb.n ], [ %.val.i18.pr.i, %thread-pre-split.i ]
  %.not.i = icmp eq i64 %.val.i18.lcssa.i, %i.ba
end_hunk_0
