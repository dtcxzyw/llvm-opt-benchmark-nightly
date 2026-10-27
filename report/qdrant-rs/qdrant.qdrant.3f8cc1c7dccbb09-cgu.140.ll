Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.140?download=true
inline.NumInlined: 290
inline.NumDeleted: 148
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtNtCs4J2qyOfMFpM_5prost8encoding5int645mergeQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant:bb.a

bb.m:                                             ; preds = %bb.k
  %i.az = zext i8 %i.aw to i32
  %i.ba = add nsw i32 %i.az, -128
  %i.bb = icmp samesign ugt i64 %.sroa.3.0.i.i.i.i, 5
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !100, !noalias !97, !noundef !6 ; 2 uses
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 7
  %i.bg = or disjoint i32 %i.bf, %i.ba            ; 2 uses
  %i.bh = icmp sgt i8 %i.bd, -1
  br i1 %i.bh, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.bi = zext nneg i8 %i.aw to i64
  %i.bj = shl nuw nsw i64 %i.bi, 28
  %i.bk = add nuw nsw i64 %i.bj, %i.at
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  %i.bl = add nsw i32 %i.bg, -16384
  %i.bm = icmp samesign ugt i64 %.sroa.3.0.i.i.i.i, 6
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !100, !noalias !97, !noundef !6 ; 2 uses
  %i.bp = zext i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 14
  %i.br = or disjoint i32 %i.bq, %i.bl            ; 2 uses
  %i.bs = icmp sgt i8 %i.bo, -1
  br i1 %i.bs, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.bt = zext nneg i32 %i.bg to i64
  %i.bu = shl nuw nsw i64 %i.bt, 28
  %i.bv = add nuw nsw i64 %i.bu, %i.at
  br label %bb.z

bb.q:                                             ; preds = %bb.o
  %i.bw = add nsw i32 %i.br, -2097152
  %i.bx = icmp samesign ugt i64 %.sroa.3.0.i.i.i.i, 7
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 7
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !100, !noalias !97, !noundef !6 ; 2 uses
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 21
  %i.cc = add nsw i32 %i.bw, %i.cb                ; 2 uses
  %i.cd = icmp sgt i8 %i.bz, -1
  br i1 %i.cd, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ce = zext nneg i32 %i.br to i64
  %i.cf = shl nuw nsw i64 %i.ce, 28
  %i.cg = add nuw nsw i64 %i.cf, %i.at
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.ch = add nsw i32 %i.cc, -268435456
  %i.ci = zext i32 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, 28
  %i.ck = add nuw nsw i64 %i.cj, %i.at            ; 2 uses
  %i.cl = icmp samesign ugt i64 %.sroa.3.0.i.i.i.i, 8
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !100, !noalias !97, !noundef !6 ; 3 uses
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.cp = zext i32 %i.cc to i64
  %i.cq = shl nuw nsw i64 %i.cp, 28
  %i.cr = add nuw nsw i64 %i.cq, %i.at
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.cs = icmp samesign ugt i64 %.sroa.3.0.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !100, !noalias !97, !noundef !6 ; 2 uses
  %i.cv = icmp ult i8 %i.cu, 2
  br i1 %i.cv, label %bb.w, label %bb.y

bb.v:                                             ; preds = %bb.s
  %i.cw = zext nneg i8 %i.cn to i64
  %i.cx = shl nuw nsw i64 %i.cw, 56
  %i.cy = add nuw i64 %i.cx, %i.ck
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.cz = and i8 %i.cn, 127
  %i.da = shl nuw i8 %i.cu, 7
  %i.db = or disjoint i8 %i.da, %i.cz
  %i.dc = zext i8 %i.db to i64
  %i.dd = shl nuw i64 %i.dc, 56
  %i.de = add i64 %i.dd, %i.ck
  br label %bb.z

bb.x:                                             ; preds = %bb.e
  %i.df = getelementptr i8, ptr %i.h, i64 %.sroa.3.0.i.i.i.i
  %i.dg = getelementptr i8, ptr %i.df, i64 -1
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !97, !noundef !6
  %i.di = icmp sgt i8 %i.dh, -1
  br i1 %i.di, label %bb.f, label %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13decode_varintQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant.exit, !prof !15

bb.y:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !101
  store i64 -9223372036854775807, ptr %i.d, align 8, !noalias !101
  %i.dj = call noundef nonnull align 8 ptr @_RNvXs1_NtCs4J2qyOfMFpM_5prost5errorNtB5_11DecodeErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d), !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !101
  br label %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13decode_varintQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant.exit.thread

bb.z:                                             ; preds = %bb.w, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h
  %.sroa.18.0.ph.i = phi i64 [ 10, %bb.w ], [ 9, %bb.v ], [ 8, %bb.t ], [ 7, %bb.r ], [ 6, %bb.p ], [ 5, %bb.n ], [ 4, %bb.l ], [ 3, %bb.j ], [ 2, %bb.h ] ; 5 uses
  %.sroa.5.0.ph.i = phi i64 [ %i.de, %bb.w ], [ %i.cy, %bb.v ], [ %i.cr, %bb.t ], [ %i.cg, %bb.r ], [ %i.bv, %bb.p ], [ %i.bk, %bb.n ], [ %i.ay, %bb.l ], [ %i.ar, %bb.j ], [ %i.ai, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %.not.i.i.i8.i = icmp ugt i64 %.sroa.18.0.ph.i, %.val1.i.i.i
  br i1 %.not.i.i.i8.i, label %bb.aa, label %bb.ab, !prof !8

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #22, !noalias !103
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !103
  store i64 %.sroa.18.0.ph.i, ptr %i.c, align 8, !noalias !104
  %.not.i.i.i.i9.i = icmp ugt i64 %.sroa.18.0.ph.i, %i.j
  br i1 %.not.i.i.i.i9.i, label %bb.ac, label %_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit12.i, !prof !8

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !104
  store i64 %i.j, ptr %i.b, align 8, !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104
  store ptr %i.c, ptr %i.a, align 8, !noalias !104
  %.sroa.42.0..sroa_idx.i.i.i.i10.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i10.i, align 8, !noalias !104
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.dk, align 8, !noalias !104
  %.sroa.46.0..sroa_idx.i.i.i.i11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i11.i, align 8, !noalias !104
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @68, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #22, !noalias !104
  unreachable

_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit12.i: ; preds = %bb.ab
  tail call void @_RNvMs_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB4_8BytesMut17advance_unchecked(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i.i, i64 noundef %.sroa.18.0.ph.i), !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !103
  %i.dl = sub nuw i64 %.val1.i.i.i, %.sroa.18.0.ph.i
  store i64 %i.dl, ptr %i.g, align 8, !alias.scope !102, !noalias !97
  br label %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13decode_varintQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant.exit.thread11

_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13decode_varintQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.x
  %i.dm = tail call { i64, ptr } @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint18decode_varint_slowQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2) #21 ; 2 uses
  %i.dn = extractvalue { i64, ptr } %i.dm, 0
  %i.do = extractvalue { i64, ptr } %i.dm, 1      ; 2 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = trunc nuw i64 %i.dn to i1
  br i1 %i.dq, label %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13decode_varintQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant.exit.thread, label %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13decode_varintQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant.exit.thread11

bb.ad:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %0, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  store i8 0, ptr %i.ds, align 1
  store i64 -9223372036854775803, ptr %i.f, align 8
  %i.dt = call noundef nonnull align 8 ptr @_RNvXs1_NtCs4J2qyOfMFpM_5prost5errorNtB5_11DecodeErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13decode_varintQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant.exit.thread

_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13decode_varintQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant.exit.thread11: ; preds = %_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit.i, %_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit12.i, %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13decode_varintQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant.exit
  %.sroa.6.0.i14 = phi i64 [ %i.dp, %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13decode_varintQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant.exit ], [ %i.q, %_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit.i ], [ %.sroa.5.0.ph.i, %_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit12.i ]
  store i64 %.sroa.6.0.i14, ptr %1, align 8
  br label %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13decode_varintQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant.exit.thread

_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13decode_varintQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.y, %bb.c, %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13decode_varintQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant.exit, %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13decode_varintQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant.exit.thread11, %bb.ad
  %.sroa.0.0 = phi ptr [ %i.dt, %bb.ad ], [ null, %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13decode_varintQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant.exit.thread11 ], [ %i.do, %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13decode_varintQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant.exit ], [ %i.dj, %bb.y ], [ %i.l, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding5int646encodeNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsl8OoimOLbh_6qdrant(i32 noundef %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %0, 3
  %i.b = zext i32 %i.a to i64
  %.val1 = load ptr, ptr %2, align 8              ; 2 uses
  tail call fastcc void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13encode_varintNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsl8OoimOLbh_6qdrant(i64 noundef %i.b, ptr %.val1) #20
  %i.c = load i64, ptr %1, align 8, !noundef !6
  tail call fastcc void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13encode_varintNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsl8OoimOLbh_6qdrant(i64 noundef %i.c, ptr %.val1) #20
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13encode_varintNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsl8OoimOLbh_6qdrant(i64 noundef %0, ptr %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 36 uses
  %i.c = icmp ult i64 %0, 128
  br i1 %i.c, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.03.lcssa = phi i64 [ %0, %bb.a ], [ %i.g, %bb.b ], [ %i.k, %bb.c ], [ %i.o, %bb.d ], [ %i.s, %bb.e ], [ %i.w, %bb.f ], [ %i.aa, %bb.g ], [ %i.ae, %bb.h ], [ %i.ai, %bb.i ], [ 1, %bb.j ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = trunc nuw nsw i64 %.sroa.0.03.lcssa to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.d, ptr %i.a, align 1
  call void @_RNvXs2_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = trunc i64 %0 to i8
  %i.f = or i8 %i.e, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.f, ptr %i.b, align 1
  call void @_RNvXs2_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = lshr i64 %0, 7                           ; 2 uses
  %i.h = icmp ult i64 %0, 16384
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %i.g to i8
  %i.j = or i8 %i.i, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.j, ptr %i.b, align 1
  call void @_RNvXs2_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = lshr i64 %0, 14                          ; 2 uses
  %i.l = icmp ult i64 %0, 2097152
  br i1 %i.l, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc i64 %i.k to i8
  %i.n = or i8 %i.m, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.n, ptr %i.b, align 1
  call void @_RNvXs2_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = lshr i64 %0, 21                          ; 2 uses
  %i.p = icmp ult i64 %0, 268435456
  br i1 %i.p, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = trunc i64 %i.o to i8
  %i.r = or i8 %i.q, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.r, ptr %i.b, align 1
  call void @_RNvXs2_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = lshr i64 %0, 28                          ; 2 uses
  %i.t = icmp ult i64 %0, 34359738368
  br i1 %i.t, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = trunc i64 %i.s to i8
  %i.v = or i8 %i.u, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.v, ptr %i.b, align 1
  call void @_RNvXs2_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = lshr i64 %0, 35                          ; 2 uses
  %i.x = icmp ult i64 %0, 4398046511104
  br i1 %i.x, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = trunc i64 %i.w to i8
  %i.z = or i8 %i.y, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.z, ptr %i.b, align 1
  call void @_RNvXs2_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aa = lshr i64 %0, 42                         ; 2 uses
  %i.ab = icmp ult i64 %0, 562949953421312
  br i1 %i.ab, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = trunc i64 %i.aa to i8
  %i.ad = or i8 %i.ac, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.ad, ptr %i.b, align 1
  call void @_RNvXs2_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = lshr i64 %0, 49                         ; 2 uses
  %i.af = icmp ult i64 %0, 72057594037927936
  br i1 %i.af, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = trunc i64 %i.ae to i8
  %i.ah = or i8 %i.ag, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.ah, ptr %i.b, align 1
  call void @_RNvXs2_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = lshr i64 %0, 56                         ; 2 uses
  %i.aj = icmp sgt i64 %0, -1
  br i1 %i.aj, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = trunc nuw i64 %i.ai to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.ak, ptr %i.b, align 1
  call void @_RNvXs2_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvNtNtCskQk6bzzE9jJ_5prost8encoding5int645mergeQRShECsl8OoimOLbh_6qdrant(i8 noundef range(i8 0, 6) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 0, ptr %i.d, align 1
  store i8 %0, ptr %i.c, align 1
  %.not.i = icmp eq i8 %0, 0
  br i1 %.not.i, label %bb.b, label %_RNvNtCskQk6bzzE9jJ_5prost8encoding15check_wire_type.exit, !prof !15

_RNvNtCskQk6bzzE9jJ_5prost8encoding15check_wire_type.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsa_NtCskQk6bzzE9jJ_5prost8encodingNtB5_8WireTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.e, align 8
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsa_NtCskQk6bzzE9jJ_5prost8encodingNtB5_8WireTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @54, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = call noundef nonnull align 8 ptr @_RINvMNtCskQk6bzzE9jJ_5prost5errorNtB3_11DecodeError3newNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCskQk6bzzE9jJ_5prost8encoding13decode_varintQRShECsl8OoimOLbh_6qdrant.exit.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !114, !nonnull !6, !align !14, !noundef !6 ; 4 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !114, !nonnull !6, !noundef !6 ; 13 uses
  %i.g = getelementptr i8, ptr %.val.i, i64 8     ; 3 uses
  %.val1.i.i = load i64, ptr %i.g, align 8, !noalias !114, !noundef !6 ; 14 uses
  %i.h = icmp eq i64 %.val1.i.i, 0
  br i1 %i.h, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 ptr @_RINvMNtCskQk6bzzE9jJ_5prost5errorNtB3_11DecodeError3newReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 14), !noalias !114
  br label %_RINvNtCskQk6bzzE9jJ_5prost8encoding13decode_varintQRShECsl8OoimOLbh_6qdrant.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.j = load i8, ptr %.val.i.i, align 1, !noalias !114, !noundef !6 ; 3 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %.val1.i.i, 10
  br i1 %i.l, label %.thread.i, label %bb.x

_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.d
  %i.m = add i64 %.val1.i.i, -1
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1
  store ptr %i.n, ptr %.val.i, align 8, !alias.scope !115, !noalias !114, !captures !116
  store i64 %i.m, ptr %i.g, align 8, !alias.scope !115, !noalias !114
  %i.o = zext nneg i8 %i.j to i64
  br label %_RINvNtCskQk6bzzE9jJ_5prost8encoding13decode_varintQRShECsl8OoimOLbh_6qdrant.exit.thread15

bb.f:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.p = zext i8 %i.j to i32
  %i.q = add nsw i32 %i.p, -128
  %i.r = icmp ne i64 %.val1.i.i, 1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !117, !noalias !114, !noundef !6 ; 2 uses
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 7
  %i.w = or disjoint i32 %i.v, %i.q               ; 2 uses
  %i.x = icmp sgt i8 %i.t, -1
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.y = add nsw i32 %i.w, -16384
  %i.z = icmp samesign ugt i64 %.val1.i.i, 2
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !117, !noalias !114, !noundef !6 ; 2 uses
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 14
  %i.ae = or disjoint i32 %i.ad, %i.y             ; 2 uses
  %i.af = icmp sgt i8 %i.ab, -1
  br i1 %i.af, label %bb.j, label %bb.i

bb.h:                                             ; preds = %.thread.i
  %i.ag = zext nneg i32 %i.w to i64
  br label %_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit6.i

bb.i:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.ae, -2097152
  %i.ai = icmp samesign ugt i64 %.val1.i.i, 3
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !117, !noalias !114, !noundef !6 ; 2 uses
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 21
  %i.an = add nsw i32 %i.ah, %i.am                ; 2 uses
  %i.ao = icmp sgt i8 %i.ak, -1
end_hunk_0
begin_hunk_1_@_RNvNtCsl8OoimOLbh_6qdrant9snapshots21recover_full_snapshot:bb.a
bb.fq:                                            ; preds = %.body53.thread
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba) #17
          to label %.critedge unwind label %bb.fp

bb.fr:                                            ; preds = %.body90
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bg) #17
          to label %.body58 unwind label %bb.fp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB1v_EECsl8OoimOLbh_6qdrant.exit: ; preds = %.body58
  %i.kd = trunc nuw i8 %.sroa.08.0 to i1
  br i1 %i.kd, label %bb.fs, label %.body

bb.fs:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB1v_EECsl8OoimOLbh_6qdrant.exit
  %i.ke = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ke)
          to label %.body unwind label %bb.fp
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs6EFb6a2W5dE_10actix_http6header6shared12quality_itemINtB5_11QualityItemINtNtNtNtCsgoPClq0H8JF_9actix_web4http6header10preference10PreferenceNtNtB1r_8encoding8EncodingEENtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.12 = alloca [7 x i8], align 1            ; 5 uses
  %i.c = icmp samesign ult i64 %2, 64
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %2, 9223372036854775744
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 3 uses
  %i.f = and i64 %2, 63                           ; 2 uses
  br label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 64 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %.sroa.01.028.i.i = phi ptr [ %i.g, %bb.c ], [ %1, %bb.b ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i, align 1, !alias.scope !370, !noalias !371
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 16
  %.sroa.0.0.copyload.i9.i.i = load <2 x i64>, ptr %i.i, align 1, !alias.scope !370, !noalias !372
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 32
  %.sroa.0.0.copyload.i10.i.i = load <2 x i64>, ptr %i.j, align 1, !alias.scope !370, !noalias !373
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 48
  %.sroa.0.0.copyload.i11.i.i = load <2 x i64>, ptr %i.k, align 1, !alias.scope !370, !noalias !374
  %i.l = or <2 x i64> %.sroa.0.0.copyload.i9.i.i, %.sroa.0.0.copyload.i.i.i
  %i.m = or <2 x i64> %i.l, %.sroa.0.0.copyload.i10.i.i
  %i.n = or <2 x i64> %i.m, %.sroa.0.0.copyload.i11.i.i
  %i.o = bitcast <2 x i64> %i.n to <16 x i8>
  %i.p = icmp slt <16 x i8> %i.o, zeroinitializer
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %bb.c, label %.loopexit191

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.t = icmp samesign eq i64 %i.f, 0
  br i1 %i.t, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.s
  br i1 %i.v, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i, %bb.d
  %i.w = phi ptr [ %i.u, %bb.d ], [ %i.e, %._crit_edge.i.i ] ; 2 uses
  %.val.i.i.i = load i8, ptr %i.w, align 1, !alias.scope !370, !noalias !375, !noundef !6
  %i.x = icmp sgt i8 %.val.i.i.i, -1
  br i1 %i.x, label %bb.d, label %.loopexit191

bb.e:                                             ; preds = %bb.a
  %i.y = and i64 %2, 56                           ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y ; 8 uses
  %i.aa = and i64 %2, 7                           ; 7 uses
  %i.ab = icmp samesign eq i64 %i.y, 0
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.01.09.i, i64 8 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.z
  br i1 %i.ad, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.sroa.01.09.i = phi ptr [ %i.ac, %bb.f ], [ %1, %bb.e ] ; 2 uses
  %.sroa.03.0.copyload.i = load i64, ptr %.sroa.01.09.i, align 1, !alias.scope !376
  %i.ae = and i64 %.sroa.03.0.copyload.i, -9187201950435737472
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.f, label %.loopexit191

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  %i.ag = icmp samesign eq i64 %i.aa, 0
  br i1 %i.ag, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.lr.ph218

bb.g:                                             ; preds = %.lr.ph218
  %i.ah = icmp samesign eq i64 %i.aa, 1
  br i1 %i.ah, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.lr.ph218.1

.lr.ph218.1:                                      ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %.val.i.i.1 = load i8, ptr %i.ai, align 1, !alias.scope !376, !noalias !377, !noundef !6
  %i.aj = icmp sgt i8 %.val.i.i.1, -1
  br i1 %i.aj, label %bb.h, label %.loopexit191

bb.h:                                             ; preds = %.lr.ph218.1
  %i.ak = icmp samesign eq i64 %i.aa, 2
  br i1 %i.ak, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.lr.ph218.2

.lr.ph218.2:                                      ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %.val.i.i.2 = load i8, ptr %i.al, align 1, !alias.scope !376, !noalias !377, !noundef !6
  %i.am = icmp sgt i8 %.val.i.i.2, -1
  br i1 %i.am, label %bb.i, label %.loopexit191

bb.i:                                             ; preds = %.lr.ph218.2
  %i.an = icmp samesign eq i64 %i.aa, 3
  br i1 %i.an, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.lr.ph218.3

.lr.ph218.3:                                      ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %.val.i.i.3 = load i8, ptr %i.ao, align 1, !alias.scope !376, !noalias !377, !noundef !6
  %i.ap = icmp sgt i8 %.val.i.i.3, -1
  br i1 %i.ap, label %bb.j, label %.loopexit191

bb.j:                                             ; preds = %.lr.ph218.3
  %i.aq = icmp samesign eq i64 %i.aa, 4
  br i1 %i.aq, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.lr.ph218.4

.lr.ph218.4:                                      ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.val.i.i.4 = load i8, ptr %i.ar, align 1, !alias.scope !376, !noalias !377, !noundef !6
  %i.as = icmp sgt i8 %.val.i.i.4, -1
  br i1 %i.as, label %bb.k, label %.loopexit191

bb.k:                                             ; preds = %.lr.ph218.4
  %i.at = icmp samesign eq i64 %i.aa, 5
  br i1 %i.at, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.lr.ph218.5

.lr.ph218.5:                                      ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 5
  %.val.i.i.5 = load i8, ptr %i.au, align 1, !alias.scope !376, !noalias !377, !noundef !6
  %i.av = icmp sgt i8 %.val.i.i.5, -1
  br i1 %i.av, label %bb.l, label %.loopexit191

bb.l:                                             ; preds = %.lr.ph218.5
  %i.aw = icmp samesign eq i64 %i.aa, 6
  br i1 %i.aw, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.lr.ph218.6

.lr.ph218.6:                                      ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %.val.i.i.6 = load i8, ptr %i.ax, align 1, !alias.scope !376, !noalias !377, !noundef !6
  %i.ay = icmp sgt i8 %.val.i.i.6, -1
  br i1 %i.ay, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, label %.loopexit191

_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader: ; preds = %bb.d, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %.lr.ph218.6, %._crit_edge.i.i, %._crit_edge.i
  br label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit

.lr.ph218:                                        ; preds = %._crit_edge.i
  %.val.i.i = load i8, ptr %i.z, align 1, !alias.scope !376, !noalias !377, !noundef !6
  %i.az = icmp sgt i8 %.val.i.i, -1
  br i1 %i.az, label %bb.g, label %.loopexit191

.loopexit191:                                     ; preds = %.lr.ph.i.i, %.lr.ph, %.lr.ph.i, %.lr.ph218, %.lr.ph218.1, %.lr.ph218.2, %.lr.ph218.3, %.lr.ph218.4, %.lr.ph218.5, %.lr.ph218.6
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.3.0..sroa_idx, align 8
  store i64 -3, ptr %0, align 8
  br label %bb.o

bb.m:                                             ; preds = %bb.n
  %.not.i.i = icmp ugt i64 %i.be, %2
  br i1 %.not.i.i, label %.loopexit, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit

_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit: ; preds = %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader, %bb.m
  %i.ba = phi i64 [ %i.be, %bb.m ], [ %2, %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.preheader ] ; 2 uses
  %i.bb = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr15memrchr_aligned(i8 noundef 59, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %i.ba), !noalias !378 ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.bb, 0
  %i.bd = trunc nuw i64 %i.bc to i1
  br i1 %i.bd, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit
  %i.be = extractvalue { i64, i64 } %i.bb, 1      ; 6 uses
  %i.bf = icmp ult i64 %i.be, %i.ba
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %i.be
  %lhsc.i = load i8, ptr %i.bg, align 1, !alias.scope !379
  %i.bh = icmp eq i8 %lhsc.i, 59
  br i1 %i.bh, label %bb.p, label %bb.m

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http5error10ParseErrorECsl8OoimOLbh_6qdrant.exit, %bb.aa, %bb.ad, %bb.ab, %bb.t, %_RNvXs0_NtNtNtCsgoPClq0H8JF_9actix_web4http6header10preferenceINtB5_10PreferenceNtNtB7_8encoding8EncodingENtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strCsl8OoimOLbh_6qdrant.exit.thread, %.loopexit191
  ret void

bb.p:                                             ; preds = %bb.n
  %i.bi = add nuw i64 %i.be, 1                    ; 2 uses
  %i.bj = sub nuw i64 %2, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi
  %i.bl = tail call { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %i.be) ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %i.bl, 0      ; 2 uses
  %i.bn = extractvalue { ptr, i64 } %i.bl, 1
  %i.bo = tail call { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bj) ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.bp = extractvalue { ptr, i64 } %i.bo, 0      ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  %3 = extractvalue { ptr, i64 } %i.bo, 1         ; 6 uses
  %i.bq = icmp ult i64 %3, 2
  br i1 %i.bq, label %bb.t, label %bb.s

.loopexit:                                        ; preds = %bb.m, %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit, %bb.x, %bb.ae
  %.sroa.060.0 = phi i16 [ %i.cy, %bb.ae ], [ 1000, %bb.x ], [ 1000, %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit ], [ 1000, %bb.m ]
  %.sroa.32.0 = phi i64 [ %i.bn, %bb.ae ], [ %2, %bb.x ], [ %2, %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit ], [ %2, %bb.m ]
  %.sroa.01.0 = phi ptr [ %i.bm, %bb.ae ], [ %1, %bb.x ], [ %1, %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit ], [ %1, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.br = tail call { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0, i64 noundef %.sroa.32.0), !noalias !380 ; 2 uses
  %i.bs = extractvalue { ptr, i64 } %i.br, 0      ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.br, 1      ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit
  %lhsc.i156 = load i8, ptr %i.bs, align 1, !noalias !380
  %i.bv = icmp eq i8 %lhsc.i156, 42
  br i1 %i.bv, label %_RNvXs0_NtNtNtCsgoPClq0H8JF_9actix_web4http6header10preferenceINtB5_10PreferenceNtNtB7_8encoding8EncodingENtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strCsl8OoimOLbh_6qdrant.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !381
  call void @_RNvXs0_NtNtNtCsgoPClq0H8JF_9actix_web4http6header8encodingNtB5_8EncodingNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef %i.bt), !noalias !380
  %i.bw = load i64, ptr %i.b, align 8, !range !382, !noalias !381, !noundef !6 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, -2
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.8160.8.copyload161 = load i64, ptr %i.by, align 8, !noalias !383 ; 4 uses
  %.sroa.11.8..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.11.8.copyload163 = load i8, ptr %.sroa.11.8..sroa_idx162, align 8, !noalias !383 ; 2 uses
  br i1 %i.bx, label %bb.af, label %_RNvXs0_NtNtNtCsgoPClq0H8JF_9actix_web4http6header10preferenceINtB5_10PreferenceNtNtB7_8encoding8EncodingENtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strCsl8OoimOLbh_6qdrant.exit

_RNvXs0_NtNtNtCsgoPClq0H8JF_9actix_web4http6header10preferenceINtB5_10PreferenceNtNtB7_8encoding8EncodingENtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.r
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx, i64 7, i1 false), !noalias !383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !381
  br label %_RNvXs0_NtNtNtCsgoPClq0H8JF_9actix_web4http6header10preferenceINtB5_10PreferenceNtNtB7_8encoding8EncodingENtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strCsl8OoimOLbh_6qdrant.exit.thread

bb.s:                                             ; preds = %bb.p
  %i.bz = icmp eq i64 %3, 2                       ; 2 uses
  br i1 %i.bz, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit: ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !384, !noundef !6
  %i.cc = icmp sgt i8 %i.cb, -65
  br i1 %i.cc, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %bb.u, !prof !385

bb.t:                                             ; preds = %bb.p
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.35.0..sroa_idx, align 8
  store i64 -3, ptr %0, align 8
  br label %bb.o

bb.u:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef %3, i64 noundef 0, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #22
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread: ; preds = %bb.s, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  %i.cd = load i16, ptr %i.bp, align 1
  %i.ce = icmp ne i16 %i.cd, 15729
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.x, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread
  br i1 %i.bz, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !386, !noundef !6
  %i.cj = icmp sgt i8 %i.ci, -65
  br i1 %i.cj, label %bb.y, label %bb.z

bb.x:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread
  %i.ck = load i16, ptr %i.bp, align 1
  %i.cl = icmp ne i16 %i.ck, 15697
  %i.cm = zext i1 %i.cl to i32
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.v, label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.co = add i64 %3, -2                          ; 2 uses
  %i.cp = icmp ugt i64 %i.co, 5
  br i1 %i.cp, label %bb.aa, label %.thread

bb.z:                                             ; preds = %bb.w
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef %3, i64 noundef 2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #22
  unreachable

.thread:                                          ; preds = %bb.v, %bb.y
  %i.cq = phi i64 [ %i.co, %bb.y ], [ 0, %bb.v ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.cs = tail call i64 @_RNvXs1_NtNtCskKLDkoKarTP_4core3num11float_parsefNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cq) #21 ; 2 uses
  %.sroa.5149.0.extract.shift = lshr i64 %i.cs, 32
  %.sroa.5149.0.extract.trunc = trunc nuw i64 %.sroa.5149.0.extract.shift to i32
  %i.ct = bitcast i32 %.sroa.5149.0.extract.trunc to float ; 3 uses
  %i.cu = trunc i64 %i.cs to i1
  br i1 %i.cu, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.38.0..sroa_idx, align 8
  store i64 -3, ptr %0, align 8
  br label %bb.o

bb.ab:                                            ; preds = %.thread
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.598.0..sroa_idx, align 8
  store i64 -3, ptr %0, align 8
  br label %bb.o

bb.ac:                                            ; preds = %.thread
  %i.cv = fcmp oge float %i.ct, 0.000000e+00
  %i.cw = fcmp ole float %i.ct, 1.000000e+00
  %spec.select.i = and i1 %i.cv, %i.cw
  br i1 %spec.select.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.5114.0..sroa_idx, align 8
  store i64 -3, ptr %0, align 8
  br label %bb.o

bb.ae:                                            ; preds = %bb.ac
  %i.cx = fmul nnan float %i.ct, 1.000000e+03
  %i.cy = tail call i16 @llvm.fptoui.sat.i16.f32(float %i.cx)
  br label %.loopexit

bb.af:                                            ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !381
  %i.cz = inttoptr i64 %.sroa.8160.8.copyload161 to ptr ; 2 uses
  %i.da = icmp eq i8 %.sroa.11.8.copyload163, 10
  br i1 %i.da, label %bb.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http5error10ParseErrorECsl8OoimOLbh_6qdrant.exit

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cz) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !387
  %i.db = and i64 %.sroa.8160.8.copyload161, 3
  switch i64 %i.db, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i
    i64 3, label %bb.ah
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i
    i64 1, label %bb.ai
  ], !prof !11

default.unreachable:                              ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.dc = icmp ult i64 %.sroa.8160.8.copyload161, 188978561024
  tail call void @llvm.assume(i1 %i.dc)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.dd = getelementptr i8, ptr %i.cz, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.dd, ptr %i.de, align 8, !alias.scope !388, !noalias !387
  store i8 3, ptr %i.a, align 8, !alias.scope !388, !noalias !387
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.de), !noalias !387
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !387
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http5error10ParseErrorECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6EFb6a2W5dE_10actix_http5error10ParseErrorECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.af, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.4145.0..sroa_idx, align 8
  store i64 -3, ptr %0, align 8
  br label %bb.o

_RNvXs0_NtNtNtCsgoPClq0H8JF_9actix_web4http6header10preferenceINtB5_10PreferenceNtNtB7_8encoding8EncodingENtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strCsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.q, %_RNvXs0_NtNtNtCsgoPClq0H8JF_9actix_web4http6header10preferenceINtB5_10PreferenceNtNtB7_8encoding8EncodingENtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strCsl8OoimOLbh_6qdrant.exit
  %.sroa.0159.1180 = phi i64 [ %i.bw, %_RNvXs0_NtNtNtCsgoPClq0H8JF_9actix_web4http6header10preferenceINtB5_10PreferenceNtNtB7_8encoding8EncodingENtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strCsl8OoimOLbh_6qdrant.exit ], [ -2, %bb.q ]
  %.sroa.8160.1179 = phi i64 [ %.sroa.8160.8.copyload161, %_RNvXs0_NtNtNtCsgoPClq0H8JF_9actix_web4http6header10preferenceINtB5_10PreferenceNtNtB7_8encoding8EncodingENtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strCsl8OoimOLbh_6qdrant.exit ], [ undef, %bb.q ]
  %.sroa.11.1178 = phi i8 [ %.sroa.11.8.copyload163, %_RNvXs0_NtNtNtCsgoPClq0H8JF_9actix_web4http6header10preferenceINtB5_10PreferenceNtNtB7_8encoding8EncodingENtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strCsl8OoimOLbh_6qdrant.exit ], [ undef, %bb.q ]
  %.sroa.471.sroa.5.0..sroa.471.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.471.sroa.5.0..sroa.471.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  store i64 %.sroa.0159.1180, ptr %0, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8160.1179, ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.471.sroa.4.0..sroa.471.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.11.1178, ptr %.sroa.471.sroa.4.0..sroa.471.0..sroa_idx.sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %.sroa.060.0, ptr %.sroa.572.0..sroa_idx, align 8
  br label %bb.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
end_hunk_1
