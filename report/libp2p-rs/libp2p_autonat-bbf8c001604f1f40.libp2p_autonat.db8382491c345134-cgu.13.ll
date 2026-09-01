Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_autonat-bbf8c001604f1f40.libp2p_autonat.db8382491c345134-cgu.13?download=true
inline.NumInlined: 233
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v29generated7structs16DialDataResponseEBJ_:bb.a

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsiQsUuLk7hWW_14libp2p_autonat.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiQsUuLk7hWW_14libp2p_autonat.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint13encode_varintNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECsiQsUuLk7hWW_14libp2p_autonat(i64 noundef %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 36 uses
  %i.c = icmp ult i64 %0, 128
  br i1 %i.c, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.08.lcssa = phi i64 [ %0, %bb.a ], [ %i.g, %bb.b ], [ %i.k, %bb.c ], [ %i.o, %bb.d ], [ %i.s, %bb.e ], [ %i.w, %bb.f ], [ %i.aa, %bb.g ], [ %i.ae, %bb.h ], [ %i.ai, %bb.i ], [ 1, %bb.j ]
  %i.d = trunc nuw nsw i64 %.sroa.0.08.lcssa to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !174
  store i8 %i.d, ptr %i.a, align 1, !noalias !174
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !174
  ret void

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %0 to i8
  %i.f = or i8 %i.e, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !177
  store i8 %i.f, ptr %i.b, align 1, !noalias !177
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !177
  %i.g = lshr i64 %0, 7                           ; 2 uses
  %i.h = icmp ult i64 %0, 16384
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %i.g to i8
  %i.j = or i8 %i.i, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !177
  store i8 %i.j, ptr %i.b, align 1, !noalias !177
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !177
  %i.k = lshr i64 %0, 14                          ; 2 uses
  %i.l = icmp ult i64 %0, 2097152
  br i1 %i.l, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc i64 %i.k to i8
  %i.n = or i8 %i.m, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !177
  store i8 %i.n, ptr %i.b, align 1, !noalias !177
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !177
  %i.o = lshr i64 %0, 21                          ; 2 uses
  %i.p = icmp ult i64 %0, 268435456
  br i1 %i.p, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = trunc i64 %i.o to i8
  %i.r = or i8 %i.q, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !177
  store i8 %i.r, ptr %i.b, align 1, !noalias !177
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !177
  %i.s = lshr i64 %0, 28                          ; 2 uses
  %i.t = icmp ult i64 %0, 34359738368
  br i1 %i.t, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = trunc i64 %i.s to i8
  %i.v = or i8 %i.u, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !177
  store i8 %i.v, ptr %i.b, align 1, !noalias !177
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !177
  %i.w = lshr i64 %0, 35                          ; 2 uses
  %i.x = icmp ult i64 %0, 4398046511104
  br i1 %i.x, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = trunc i64 %i.w to i8
  %i.z = or i8 %i.y, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !177
  store i8 %i.z, ptr %i.b, align 1, !noalias !177
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !177
  %i.aa = lshr i64 %0, 42                         ; 2 uses
  %i.ab = icmp ult i64 %0, 562949953421312
  br i1 %i.ab, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = trunc i64 %i.aa to i8
  %i.ad = or i8 %i.ac, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !177
  store i8 %i.ad, ptr %i.b, align 1, !noalias !177
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !177
  %i.ae = lshr i64 %0, 49                         ; 2 uses
  %i.af = icmp ult i64 %0, 72057594037927936
  br i1 %i.af, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = trunc i64 %i.ae to i8
  %i.ah = or i8 %i.ag, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !177
  store i8 %i.ah, ptr %i.b, align 1, !noalias !177
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !177
  %i.ai = lshr i64 %0, 56                         ; 2 uses
  %i.aj = icmp sgt i64 %0, -1
  br i1 %i.aj, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = trunc nuw i64 %i.ai to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !177
  store i8 %i.ak, ptr %i.b, align 1, !noalias !177
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !177
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding7fixed645mergeQRShECsiQsUuLk7hWW_14libp2p_autonat(i8 noundef range(i8 0, 6) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %.not = icmp eq i8 %0, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !nonnull !6, !align !118, !noundef !6 ; 2 uses
  %i.c = getelementptr i8, ptr %.val, i64 8
  %.val.i = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = icmp ult i64 %.val.i, 8
  br i1 %i.d, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 1, ptr %i.f, align 1
  store i64 -9223372036854775802, ptr %i.a, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvXs1_NtCsbZN1VVVQjZP_5prost5errorNtB5_11DecodeErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvYRShNtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf10get_u64_leCsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val)
  store i64 %i.h, ptr %1, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775801, ptr %i.b, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvXs1_NtCsbZN1VVVQjZP_5prost5errorNtB5_11DecodeErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.e ], [ null, %bb.d ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding7fixed646encodeNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECsiQsUuLk7hWW_14libp2p_autonat(i32 noundef %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = shl i32 %0, 3
  %i.c = or disjoint i32 %i.b, 1
  %i.d = zext i32 %i.c to i64
  tail call fastcc void @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding6varint13encode_varintNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECsiQsUuLk7hWW_14libp2p_autonat(i64 noundef %i.d, ptr noalias nofree noundef align 8 dereferenceable(32) %2) #21
  %i.e = load i64, ptr %1, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !180
  store i64 %i.e, ptr %i.a, align 8, !noalias !180
  call void @_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !180
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VechEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1g_8adapters3map12map_try_foldBX_BX_uINtNtNtB1i_3ops12control_flow11ControlFlowIB31_NtCsbli3iz7XG76_9multiaddr9MultiaddrEENCNvXs4_NtNtCsiQsUuLk7hWW_14libp2p_autonat2v28protocolNtB4v_7RequestINtNtB1i_7convert7TryFromNtNtNtB4x_9generated7structs7MessageE8try_from0NCIB2i_BX_INtNtB1i_6result6ResultB3L_NtNtNtB1i_2io5error5ErrorEuB30_NCB4p_s_0NCINvXB2m_INtB2m_12GenericShuntINtB2k_3MapIB8o_BI_B4n_EB7J_EIB6O_zB7e_EEB1a_8try_folduNCINvNvB1a_12try_for_each4callB3L_B3G_NcNtB3G_5Break0E0B3G_E0E0E0B30_EB4z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 2 uses
  %.sroa.4 = alloca ptr, align 8                  ; 5 uses
  %.sroa.7 = alloca ptr, align 8                  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.not = icmp eq ptr %i.l, %i.j
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.m, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.n, align 8             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !188, !noalias !191, !nonnull !6, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !188, !noalias !191, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !193
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.r, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.d unwind label %bb.c, !noalias !193

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #20
          to label %common.resume.i unwind label %bb.l, !noalias !191

bb.d:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.g, align 8, !range !194, !noalias !193, !noundef !6
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !195, !noalias !193, !noundef !6 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.f, !prof !196

bb.e:                                             ; preds = %bb.d
  %i.y = load i64, ptr %i.x, align 8, !noalias !193
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #23
          to label %bb.k unwind label %bb.c, !noalias !193

bb.f:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.x, align 8, !noalias !193, !nonnull !6, !noundef !6 ; 2 uses
  %i.aa = icmp ule i64 %i.r, %i.w
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !193
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.j, %bb.f
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNCNvXs4_NtNtCsiQsUuLk7hWW_14libp2p_autonat2v28protocolNtB7_7RequestINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB9_9generated7structs7MessageE8try_from0Bb_.exit.i unwind label %bb.h, !noalias !191

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume.i unwind label %bb.i, !noalias !191

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !191
  unreachable

common.resume.i:                                  ; preds = %bb.u, %bb.n, %bb.h, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.ab, %bb.h ], [ %i.as, %bb.u ], [ %i.ah, %bb.n ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.p, i64 %i.r, i1 false), !noalias !193
  br label %bb.g

bb.k:                                             ; preds = %bb.e
  unreachable

bb.l:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !191
  unreachable

_RNCNvXs4_NtNtCsiQsUuLk7hWW_14libp2p_autonat2v28protocolNtB7_7RequestINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB9_9generated7structs7MessageE8try_from0Bb_.exit.i: ; preds = %bb.g
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !183
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !200
  store i64 %i.w, ptr %i.f, align 8, !noalias !202
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.z, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !202
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.r, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !203
  call void @_RNvXsb_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrINtNtCskKLDkoKarTP_4core7convert7TryFromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !207
  %i.ae = load ptr, ptr %i.e, align 8, !noalias !203, !noundef !6 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.af, label %bb.m, label %bb.t

bb.m:                                             ; preds = %_RNCNvXs4_NtNtCsiQsUuLk7hWW_14libp2p_autonat2v28protocolNtB7_7RequestINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB9_9generated7structs7MessageE8try_from0Bb_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !noalias !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !208
  store ptr %i.d, ptr %i.b, align 8, !noalias !208
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXNtCsbli3iz7XG76_9multiaddr6errorsNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !208
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @3, ptr noundef nonnull %i.b)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i unwind label %bb.n, !noalias !203

bb.n:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i, %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr6errors5ErrorECsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #20
          to label %common.resume.i unwind label %bb.o, !noalias !203

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !208
  %i.ai = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newNtNtB7_6string6StringECsbVDXp34Q3tF_18multistream_select(i8 noundef 21, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.p unwind label %bb.n, !noalias !203 ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !203
  unreachable

bb.p:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr6errors5ErrorECsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !200
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.val.i.i.i = load ptr, ptr %.val, align 8, !noalias !211, !noundef !6 ; 4 uses
  %i.ak = icmp eq ptr %.val.i.i.i, null
  br i1 %i.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !215
  %i.al = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.am = and i64 %i.al, 3
  switch i64 %i.am, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i
    i64 3, label %bb.r
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i
    i64 1, label %bb.s
  ], !prof !4

default.unreachable:                              ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.an = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ao = and i64 %i.al, 1095216660480
  %i.ap = icmp ne i64 %i.ao, 1095216660480
  call void @llvm.assume(i1 %i.an)
  call void @llvm.assume(i1 %i.ap)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.aq = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !alias.scope !218, !noalias !215
  store i8 3, ptr %i.a, align 8, !alias.scope !218, !noalias !215
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i unwind label %bb.u, !noalias !211

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !215
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i

bb.t:                                             ; preds = %_RNCNvXs4_NtNtCsiQsUuLk7hWW_14libp2p_autonat2v28protocolNtB7_7RequestINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB9_9generated7structs7MessageE8try_from0Bb_.exit.i
  %.sroa.52.0.copyload.i.i = load ptr, ptr %i.ag, align 8, !noalias !221
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !200
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  store ptr %i.ae, ptr %.sroa.4, align 8, !alias.scope !223, !noalias !224
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ai, ptr %.val, align 8, !noalias !211
  br label %common.resume.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i, %bb.p
  store ptr %i.ai, ptr %.val, align 8, !noalias !211
  br label %bb.w

bb.v:                                             ; preds = %bb.a, %bb.w
  %storemerge = phi i64 [ 1, %bb.w ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i, %bb.t
  %.sink.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.t ], [ %.sroa.4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i ]
  %.sroa.52.0.copyload.sink.i.i = phi ptr [ %.sroa.52.0.copyload.i.i, %bb.t ], [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i ]
  store ptr %.sroa.52.0.copyload.sink.i.i, ptr %.sink.i.i.sroa.phi, align 8, !alias.scope !223, !noalias !224
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload = load ptr, ptr %.sroa.4, align 8, !alias.scope !225
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload = load ptr, ptr %.sroa.7, align 8, !alias.scope !225
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload, ptr %i.at, align 8, !alias.scope !229
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !229
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  br label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VechEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1a_8find_map5checkBX_NtCsbli3iz7XG76_9multiaddr9MultiaddrQNCNvMs_NtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocolNtB3q_11DialRequest10from_protos1_0E0INtNtNtB1i_3ops12control_flow11ControlFlowB2I_EEB3u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not11 = icmp eq ptr %.promoted, %i.e
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.g = phi ptr [ %i.h, %bb.c ], [ %.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !233
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs_NtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocolNtBV_11DialRequest10from_protos1_0INtB7_5FnMutTINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE8call_mutBZ_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !233
  %i.i = load ptr, ptr %i.b, align 8, !noalias !233, !noundef !6 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a, %bb.b
  %storemerge = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ], [ null, %bb.c ]
  store ptr %storemerge, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !233
  br label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !233
  %.not = icmp eq ptr %i.h, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1E_8adapters10filter_map19filter_map_try_foldBX_BX_B2C_INtNtB1G_6result6ResultB2C_zENCNvMs_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour9as_serverNtB4T_8AsServer18filter_valid_addrss_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4j_EB4Z_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  %i.b = alloca [88 x i8], align 8                ; 9 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [88 x i8], align 8                ; 10 uses
  %i.e = alloca [88 x i8], align 8                ; 9 uses
  %i.f = alloca [88 x i8], align 8                ; 5 uses
  %i.g = alloca [88 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [88 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 12 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 9 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.v = load ptr, ptr %i.t, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.not46 = icmp eq ptr %i.v, %i.u
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.ak = load ptr, ptr %3, align 8, !nonnull !6, !align !118
  %i.al = load ptr, ptr %i.ad, align 8, !nonnull !6, !align !118 ; 2 uses
  %i.am = load ptr, ptr %i.ai, align 8, !nonnull !6, !align !118
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtCsbli3iz7XG76_9multiaddr9MultiaddrB1e_INtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtBa_6result6ResultB1S_zENCNvMs_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour9as_serverNtB3t_8AsServer18filter_valid_addrss_0NCINvNtB1X_16in_place_collect24write_in_place_with_dropB1e_E0E0B3z_.exit
  %i.an = phi ptr [ %i.u, %.lr.ph ], [ %i.cs, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtCsbli3iz7XG76_9multiaddr9MultiaddrB1e_INtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtBa_6result6ResultB1S_zENCNvMs_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour9as_serverNtB3t_8AsServer18filter_valid_addrss_0NCINvNtB1X_16in_place_collect24write_in_place_with_dropB1e_E0E0B3z_.exit ]
  %i.ao = phi ptr [ %i.v, %.lr.ph ], [ %i.cr, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtCsbli3iz7XG76_9multiaddr9MultiaddrB1e_INtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtBa_6result6ResultB1S_zENCNvMs_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour9as_serverNtB3t_8AsServer18filter_valid_addrss_0NCINvNtB1X_16in_place_collect24write_in_place_with_dropB1e_E0E0B3z_.exit ] ; 2 uses
  %.sroa.4.047 = phi ptr [ %2, %.lr.ph ], [ %.pn6.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtCsbli3iz7XG76_9multiaddr9MultiaddrB1e_INtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtBa_6result6ResultB1S_zENCNvMs_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour9as_serverNtB3t_8AsServer18filter_valid_addrss_0NCINvNtB1X_16in_place_collect24write_in_place_with_dropB1e_E0E0B3z_.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  store ptr %i.ap, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %1, ptr %i.q, align 8, !noalias !239
  store ptr %.sroa.4.047, ptr %i.w, align 8, !noalias !239
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !247
  %i.aq = load ptr, ptr %i.x, align 8, !alias.scope !245, !noalias !249, !noundef !6
  %i.ar = load i64, ptr %i.y, align 8, !alias.scope !245, !noalias !249, !noundef !6
  store ptr %i.aq, ptr %i.o, align 8, !noalias !247
  store i64 %i.ar, ptr %i.z, align 8, !noalias !247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !250
  invoke void @_RNvXs5_Csbli3iz7XG76_9multiaddrNtB5_4IterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !247

.noexc.i.i:                                       ; preds = %bb.b
  %i.as = load i8, ptr %i.g, align 8, !range !254, !noalias !250, !noundef !6
  %.not5.i.i.i = icmp eq i8 %i.as, -1
  br i1 %.not5.i.i.i, label %.loopexit66.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i.i, %.noexc12.i.i
  %i.at = phi i64 [ %i.av, %.noexc12.i.i ], [ 0, %.noexc.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 88, i1 false), !noalias !250
  %i.au = load i8, ptr %i.f, align 8, !range !133, !alias.scope !258, !noalias !255, !noundef !6
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolECsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %.noexc11.i.i unwind label %.loopexit63.i.i, !noalias !249

.noexc11.i.i:                                     ; preds = %.lr.ph.i.i.i
  %.off.i.i.i.i.i = add nsw i8 %i.au, -7
  %switch.i.i.i.i.i = icmp ult i8 %.off.i.i.i.i.i, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !250
  br i1 %switch.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc11.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !250
  invoke void @_RNvXs5_Csbli3iz7XG76_9multiaddrNtB5_4IterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %.noexc12.i.i unwind label %.loopexit63.i.i, !noalias !249

.noexc12.i.i:                                     ; preds = %bb.c
  %i.av = add i64 %i.at, 1
  %i.aw = load i8, ptr %i.g, align 8, !range !254, !noalias !250, !noundef !6
  %.not.i.i.i = icmp eq i8 %i.aw, -1
  br i1 %.not.i.i.i, label %.loopexit66.i.i, label %.lr.ph.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsiQsUuLk7hWW_14libp2p_autonat.exit30.i.i: ; preds = %.body.thread.i.i, %.body.i.i, %.loopexit.split-lp.i.i, %.loopexit63.i.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body48.i.i, %.body.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %.body.i.i ], [ %lpad.loopexit64.i.i, %.loopexit63.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.ax = load ptr, ptr %i.aj, align 8, !alias.scope !270, !noalias !249, !noundef !6
  %i.ay = load ptr, ptr %i.p, align 8, !alias.scope !270, !noalias !249, !nonnull !6, !align !118, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !271, !nonnull !6, !noundef !6
  %i.bb = load ptr, ptr %i.x, align 8, !alias.scope !270, !noalias !249, !noundef !6
  %i.bc = load i64, ptr %i.y, align 8, !alias.scope !270, !noalias !249, !noundef !6
  invoke void %i.ba(ptr noundef %i.ax, ptr noundef %i.bb, i64 noundef %i.bc)
          to label %.body.i unwind label %bb.t, !noalias !249, !inline_history !119

.loopexit63.i.i:                                  ; preds = %bb.c, %.lr.ph.i.i.i
  %lpad.loopexit64.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsiQsUuLk7hWW_14libp2p_autonat.exit30.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit61.i.i, %bb.d, %bb.b
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsiQsUuLk7hWW_14libp2p_autonat.exit30.i.i

bb.d:                                             ; preds = %.noexc11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !247
  invoke void @_RINvMCsbli3iz7XG76_9multiaddrNtB3_9Multiaddr7replaceNCNCNvMs_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour9as_serverNtBX_8AsServer18filter_valid_addrss_0s_0EB13_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ak)
          to label %bb.e unwind label %.loopexit.split-lp.i.i, !noalias !249

.loopexit66.i.i:                                  ; preds = %.noexc12.i.i, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !247
  br label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.bd = load ptr, ptr %i.m, align 8, !noalias !247, !noundef !6
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !247
  %i.be = load ptr, ptr %i.aa, align 8, !noalias !247, !noundef !6 ; 3 uses
  %i.bf = load i64, ptr %i.ab, align 8, !noalias !247, !noundef !6 ; 3 uses
end_hunk_0
