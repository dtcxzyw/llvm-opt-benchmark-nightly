Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_webrtc-46423433e7cd39fc.libp2p_webrtc.37636298509d9d5c-cgu.11?download=true
inline.NumInlined: 1545
inline.NumDeleted: 637
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint13decode_varintQRShECs4KPtkQIfQGm_13libp2p_webrtc:bb.a
  br i1 %i.cj, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.ck = zext i32 %i.bx to i64
  %i.cl = shl nuw nsw i64 %i.ck, 28
  %i.cm = add nuw nsw i64 %i.cl, %i.ao
  br label %_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4KPtkQIfQGm_13libp2p_webrtc.exit6

bb.t:                                             ; preds = %bb.r
  %i.cn = icmp samesign ugt i64 %.val1.i, 9
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i, i64 9
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !1411, !noalias !1412, !noundef !9 ; 2 uses
  %i.cq = icmp ult i8 %i.cp, 2
  br i1 %i.cq, label %bb.v, label %bb.y

bb.u:                                             ; preds = %bb.r
  %i.cr = zext nneg i8 %i.ci to i64
  %i.cs = shl nuw nsw i64 %i.cr, 56
  %i.ct = add nuw i64 %i.cs, %i.cf
  br label %_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4KPtkQIfQGm_13libp2p_webrtc.exit6

bb.v:                                             ; preds = %bb.t
  %i.cu = and i8 %i.ci, 127
  %i.cv = shl nuw i8 %i.cp, 7
  %i.cw = or disjoint i8 %i.cv, %i.cu
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl nuw i64 %i.cx, 56
  %i.cz = add i64 %i.cy, %i.cf
  br label %_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4KPtkQIfQGm_13libp2p_webrtc.exit6

bb.w:                                             ; preds = %bb.d
  %i.da = getelementptr i8, ptr %.val.i, i64 %.val1.i
  %i.db = getelementptr i8, ptr %i.da, i64 -1
  %i.dc = load i8, ptr %i.db, align 1, !noundef !9
  %i.dd = icmp sgt i8 %i.dc, -1
  br i1 %i.dd, label %bb.e, label %bb.x, !prof !16

bb.x:                                             ; preds = %bb.w
  %i.de = tail call { i64, ptr } @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint18decode_varint_slowQRShECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #40 ; 2 uses
  %i.df = extractvalue { i64, ptr } %i.de, 0
  %i.dg = extractvalue { i64, ptr } %i.de, 1
  %i.dh = ptrtoint ptr %i.dg to i64
  br label %bb.z

bb.y:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1413
  store i64 -9223372036854775807, ptr %i.a, align 8, !noalias !1413
  %i.di = call noundef nonnull align 8 ptr @_RNvXs1_NtCsbZN1VVVQjZP_5prost5errorNtB5_11DecodeErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a), !noalias !1413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1413
  %i.dj = ptrtoint ptr %i.di to i64
  br label %bb.z

_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4KPtkQIfQGm_13libp2p_webrtc.exit6: ; preds = %bb.m, %bb.o, %bb.q, %bb.s, %bb.v, %bb.u, %bb.k, %bb.i, %bb.g
  %.sroa.18.0.ph = phi i64 [ 10, %bb.v ], [ 9, %bb.u ], [ 8, %bb.s ], [ 7, %bb.q ], [ 6, %bb.o ], [ 5, %bb.m ], [ 4, %bb.k ], [ 3, %bb.i ], [ 2, %bb.g ] ; 2 uses
  %.sroa.5.0.ph = phi i64 [ %i.cz, %bb.v ], [ %i.ct, %bb.u ], [ %i.cm, %bb.s ], [ %i.cb, %bb.q ], [ %i.bq, %bb.o ], [ %i.bf, %bb.m ], [ %i.at, %bb.k ], [ %i.am, %bb.i ], [ %i.ad, %bb.g ]
  %i.dk = sub nuw i64 %.val1.i, %.sroa.18.0.ph
  %i.dl = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.18.0.ph
  store ptr %i.dl, ptr %.val, align 8, !alias.scope !1414, !captures !19
  store i64 %i.dk, ptr %i.c, align 8, !alias.scope !1414
  br label %bb.z

bb.z:                                             ; preds = %_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4KPtkQIfQGm_13libp2p_webrtc.exit, %_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4KPtkQIfQGm_13libp2p_webrtc.exit6, %bb.x, %bb.b, %bb.y
  %.sroa.6.0 = phi i64 [ %i.f, %bb.b ], [ %i.l, %_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4KPtkQIfQGm_13libp2p_webrtc.exit ], [ %i.dj, %bb.y ], [ %.sroa.5.0.ph, %_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4KPtkQIfQGm_13libp2p_webrtc.exit6 ], [ %i.dh, %bb.x ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4KPtkQIfQGm_13libp2p_webrtc.exit ], [ 1, %bb.y ], [ 0, %_RNvXNtNtCs1eA6bChxBZF_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4KPtkQIfQGm_13libp2p_webrtc.exit6 ], [ %i.df, %bb.x ]
  %i.dm = inttoptr i64 %.sroa.6.0 to ptr
  %i.dn = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.do = insertvalue { i64, ptr } %i.dn, ptr %i.dm, 1
  ret { i64, ptr } %i.do
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint13encode_varintNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs4KPtkQIfQGm_13libp2p_webrtc(i64 noundef range(i64 -2147483648, -9223372036854775808) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 36 uses
  %i.c = icmp ult i64 %0, 128
  br i1 %i.c, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.08.lcssa = phi i64 [ %0, %bb.a ], [ %i.g, %bb.b ], [ %i.k, %bb.c ], [ %i.o, %bb.d ], [ %i.s, %bb.e ], [ %i.w, %bb.f ], [ %i.aa, %bb.g ], [ %i.ae, %bb.h ], [ %i.ai, %bb.i ], [ 1, %bb.j ]
  %i.d = trunc nuw nsw i64 %.sroa.0.08.lcssa to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1419
  store i8 %i.d, ptr %i.a, align 1, !noalias !1419
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1419
  ret void

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %0 to i8
  %i.f = or i8 %i.e, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1420
  store i8 %i.f, ptr %i.b, align 1, !noalias !1420
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1420
  %i.g = lshr i64 %0, 7                           ; 2 uses
  %i.h = icmp ult i64 %0, 16384
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %i.g to i8
  %i.j = or i8 %i.i, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1420
  store i8 %i.j, ptr %i.b, align 1, !noalias !1420
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1420
  %i.k = lshr i64 %0, 14                          ; 2 uses
  %i.l = icmp ult i64 %0, 2097152
  br i1 %i.l, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc i64 %i.k to i8
  %i.n = or i8 %i.m, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1420
  store i8 %i.n, ptr %i.b, align 1, !noalias !1420
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1420
  %i.o = lshr i64 %0, 21                          ; 2 uses
  %i.p = icmp ult i64 %0, 268435456
  br i1 %i.p, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = trunc i64 %i.o to i8
  %i.r = or i8 %i.q, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1420
  store i8 %i.r, ptr %i.b, align 1, !noalias !1420
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1420
  %i.s = lshr i64 %0, 28                          ; 2 uses
  %i.t = icmp ult i64 %0, 34359738368
  br i1 %i.t, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = trunc i64 %i.s to i8
  %i.v = or i8 %i.u, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1420
  store i8 %i.v, ptr %i.b, align 1, !noalias !1420
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1420
  %i.w = lshr i64 %0, 35                          ; 2 uses
  %i.x = icmp ult i64 %0, 4398046511104
  br i1 %i.x, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = trunc i64 %i.w to i8
  %i.z = or i8 %i.y, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1420
  store i8 %i.z, ptr %i.b, align 1, !noalias !1420
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1420
  %i.aa = lshr i64 %0, 42                         ; 2 uses
  %i.ab = icmp ult i64 %0, 562949953421312
  br i1 %i.ab, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = trunc i64 %i.aa to i8
  %i.ad = or i8 %i.ac, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1420
  store i8 %i.ad, ptr %i.b, align 1, !noalias !1420
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1420
  %i.ae = lshr i64 %0, 49                         ; 2 uses
  %i.af = icmp ult i64 %0, 72057594037927936
  br i1 %i.af, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = trunc i64 %i.ae to i8
  %i.ah = or i8 %i.ag, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1420
  store i8 %i.ah, ptr %i.b, align 1, !noalias !1420
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1420
  %i.ai = lshr i64 %0, 56                         ; 2 uses
  %i.aj = icmp sgt i64 %0, -1
  br i1 %i.aj, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = trunc nuw i64 %i.ai to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1420
  store i8 %i.ak, ptr %i.b, align 1, !noalias !1420
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1420
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMs3_NtCshnIq71uePFX_11webrtc_sctp11associationNtB1e_11Association10write_loop0s_0INtNtCskKLDkoKarTP_4core6result6ResultNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtB1g_5error5ErrorEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsc13h7DQFCSE_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 3 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1443 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  %2 = shl nuw nsw i64 %i.i, 4
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %2 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 528 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1443, !noundef !9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 536
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1443
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1443, !nonnull !9, !noundef !9
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1443, !nonnull !9, !align !14, !noundef !9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1443
  invoke void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMs3_NtCshnIq71uePFX_11webrtc_sctp11associationNtB1y_11Association10write_loop0s_0ENtNtBR_8schedule16BlockingScheduleECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1443, !nonnull !9, !noundef !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1443, !nonnull !9, !noundef !9 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1443
  store ptr %i.w, ptr %i.c, align 8, !noalias !1443
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs3_NtCshnIq71uePFX_11webrtc_sctp11associationNtB1B_11Association10write_loop0s_0INtNtCskKLDkoKarTP_4core6result6ResultNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtB1D_5error5ErrorEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.i, !noalias !1444 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtCshnIq71uePFX_11webrtc_sctp5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1444

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #39, !noalias !1444
  unreachable

_RINvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs3_NtCshnIq71uePFX_11webrtc_sctp11associationNtB1B_11Association10write_loop0s_0INtNtCskKLDkoKarTP_4core6result6ResultNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtB1D_5error5ErrorEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1445
  store ptr %i.w, ptr %i.f, align 8, !noalias !1445
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !34

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs3_NtCshnIq71uePFX_11webrtc_sctp11associationNtB1B_11Association10write_loop0s_0INtNtCskKLDkoKarTP_4core6result6ResultNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtB1D_5error5ErrorEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1445
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1445
  store ptr %i.e, ptr %i.d, align 8, !noalias !1445
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1445
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #37
          to label %bb.m unwind label %bb.l, !noalias !1446

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %bb.o unwind label %bb.n, !noalias !1446

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #39, !noalias !1446
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtCshnIq71uePFX_11webrtc_sctp5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1446

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime6handle6HandleECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #38
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs3_NtCshnIq71uePFX_11webrtc_sctp11associationNtB1B_11Association10write_loop0s_0INtNtCskKLDkoKarTP_4core6result6ResultNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutNtNtB1D_5error5ErrorEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1445
  call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  %i.ag = load i64, ptr %i.g, align 8, !range !10, !alias.scope !1449, !noundef !9
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1452, !nonnull !9, !noundef !9
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1452
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime6handle6HandleECs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #40
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime6handle6HandleECs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1455, !nonnull !9, !noundef !9
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1455
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime6handle6HandleECs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #40
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime6handle6HandleECs4KPtkQIfQGm_13libp2p_webrtc.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime6handle6HandleECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #39
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMs3_NtCshnIq71uePFX_11webrtc_sctp11associationNtBL_11Association10write_loop0s_0ECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(64) %0) #38
          to label %.thread unwind label %bb.v
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eager7destroyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef initializes((72, 73)) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 2, ptr %i.a, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  %i.c = load i64, ptr %i.b, align 8, !range !8, !alias.scope !1481, !noundef !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE0ECs4KPtkQIfQGm_13libp2p_webrtc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !1485, !nonnull !9, !noundef !9
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !1485
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE0ECs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #40
          to label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE0ECs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !1488, !nonnull !9, !noundef !9
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !1488
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE0ECs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #40
          to label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE0ECs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
end_hunk_0
