Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_protocol-78e79be79537878f.libsignal_protocol.3431899de14c0db4-cgu.07?download=true
inline.NumInlined: 366
inline.NumDeleted: 185
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint325mergeQRShECs4tP8yUXWbFU_18libsignal_protocol:bb.a
_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.d
  %i.k = add i64 %.val1.i.i, -1
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1
  store ptr %i.l, ptr %.val.i, align 8, !alias.scope !94, !noalias !93, !captures !12
  store i64 %i.k, ptr %i.e, align 8, !alias.scope !94, !noalias !93
  %i.m = zext nneg i8 %i.h to i64
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread11

bb.f:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !93
  call fastcc void @_RNvNtNtCs43OB2dM8s8d_5prost8encoding6varint19decode_varint_slice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i) #28, !noalias !93
  %i.n = load i64, ptr %i.b, align 8, !range !9, !noalias !93, !noundef !5
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !noalias !93, !noundef !5
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %bb.f, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit, !prof !8

bb.h:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.p, align 8, !noalias !93, !nonnull !5, !align !10, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !93
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread

bb.i:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.p, align 8, !noalias !93, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !93, !noundef !5 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !93
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.y = load i64, ptr %i.e, align 8, !alias.scope !95, !noalias !93, !noundef !5 ; 3 uses
  %i.z = icmp ult i64 %i.y, %i.x
  br i1 %i.z, label %bb.j, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i, !prof !11

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96
  store i64 %i.x, ptr %i.a, align 8, !noalias !96
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.y, ptr %i.aa, align 8, !noalias !96
  call void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #30, !noalias !96
  unreachable

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i: ; preds = %bb.i
  %i.ab = load ptr, ptr %.val.i, align 8, !alias.scope !95, !noalias !93, !nonnull !5, !noundef !5
  %i.ac = sub nuw i64 %i.y, %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.x
  store ptr %i.ad, ptr %.val.i, align 8, !alias.scope !95, !noalias !93, !captures !12
  store i64 %i.ac, ptr %i.e, align 8, !alias.scope !95, !noalias !93
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread11

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.g
  %i.ae = tail call { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowQRShECs1YsMTEqGlh_4spqr(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2) #29 ; 2 uses
  %i.af = extractvalue { i64, ptr } %i.ae, 0
  %i.ag = extractvalue { i64, ptr } %i.ae, 1      ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = trunc nuw i64 %i.af to i1
  br i1 %i.ai, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread11

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 0, ptr %i.ak, align 1
  store i64 -9223372036854775802, ptr %i.d, align 8
  %i.al = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread11: ; preds = %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit
  %.sroa.6.0.i14 = phi i64 [ %i.ah, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit ], [ %i.m, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i ], [ %i.v, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i ]
  %i.am = trunc i64 %.sroa.6.0.i14 to i32
  store i32 %i.am, ptr %1, align 4
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread: ; preds = %bb.h, %bb.c, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread11, %bb.k
  %.sroa.0.0 = phi ptr [ %i.al, %bb.k ], [ null, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread11 ], [ %i.ag, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit ], [ %i.u, %bb.h ], [ %i.g, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint326encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %0, 3
  %i.b = zext i32 %i.a to i64
  tail call fastcc void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13encode_varintINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(24) %2) #28
  %i.c = load i32, ptr %1, align 4, !noundef !5
  %i.d = zext i32 %i.c to i64
  tail call fastcc void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13encode_varintINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i64 noundef %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %2) #28
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13encode_varintINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i64 noundef range(i64 -2147483648, 4294967296) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 36 uses
  %i.c = icmp ult i64 %0, 128
  br i1 %i.c, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.08.lcssa = phi i64 [ %0, %bb.a ], [ %i.g, %bb.b ], [ %i.k, %bb.c ], [ %i.o, %bb.d ], [ %i.s, %bb.e ], [ 1, %bb.f ]
  %i.d = trunc nuw nsw i64 %.sroa.0.08.lcssa to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101
  store i8 %i.d, ptr %i.a, align 1, !noalias !101
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101
  ret void

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %0 to i8
  %i.f = or i8 %i.e, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102
  store i8 %i.f, ptr %i.b, align 1, !noalias !102
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102
  %i.g = lshr i64 %0, 7                           ; 2 uses
  %i.h = icmp ult i64 %0, 16384
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %i.g to i8
  %i.j = or i8 %i.i, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102
  store i8 %i.j, ptr %i.b, align 1, !noalias !102
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102
  %i.k = lshr i64 %0, 14                          ; 2 uses
  %i.l = icmp ult i64 %0, 2097152
  br i1 %i.l, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc i64 %i.k to i8
  %i.n = or i8 %i.m, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102
  store i8 %i.n, ptr %i.b, align 1, !noalias !102
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102
  %i.o = lshr i64 %0, 21                          ; 2 uses
  %i.p = icmp ult i64 %0, 268435456
  br i1 %i.p, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = trunc i64 %i.o to i8
  %i.r = or i8 %i.q, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102
  store i8 %i.r, ptr %i.b, align 1, !noalias !102
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102
  %i.s = lshr i64 %0, 28                          ; 2 uses
  %i.t = icmp ult i64 %0, 34359738368
  br i1 %i.t, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = trunc i64 %i.s to i8
  %i.v = or i8 %i.u, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102
  store i8 %i.v, ptr %i.b, align 1, !noalias !102
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102
  %i.w = lshr i64 %0, 35
  %i.x = trunc i64 %i.w to i8
  %i.y = or i8 %i.x, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102
  store i8 %i.y, ptr %i.b, align 1, !noalias !102
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102
  %i.z = lshr i64 %0, 42
  %i.aa = trunc i64 %i.z to i8
  %i.ab = or i8 %i.aa, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102
  store i8 %i.ab, ptr %i.b, align 1, !noalias !102
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102
  %i.ac = lshr i64 %0, 49
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = or i8 %i.ad, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102
  store i8 %i.ae, ptr %i.b, align 1, !noalias !102
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102
  %i.af = lshr i64 %0, 56
  %i.ag = trunc nuw i64 %i.af to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102
  store i8 %i.ag, ptr %i.b, align 1, !noalias !102
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102
  br label %.loopexit
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowRShECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.c, align 8, !noundef !5 ; 10 uses
  %exitcond.not.a = icmp eq i64 %.val, 0
  br i1 %exitcond.not.a, label %1, label %6

1:                                                ; preds = %66, %65, %58, %57, %50, %43, %35, %27, %19, %11, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775807, ptr %i.a, align 8
  %2 = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %3

3:                                                ; preds = %.thread, %bb.g, %1
  %.sroa.4.0 = phi ptr [ %2, %1 ], [ %i.k, %bb.g ], [ %i.j, %.thread ]
  %.sroa.0.0 = phi i64 [ 1, %1 ], [ 1, %bb.g ], [ 0, %.thread ]
  %4 = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %5 = insertvalue { i64, ptr } %4, ptr %.sroa.4.0, 1
  ret { i64, ptr } %5

6:                                                ; preds = %bb.a
  %7 = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8Cs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %8 = and i8 %7, 127
  %9 = zext nneg i8 %8 to i64                     ; 2 uses
  %10 = icmp sgt i8 %7, -1
  br i1 %10, label %.thread, label %11

11:                                               ; preds = %6
  %exitcond.1.not = icmp eq i64 %.val, 1
  br i1 %exitcond.1.not, label %1, label %12

12:                                               ; preds = %11
  %13 = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8Cs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %14 = and i8 %13, 127
  %15 = zext nneg i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 7
  %17 = or disjoint i64 %16, %9                   ; 2 uses
  %18 = icmp sgt i8 %13, -1
  br i1 %18, label %.thread, label %19

19:                                               ; preds = %12
  %exitcond.2.not = icmp eq i64 %.val, 2
  br i1 %exitcond.2.not, label %1, label %20

20:                                               ; preds = %19
  %21 = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8Cs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %22 = and i8 %21, 127
  %23 = zext nneg i8 %22 to i64
  %24 = shl nuw nsw i64 %23, 14
  %25 = or disjoint i64 %24, %17                  ; 2 uses
  %26 = icmp sgt i8 %21, -1
  br i1 %26, label %.thread, label %27

27:                                               ; preds = %20
  %exitcond.3.not = icmp eq i64 %.val, 3
  br i1 %exitcond.3.not, label %1, label %28

28:                                               ; preds = %27
  %29 = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8Cs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %30 = and i8 %29, 127
  %31 = zext nneg i8 %30 to i64
  %32 = shl nuw nsw i64 %31, 21
  %33 = or disjoint i64 %32, %25                  ; 2 uses
  %34 = icmp sgt i8 %29, -1
  br i1 %34, label %.thread, label %35

35:                                               ; preds = %28
  %exitcond.4.not = icmp eq i64 %.val, 4
  br i1 %exitcond.4.not, label %1, label %36

36:                                               ; preds = %35
  %37 = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8Cs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %38 = and i8 %37, 127
  %39 = zext nneg i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 28
  %41 = or disjoint i64 %40, %33                  ; 2 uses
  %42 = icmp sgt i8 %37, -1
  br i1 %42, label %.thread, label %43

43:                                               ; preds = %36
  %exitcond.5.not = icmp eq i64 %.val, 5
  br i1 %exitcond.5.not, label %1, label %bb.b

bb.b:                                             ; preds = %43
  %44 = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8Cs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %45 = and i8 %44, 127
  %46 = zext nneg i8 %45 to i64
  %47 = shl nuw nsw i64 %46, 35
  %48 = or i64 %47, %41                           ; 2 uses
  %49 = icmp sgt i8 %44, -1
  br i1 %49, label %.thread, label %50

50:                                               ; preds = %bb.b
  %exitcond.6.not = icmp eq i64 %.val, 6
  br i1 %exitcond.6.not, label %1, label %bb.c

bb.c:                                             ; preds = %50
  %51 = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8Cs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %52 = and i8 %51, 127
  %53 = zext nneg i8 %52 to i64
  %54 = shl nuw nsw i64 %53, 42
  %55 = or i64 %54, %48                           ; 2 uses
  %56 = icmp sgt i8 %51, -1
  br i1 %56, label %.thread, label %57

57:                                               ; preds = %bb.c
  %exitcond.7.not = icmp eq i64 %.val, 7
  br i1 %exitcond.7.not, label %1, label %bb.d

bb.d:                                             ; preds = %57
  %i.d = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8Cs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.e = and i8 %i.d, 127
  %i.f = zext nneg i8 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 49
  %i.h = or i64 %i.g, %55                         ; 2 uses
  %i.i = icmp sgt i8 %i.d, -1
  br i1 %i.i, label %.thread, label %58

58:                                               ; preds = %bb.d
  %exitcond.8.not = icmp eq i64 %.val, 8
  br i1 %exitcond.8.not, label %1, label %bb.e

bb.e:                                             ; preds = %58
  %59 = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8Cs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %60 = and i8 %59, 127
  %61 = zext nneg i8 %60 to i64
  %62 = shl nuw nsw i64 %61, 56
  %63 = or i64 %62, %i.h                          ; 2 uses
  %64 = icmp sgt i8 %59, -1
  br i1 %64, label %.thread, label %65

65:                                               ; preds = %bb.e
  %exitcond.9.not = icmp eq i64 %.val, 9
  br i1 %exitcond.9.not, label %1, label %66

66:                                               ; preds = %65
  %67 = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8Cs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 3 uses
  %68 = icmp sgt i8 %67, -1
  br i1 %68, label %bb.f, label %1

bb.f:                                             ; preds = %66
  %69 = zext nneg i8 %67 to i64
  %70 = shl i64 %69, 63
  %71 = or i64 %70, %63
  %72 = icmp samesign ugt i8 %67, 1
  br i1 %72, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %36, %28, %20, %12, %6, %bb.f
  %.lcssa1842 = phi i64 [ %71, %bb.f ], [ %63, %bb.e ], [ %i.h, %bb.d ], [ %55, %bb.c ], [ %48, %bb.b ], [ %41, %36 ], [ %33, %28 ], [ %25, %20 ], [ %17, %12 ], [ %9, %6 ]
  %i.j = inttoptr i64 %.lcssa1842 to ptr
  br label %3

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775807, ptr %i.b, align 8
  %i.k = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %3
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCsgxBkk5gSRhY_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs4tP8yUXWbFU_18libsignal_protocol(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #3 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep5 = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %scevgep5
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !115, !noalias !116
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !115, !noalias !116
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !116, !noalias !113
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !116, !noalias !113
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !alias.scope !115, !noalias !116
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !alias.scope !115, !noalias !116
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !116, !noalias !113
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !alias.scope !116, !noalias !113
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.g = or disjoint i64 %.sroa.0.04.ph, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !alias.scope !113, !noalias !114
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !alias.scope !114, !noalias !113
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !alias.scope !113, !noalias !114
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !alias.scope !114, !noalias !113
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.g, %scalar.ph.prol ]
  %i.j = icmp eq i64 %2, %.neg
  br i1 %i.j, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !alias.scope !113, !noalias !114
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !alias.scope !114, !noalias !113
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !alias.scope !113, !noalias !114
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !114, !noalias !113
  %i.n = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !alias.scope !119, !noalias !120
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !alias.scope !120, !noalias !119
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !alias.scope !119, !noalias !120
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !alias.scope !120, !noalias !119
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !112
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtCs17cqnTMcAHA_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQRShEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i.i.i = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %.val.i.i.i) ; 5 uses
  %.not50 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not50, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf13copy_to_bytesCs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.c

.loopexit:                                        ; preds = %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit, %bb.a, %bb.m
  ret void

_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf13copy_to_bytesCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf13copy_to_bytesCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.sroa.0.0.i.i.i), !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @_RNvMNtCs17cqnTMcAHA_5bytes5bytesNtB2_5Bytes12try_into_mut(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.k = load i64, ptr %i.d, align 8, !range !9, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  br i1 %i.l, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !5 ; 2 uses
  %i.p = icmp ult i64 %i.i, %i.o
  br i1 %i.p, label %bb.r, label %bb.q

bb.d:                                             ; preds = %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf13copy_to_bytesCs4tP8yUXWbFU_18libsignal_protocol.exit
  %.sroa.042.0.copyload = load ptr, ptr %i.m, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.846.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.846.0.copyload = load i64, ptr %.sroa.846.0..sroa_idx, align 8 ; 8 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !148, !noalias !149, !noundef !5 ; 3 uses
  %i.s = load i64, ptr %i.h, align 8, !alias.scope !148, !noalias !149, !noundef !5 ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  br i1 %i.t, label %.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = sub nuw i64 %i.s, %i.r
  %.not.i17 = icmp ugt i64 %.sroa.846.0.copyload, %i.u
  br i1 %.not.i17, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.v = invoke noundef zeroext i1 @_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.846.0.copyload, i1 noundef zeroext true)
          to label %.noexc18 unwind label %bb.n   ; 0 uses

.noexc18:                                         ; preds = %bb.f
  %.pre.i = load i64, ptr %i.q, align 8, !alias.scope !148, !noalias !149 ; 2 uses
  %.pre1.i = load i64, ptr %i.h, align 8, !alias.scope !148, !noalias !149
  %i.w = icmp ult i64 %.pre1.i, %.pre.i
  br i1 %i.w, label %.invoke, label %.thread.i

.thread.i:                                        ; preds = %.noexc18, %bb.e
  %i.x = phi i64 [ %.pre.i, %.noexc18 ], [ %i.r, %bb.e ]
  %i.y = load ptr, ptr %0, align 8, !alias.scope !148, !noalias !149, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.846.0.copyload, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.aa = load i64, ptr %i.h, align 8, !alias.scope !151, !noalias !149, !noundef !5 ; 2 uses
  %i.ab = load i64, ptr %i.q, align 8, !alias.scope !151, !noalias !149, !noundef !5 ; 4 uses
  %i.ac = sub nuw i64 %i.aa, %i.ab                ; 2 uses
  %i.ad = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ad, label %.invoke, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.ae = icmp ugt i64 %.sroa.846.0.copyload, %i.ac
  br i1 %i.ae, label %bb.i, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.af = add i64 %i.ab, %.sroa.846.0.copyload    ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ab
  br i1 %i.ag, label %bb.j, label %bb.o

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !152
  store i64 %.sroa.846.0.copyload, ptr %i.c, align 8, !noalias !152
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ac, ptr %i.ah, align 8, !noalias !152
  invoke void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) #30
          to label %.noexc20 unwind label %bb.n

.noexc20:                                         ; preds = %bb.i
  unreachable

end_hunk_0
