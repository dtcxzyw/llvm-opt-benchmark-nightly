Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.12?download=true
inline.NumInlined: 969
inline.NumDeleted: 445
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtCs2NttipCe0aR_5prost8encoding6varint13decode_varintQQNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9DecodeBufECsbaWXNhtWAp9_11foundations:bb.a

bb.y:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !7143, !noalias !7013
  store i64 -9223372036854775807, ptr %i.d, align 8, !dbg !7143, !noalias !7013
  %i.dn = call noundef nonnull align 8 ptr @_RNvXs1_NtCs2NttipCe0aR_5prost5errorNtB5_11DecodeErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d), !dbg !7144, !noalias !7013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !7145, !noalias !7013
  %i.do = ptrtoint ptr %i.dn to i64, !dbg !7146
  br label %bb.ad, !dbg !7027

bb.z:                                             ; preds = %bb.g, %bb.i, %bb.k, %bb.u, %bb.v, %bb.s, %bb.q, %bb.o, %bb.m
  %.sroa.18.0.ph = phi i64 [ 10, %bb.v ], [ 9, %bb.u ], [ 8, %bb.s ], [ 7, %bb.q ], [ 6, %bb.o ], [ 5, %bb.m ], [ 4, %bb.k ], [ 3, %bb.i ], [ 2, %bb.g ] ; 5 uses
  %.sroa.5.0.ph = phi i64 [ %i.de, %bb.v ], [ %i.cy, %bb.u ], [ %i.cr, %bb.s ], [ %i.cg, %bb.q ], [ %i.bv, %bb.o ], [ %i.bk, %bb.m ], [ %i.ay, %bb.k ], [ %i.ar, %bb.i ], [ %i.ai, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7014), !dbg !7147
  %.not.i.i.i8 = icmp ugt i64 %.sroa.18.0.ph, %.val1.i.i, !dbg !7148
  br i1 %.not.i.i.i8, label %bb.aa, label %bb.ab, !dbg !7148, !prof !527

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @242, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #36, !dbg !7149, !noalias !7014
  unreachable, !dbg !7149

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7014
  store i64 %.sroa.18.0.ph, ptr %i.c, align 8, !noalias !7015
  %.not.i.i.i.i9 = icmp ugt i64 %.sroa.18.0.ph, %i.i, !dbg !7150
  br i1 %.not.i.i.i.i9, label %bb.ac, label %_RNvXNtNtCs8QTyv2gZm5j_5bytes3buf8buf_implQQNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9DecodeBufNtB2_3Buf7advanceCsbaWXNhtWAp9_11foundations.exit12, !dbg !7150, !prof !527

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7151, !noalias !7015
  store i64 %i.i, ptr %i.b, align 8, !dbg !7152, !noalias !7015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7153, !noalias !7015
  store ptr %i.c, ptr %i.a, align 8, !dbg !7153, !noalias !7015
  %.sroa.42.0..sroa_idx.i.i.i.i10 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7153
  store ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i10, align 8, !dbg !7153, !noalias !7015
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !7153
  store ptr %i.b, ptr %i.dp, align 8, !dbg !7153, !noalias !7015
  %.sroa.46.0..sroa_idx.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !7153
  store ptr @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i11, align 8, !dbg !7153, !noalias !7015
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @166, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #36, !dbg !7154, !noalias !7015
  unreachable, !dbg !7154

_RNvXNtNtCs8QTyv2gZm5j_5bytes3buf8buf_implQQNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9DecodeBufNtB2_3Buf7advanceCsbaWXNhtWAp9_11foundations.exit12: ; preds = %bb.ab
  tail call void @_RNvMs_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB4_8BytesMut17advance_unchecked(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i, i64 noundef %.sroa.18.0.ph), !dbg !7155, !noalias !7014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7156, !noalias !7014
  %i.dq = sub nuw i64 %.val1.i.i, %.sroa.18.0.ph, !dbg !7157
  store i64 %i.dq, ptr %i.f, align 8, !dbg !7157, !alias.scope !7014
  br label %bb.ad, !dbg !7158

bb.ad:                                            ; preds = %_RNvXNtNtCs8QTyv2gZm5j_5bytes3buf8buf_implQQNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9DecodeBufNtB2_3Buf7advanceCsbaWXNhtWAp9_11foundations.exit, %_RNvXNtNtCs8QTyv2gZm5j_5bytes3buf8buf_implQQNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9DecodeBufNtB2_3Buf7advanceCsbaWXNhtWAp9_11foundations.exit12, %bb.x, %bb.b, %bb.y
  %.sroa.6.0 = phi i64 [ %i.l, %bb.b ], [ %i.q, %_RNvXNtNtCs8QTyv2gZm5j_5bytes3buf8buf_implQQNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9DecodeBufNtB2_3Buf7advanceCsbaWXNhtWAp9_11foundations.exit ], [ %i.do, %bb.y ], [ %.sroa.5.0.ph, %_RNvXNtNtCs8QTyv2gZm5j_5bytes3buf8buf_implQQNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9DecodeBufNtB2_3Buf7advanceCsbaWXNhtWAp9_11foundations.exit12 ], [ %i.dm, %bb.x ], !dbg !7159
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %_RNvXNtNtCs8QTyv2gZm5j_5bytes3buf8buf_implQQNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9DecodeBufNtB2_3Buf7advanceCsbaWXNhtWAp9_11foundations.exit ], [ 1, %bb.y ], [ 0, %_RNvXNtNtCs8QTyv2gZm5j_5bytes3buf8buf_implQQNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9DecodeBufNtB2_3Buf7advanceCsbaWXNhtWAp9_11foundations.exit12 ], [ %i.dk, %bb.x ], !dbg !7159
  %i.dr = inttoptr i64 %.sroa.6.0 to ptr, !dbg !7160
  %i.ds = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !7160
  %i.dt = insertvalue { i64, ptr } %i.ds, ptr %i.dr, 1, !dbg !7160
  ret { i64, ptr } %i.dt, !dbg !7160
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs2NttipCe0aR_5prost8encoding6varint13encode_varintNtNtNtCsfUalJnHtWpm_5tonic5codec6buffer9EncodeBufECsbaWXNhtWAp9_11foundations(i64 noundef %0, ptr %.0.val) unnamed_addr #5 !dbg !7161 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 36 uses
  %i.c = icmp ult i64 %0, 128, !dbg !7170
  br i1 %i.c, label %.loopexit, label %bb.b, !dbg !7170

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.03.lcssa = phi i64 [ %0, %bb.a ], [ %i.g, %bb.b ], [ %i.k, %bb.c ], [ %i.o, %bb.d ], [ %i.s, %bb.e ], [ %i.w, %bb.f ], [ %i.aa, %bb.g ], [ %i.ae, %bb.h ], [ %i.ai, %bb.i ], [ 1, %bb.j ]
  %i.d = trunc nuw nsw i64 %.sroa.0.03.lcssa to i8, !dbg !7171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7172
  store i8 %i.d, ptr %i.a, align 1, !dbg !7173
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @_RNvXs2_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !dbg !7174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7175
  ret void, !dbg !7176

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %0 to i8, !dbg !7177
  %i.f = or i8 %i.e, -128, !dbg !7177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7178
  store i8 %i.f, ptr %i.b, align 1, !dbg !7179
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @_RNvXs2_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !dbg !7180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7181
  %i.g = lshr i64 %0, 7, !dbg !7182               ; 2 uses
  %i.h = icmp ult i64 %0, 16384, !dbg !7170
  br i1 %i.h, label %.loopexit, label %bb.c, !dbg !7170

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %i.g to i8, !dbg !7177
  %i.j = or i8 %i.i, -128, !dbg !7177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7178
  store i8 %i.j, ptr %i.b, align 1, !dbg !7179
  call void @_RNvXs2_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !dbg !7180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7181
  %i.k = lshr i64 %0, 14, !dbg !7182              ; 2 uses
  %i.l = icmp ult i64 %0, 2097152, !dbg !7170
  br i1 %i.l, label %.loopexit, label %bb.d, !dbg !7170

bb.d:                                             ; preds = %bb.c
  %i.m = trunc i64 %i.k to i8, !dbg !7177
  %i.n = or i8 %i.m, -128, !dbg !7177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7178
  store i8 %i.n, ptr %i.b, align 1, !dbg !7179
  call void @_RNvXs2_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !dbg !7180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7181
  %i.o = lshr i64 %0, 21, !dbg !7182              ; 2 uses
  %i.p = icmp ult i64 %0, 268435456, !dbg !7170
  br i1 %i.p, label %.loopexit, label %bb.e, !dbg !7170

bb.e:                                             ; preds = %bb.d
  %i.q = trunc i64 %i.o to i8, !dbg !7177
  %i.r = or i8 %i.q, -128, !dbg !7177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7178
  store i8 %i.r, ptr %i.b, align 1, !dbg !7179
  call void @_RNvXs2_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !dbg !7180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7181
  %i.s = lshr i64 %0, 28, !dbg !7182              ; 2 uses
  %i.t = icmp ult i64 %0, 34359738368, !dbg !7170
  br i1 %i.t, label %.loopexit, label %bb.f, !dbg !7170

bb.f:                                             ; preds = %bb.e
  %i.u = trunc i64 %i.s to i8, !dbg !7177
  %i.v = or i8 %i.u, -128, !dbg !7177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7178
  store i8 %i.v, ptr %i.b, align 1, !dbg !7179
  call void @_RNvXs2_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !dbg !7180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7181
  %i.w = lshr i64 %0, 35, !dbg !7182              ; 2 uses
  %i.x = icmp ult i64 %0, 4398046511104, !dbg !7170
  br i1 %i.x, label %.loopexit, label %bb.g, !dbg !7170

bb.g:                                             ; preds = %bb.f
  %i.y = trunc i64 %i.w to i8, !dbg !7177
  %i.z = or i8 %i.y, -128, !dbg !7177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7178
  store i8 %i.z, ptr %i.b, align 1, !dbg !7179
  call void @_RNvXs2_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !dbg !7180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7181
  %i.aa = lshr i64 %0, 42, !dbg !7182             ; 2 uses
  %i.ab = icmp ult i64 %0, 562949953421312, !dbg !7170
  br i1 %i.ab, label %.loopexit, label %bb.h, !dbg !7170

bb.h:                                             ; preds = %bb.g
  %i.ac = trunc i64 %i.aa to i8, !dbg !7177
  %i.ad = or i8 %i.ac, -128, !dbg !7177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7178
  store i8 %i.ad, ptr %i.b, align 1, !dbg !7179
  call void @_RNvXs2_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !dbg !7180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7181
  %i.ae = lshr i64 %0, 49, !dbg !7182             ; 2 uses
  %i.af = icmp ult i64 %0, 72057594037927936, !dbg !7170
  br i1 %i.af, label %.loopexit, label %bb.i, !dbg !7170

bb.i:                                             ; preds = %bb.h
  %i.ag = trunc i64 %i.ae to i8, !dbg !7177
  %i.ah = or i8 %i.ag, -128, !dbg !7177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7178
  store i8 %i.ah, ptr %i.b, align 1, !dbg !7179
  call void @_RNvXs2_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !dbg !7180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7181
  %i.ai = lshr i64 %0, 56, !dbg !7182             ; 2 uses
  %i.aj = icmp sgt i64 %0, -1, !dbg !7170
  br i1 %i.aj, label %.loopexit, label %bb.j, !dbg !7170

bb.j:                                             ; preds = %bb.i
  %i.ak = trunc nuw i64 %i.ai to i8, !dbg !7177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7178
  store i8 %i.ak, ptr %i.b, align 1, !dbg !7179
  call void @_RNvXs2_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !dbg !7180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7181
  br label %.loopexit, !dbg !7170
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast7channelNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelECsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7183 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !7244
  %.not.i = icmp eq i64 %1, 0, !dbg !7244
  br i1 %.not.i, label %bb.b, label %bb.c, !dbg !7244, !prof !527

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @132, ptr noundef nonnull inttoptr (i64 83 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #36, !dbg !7245
  unreachable, !dbg !7245

bb.c:                                             ; preds = %bb.a
  %i.d = icmp sgt i64 %1, -1, !dbg !7246
  br i1 %i.d, label %bb.e, label %bb.d, !dbg !7246, !prof !468

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @133, ptr noundef nonnull inttoptr (i64 105 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #36, !dbg !7247
  unreachable, !dbg !7247

bb.e:                                             ; preds = %bb.c
  %i.e = icmp eq i64 %1, 1, !dbg !7248
  br i1 %i.e, label %bb.g, label %bb.f, !dbg !7248

bb.f:                                             ; preds = %bb.e
  %i.f = add nsw i64 %1, -1, !dbg !7249
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true), !dbg !7250
  %i.h = lshr i64 -1, %i.g, !dbg !7251
  %i.i = add nuw i64 %i.h, 1, !dbg !7252
  br label %bb.g, !dbg !7253

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.012.0.i = phi i64 [ %i.i, %bb.f ], [ 1, %bb.e ], !dbg !7254 ; 2 uses
  store i64 %.sroa.012.0.i, ptr %i.c, align 8, !dbg !7255, !noalias !7234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7256, !noalias !7235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7257, !noalias !7236
  store ptr %i.c, ptr %i.a, align 8, !dbg !7258, !alias.scope !7237, !noalias !7238
  %.sroa.4.0..sroa_idx47.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7258
  store i64 0, ptr %.sroa.4.0..sroa_idx47.i, align 8, !dbg !7258, !alias.scope !7237, !noalias !7238
  %.sroa.5.0..sroa_idx48.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !7258
  store i64 %.sroa.012.0.i, ptr %.sroa.5.0..sroa_idx48.i, align 8, !dbg !7258, !alias.scope !7237, !noalias !7238
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtNtCs3zuhHmEJ01l_5tokio4loom3std5mutex5MutexINtNtNtB13_4sync9broadcast4SlotNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3C_3ops5range5RangejENCNvMs1_B1L_INtB1L_6SenderB2d_E23new_with_receiver_count0EE9from_iterCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !7259, !noalias !7239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7260, !noalias !7236
  %i.j = call { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCs3zuhHmEJ01l_5tokio4loom3std5mutex5MutexINtNtNtBN_4sync9broadcast4SlotNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEE16into_boxed_sliceCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !7261, !noalias !7235 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7262, !noalias !7235
  %i.k = extractvalue { ptr, i64 } %i.j, 0, !dbg !7263 ; 3 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1, !dbg !7263 ; 2 uses
  %i.m = load i64, ptr %i.c, align 8, !dbg !7264, !noalias !7234, !noundef !465
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !dbg !7265, !noalias !7240
  %i.n = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 729) 136, i64 noundef range(i64 1, 9) 8) #34, !dbg !7266, !noalias !7240 ; 17 uses
  %i.o = icmp eq ptr %i.n, null, !dbg !7267
  br i1 %i.o, label %bb.h, label %_RNvMs1_NtNtCs3zuhHmEJ01l_5tokio4sync9broadcastINtB5_6SenderNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelE23new_with_receiver_countCsbaWXNhtWAp9_11foundations.exit, !dbg !7268, !prof !479

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #35
          to label %.noexc.i unwind label %bb.i, !dbg !7269, !noalias !7234

.noexc.i:                                         ; preds = %bb.h
  unreachable, !dbg !7269

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast6SharedNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEECsbaWXNhtWAp9_11foundations(ptr nonnull %i.k, i64 %i.l) #31
          to label %bb.k unwind label %bb.j, !dbg !7270, !noalias !7234

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !7271, !noalias !7234
  unreachable, !dbg !7271

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.p, !dbg !7271

_RNvMs1_NtNtCs3zuhHmEJ01l_5tokio4sync9broadcastINtB5_6SenderNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelE23new_with_receiver_countCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.g
  %i.r = add i64 %i.m, -1, !dbg !7264
  store i64 1, ptr %i.n, align 8, !dbg !7272, !noalias !7234
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !7272
  store i64 1, ptr %.sroa.450.0..sroa_idx.i, align 8, !dbg !7272, !noalias !7234
  %.sroa.551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !7272
  store ptr %i.k, ptr %.sroa.551.0..sroa_idx.i, align 8, !dbg !7272, !noalias !7234
  %.sroa.7.0..sroa_idx52.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !7272
  store i64 %i.l, ptr %.sroa.7.0..sroa_idx52.i, align 8, !dbg !7272, !noalias !7234
  %.sroa.9.0..sroa_idx53.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !7272
  store i64 %i.r, ptr %.sroa.9.0..sroa_idx53.i, align 8, !dbg !7272, !noalias !7234
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40, !dbg !7272
  store i32 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !7272, !noalias !7234
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 44, !dbg !7272
  store i8 0, ptr %.sroa.11.0..sroa_idx.i, align 4, !dbg !7272, !noalias !7234
  %.sroa.1254.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48, !dbg !7272
  store i64 0, ptr %.sroa.1254.0..sroa_idx.i, align 8, !dbg !7272, !noalias !7234
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56, !dbg !7272
  store i64 1, ptr %.sroa.13.0..sroa_idx.i, align 8, !dbg !7272, !noalias !7234
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64, !dbg !7272
  %.sroa.1755.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 88, !dbg !7272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.14.0..sroa_idx.i, i8 0, i64 17, i1 false), !dbg !7272, !noalias !7234
  store i64 1, ptr %.sroa.1755.0..sroa_idx.i, align 8, !dbg !7272, !noalias !7234
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 96, !dbg !7272
  %.sroa.2256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 120, !dbg !7272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %.sroa.18.0..sroa_idx.i, i8 0, i64 21, i1 false), !dbg !7272, !noalias !7234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2256.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !7272, !noalias !7234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7273
  %i.s = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !7274
  %i.t = icmp slt i64 %i.s, 0, !dbg !7275
  br i1 %i.t, label %bb.m, label %bb.l, !dbg !7275

bb.l:                                             ; preds = %_RNvMs1_NtNtCs3zuhHmEJ01l_5tokio4sync9broadcastINtB5_6SenderNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelE23new_with_receiver_countCsbaWXNhtWAp9_11foundations.exit
  store ptr %i.n, ptr %0, align 8, !dbg !7276
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7276
  store ptr %i.n, ptr %i.u, align 8, !dbg !7276
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7276
  store i64 0, ptr %i.v, align 8, !dbg !7276
  ret void, !dbg !7277

bb.m:                                             ; preds = %_RNvMs1_NtNtCs3zuhHmEJ01l_5tokio4sync9broadcastINtB5_6SenderNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelE23new_with_receiver_countCsbaWXNhtWAp9_11foundations.exit
  call void @llvm.trap(), !dbg !7278
  unreachable, !dbg !7278
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvXs_NtNtCs7XllS0bOcsN_6anyhow7context3extNtB9_5ErrorNtB5_8StdError11ext_contextNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !7279 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7288, !noalias !7287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !7289
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !7289
  store ptr %0, ptr %i.c, align 8, !dbg !7289, !noalias !7287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7290, !noalias !7287
  store i64 -1, ptr %i.a, align 8, !dbg !7291, !noalias !7287
  %i.d = call fastcc noundef nonnull ptr @_RINvMNtCs7XllS0bOcsN_6anyhow5errorNtB5_5Error9constructINtB3_12ContextErrorNtNtCs1xwejQucwHj_5alloc6string6StringBw_EECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.a), !dbg !7292, !noalias !7287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7293, !noalias !7287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7294, !noalias !7287
  ret ptr %i.d, !dbg !7295
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvXs_NtNtCs7XllS0bOcsN_6anyhow7context3extNtB9_5ErrorNtB5_8StdError11ext_contextReECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !dbg !7296 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7301, !noalias !7300
  store ptr %1, ptr %i.b, align 8, !dbg !7302, !noalias !7300
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !7302
  store i64 %2, ptr %i.c, align 8, !dbg !7302, !noalias !7300
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !7302
  store ptr %0, ptr %i.d, align 8, !dbg !7302, !noalias !7300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7303, !noalias !7300
  store i64 -1, ptr %i.a, align 8, !dbg !7304, !noalias !7300
  %i.e = call fastcc noundef nonnull ptr @_RINvMNtCs7XllS0bOcsN_6anyhow5errorNtB5_5Error9constructINtB3_12ContextErrorReBw_EECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.a), !dbg !7305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7306, !noalias !7300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7307, !noalias !7300
  ret ptr %i.e, !dbg !7308
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvXs_NtNtCskfQLOxWbF12_10prometools5serde3topNtB5_16StructSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser15SerializeStruct15serialize_fieldDNtNtCs5brsvYHD4Ou_12erased_serde3ser9SerializeEL_ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4) unnamed_addr #1 !dbg !7309 {
bb.a:
  %i.a = tail call noundef ptr @_RNvNtNtCskfQLOxWbF12_10prometools5serde3top9check_key(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !7313 ; 2 uses
  %.not = icmp eq ptr %i.a, null, !dbg !7318
  br i1 %.not, label %bb.b, label %bb.h, !dbg !7319

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7320 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !dbg !7320, !range !537, !noundef !465
  %i.d = trunc nuw i8 %i.c to i1, !dbg !7320
  br i1 %i.d, label %bb.d, label %bb.c, !dbg !7320

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 8, !dbg !7321
  br label %bb.e, !dbg !7322

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_RNvMNtNtCskfQLOxWbF12_10prometools5serde3strNtB2_6Writer9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 2), !dbg !7323 ; 2 uses
  %.not16 = icmp eq ptr %i.e, null, !dbg !7324
  br i1 %.not16, label %bb.e, label %bb.h, !dbg !7325

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = tail call noundef ptr @_RNvMNtNtCskfQLOxWbF12_10prometools5serde3strNtB2_6Writer9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !7326 ; 2 uses
  %.not17 = icmp eq ptr %i.f, null, !dbg !7327
  br i1 %.not17, label %bb.f, label %bb.h, !dbg !7328

bb.f:                                             ; preds = %bb.e
  %i.g = tail call noundef ptr @_RNvMNtNtCskfQLOxWbF12_10prometools5serde3strNtB2_6Writer9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 2), !dbg !7329 ; 2 uses
  %.not18 = icmp eq ptr %i.g, null, !dbg !7330
  br i1 %.not18, label %bb.g, label %bb.h, !dbg !7331

bb.g:                                             ; preds = %bb.f
  %i.h = load ptr, ptr %0, align 8, !dbg !7332, !nonnull !465, !noundef !465
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7332
  %i.j = load ptr, ptr %i.i, align 8, !dbg !7332, !nonnull !465, !align !617, !noundef !465
  %i.k = tail call noundef ptr @_RINvXsm_NtCs5brsvYHD4Ou_12erased_serde3serDNtB6_9SerializeEL_NtNtCs5FjQZcNRzHx_10serde_core3ser9Serialize9serializeNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.j), !dbg !7333
  br label %bb.h, !dbg !7334

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.a, %bb.g
  %.sroa.0.0 = phi ptr [ %i.k, %bb.g ], [ %i.a, %bb.a ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.g, %bb.f ], !dbg !7335
  ret ptr %.sroa.0.0, !dbg !7334
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvXs_NtNtCskfQLOxWbF12_10prometools5serde3topNtB5_16StructSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser15SerializeStruct15serialize_fieldNtNtNtCsC6fiw49j4l_12sentry_types8protocol2v75LevelECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %3) unnamed_addr #1 !dbg !7336 {
bb.a:
  %i.a = tail call noundef ptr @_RNvNtNtCskfQLOxWbF12_10prometools5serde3top9check_key(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !7340 ; 2 uses
  %.not = icmp eq ptr %i.a, null, !dbg !7345
  br i1 %.not, label %bb.b, label %bb.h, !dbg !7346

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7347 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !dbg !7347, !range !537, !noundef !465
  %i.d = trunc nuw i8 %i.c to i1, !dbg !7347
  br i1 %i.d, label %bb.d, label %bb.c, !dbg !7347

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 8, !dbg !7348
  br label %bb.e, !dbg !7349

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_RNvMNtNtCskfQLOxWbF12_10prometools5serde3strNtB2_6Writer9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 2), !dbg !7350 ; 2 uses
  %.not16 = icmp eq ptr %i.e, null, !dbg !7351
  br i1 %.not16, label %bb.e, label %bb.h, !dbg !7352

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = tail call noundef ptr @_RNvMNtNtCskfQLOxWbF12_10prometools5serde3strNtB2_6Writer9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !7353 ; 2 uses
  %.not17 = icmp eq ptr %i.f, null, !dbg !7354
  br i1 %.not17, label %bb.f, label %bb.h, !dbg !7355
end_hunk_0
