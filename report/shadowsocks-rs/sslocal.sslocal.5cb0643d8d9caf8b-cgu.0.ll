Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/sslocal.sslocal.5cb0643d8d9caf8b-cgu.0?download=true
inline.NumInlined: 35271
inline.NumDeleted: 15553
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 135
loop-unroll.NumUnrolled: 238
begin_hunk_0_@_RNvXs4_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioINtB5_12CryptoStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEENtB5_10CryptoRead19poll_read_decryptedCs7XnEB7DeNXr_7sslocal:bb.a
_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultRINtCseQBLfGApUIO_12hybrid_array5ArrayhINtNtCslT5NZwdYsTa_7typenum4uint4UIntIB1l_IB1l_IB1l_IB1l_NtB1n_5UTermNtNtB1p_3bit2B1ENtB2t_2B0EB2H_EB2H_EB2H_EENtNtB4_5array17TryFromSliceErrorE6expectCs7XnEB7DeNXr_7sslocal.exit182.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh12split_at_mutCs7XnEB7DeNXr_7sslocal.exit180.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !87311
  call fastcc void @_RNvXs14_CsfRIMZ2Mh1DJ_3aesNtB6_6Aes256NtCsMUNYOjkRLa_13crypto_common7KeyInit3new(ptr noalias nofree noundef align 16 captures(none) dereferenceable(960) %i.aj, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %i.am) #60, !noalias !87310
  call fastcc void @_RINvXs16_CsfRIMZ2Mh1DJ_3aesNtB7_6Aes256NtNtCs9x0VV5ereHe_6cipher5block18BlockCipherDecrypt20decrypt_with_backendINtNtBD_3ctx8BlockCtxINtNtCslT5NZwdYsTa_7typenum4uint4UIntIB28_IB28_IB28_IB28_NtB2a_5UTermNtNtB2c_3bit2B1ENtB3g_2B0EB3u_EB3u_EB3u_EEECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(960) %i.aj, ptr noundef %i.pr, ptr noundef %i.al) #60, !noalias !87310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !87311
  br label %bb.dm

bb.dm:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultRINtCseQBLfGApUIO_12hybrid_array5ArrayhINtNtCslT5NZwdYsTa_7typenum4uint4UIntIB1l_IB1l_IB1l_IB1l_NtB1n_5UTermNtNtB1p_3bit2B1ENtB2t_2B0EB2H_EB2H_EB2H_EENtNtB4_5array17TryFromSliceErrorE6expectCs7XnEB7DeNXr_7sslocal.exit182.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultRINtCseQBLfGApUIO_12hybrid_array5ArrayhINtNtCslT5NZwdYsTa_7typenum4uint4UIntIB1l_IB1l_IB1l_IB1l_NtB1n_5UTermNtNtB1p_3bit2B1ENtB2t_2B0EB2H_EB2H_EB2H_EENtNtB4_5array17TryFromSliceErrorE6expectCs7XnEB7DeNXr_7sslocal.exit.i.i.i
  %i.qh = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !87311 ; 2 uses
  %i.qi = icmp ult i64 %i.qh, 6
  call void @llvm.assume(i1 %i.qi)
  %i.qj = icmp samesign ugt i64 %i.qh, 4
  br i1 %i.qj, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !87311
  store ptr %i.pr, ptr %i.ah, align 8, !noalias !87311
  store i64 16, ptr %i.mn, align 8, !noalias !87311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !87311
  store ptr %i.al, ptr %i.ag, align 8, !noalias !87311
  store i64 16, ptr %i.mo, align 8, !noalias !87311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !87311
  store ptr %i.ah, ptr %i.af, align 8, !noalias !87311
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtCs7nHubWU0XOq_11byte_string7ByteStrNtB6_5Debug3fmtCs7XnEB7DeNXr_7sslocal, ptr %.sroa.4106.0..sroa_idx.i.i.i, align 8, !noalias !87311
  store ptr %i.ag, ptr %i.mp, align 8, !noalias !87311
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtCs7nHubWU0XOq_11byte_string7ByteStrNtB6_5Debug3fmtCs7XnEB7DeNXr_7sslocal, ptr %.sroa.4110.0..sroa_idx.i.i.i, align 8, !noalias !87311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !87318
  store i64 5, ptr %i.mq, align 8, !noalias !87318
  store ptr @311, ptr %.sroa.422.0..sroa_idx.i108.i.i, align 8, !noalias !87318
  store i64 39, ptr %.sroa.523.0..sroa_idx.i109.i.i, align 8, !noalias !87318
  store ptr @313, ptr %i.mr, align 8, !noalias !87318
  store ptr %i.af, ptr %i.ms, align 8, !noalias !87318
  store i64 0, ptr %i.l, align 8, !noalias !87318
  store ptr @311, ptr %.sroa.428.0..sroa_idx.i110.i.i, align 8, !noalias !87318
  store i64 39, ptr %.sroa.529.0..sroa_idx.i111.i.i, align 8, !noalias !87318
  store i64 0, ptr %i.mt, align 8, !noalias !87318
  store ptr @187, ptr %.sroa.434.0..sroa_idx.i112.i.i, align 8, !noalias !87318
  store i64 50, ptr %.sroa.535.0..sroa_idx.i113.i.i, align 8, !noalias !87318
  store i32 1, ptr %i.mu, align 8, !noalias !87318
  store i32 334, ptr %i.mv, align 4, !noalias !87318
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.l) #52, !noalias !87319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !87318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !87311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !87311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !87311
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.qk = load ptr, ptr %i.lw, align 8, !alias.scope !87309, !nonnull !145, !noundef !145
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qm = call noundef align 8 ptr @_RNvMs9_NtCslxdWNweD0x2_11shadowsocks6configNtB5_17ServerUserManager16get_user_by_hash(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ql, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 16) #52, !noalias !87310 ; 3 uses
  %.not160.i.i.i = icmp eq ptr %i.qm, null
  br i1 %.not160.i.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  store ptr %i.qm, ptr %i.ad, align 8, !noalias !87311
  %i.qn = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !87311 ; 2 uses
  %i.qo = icmp ult i64 %i.qn, 6
  call void @llvm.assume(i1 %i.qo)
  %i.qp = icmp samesign ugt i64 %i.qn, 4
  br i1 %i.qp, label %bb.ds, label %bb.dt

bb.dq:                                            ; preds = %bb.do
  call void @_RNvMNtCsknai52m1gBp_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 16) #52, !noalias !87320
  %.sroa.442.i.sroa.5.7.copyload.i.i = load i64, ptr %i.ae, align 8, !noalias !87321
  %.sroa.442.i.sroa.7.7..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.442.i.sroa.7.7.copyload.i.i = load i64, ptr %.sroa.442.i.sroa.7.7..sroa_idx.i.i, align 8, !noalias !87321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !87311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !87311
  call void @llvm.experimental.noalias.scope.decl(metadata !87322)
  %.val.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !87322, !noalias !87311 ; 2 uses
  %i.qq = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.qq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal.exit.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qc, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !87323
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %bb.dr, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !87311
  br label %bb.fa

bb.ds:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !87311
  store ptr %i.ad, ptr %i.ac, align 8, !noalias !87311
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCslxdWNweD0x2_11shadowsocks6config10ServerUserNtB6_5Debug3fmtCs7XnEB7DeNXr_7sslocal, ptr %.sroa.4114.0..sroa_idx.i.i.i, align 8, !noalias !87311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !87324
  store i64 5, ptr %i.nr, align 8, !noalias !87324
  store ptr @311, ptr %.sroa.422.0..sroa_idx.i73.i, align 8, !noalias !87324
  store i64 39, ptr %.sroa.523.0..sroa_idx.i74.i, align 8, !noalias !87324
  store ptr @314, ptr %i.ns, align 8, !noalias !87324
  store ptr %i.ac, ptr %i.nt, align 8, !noalias !87324
  store i64 0, ptr %i.b, align 8, !noalias !87324
  store ptr @311, ptr %.sroa.428.0..sroa_idx.i75.i, align 8, !noalias !87324
  store i64 39, ptr %.sroa.529.0..sroa_idx.i76.i, align 8, !noalias !87324
  store i64 0, ptr %i.nu, align 8, !noalias !87324
  store ptr @187, ptr %.sroa.434.0..sroa_idx.i77.i, align 8, !noalias !87324
  store i64 50, ptr %.sroa.535.0..sroa_idx.i78.i, align 8, !noalias !87324
  store i32 1, ptr %i.nv, align 8, !noalias !87324
  store i32 345, ptr %i.nw, align 4, !noalias !87324
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #52, !noalias !87325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !87324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !87311
  %.pre219.i.i.i = load ptr, ptr %i.ad, align 8, !noalias !87311
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dp
  %i.qr = phi ptr [ %i.qm, %bb.dp ], [ %.pre219.i.i.i, %bb.ds ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !87311
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 32
  %i.qt = load ptr, ptr %i.qs, align 8, !noalias !87310, !noundef !145
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 40
  %i.qv = load i64, ptr %i.qu, align 8, !noalias !87310, !noundef !145
  call void @_RNvMNtCsknai52m1gBp_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qt, i64 noundef %i.qv) #52, !noalias !87310
  call void @llvm.experimental.noalias.scope.decl(metadata !87326)
  %i.qw = load ptr, ptr %i.mw, align 16, !alias.scope !87327, !noundef !145 ; 2 uses
  %i.qx = icmp eq ptr %i.qw, null
  br i1 %i.qx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal.exit.i.i66.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @llvm.experimental.noalias.scope.decl(metadata !87328)
  call void @llvm.experimental.noalias.scope.decl(metadata !87329)
  %i.qy = load ptr, ptr %i.mx, align 8, !alias.scope !87330, !noundef !145
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 32
  %i.ra = load ptr, ptr %i.qz, align 8, !noalias !87331, !nonnull !145, !noundef !145
  %i.rb = load ptr, ptr %i.my, align 8, !alias.scope !87330, !noundef !145
  %i.rc = load i64, ptr %i.mz, align 16, !alias.scope !87330, !noundef !145
  call void %i.ra(ptr noundef %i.qy, ptr noundef %i.rb, i64 noundef %i.rc) #52, !noalias !87331, !inline_history !87111
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal.exit.i.i66.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal.exit.i.i66.i: ; preds = %bb.du, %bb.dt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.mw, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false), !noalias !87332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !87311
  %i.rd = load i8, ptr %i.ln, align 2, !range !266, !alias.scope !87309, !noundef !145
  %i.re = load ptr, ptr %i.ad, align 8, !noalias !87311, !nonnull !145, !align !153, !noundef !145 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 32
  %i.rg = load ptr, ptr %i.rf, align 8, !noalias !87310, !noundef !145
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 40
  %i.ri = load i64, ptr %i.rh, align 8, !noalias !87310, !noundef !145
  call void @_RNvMs_NtNtCsbYq7bIcWEdL_18shadowsocks_crypto2v23tcpNtB4_9TcpCipher3new(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ar, i8 noundef %i.rd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rg, i64 noundef %i.ri, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pn, i64 noundef %i.om) #52, !noalias !87310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !87311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !87311
  call void @llvm.experimental.noalias.scope.decl(metadata !87333)
  %.val.i185.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !87333, !noalias !87311 ; 2 uses
  %i.rj = icmp eq i64 %.val.i185.i.i.i, 0
  br i1 %i.rj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal.exit187.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal.exit.i.i66.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qc, i64 noundef %.val.i185.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !87334
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal.exit187.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal.exit187.i.i.i: ; preds = %bb.dv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal.exit.i.i66.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !87311
  br label %bb.dh

bb.dw:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !87311
  %.not2.i.not.i.i.i = icmp eq i64 %.sroa.732.0.i.i.i, 0
  br i1 %.not2.i.not.i.i.i, label %bb.dx, label %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf6get_u8Cs7XnEB7DeNXr_7sslocal.exit.i.i.i, !prof !154

bb.dx:                                            ; preds = %bb.dw
  call void @_RNvCsknai52m1gBp_5bytes13panic_advance(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @54) #61, !noalias !87335
  unreachable

_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf6get_u8Cs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %bb.dw
  %i.rk = load i8, ptr %.sroa.027.0.i.i.i, align 1, !noalias !87335, !noundef !145 ; 4 uses
  store i8 %i.rk, ptr %i.aa, align 1, !noalias !87311
  %i.rl = load i8, ptr %i.lv, align 16, !range !148, !alias.scope !87309, !noundef !145
  %not..i.i.i = xor i8 %i.rl, 1                   ; 2 uses
  %.not161.i.i.i = icmp eq i8 %i.rk, %not..i.i.i
  br i1 %.not161.i.i.i, label %bb.dy, label %.loopexit182.i.i

.loopexit181.i.i:                                 ; preds = %bb.dh, %.loopexit182.i.i
  %.sroa.28.0.i.i = phi i64 [ %.sroa.28.2.i.i, %.loopexit182.i.i ], [ undef, %bb.dh ]
  %.sroa.20116.0.i.i = phi i64 [ %.sroa.20116.2.i.i, %.loopexit182.i.i ], [ undef, %bb.dh ]
  %.sroa.19.0.i.i = phi i8 [ %i.rk, %.loopexit182.i.i ], [ undef, %bb.dh ]
  %.sroa.16.0.i.i = phi i8 [ %not..i622.i.i, %.loopexit182.i.i ], [ undef, %bb.dh ]
  %.sroa.0.0.i64.i = phi i8 [ %.sroa.0.2.i.i, %.loopexit182.i.i ], [ 4, %bb.dh ]
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.val171.i.i.i = load ptr, ptr %i.rm, align 8, !noalias !87311
  call void @"\01aws_lc_0_44_0_EVP_AEAD_CTX_free"(ptr noundef %.val171.i.i.i) #52, !noalias !87310
  br label %bb.fa

bb.dy:                                            ; preds = %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf6get_u8Cs7XnEB7DeNXr_7sslocal.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !87311
  %i.rn = icmp ult i64 %.sroa.732.0.i.i.i, 9
  br i1 %i.rn, label %_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u640Cs7XnEB7DeNXr_7sslocal.exit.i.i.i, label %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u64Cs7XnEB7DeNXr_7sslocal.exit.i.i

_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u640Cs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %bb.dy
  %i.ro = add nsw i64 %.sroa.732.0.i.i.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !87336
  store i64 8, ptr %i.m, align 8, !noalias !87336
  %i.rp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.ro, ptr %i.rp, align 8, !noalias !87336
  call void @_RNvCsknai52m1gBp_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m) #61, !noalias !87337
  unreachable

_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u64Cs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %bb.dy
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i.i, i64 1
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.rq, align 1, !noalias !87338
  %i.rr = call i64 @llvm.bswap.i64(i64 %.sroa.03.0.copyload.i.i.i.i) ; 3 uses
  store i64 %i.rr, ptr %i.z, align 8, !noalias !87311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !87339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !87339
  %i.rs = call { i64, i32 } @_RNvMs5_NtCs5Xr050g3D4S_3std4timeNtB5_10SystemTime3now() #52, !noalias !87310 ; 2 uses
  %i.rt = extractvalue { i64, i32 } %i.rs, 0
  %i.ru = extractvalue { i64, i32 } %i.rs, 1
  store i64 %i.rt, ptr %i.n, align 8, !noalias !87339
  store i32 %i.ru, ptr %i.na, align 8, !noalias !87339
  call void @_RNvMs5_NtCs5Xr050g3D4S_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, i64 noundef 0, i32 noundef 0) #52, !noalias !87310
  %i.rv = load i64, ptr %i.o, align 8, !range !149, !noalias !87339, !noundef !145
  %i.rw = trunc nuw i64 %i.rv to i1
  br i1 %i.rw, label %bb.dz, label %_RNvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202217get_now_timestamp.exit.i.i, !prof !154

bb.dz:                                            ; preds = %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u64Cs7XnEB7DeNXr_7sslocal.exit.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @2130, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2131) #62, !noalias !87310
  unreachable

_RNvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202217get_now_timestamp.exit.i.i: ; preds = %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u64Cs7XnEB7DeNXr_7sslocal.exit.i.i
  %i.rx = load i64, ptr %i.nb, align 8, !noalias !87339, !noundef !145 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !87339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !87339
  %i.ry = sub i64 %i.rx, %i.rr
  %5 = add i64 %i.ry, -31
  %6 = icmp ult i64 %5, -61
  br i1 %6, label %.loopexit183.i.i, label %bb.ea

bb.ea:                                            ; preds = %_RNvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202217get_now_timestamp.exit.i.i
  %.not162.i.i.i = icmp eq i64 %..i.i.i, 0
  br i1 %.not162.i.i.i, label %bb.eh, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !87311
  call void @llvm.experimental.noalias.scope.decl(metadata !87340)
  %.not.i.i72.i = icmp slt i64 %i.om, 0
  br i1 %.not.i.i72.i, label %bb.ef, label %bb.ec, !prof !261

bb.ec:                                            ; preds = %bb.eb
  %i.rz = icmp eq i64 %i.om, 0
  br i1 %i.rz, label %_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !87341
  %i.sa = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.om, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !87341 ; 2 uses
  %i.sb = icmp eq ptr %i.sa, null
  br i1 %i.sb, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.sc = ptrtoint ptr %i.sa to i64
  br label %_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit.i

bb.ef:                                            ; preds = %bb.ed, %bb.eb
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.ed ], [ 0, %bb.eb ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.om) #61, !noalias !87342
  unreachable

_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit.i: ; preds = %bb.ee, %bb.ec
  %.sroa.10.0.i.i = phi i64 [ %i.sc, %bb.ee ], [ 1, %bb.ec ]
  %i.sd = inttoptr i64 %.sroa.10.0.i.i to ptr
  %i.se = lshr i64 %i.om, 10
  %i.sf = call range(i64 11, 65) i64 @llvm.ctlz.i64(i64 %i.se, i1 false)
  %i.sg = sub nuw nsw i64 64, %i.sf
  %i.sh = call i64 @llvm.umin.i64(i64 %i.sg, i64 7)
  %i.si = shl nuw nsw i64 %i.sh, 2
  %i.sj = getelementptr i8, ptr null, i64 %i.si
  %i.sk = getelementptr i8, ptr %i.sj, i64 1
  store ptr %i.sd, ptr %i.y, align 8, !alias.scope !87340, !noalias !87343
  store i64 0, ptr %i.nc, align 8, !alias.scope !87340, !noalias !87343
  store i64 %i.om, ptr %i.nx, align 8, !alias.scope !87340, !noalias !87343
  store ptr %i.sk, ptr %i.ny, align 8, !alias.scope !87340, !noalias !87343
  call void @_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut6resize(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef %i.om, i8 noundef 0) #52, !noalias !87310
  %i.sl = load ptr, ptr %i.y, align 8, !noalias !87311, !nonnull !145, !noundef !145 ; 2 uses
  %i.sm = load i64, ptr %i.nc, align 8, !noalias !87311, !noundef !145 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !87344)
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i.i, i64 9 ; 2 uses
  %i.so = add nsw i64 %.sroa.732.0.i.i.i, -9
  call void @llvm.experimental.noalias.scope.decl(metadata !87345)
  %i.sp = icmp ugt i64 %i.sm, %i.so
  br i1 %i.sp, label %bb.el, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit.i
  %i.sq = icmp eq i64 %i.sm, 1
  br i1 %i.sq, label %bb.eg, label %_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sl, ptr nonnull readonly align 1 %i.sn, i64 range(i64 0, -9223372036854775808) %i.sm, i1 false), !alias.scope !87346, !noalias !87347
  br label %bb.em

bb.eg:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  %i.sr = load i8, ptr %i.sn, align 1, !noalias !87348, !noundef !145
  store i8 %i.sr, ptr %i.sl, align 1, !alias.scope !87349, !noalias !87310
  br label %bb.em

bb.eh:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal.exit191.i.i.i, %bb.ea
  %.sroa.7106.0.i = phi i64 [ 9, %bb.ea ], [ %i.tq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal.exit191.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !87311
  %i.ss = call i64 @llvm.usub.sat.i64(i64 %.sroa.732.0.i.i.i, i64 %.sroa.7106.0.i) ; 2 uses
  %i.st = icmp samesign ult i64 %i.ss, 2
  br i1 %i.st, label %_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u160Cs7XnEB7DeNXr_7sslocal.exit.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.su = call i64 @llvm.umin.i64(i64 %.sroa.7106.0.i, i64 %.sroa.732.0.i.i.i) ; 2 uses
  %i.sv = sub nuw nsw i64 %.sroa.732.0.i.i.i, %i.su
  %i.sw = icmp ugt i64 %i.sv, 1
  br i1 %i.sw, label %_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !87350
  store i16 0, ptr %i.d, align 2, !noalias !87350
  br label %bb.ej

bb.ej:                                            ; preds = %_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.0.017.i.i.i.i.i = phi ptr [ %i.d, %.preheader.i.i.i.i.i ], [ %i.tf, %_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.9.016.i.i.i.i.i = phi i64 [ 2, %.preheader.i.i.i.i.i ], [ %i.tg, %_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i ] ; 2 uses
  %i.sx = phi i64 [ %.sroa.7106.0.i, %.preheader.i.i.i.i.i ], [ %i.th, %_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i ] ; 3 uses
  %i.sy = call i64 @llvm.umin.i64(i64 %i.sx, i64 %.sroa.732.0.i.i.i) ; 2 uses
  %i.sz = sub nuw nsw i64 %.sroa.732.0.i.i.i, %i.sy
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i.i, i64 %i.sy
  %i.tb = call i64 @llvm.umin.i64(i64 %i.sz, i64 %.sroa.9.016.i.i.i.i.i) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.017.i.i.i.i.i, ptr nonnull readonly align 1 %i.ta, i64 range(i64 0, -9223372036854775808) %i.tb, i1 false), !alias.scope !87351, !noalias !87352
  %i.tc = call i64 @llvm.usub.sat.i64(i64 %.sroa.732.0.i.i.i, i64 %i.sx) ; 2 uses
  %i.td = icmp ugt i64 %i.tb, %i.tc
  br i1 %i.td, label %bb.ek, label %_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i, !prof !154

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !87353
  store i64 %i.tb, ptr %i.c, align 8, !noalias !87353
  %i.te = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.tc, ptr %i.te, align 8, !noalias !87353
  call void @_RNvCsknai52m1gBp_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) #61, !noalias !87354
  unreachable

_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i: ; preds = %bb.ej
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i.i.i.i, i64 %i.tb
  %i.tg = sub nuw nsw i64 %.sroa.9.016.i.i.i.i.i, %i.tb ; 2 uses
  %i.th = add i64 %i.tb, %i.sx
  %i.ti = icmp eq i64 %i.tg, 0
  br i1 %i.ti, label %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf13copy_to_sliceCs7XnEB7DeNXr_7sslocal.exit.i.i.i, label %bb.ej

_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf13copy_to_sliceCs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  %.sroa.02.0.copyload.i.i.i = load i16, ptr %i.d, align 2, !noalias !87350
  %i.tj = call i16 @llvm.bswap.i16(i16 %.sroa.02.0.copyload.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !87350
  br label %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u16Cs7XnEB7DeNXr_7sslocal.exit.i

_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %bb.ei
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i.i, i64 %i.su
  %.sroa.03.0.copyload.i.i.i = load i16, ptr %i.tk, align 1, !noalias !87355
  %i.tl = call i16 @llvm.bswap.i16(i16 %.sroa.03.0.copyload.i.i.i)
  br label %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u16Cs7XnEB7DeNXr_7sslocal.exit.i

_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u160Cs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !87356
  store i64 2, ptr %i.e, align 8, !noalias !87356
  %i.tm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.ss, ptr %i.tm, align 8, !noalias !87356
  call void @_RNvCsknai52m1gBp_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e) #61, !noalias !87357
  unreachable

_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u16Cs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i, %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf13copy_to_sliceCs7XnEB7DeNXr_7sslocal.exit.i.i.i
  %.sroa.6.0.ph.i.i = phi i16 [ %i.tl, %_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %i.tj, %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf13copy_to_sliceCs7XnEB7DeNXr_7sslocal.exit.i.i.i ]
  store i16 %.sroa.6.0.ph.i.i, ptr %i.x, align 2, !noalias !87311
  %i.tn = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !87311 ; 2 uses
  %i.to = icmp ult i64 %i.tn, 6
  call void @llvm.assume(i1 %i.to)
  %i.tp = icmp samesign ugt i64 %i.tn, 4
  br i1 %i.tp, label %bb.er, label %bb.es

bb.el:                                            ; preds = %_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit.i
  call void @_RNvXs0_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y) #52, !noalias !87310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !87311
  br label %.loopexit183.i.i

bb.em:                                            ; preds = %bb.eg, %_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  %i.tq = add nuw i64 %i.sm, 9
  %.sroa.0118.0.copyload.i = load ptr, ptr %i.y, align 8, !noalias !87311 ; 4 uses
  %.sroa.5120.0.copyload.i = load i64, ptr %i.nc, align 8, !noalias !87311 ; 2 uses
  %.sroa.8123.0.copyload.i = load ptr, ptr %i.ny, align 8, !noalias !87311 ; 2 uses
  %i.tr = ptrtoint ptr %.sroa.8123.0.copyload.i to i64 ; 2 uses
  %i.ts = and i64 %i.tr, 1
  %.not.i69.i = icmp eq i64 %i.ts, 0
  br i1 %.not.i69.i, label %bb.ep, label %bb.en

bb.en:                                            ; preds = %bb.em
  %.sroa.7122.0.copyload.i = load i64, ptr %i.nx, align 8, !noalias !87311
  %i.tt = lshr i64 %i.tr, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !87358
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0118.0.copyload.i) ]
  %i.tu = sub nsw i64 0, %i.tt
  %i.tv = getelementptr inbounds i8, ptr %.sroa.0118.0.copyload.i, i64 %i.tu
  %i.tw = add i64 %i.tt, %.sroa.5120.0.copyload.i
  %i.tx = add i64 %.sroa.7122.0.copyload.i, %i.tt ; 2 uses
  %i.ty = icmp sgt i64 %i.tx, -1
  call void @llvm.assume(i1 %i.ty), !noalias !87359
  store i64 %i.tx, ptr %i.j, align 8, !noalias !87358
  store ptr %i.tv, ptr %i.nz, align 8, !noalias !87358
  store i64 %i.tw, ptr %i.oa, align 8, !noalias !87358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !87358
  call void @_RNvXsE_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j) #52, !noalias !87360
  call void @llvm.experimental.noalias.scope.decl(metadata !87361), !noalias !87359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !87358
  store i64 %i.tt, ptr %i.h, align 8, !noalias !87362
  %i.tz = load i64, ptr %i.ob, align 8, !alias.scope !87361, !noalias !87358, !noundef !145 ; 3 uses
  %.not.i.i70.i = icmp ugt i64 %i.tt, %i.tz
  br i1 %.not.i.i70.i, label %bb.eo, label %_RNvXs3_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i, !prof !154

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !87362
  store i64 %i.tz, ptr %i.g, align 8, !noalias !87362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !87362
  store ptr %i.h, ptr %i.f, align 8, !noalias !87362
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsZ_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !87362
  %i.ua = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.ua, align 8, !noalias !87362
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsZ_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !87362
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @2420, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2570) #62, !noalias !87363
  unreachable

_RNvXs3_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i: ; preds = %bb.en
  %i.ub = sub nuw i64 %i.tz, %i.tt
  %i.uc = load ptr, ptr %i.oc, align 8, !alias.scope !87361, !noalias !87358, !noundef !145
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.tt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !87358
  %.sroa.0107.0.copyload108.i = load ptr, ptr %i.i, align 8, !noalias !87364
end_hunk_0
begin_hunk_1_@_RNvXs4_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioINtB5_12CryptoStreamNtNtNtBb_3net3tcp9TcpStreamENtB5_10CryptoRead19poll_read_decryptedCs7XnEB7DeNXr_7sslocal:bb.a
_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultRINtCseQBLfGApUIO_12hybrid_array5ArrayhINtNtCslT5NZwdYsTa_7typenum4uint4UIntIB1l_IB1l_IB1l_IB1l_NtB1n_5UTermNtNtB1p_3bit2B1ENtB2t_2B0EB2H_EB2H_EB2H_EENtNtB4_5array17TryFromSliceErrorE6expectCs7XnEB7DeNXr_7sslocal.exit179.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh12split_at_mutCs7XnEB7DeNXr_7sslocal.exit178.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !87723
  call fastcc void @_RNvXs14_CsfRIMZ2Mh1DJ_3aesNtB6_6Aes256NtCsMUNYOjkRLa_13crypto_common7KeyInit3new(ptr noalias nofree noundef align 16 captures(none) dereferenceable(960) %i.aj, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %i.am) #60, !noalias !87722
  call fastcc void @_RINvXs16_CsfRIMZ2Mh1DJ_3aesNtB7_6Aes256NtNtCs9x0VV5ereHe_6cipher5block18BlockCipherDecrypt20decrypt_with_backendINtNtBD_3ctx8BlockCtxINtNtCslT5NZwdYsTa_7typenum4uint4UIntIB28_IB28_IB28_IB28_NtB2a_5UTermNtNtB2c_3bit2B1ENtB3g_2B0EB3u_EB3u_EB3u_EEECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(960) %i.aj, ptr noundef %i.ou, ptr noundef %i.al) #60, !noalias !87722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !87723
  br label %bb.dd

bb.dd:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultRINtCseQBLfGApUIO_12hybrid_array5ArrayhINtNtCslT5NZwdYsTa_7typenum4uint4UIntIB1l_IB1l_IB1l_IB1l_NtB1n_5UTermNtNtB1p_3bit2B1ENtB2t_2B0EB2H_EB2H_EB2H_EENtNtB4_5array17TryFromSliceErrorE6expectCs7XnEB7DeNXr_7sslocal.exit179.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultRINtCseQBLfGApUIO_12hybrid_array5ArrayhINtNtCslT5NZwdYsTa_7typenum4uint4UIntIB1l_IB1l_IB1l_IB1l_NtB1n_5UTermNtNtB1p_3bit2B1ENtB2t_2B0EB2H_EB2H_EB2H_EENtNtB4_5array17TryFromSliceErrorE6expectCs7XnEB7DeNXr_7sslocal.exit.i.i.i
  %i.pk = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !87723 ; 2 uses
  %i.pl = icmp ult i64 %i.pk, 6
  call void @llvm.assume(i1 %i.pl)
  %i.pm = icmp samesign ugt i64 %i.pk, 4
  br i1 %i.pm, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !87723
  store ptr %i.ou, ptr %i.ah, align 8, !noalias !87723
  store i64 16, ptr %i.lv, align 8, !noalias !87723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !87723
  store ptr %i.al, ptr %i.ag, align 8, !noalias !87723
  store i64 16, ptr %i.lw, align 8, !noalias !87723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !87723
  store ptr %i.ah, ptr %i.af, align 8, !noalias !87723
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtCs7nHubWU0XOq_11byte_string7ByteStrNtB6_5Debug3fmtCs7XnEB7DeNXr_7sslocal, ptr %.sroa.4106.0..sroa_idx.i.i.i, align 8, !noalias !87723
  store ptr %i.ag, ptr %i.lx, align 8, !noalias !87723
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtCs7nHubWU0XOq_11byte_string7ByteStrNtB6_5Debug3fmtCs7XnEB7DeNXr_7sslocal, ptr %.sroa.4110.0..sroa_idx.i.i.i, align 8, !noalias !87723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !87727
  store i64 5, ptr %i.ly, align 8, !noalias !87727
  store ptr @311, ptr %.sroa.422.0..sroa_idx.i108.i.i, align 8, !noalias !87727
  store i64 39, ptr %.sroa.523.0..sroa_idx.i109.i.i, align 8, !noalias !87727
  store ptr @313, ptr %i.lz, align 8, !noalias !87727
  store ptr %i.af, ptr %i.ma, align 8, !noalias !87727
  store i64 0, ptr %i.l, align 8, !noalias !87727
  store ptr @311, ptr %.sroa.428.0..sroa_idx.i110.i.i, align 8, !noalias !87727
  store i64 39, ptr %.sroa.529.0..sroa_idx.i111.i.i, align 8, !noalias !87727
  store i64 0, ptr %i.mb, align 8, !noalias !87727
  store ptr @187, ptr %.sroa.434.0..sroa_idx.i112.i.i, align 8, !noalias !87727
  store i64 50, ptr %.sroa.535.0..sroa_idx.i113.i.i, align 8, !noalias !87727
  store i32 1, ptr %i.mc, align 8, !noalias !87727
  store i32 334, ptr %i.md, align 4, !noalias !87727
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.l) #52, !noalias !87728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !87727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !87723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !87723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !87723
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.pn = load ptr, ptr %i.lf, align 8, !alias.scope !87721, !nonnull !145, !noundef !145
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.pp = call noundef align 8 ptr @_RNvMs9_NtCslxdWNweD0x2_11shadowsocks6configNtB5_17ServerUserManager16get_user_by_hash(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.po, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 16) #52, !noalias !87722 ; 3 uses
  %.not160.i.i.i = icmp eq ptr %i.pp, null
  br i1 %.not160.i.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  store ptr %i.pp, ptr %i.ad, align 8, !noalias !87723
  %i.pq = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !87723 ; 2 uses
  %i.pr = icmp ult i64 %i.pq, 6
  call void @llvm.assume(i1 %i.pr)
  %i.ps = icmp samesign ugt i64 %i.pq, 4
  br i1 %i.ps, label %bb.dj, label %bb.dk

bb.dh:                                            ; preds = %bb.df
  call void @_RNvMNtCsknai52m1gBp_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 16) #52, !noalias !87729
  %.sroa.442.i.sroa.5.7.copyload.i.i = load i64, ptr %i.ae, align 8, !noalias !87730
  %.sroa.442.i.sroa.7.7..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.442.i.sroa.7.7.copyload.i.i = load i64, ptr %.sroa.442.i.sroa.7.7..sroa_idx.i.i, align 8, !noalias !87730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !87723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !87723
  call void @llvm.experimental.noalias.scope.decl(metadata !87731)
  %.val.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !87731, !noalias !87723 ; 2 uses
  %i.pt = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.pt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal.exit.i.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pf, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !87732
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %bb.di, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !87723
  br label %bb.er

bb.dj:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !87723
  store ptr %i.ad, ptr %i.ac, align 8, !noalias !87723
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCslxdWNweD0x2_11shadowsocks6config10ServerUserNtB6_5Debug3fmtCs7XnEB7DeNXr_7sslocal, ptr %.sroa.4114.0..sroa_idx.i.i.i, align 8, !noalias !87723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !87733
  store i64 5, ptr %i.mz, align 8, !noalias !87733
  store ptr @311, ptr %.sroa.422.0..sroa_idx.i71.i, align 8, !noalias !87733
  store i64 39, ptr %.sroa.523.0..sroa_idx.i72.i, align 8, !noalias !87733
  store ptr @314, ptr %i.na, align 8, !noalias !87733
  store ptr %i.ac, ptr %i.nb, align 8, !noalias !87733
  store i64 0, ptr %i.b, align 8, !noalias !87733
  store ptr @311, ptr %.sroa.428.0..sroa_idx.i73.i, align 8, !noalias !87733
  store i64 39, ptr %.sroa.529.0..sroa_idx.i74.i, align 8, !noalias !87733
  store i64 0, ptr %i.nc, align 8, !noalias !87733
  store ptr @187, ptr %.sroa.434.0..sroa_idx.i75.i, align 8, !noalias !87733
  store i64 50, ptr %.sroa.535.0..sroa_idx.i76.i, align 8, !noalias !87733
  store i32 1, ptr %i.nd, align 8, !noalias !87733
  store i32 345, ptr %i.ne, align 4, !noalias !87733
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #52, !noalias !87734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !87733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !87723
  %.pre207.i.i.i = load ptr, ptr %i.ad, align 8, !noalias !87723
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.dg
  %i.pu = phi ptr [ %i.pp, %bb.dg ], [ %.pre207.i.i.i, %bb.dj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !87723
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 32
  %i.pw = load ptr, ptr %i.pv, align 8, !noalias !87722, !noundef !145
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 40
  %i.py = load i64, ptr %i.px, align 8, !noalias !87722, !noundef !145
  call void @_RNvMNtCsknai52m1gBp_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pw, i64 noundef %i.py) #52, !noalias !87722
  call void @llvm.experimental.noalias.scope.decl(metadata !87735)
  %i.pz = load ptr, ptr %i.me, align 16, !alias.scope !87736, !noundef !145 ; 2 uses
  %i.qa = icmp eq ptr %i.pz, null
  br i1 %i.qa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal.exit.i.i64.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.experimental.noalias.scope.decl(metadata !87737)
  call void @llvm.experimental.noalias.scope.decl(metadata !87738)
  %i.qb = load ptr, ptr %i.mf, align 8, !alias.scope !87739, !noundef !145
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 32
  %i.qd = load ptr, ptr %i.qc, align 8, !noalias !87740, !nonnull !145, !noundef !145
  %i.qe = load ptr, ptr %i.mg, align 8, !alias.scope !87739, !noundef !145
  %i.qf = load i64, ptr %i.mh, align 16, !alias.scope !87739, !noundef !145
  call void %i.qd(ptr noundef %i.qb, ptr noundef %i.qe, i64 noundef %i.qf) #52, !noalias !87740, !inline_history !87539
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal.exit.i.i64.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal.exit.i.i64.i: ; preds = %bb.dl, %bb.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.me, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false), !noalias !87741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !87723
  %i.qg = load i8, ptr %i.kw, align 2, !range !266, !alias.scope !87721, !noundef !145
  %i.qh = load ptr, ptr %i.ad, align 8, !noalias !87723, !nonnull !145, !align !153, !noundef !145 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 32
  %i.qj = load ptr, ptr %i.qi, align 8, !noalias !87722, !noundef !145
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qh, i64 40
  %i.ql = load i64, ptr %i.qk, align 8, !noalias !87722, !noundef !145
  call void @_RNvMs_NtNtCsbYq7bIcWEdL_18shadowsocks_crypto2v23tcpNtB4_9TcpCipher3new(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ar, i8 noundef %i.qg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qj, i64 noundef %i.ql, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.oq, i64 noundef %i.nu) #52, !noalias !87722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !87723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !87723
  call void @llvm.experimental.noalias.scope.decl(metadata !87742)
  %.val.i180.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !87742, !noalias !87723 ; 2 uses
  %i.qm = icmp eq i64 %.val.i180.i.i.i, 0
  br i1 %i.qm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal.exit182.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal.exit.i.i64.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pf, i64 noundef %.val.i180.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !87743
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal.exit182.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal.exit182.i.i.i: ; preds = %bb.dm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal.exit.i.i64.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !87723
  br label %bb.cy

bb.dn:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !87723
  %.not2.i.not.i.i.i = icmp eq i64 %.sroa.732.0.i.i.i, 0
  br i1 %.not2.i.not.i.i.i, label %bb.do, label %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf6get_u8Cs7XnEB7DeNXr_7sslocal.exit.i.i.i, !prof !154

bb.do:                                            ; preds = %bb.dn
  call void @_RNvCsknai52m1gBp_5bytes13panic_advance(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @54) #61, !noalias !87744
  unreachable

_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf6get_u8Cs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %bb.dn
  %i.qn = load i8, ptr %.sroa.027.0.i.i.i, align 1, !noalias !87744, !noundef !145 ; 4 uses
  store i8 %i.qn, ptr %i.aa, align 1, !noalias !87723
  %i.qo = load i8, ptr %i.le, align 16, !range !148, !alias.scope !87721, !noundef !145
  %not..i.i.i = xor i8 %i.qo, 1                   ; 2 uses
  %.not161.i.i.i = icmp eq i8 %i.qn, %not..i.i.i
  br i1 %.not161.i.i.i, label %bb.dp, label %.loopexit182.i.i

.loopexit181.i.i:                                 ; preds = %bb.cy, %.loopexit182.i.i
  %.sroa.28.0.i.i = phi i64 [ %.sroa.28.2.i.i, %.loopexit182.i.i ], [ undef, %bb.cy ]
  %.sroa.20116.0.i.i = phi i64 [ %.sroa.20116.2.i.i, %.loopexit182.i.i ], [ undef, %bb.cy ]
  %.sroa.19.0.i.i = phi i8 [ %i.qn, %.loopexit182.i.i ], [ undef, %bb.cy ]
  %.sroa.16.0.i.i = phi i8 [ %not..i542.i.i, %.loopexit182.i.i ], [ undef, %bb.cy ]
  %.sroa.0.0.i.i = phi i8 [ %.sroa.0.2.i.i, %.loopexit182.i.i ], [ 4, %bb.cy ]
  %i.qp = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.val171.i.i.i = load ptr, ptr %i.qp, align 8, !noalias !87723
  call void @"\01aws_lc_0_44_0_EVP_AEAD_CTX_free"(ptr noundef %.val171.i.i.i) #52, !noalias !87722
  br label %bb.er

bb.dp:                                            ; preds = %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf6get_u8Cs7XnEB7DeNXr_7sslocal.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !87723
  %i.qq = icmp ult i64 %.sroa.732.0.i.i.i, 9
  br i1 %i.qq, label %_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u640Cs7XnEB7DeNXr_7sslocal.exit.i.i.i, label %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u64Cs7XnEB7DeNXr_7sslocal.exit.i.i

_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u640Cs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %bb.dp
  %i.qr = add nsw i64 %.sroa.732.0.i.i.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !87745
  store i64 8, ptr %i.m, align 8, !noalias !87745
  %i.qs = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.qr, ptr %i.qs, align 8, !noalias !87745
  call void @_RNvCsknai52m1gBp_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m) #61, !noalias !87746
  unreachable

_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u64Cs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %bb.dp
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i.i, i64 1
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.qt, align 1, !noalias !87747
  %i.qu = call i64 @llvm.bswap.i64(i64 %.sroa.03.0.copyload.i.i.i.i) ; 3 uses
  store i64 %i.qu, ptr %i.z, align 8, !noalias !87723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !87748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !87748
  %i.qv = call { i64, i32 } @_RNvMs5_NtCs5Xr050g3D4S_3std4timeNtB5_10SystemTime3now() #52, !noalias !87722 ; 2 uses
  %i.qw = extractvalue { i64, i32 } %i.qv, 0
  %i.qx = extractvalue { i64, i32 } %i.qv, 1
  store i64 %i.qw, ptr %i.n, align 8, !noalias !87748
  store i32 %i.qx, ptr %i.mi, align 8, !noalias !87748
  call void @_RNvMs5_NtCs5Xr050g3D4S_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, i64 noundef 0, i32 noundef 0) #52, !noalias !87722
  %i.qy = load i64, ptr %i.o, align 8, !range !149, !noalias !87748, !noundef !145
  %i.qz = trunc nuw i64 %i.qy to i1
  br i1 %i.qz, label %bb.dq, label %_RNvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202217get_now_timestamp.exit.i.i, !prof !154

bb.dq:                                            ; preds = %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u64Cs7XnEB7DeNXr_7sslocal.exit.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @2130, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2131) #62, !noalias !87722
  unreachable

_RNvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202217get_now_timestamp.exit.i.i: ; preds = %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u64Cs7XnEB7DeNXr_7sslocal.exit.i.i
  %i.ra = load i64, ptr %i.mj, align 8, !noalias !87748, !noundef !145 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !87748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !87748
  %i.rb = sub i64 %i.ra, %i.qu
  %5 = add i64 %i.rb, -31
  %6 = icmp ult i64 %5, -61
  br i1 %6, label %.loopexit183.i.i, label %bb.dr

bb.dr:                                            ; preds = %_RNvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202217get_now_timestamp.exit.i.i
  %.not162.i.i.i = icmp eq i64 %..i.i.i, 0
  br i1 %.not162.i.i.i, label %bb.dy, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !87723
  call void @llvm.experimental.noalias.scope.decl(metadata !87749)
  %.not.i.i70.i = icmp slt i64 %i.nu, 0
  br i1 %.not.i.i70.i, label %bb.dw, label %bb.dt, !prof !261

bb.dt:                                            ; preds = %bb.ds
  %i.rc = icmp eq i64 %i.nu, 0
  br i1 %i.rc, label %_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !87750
  %i.rd = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.nu, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !87750 ; 2 uses
  %i.re = icmp eq ptr %i.rd, null
  br i1 %i.re, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.rf = ptrtoint ptr %i.rd to i64
  br label %_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit.i

bb.dw:                                            ; preds = %bb.du, %bb.ds
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.du ], [ 0, %bb.ds ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.nu) #61, !noalias !87751
  unreachable

_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit.i: ; preds = %bb.dv, %bb.dt
  %.sroa.10.0.i.i = phi i64 [ %i.rf, %bb.dv ], [ 1, %bb.dt ]
  %i.rg = inttoptr i64 %.sroa.10.0.i.i to ptr
  %i.rh = lshr i64 %i.nu, 10
  %i.ri = call range(i64 11, 65) i64 @llvm.ctlz.i64(i64 %i.rh, i1 false)
  %i.rj = sub nuw nsw i64 64, %i.ri
  %i.rk = call i64 @llvm.umin.i64(i64 %i.rj, i64 7)
  %i.rl = shl nuw nsw i64 %i.rk, 2
  %i.rm = getelementptr i8, ptr null, i64 %i.rl
  %i.rn = getelementptr i8, ptr %i.rm, i64 1
  store ptr %i.rg, ptr %i.y, align 8, !alias.scope !87749, !noalias !87752
  store i64 0, ptr %i.mk, align 8, !alias.scope !87749, !noalias !87752
  store i64 %i.nu, ptr %i.nf, align 8, !alias.scope !87749, !noalias !87752
  store ptr %i.rn, ptr %i.ng, align 8, !alias.scope !87749, !noalias !87752
  call void @_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut6resize(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef %i.nu, i8 noundef 0) #52, !noalias !87722
  %i.ro = load ptr, ptr %i.y, align 8, !noalias !87723, !nonnull !145, !noundef !145 ; 2 uses
  %i.rp = load i64, ptr %i.mk, align 8, !noalias !87723, !noundef !145 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !87753)
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i.i, i64 9 ; 2 uses
  %i.rr = add nsw i64 %.sroa.732.0.i.i.i, -9
  call void @llvm.experimental.noalias.scope.decl(metadata !87754)
  %i.rs = icmp ugt i64 %i.rp, %i.rr
  br i1 %i.rs, label %bb.ec, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit.i
  %i.rt = icmp eq i64 %i.rp, 1
  br i1 %i.rt, label %bb.dx, label %_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ro, ptr nonnull readonly align 1 %i.rq, i64 range(i64 0, -9223372036854775808) %i.rp, i1 false), !alias.scope !87755, !noalias !87756
  br label %bb.ed

bb.dx:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  %i.ru = load i8, ptr %i.rq, align 1, !noalias !87757, !noundef !145
  store i8 %i.ru, ptr %i.ro, align 1, !alias.scope !87758, !noalias !87722
  br label %bb.ed

bb.dy:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal.exit185.i.i.i, %bb.dr
  %.sroa.7104.0.i = phi i64 [ 9, %bb.dr ], [ %i.st, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal.exit185.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !87723
  %i.rv = call i64 @llvm.usub.sat.i64(i64 %.sroa.732.0.i.i.i, i64 %.sroa.7104.0.i) ; 2 uses
  %i.rw = icmp samesign ult i64 %i.rv, 2
  br i1 %i.rw, label %_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u160Cs7XnEB7DeNXr_7sslocal.exit.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.rx = call i64 @llvm.umin.i64(i64 %.sroa.7104.0.i, i64 %.sroa.732.0.i.i.i) ; 2 uses
  %i.ry = sub nuw nsw i64 %.sroa.732.0.i.i.i, %i.rx
  %i.rz = icmp ugt i64 %i.ry, 1
  br i1 %i.rz, label %_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !87759
  store i16 0, ptr %i.d, align 2, !noalias !87759
  br label %bb.ea

bb.ea:                                            ; preds = %_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.0.017.i.i.i.i.i = phi ptr [ %i.d, %.preheader.i.i.i.i.i ], [ %i.si, %_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.9.016.i.i.i.i.i = phi i64 [ 2, %.preheader.i.i.i.i.i ], [ %i.sj, %_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i ] ; 2 uses
  %i.sa = phi i64 [ %.sroa.7104.0.i, %.preheader.i.i.i.i.i ], [ %i.sk, %_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i ] ; 3 uses
  %i.sb = call i64 @llvm.umin.i64(i64 %i.sa, i64 %.sroa.732.0.i.i.i) ; 2 uses
  %i.sc = sub nuw nsw i64 %.sroa.732.0.i.i.i, %i.sb
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i.i, i64 %i.sb
  %i.se = call i64 @llvm.umin.i64(i64 %i.sc, i64 %.sroa.9.016.i.i.i.i.i) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.017.i.i.i.i.i, ptr nonnull readonly align 1 %i.sd, i64 range(i64 0, -9223372036854775808) %i.se, i1 false), !alias.scope !87760, !noalias !87761
  %i.sf = call i64 @llvm.usub.sat.i64(i64 %.sroa.732.0.i.i.i, i64 %i.sa) ; 2 uses
  %i.sg = icmp ugt i64 %i.se, %i.sf
  br i1 %i.sg, label %bb.eb, label %_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i, !prof !154

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !87762
  store i64 %i.se, ptr %i.c, align 8, !noalias !87762
  %i.sh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.sf, ptr %i.sh, align 8, !noalias !87762
  call void @_RNvCsknai52m1gBp_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) #61, !noalias !87763
  unreachable

_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i: ; preds = %bb.ea
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i.i.i.i, i64 %i.se
  %i.sj = sub nuw nsw i64 %.sroa.9.016.i.i.i.i.i, %i.se ; 2 uses
  %i.sk = add i64 %i.se, %i.sa
  %i.sl = icmp eq i64 %i.sj, 0
  br i1 %i.sl, label %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf13copy_to_sliceCs7XnEB7DeNXr_7sslocal.exit.i.i.i, label %bb.ea

_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf13copy_to_sliceCs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  %.sroa.02.0.copyload.i.i.i = load i16, ptr %i.d, align 2, !noalias !87759
  %i.sm = call i16 @llvm.bswap.i16(i16 %.sroa.02.0.copyload.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !87759
  br label %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u16Cs7XnEB7DeNXr_7sslocal.exit.i

_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %bb.dz
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i.i, i64 %i.rx
  %.sroa.03.0.copyload.i.i.i = load i16, ptr %i.sn, align 1, !noalias !87764
  %i.so = call i16 @llvm.bswap.i16(i16 %.sroa.03.0.copyload.i.i.i)
  br label %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u16Cs7XnEB7DeNXr_7sslocal.exit.i

_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u160Cs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !87765
  store i64 2, ptr %i.e, align 8, !noalias !87765
  %i.sp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.rv, ptr %i.sp, align 8, !noalias !87765
  call void @_RNvCsknai52m1gBp_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e) #61, !noalias !87766
  unreachable

_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u16Cs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i, %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf13copy_to_sliceCs7XnEB7DeNXr_7sslocal.exit.i.i.i
  %.sroa.6.0.ph.i.i = phi i16 [ %i.so, %_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %i.sm, %_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf13copy_to_sliceCs7XnEB7DeNXr_7sslocal.exit.i.i.i ]
  store i16 %.sroa.6.0.ph.i.i, ptr %i.x, align 2, !noalias !87723
  %i.sq = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !87723 ; 2 uses
  %i.sr = icmp ult i64 %i.sq, 6
  call void @llvm.assume(i1 %i.sr)
  %i.ss = icmp samesign ugt i64 %i.sq, 4
  br i1 %i.ss, label %bb.ei, label %bb.ej

bb.ec:                                            ; preds = %_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit.i
  call void @_RNvXs0_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y) #52, !noalias !87722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !87723
  br label %.loopexit183.i.i

bb.ed:                                            ; preds = %bb.dx, %_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  %i.st = add nuw i64 %i.rp, 9
  %.sroa.0116.0.copyload.i = load ptr, ptr %i.y, align 8, !noalias !87723 ; 4 uses
  %.sroa.5118.0.copyload.i = load i64, ptr %i.mk, align 8, !noalias !87723 ; 2 uses
  %.sroa.8121.0.copyload.i = load ptr, ptr %i.ng, align 8, !noalias !87723 ; 2 uses
  %i.su = ptrtoint ptr %.sroa.8121.0.copyload.i to i64 ; 2 uses
  %i.sv = and i64 %i.su, 1
  %.not.i67.i = icmp eq i64 %i.sv, 0
  br i1 %.not.i67.i, label %bb.eg, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %.sroa.7120.0.copyload.i = load i64, ptr %i.nf, align 8, !noalias !87723
  %i.sw = lshr i64 %i.su, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !87767
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0116.0.copyload.i) ]
  %i.sx = sub nsw i64 0, %i.sw
  %i.sy = getelementptr inbounds i8, ptr %.sroa.0116.0.copyload.i, i64 %i.sx
  %i.sz = add i64 %i.sw, %.sroa.5118.0.copyload.i
  %i.ta = add i64 %.sroa.7120.0.copyload.i, %i.sw ; 2 uses
  %i.tb = icmp sgt i64 %i.ta, -1
  call void @llvm.assume(i1 %i.tb), !noalias !87768
  store i64 %i.ta, ptr %i.j, align 8, !noalias !87767
  store ptr %i.sy, ptr %i.nh, align 8, !noalias !87767
  store i64 %i.sz, ptr %i.ni, align 8, !noalias !87767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !87767
  call void @_RNvXsE_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j) #52, !noalias !87769
  call void @llvm.experimental.noalias.scope.decl(metadata !87770), !noalias !87768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !87767
  store i64 %i.sw, ptr %i.h, align 8, !noalias !87771
  %i.tc = load i64, ptr %i.nj, align 8, !alias.scope !87770, !noalias !87767, !noundef !145 ; 3 uses
  %.not.i.i68.i = icmp ugt i64 %i.sw, %i.tc
  br i1 %.not.i.i68.i, label %bb.ef, label %_RNvXs3_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i, !prof !154

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !87771
  store i64 %i.tc, ptr %i.g, align 8, !noalias !87771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !87771
  store ptr %i.h, ptr %i.f, align 8, !noalias !87771
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsZ_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !87771
  %i.td = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.td, align 8, !noalias !87771
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsZ_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !87771
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @2420, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2570) #62, !noalias !87772
  unreachable

_RNvXs3_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i: ; preds = %bb.ee
  %i.te = sub nuw i64 %i.tc, %i.sw
  %i.tf = load ptr, ptr %i.nk, align 8, !alias.scope !87770, !noalias !87767, !noundef !145
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.sw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !87767
  %.sroa.0105.0.copyload106.i = load ptr, ptr %i.i, align 8, !noalias !87773
end_hunk_1
