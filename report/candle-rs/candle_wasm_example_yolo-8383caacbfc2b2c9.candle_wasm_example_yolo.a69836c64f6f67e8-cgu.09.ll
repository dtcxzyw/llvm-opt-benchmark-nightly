Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_yolo-8383caacbfc2b2c9.candle_wasm_example_yolo.a69836c64f6f67e8-cgu.09?download=true
inline.NumInlined: 382
inline.NumDeleted: 195
begin_hunk_0_@_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtBU_3any6TypeIdECseiMiKruFR5A_24candle_wasm_example_yolo:bb.a
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !123
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !123
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !123
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.h, align 8, !noalias !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !125
  store i64 %.val.i, ptr %i.a, align 8, !noalias !125
  call fastcc void @_RNvXs2_NtNtCs5Xr050g3D4S_3std4hash6randomNtB5_13DefaultHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !125
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !126
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !126
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !126 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !126
  %i.i = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !126, !noundef !5
  %i.j = shl i64 %i.i, 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !126, !noundef !5
  %i.m = or i64 %i.j, %i.l                        ; 2 uses
  %i.n = xor i64 %i.m, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.o = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.p = add i64 %i.n, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.r = xor i64 %i.q, %i.o                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 16)
  %i.t = xor i64 %i.s, %i.p                       ; 3 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 32)
  %i.v = add i64 %i.p, %i.r                       ; 3 uses
  %i.w = add i64 %i.t, %i.u                       ; 2 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 17)
  %i.y = xor i64 %i.v, %i.x                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 21)
  %i.aa = xor i64 %i.z, %i.w                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 32)
  %i.ac = xor i64 %i.w, %i.m
  %i.ad = xor i64 %i.ab, 255
  %i.ae = add i64 %i.ac, %i.y                     ; 3 uses
  %i.af = add i64 %i.aa, %i.ad                    ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 13)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 16)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = add i64 %i.ah, %i.af                    ; 3 uses
  %i.am = add i64 %i.aj, %i.ak                    ; 2 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 17)
  %i.ao = xor i64 %i.al, %i.an                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 21)
  %i.aq = xor i64 %i.ap, %i.am                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.as = add i64 %i.ao, %i.am                    ; 3 uses
  %i.at = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 13)
  %i.av = xor i64 %i.au, %i.as                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 16)
  %i.ax = xor i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.az = add i64 %i.av, %i.at                    ; 3 uses
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 17)
  %i.bc = xor i64 %i.bb, %i.az                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 21)
  %i.be = xor i64 %i.bd, %i.ba                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 13)
  %i.bj = xor i64 %i.bi, %i.bg                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 16)
  %i.bl = xor i64 %i.bk, %i.bh                    ; 2 uses
  %i.bm = add i64 %i.bj, %i.bh                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 17)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 21)
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 32)
  %i.bq = xor i64 %i.bo, %i.bn
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = xor i64 %i.br, %i.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bs
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYQINtNtCsca3zzRxL8hD_7bincode3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEINtNtB9_6config14WithOtherLimitINtB1o_17WithOtherTrailingINtB1o_20WithOtherIntEncodingNtB1o_14DefaultOptionsNtNtB1o_3int14FixintEncodingENtNtB1o_8trailing13AllowTrailingENtNtB1o_5limit8InfiniteEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRBM_ECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val12 = load i64, ptr %i.d, align 8, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 %.val12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !139, !nonnull !5, !align !15, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !139
  store i64 %.val12, ptr %i.b, align 8, !alias.scope !140, !noalias !139
  call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) 8), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !139
  %i.f = icmp samesign eq i64 %.val12, 0
  br i1 %i.f, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsca3zzRxL8hD_7bincode3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEINtNtB1Q_6config14WithOtherLimitINtB35_17WithOtherTrailingINtB35_20WithOtherIntEncodingNtB35_14DefaultOptionsNtNtB35_3int14FixintEncodingENtNtB35_8trailing13AllowTrailingENtNtB35_5limit8InfiniteEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRB2t_E0INtNtBa_6result6ResultuINtNtB2y_5boxed3BoxNtNtB1Q_5error9ErrorKindEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.g = phi ptr [ %i.h, %.lr.ph.i.i ], [ %.val, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %.val6.i.i = load i8, ptr %i.g, align 1, !alias.scope !141, !noalias !142, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !143
  store i8 %.val6.i.i, ptr %i.a, align 1, !noalias !143
  call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !143
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsca3zzRxL8hD_7bincode3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEINtNtB1Q_6config14WithOtherLimitINtB35_17WithOtherTrailingINtB35_20WithOtherIntEncodingNtB35_14DefaultOptionsNtNtB35_3int14FixintEncodingENtNtB35_8trailing13AllowTrailingENtNtB35_5limit8InfiniteEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRB2t_E0INtNtBa_6result6ResultuINtNtB2y_5boxed3BoxNtNtB1Q_5error9ErrorKindEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %.lr.ph.i.i

_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsca3zzRxL8hD_7bincode3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEINtNtB1Q_6config14WithOtherLimitINtB35_17WithOtherTrailingINtB35_20WithOtherIntEncodingNtB35_14DefaultOptionsNtNtB35_3int14FixintEncodingENtNtB35_8trailing13AllowTrailingENtNtB35_5limit8InfiniteEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRB2t_E0INtNtBa_6result6ResultuINtNtB2y_5boxed3BoxNtNtB1Q_5error9ErrorKindEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %.lr.ph.i.i, %bb.a
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noalias noundef align 8 ptr @_RINvYQINtNtCsca3zzRxL8hD_7bincode3ser11SizeCheckerQINtNtB9_6config14WithOtherLimitINtBQ_17WithOtherTrailingINtBQ_20WithOtherIntEncodingNtBQ_14DefaultOptionsNtNtBQ_3int14FixintEncodingENtNtBQ_8trailing13AllowTrailingENtNtBQ_5limit8InfiniteEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRINtNtCsgCecv3eZDcN_5alloc3vec3VechEECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsca3zzRxL8hD_7bincode3ser11SizeCheckerQINtNtB1Q_6config14WithOtherLimitINtB2x_17WithOtherTrailingINtB2x_20WithOtherIntEncodingNtB2x_14DefaultOptionsNtNtB2x_3int14FixintEncodingENtNtB2x_8trailing13AllowTrailingENtNtB2x_5limit8InfiniteEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRINtNtCsgCecv3eZDcN_5alloc3vec3VechEE0INtNtBa_6result6ResultuINtNtB6G_5boxed3BoxNtNtB1Q_5error9ErrorKindEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val12 = load i64, ptr %i.a, align 8, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !148, !noundef !5
  %i.d = add i64 %i.c, 8
  %i.e = add i64 %.val12, %i.d
  store i64 %i.e, ptr %i.b, align 8
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYQINtNtCsca3zzRxL8hD_7bincode3ser11SizeCheckerQINtNtB9_6config17WithOtherTrailingINtBQ_20WithOtherIntEncodingNtBQ_14DefaultOptionsNtNtBQ_3int14FixintEncodingENtNtBQ_8trailing13AllowTrailingEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRINtNtCsgCecv3eZDcN_5alloc3vec3VechEECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val12 = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.val12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !172, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = tail call noundef nonnull ptr @_RNvXs9_NtCsca3zzRxL8hD_7bincode6configINtB5_17WithOtherTrailingINtB5_20WithOtherIntEncodingNtB5_14DefaultOptionsNtNtB5_3int14FixintEncodingENtNtB5_8trailing13AllowTrailingENtNtB5_8internal15InternalOptions5limitCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull %i.d), !noalias !172 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !173, !noundef !5
  %i.h = add i64 %i.g, 8                          ; 2 uses
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !173
  %i.i = icmp samesign eq i64 %.val12, 0
  br i1 %i.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsca3zzRxL8hD_7bincode3ser11SizeCheckerQINtNtB1Q_6config17WithOtherTrailingINtB2x_20WithOtherIntEncodingNtB2x_14DefaultOptionsNtNtB2x_3int14FixintEncodingENtNtB2x_8trailing13AllowTrailingEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRINtNtCsgCecv3eZDcN_5alloc3vec3VechEE0INtNtBa_6result6ResultuINtNtB5V_5boxed3BoxNtNtB1Q_5error9ErrorKindEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.j = phi i64 [ %i.n, %.lr.ph.i.i ], [ %i.h, %bb.a ]
  %i.k = phi ptr [ %i.l, %.lr.ph.i.i ], [ %.val, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.m = tail call noundef nonnull ptr @_RNvXs9_NtCsca3zzRxL8hD_7bincode6configINtB5_17WithOtherTrailingINtB5_20WithOtherIntEncodingNtB5_14DefaultOptionsNtNtB5_3int14FixintEncodingENtNtB5_8trailing13AllowTrailingENtNtB5_8internal15InternalOptions5limitCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull %i.d), !noalias !178 ; 0 uses
  %i.n = add i64 %i.j, 1                          ; 2 uses
  store i64 %i.n, ptr %i.f, align 8, !alias.scope !179, !noalias !180
  %i.o = icmp eq ptr %i.l, %i.c
  br i1 %i.o, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsca3zzRxL8hD_7bincode3ser11SizeCheckerQINtNtB1Q_6config17WithOtherTrailingINtB2x_20WithOtherIntEncodingNtB2x_14DefaultOptionsNtNtB2x_3int14FixintEncodingENtNtB2x_8trailing13AllowTrailingEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRINtNtCsgCecv3eZDcN_5alloc3vec3VechEE0INtNtBa_6result6ResultuINtNtB5V_5boxed3BoxNtNtB1Q_5error9ErrorKindEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit, label %.lr.ph.i.i

_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsca3zzRxL8hD_7bincode3ser11SizeCheckerQINtNtB1Q_6config17WithOtherTrailingINtB2x_20WithOtherIntEncodingNtB2x_14DefaultOptionsNtNtB2x_3int14FixintEncodingENtNtB2x_8trailing13AllowTrailingEENtNtCseZbltJ5Yqe_10serde_core3ser10Serializer11collect_seqRINtNtCsgCecv3eZDcN_5alloc3vec3VechEE0INtNtBa_6result6ResultuINtNtB5V_5boxed3BoxNtNtB1Q_5error9ErrorKindEEECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %.lr.ph.i.i, %bb.a
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs1Nb2CypNuX2_3png7decoder12read_decoderINtB2_11ReadDecoderINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc3vec3VechEEE16read_header_infoCseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(592) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.8.i = alloca [12 x i8], align 8          ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %i.h = load i64, ptr %i.c, align 8, !range !9, !alias.scope !189, !noundef !5
  %.not.i = icmp eq i64 %i.h, -1
  br i1 %.not.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !191
  call void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtB8_3vec3VechEENtNtB6_8buf_read7BufRead8fill_bufCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(592) %1), !noalias !192
  %i.i = load ptr, ptr %i.b, align 8, !noalias !191, !noundef !5 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.d, align 8, !noalias !191, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !191
  %i.l = ptrtoint ptr %i.k to i64                 ; 3 uses
  %.sroa.969.sroa.13.0.extract.shift89 = lshr i64 %i.l, 32
  %.sroa.969.sroa.13.0.extract.trunc90 = trunc i64 %.sroa.969.sroa.13.0.extract.shift89 to i8
  %.sroa.969.sroa.15.0.extract.shift95 = lshr i64 %i.l, 40
  %.sroa.969.sroa.17.0.extract.trunc102 = trunc nuw i64 %.sroa.969.sroa.15.0.extract.shift95 to i24
  %2 = bitcast i64 %i.l to <8 x i8>
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.d, align 8, !noalias !191, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !191
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !191
  call void @_RNvMs9_NtNtCs1Nb2CypNuX2_3png7decoder6streamNtB5_16StreamingDecoder6update(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(560) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.m, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null), !noalias !193
  %i.o = load i64, ptr %i.a, align 8, !range !16, !noalias !191, !noundef !5 ; 2 uses
  %.not.i67 = icmp eq i64 %i.o, -1
  %.sroa.014.0.copyload.i = load i64, ptr %i.f, align 8, !noalias !191 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.415.0..sroa_idx.i, i64 12, i1 false), !noalias !191
  br i1 %.not.i67, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.624.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.624.0.copyload.i = load i32, ptr %.sroa.624.0..sroa_idx.i, align 4, !noalias !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !191
  %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.25.sroa.0.0.copyload = load i32, ptr %.sroa.8.i, align 8, !noalias !194
  %.sroa.8.i.4.i.4.i.4.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8.i, i64 4
  %.sroa.8.i.4..sroa.8.i.4..sroa.8.i.4..sroa.25.sroa.7.0.copyload = load i64, ptr %.sroa.8.i.4.i.4.i.4.i.sroa_idx, align 4, !noalias !194
  %.sroa.969.sroa.15.0.extract.shift97 = lshr i64 %.sroa.014.0.copyload.i, 32
  %.sroa.969.sroa.15.0.extract.trunc98 = trunc i64 %.sroa.969.sroa.15.0.extract.shift97 to i8
  %.sroa.969.sroa.17.0.extract.shift103 = lshr i64 %.sroa.014.0.copyload.i, 40
  %.sroa.969.sroa.17.0.extract.trunc104 = trunc nuw i64 %.sroa.969.sroa.17.0.extract.shift103 to i24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %4 = bitcast i64 %.sroa.014.0.copyload.i to <8 x i8>
  %5 = shufflevector <8 x i8> %4, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %.loopexit

bb.h:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.h
  ret void

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.g
  %.sroa.25.sroa.7.0.ph = phi i64 [ %.sroa.8.i.4..sroa.8.i.4..sroa.8.i.4..sroa.25.sroa.7.0.copyload, %bb.g ], [ undef, %bb.d ], [ undef, %bb.e ]
  %.sroa.25.sroa.0.0.ph = phi i32 [ %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.25.sroa.0.0.copyload, %bb.g ], [ undef, %bb.d ], [ undef, %bb.e ]
  %.sroa.969.sroa.17.sroa.0.0.ph = phi i24 [ %.sroa.969.sroa.17.0.extract.trunc104, %bb.g ], [ %.sroa.969.sroa.17.0.extract.trunc102, %bb.d ], [ 0, %bb.e ]
  %.sroa.969.sroa.0.0.ph = phi i8 [ %.sroa.969.sroa.15.0.extract.trunc98, %bb.g ], [ %.sroa.969.sroa.13.0.extract.trunc90, %bb.d ], [ 37, %bb.e ]
  %.sroa.27.0.ph = phi i32 [ %.sroa.624.0.copyload.i, %bb.g ], [ undef, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.ph = phi i64 [ %i.o, %bb.g ], [ 0, %bb.d ], [ 0, %bb.e ]
  %6 = phi <4 x i8> [ %5, %bb.g ], [ %3, %bb.d ], [ <i8 3, i8 0, i8 0, i8 0>, %bb.e ]
  store i64 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i8> %6, ptr %.sroa.759.0..sroa_idx, align 8
  %.sroa.860.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.969.sroa.0.0.ph, ptr %.sroa.860.0..sroa_idx, align 4
  %.sroa.961.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i24 %.sroa.969.sroa.17.sroa.0.0.ph, ptr %.sroa.961.0..sroa_idx, align 1
  %.sroa.961.sroa.4.0..sroa.961.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.25.sroa.0.0.ph, ptr %.sroa.961.sroa.4.0..sroa.961.0..sroa_idx.sroa_idx, align 8
  %.sroa.1062.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i64 %.sroa.25.sroa.7.0.ph, ptr %.sroa.1062.0..sroa_idx, align 4
  %.sroa.1062.sroa.4.0..sroa.1062.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.27.0.ph, ptr %.sroa.1062.sroa.4.0..sroa.1062.0..sroa_idx.sroa_idx, align 4
  br label %bb.i

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !191
  %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.969.8.copyload = load i64, ptr %.sroa.8.i, align 8, !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.q = load i64, ptr %i.g, align 8, !alias.scope !195, !noalias !192, !noundef !5
  %i.r = add i64 %i.q, %.sroa.014.0.copyload.i
  store i64 %i.r, ptr %i.g, align 8, !alias.scope !195, !noalias !192
  %i.s = and i64 %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.969.8.copyload, 1099511627775
  %or.cond15 = icmp eq i64 %i.s, 293370939650
  br i1 %or.cond15, label %bb.k, label %bb.b, !prof !196

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs1Nb2CypNuX2_3png7decoder12read_decoderINtB2_11ReadDecoderINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc3vec3VechEEE17decode_image_dataCseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 9)) %0, ptr noalias nofree noundef align 8 dereferenceable(592) %1, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.8.i = alloca [12 x i8], align 8          ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !204
  call void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtB8_3vec3VechEENtNtB6_8buf_read7BufRead8fill_bufCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(592) %1), !noalias !205
  %i.c = load ptr, ptr %i.b, align 8, !noalias !204, !noundef !5 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !noalias !204, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !204
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %.sroa.9.sroa.0.0.extract.trunc = trunc i64 %i.g to i8
  %.sroa.9.sroa.9.0.extract.shift26 = lshr i64 %i.g, 8
  %.sroa.9.sroa.9.0.extract.trunc27 = trunc nuw i64 %.sroa.9.sroa.9.0.extract.shift26 to i56
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.e, align 8, !noalias !204, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !204
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !204
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_RNvMs9_NtNtCs1Nb2CypNuX2_3png7decoder6streamNtB5_16StreamingDecoder6update(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(560) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.h, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) %2), !noalias !206
  %i.k = load i64, ptr %i.a, align 8, !range !16, !noalias !204, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.k, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.014.0.copyload.i = load i64, ptr %i.l, align 8, !noalias !204 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.415.0..sroa_idx.i, i64 12, i1 false), !noalias !204
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.624.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.624.0.copyload.i = load i32, ptr %.sroa.624.0..sroa_idx.i, align 4, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !204
  %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.17.sroa.0.0.copyload = load i32, ptr %.sroa.8.i, align 8, !noalias !207
  %.sroa.8.i.4.i.4.i.4.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8.i, i64 4
  %.sroa.8.i.4..sroa.8.i.4..sroa.8.i.4..sroa.17.sroa.7.0.copyload = load i64, ptr %.sroa.8.i.4.i.4.i.4.i.sroa_idx, align 4, !noalias !207
  %.sroa.9.sroa.0.0.extract.trunc24 = trunc i64 %.sroa.014.0.copyload.i to i8
  %.sroa.9.sroa.9.0.extract.shift28 = lshr i64 %.sroa.014.0.copyload.i, 8
  %.sroa.9.sroa.9.0.extract.trunc29 = trunc nuw i64 %.sroa.9.sroa.9.0.extract.shift28 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.e
  %.sroa.17.sroa.7.0.ph = phi i64 [ %.sroa.8.i.4..sroa.8.i.4..sroa.8.i.4..sroa.17.sroa.7.0.copyload, %bb.e ], [ undef, %bb.b ], [ undef, %bb.c ]
  %.sroa.17.sroa.0.0.ph = phi i32 [ %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.17.sroa.0.0.copyload, %bb.e ], [ undef, %bb.b ], [ undef, %bb.c ]
  %.sroa.9.sroa.9.sroa.0.0.ph = phi i56 [ %.sroa.9.sroa.9.0.extract.trunc29, %bb.e ], [ %.sroa.9.sroa.9.0.extract.trunc27, %bb.b ], [ 620756992, %bb.c ]
  %.sroa.9.sroa.0.0.ph = phi i8 [ %.sroa.9.sroa.0.0.extract.trunc24, %bb.e ], [ %.sroa.9.sroa.0.0.extract.trunc, %bb.b ], [ 3, %bb.c ]
  %.sroa.19.0.ph = phi i32 [ %.sroa.624.0.copyload.i, %bb.e ], [ undef, %bb.b ], [ undef, %bb.c ]
  %.sroa.0.0.ph = phi i64 [ %i.k, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ]
  store i64 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.9.sroa.0.0.ph, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i56 %.sroa.9.sroa.9.sroa.0.0.ph, ptr %.sroa.520.0..sroa_idx, align 1
  %.sroa.520.sroa.4.0..sroa.520.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.17.sroa.0.0.ph, ptr %.sroa.520.sroa.4.0..sroa.520.0..sroa_idx.sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i64 %.sroa.17.sroa.7.0.ph, ptr %.sroa.621.0..sroa_idx, align 4
  %.sroa.621.sroa.4.0..sroa.621.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.19.0.ph, ptr %.sroa.621.sroa.4.0..sroa.621.0..sroa_idx.sroa_idx, align 4
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !204
  %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.9.8.copyload = load i64, ptr %.sroa.8.i, align 8, !noalias !207
  %.sroa.9.sroa.0.0.extract.trunc25 = trunc i64 %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.9.8.copyload to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !208, !noalias !205, !noundef !5
  %i.o = add i64 %i.n, %.sroa.014.0.copyload.i
  store i64 %i.o, ptr %i.m, align 8, !alias.scope !208, !noalias !205
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i8 %.sroa.9.sroa.0.0.extract.trunc25, label %bb.h [
    i8 5, label %bb.i
    i8 6, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  store i8 0, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  store i8 1, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs1Nb2CypNuX2_3png7decoder12read_decoderINtB2_11ReadDecoderINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc3vec3VechEEE21read_until_image_dataCseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(592) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.8.i = alloca [12 x i8], align 8          ; 11 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !217
  call void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtB8_3vec3VechEENtNtB6_8buf_read7BufRead8fill_bufCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(592) %1), !noalias !218
  %i.c = load ptr, ptr %i.b, align 8, !noalias !217, !noundef !5 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.8.i.8.i.8.i.8.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8.i, i64 8
  %.sroa.8.i.9.i.9.i.9.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8.i, i64 9
  %.sroa.8.i.10.i.10.i.10.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8.i, i64 10
  %.sroa.8.i.11.i.11.i.11.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8.i, i64 11
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !noalias !219, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !219
  %i.j = ptrtoint ptr %i.i to i64                 ; 3 uses
  %.sroa.9103.sroa.13.0.extract.shift123 = lshr i64 %i.j, 32
  %.sroa.9103.sroa.13.0.extract.trunc124 = trunc i64 %.sroa.9103.sroa.13.0.extract.shift123 to i8
  %.sroa.9103.sroa.15.0.extract.shift129 = lshr i64 %i.j, 40
  %.sroa.9103.sroa.17.0.extract.trunc136 = trunc nuw i64 %.sroa.9103.sroa.15.0.extract.shift129 to i24
  %2 = bitcast i64 %i.j to <8 x i8>
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.k = phi ptr [ %i.c, %.lr.ph ], [ %i.r, %bb.f ]
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.l = load i64, ptr %i.e, align 8, !noalias !219, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !219
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !219
  call void @_RNvMs9_NtNtCs1Nb2CypNuX2_3png7decoder6streamNtB5_16StreamingDecoder6update(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(560) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.l, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null), !noalias !221
  %i.n = load i64, ptr %i.a, align 8, !range !16, !noalias !219, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.n, -1
  %.sroa.014.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !219 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.415.0..sroa_idx.i, i64 12, i1 false), !noalias !219
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.624.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.624.0.copyload.i = load i32, ptr %.sroa.624.0..sroa_idx.i, align 4, !noalias !219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !219
  %.sroa.8.i.0. = load <4 x i8>, ptr %.sroa.8.i, align 8, !noalias !222
  %.sroa.8.i.4.i.4.i.4.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8.i, i64 4
  %.sroa.8.i.4..sroa.8.i.4..sroa.8.i.4..sroa.34.16.copyload = load i64, ptr %.sroa.8.i.4.i.4.i.4.i.sroa_idx, align 4, !noalias !222
  %.sroa.9103.sroa.15.0.extract.shift131 = lshr i64 %.sroa.014.0.copyload.i, 32
  %.sroa.9103.sroa.15.0.extract.trunc132 = trunc i64 %.sroa.9103.sroa.15.0.extract.shift131 to i8
  %.sroa.9103.sroa.17.0.extract.shift137 = lshr i64 %.sroa.014.0.copyload.i, 40
  %.sroa.9103.sroa.17.0.extract.trunc138 = trunc nuw i64 %.sroa.9103.sroa.17.0.extract.shift137 to i24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %4 = bitcast i64 %.sroa.014.0.copyload.i to <8 x i8>
  %5 = shufflevector <8 x i8> %4, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge, %bb.d
  %.sroa.9103.sroa.17.sroa.0.0.ph = phi i24 [ %.sroa.9103.sroa.17.0.extract.trunc138, %bb.d ], [ %.sroa.9103.sroa.17.0.extract.trunc136, %._crit_edge ], [ 0, %bb.b ]
  %.sroa.9103.sroa.0.0.ph = phi i8 [ %.sroa.9103.sroa.15.0.extract.trunc132, %bb.d ], [ %.sroa.9103.sroa.13.0.extract.trunc124, %._crit_edge ], [ 37, %bb.b ]
  %.sroa.35.0.ph = phi i32 [ %.sroa.624.0.copyload.i, %bb.d ], [ undef, %._crit_edge ], [ undef, %bb.b ]
  %.sroa.34.0.ph = phi i64 [ %.sroa.8.i.4..sroa.8.i.4..sroa.8.i.4..sroa.34.16.copyload, %bb.d ], [ undef, %._crit_edge ], [ undef, %bb.b ]
  %.sroa.0.0.ph = phi i64 [ %i.n, %bb.d ], [ 0, %._crit_edge ], [ 0, %bb.b ]
  %i.o = phi <4 x i8> [ %5, %bb.d ], [ %3, %._crit_edge ], [ <i8 3, i8 0, i8 0, i8 0>, %bb.b ]
  %6 = phi <4 x i8> [ %.sroa.8.i.0., %bb.d ], [ undef, %._crit_edge ], [ undef, %bb.b ]
  store i64 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i8> %i.o, ptr %.sroa.794.0..sroa_idx, align 8
  %.sroa.895.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.9103.sroa.0.0.ph, ptr %.sroa.895.0..sroa_idx, align 4
  %.sroa.996.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i24 %.sroa.9103.sroa.17.sroa.0.0.ph, ptr %.sroa.996.0..sroa_idx, align 1
  %.sroa.1097.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i8> %6, ptr %.sroa.1097.0..sroa_idx, align 8
  %.sroa.14101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i64 %.sroa.34.0.ph, ptr %.sroa.14101.0..sroa_idx, align 4
  %.sroa.14101.sroa.4.0..sroa.14101.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.35.0.ph, ptr %.sroa.14101.sroa.4.0..sroa.14101.0..sroa_idx.sroa_idx, align 4
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !219
  %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.9103.8.copyload = load i64, ptr %.sroa.8.i, align 8, !noalias !222 ; 2 uses
  %.sroa.9103.sroa.0.0.extract.trunc110 = trunc i64 %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.9103.8.copyload to i8
  %.sroa.8.i.8..sroa.8.i.8..sroa.8.i.8..sroa.25.8.copyload = load i8, ptr %.sroa.8.i.8.i.8.i.8.i.sroa_idx, align 8, !noalias !222
  %.sroa.8.i.9..sroa.8.i.9..sroa.8.i.9..sroa.28.8.copyload = load i8, ptr %.sroa.8.i.9.i.9.i.9.i.sroa_idx, align 1, !noalias !222 ; 2 uses
  %.sroa.8.i.10..sroa.8.i.10..sroa.8.i.10..sroa.30.8.copyload = load i8, ptr %.sroa.8.i.10.i.10.i.10.i.sroa_idx, align 2, !noalias !222 ; 2 uses
  %.sroa.8.i.11..sroa.8.i.11..sroa.8.i.11..sroa.32.8.copyload = load i8, ptr %.sroa.8.i.11.i.11.i.11.i.sroa_idx, align 1, !noalias !222 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.p = load i64, ptr %i.h, align 8, !alias.scope !223, !noalias !218, !noundef !5
  %i.q = add i64 %i.p, %.sroa.014.0.copyload.i
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !223, !noalias !218
  switch i8 %.sroa.9103.sroa.0.0.extract.trunc110, label %bb.f [
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !224
  call void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtB8_3vec3VechEENtNtB6_8buf_read7BufRead8fill_bufCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(592) %1), !noalias !218
  %i.r = load ptr, ptr %i.b, align 8, !noalias !224, !noundef !5 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %bb.e
  switch i8 %.sroa.8.i.8..sroa.8.i.8..sroa.8.i.8..sroa.25.8.copyload, label %bb.f [
    i8 73, label %bb.i
    i8 102, label %bb.j
  ]

bb.h:                                             ; preds = %bb.e
  %i.t = and i64 %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.9103.8.copyload, 1099511627520
  %or.cond27 = icmp eq i64 %i.t, 293370939648
  br i1 %or.cond27, label %bb.m, label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.u = icmp eq i8 %.sroa.8.i.9..sroa.8.i.9..sroa.8.i.9..sroa.28.8.copyload, 68
  %i.v = icmp eq i8 %.sroa.8.i.10..sroa.8.i.10..sroa.8.i.10..sroa.30.8.copyload, 65
  %or.cond = select i1 %i.u, i1 %i.v, i1 false
  %i.w = icmp eq i8 %.sroa.8.i.11..sroa.8.i.11..sroa.8.i.11..sroa.32.8.copyload, 84
  %or.cond7 = select i1 %or.cond, i1 %i.w, i1 false
  br i1 %or.cond7, label %bb.k, label %bb.f

bb.j:                                             ; preds = %bb.g
  %i.x = icmp eq i8 %.sroa.8.i.9..sroa.8.i.9..sroa.8.i.9..sroa.28.8.copyload, 100
  %i.y = icmp eq i8 %.sroa.8.i.10..sroa.8.i.10..sroa.8.i.10..sroa.30.8.copyload, 65
  %or.cond11 = select i1 %i.x, i1 %i.y, i1 false
  %i.z = icmp eq i8 %.sroa.8.i.11..sroa.8.i.11..sroa.8.i.11..sroa.32.8.copyload, 84
  %or.cond15 = select i1 %or.cond11, i1 %i.z, i1 false
  br i1 %or.cond15, label %bb.k, label %bb.f

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.m, %bb.k
  ret void

bb.m:                                             ; preds = %bb.h
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %.sroa.4.0..sroa_idx60, align 8
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs1Nb2CypNuX2_3png7decoder12read_decoderINtB2_11ReadDecoderINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc3vec3VechEEE26finish_decoding_image_dataCseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(592) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.8.i.i = alloca [12 x i8], align 8        ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !237
  call void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtB8_3vec3VechEENtNtB6_8buf_read7BufRead8fill_bufCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(592) %1), !noalias !238
  %i.g = load ptr, ptr %i.b, align 8, !noalias !237, !noundef !5 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.c, align 8, !noalias !237, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !237
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %.sroa.9.sroa.0.0.extract.trunc.i = trunc i64 %i.j to i8
  %.sroa.9.sroa.9.0.extract.shift26.i = lshr i64 %i.j, 8
  %.sroa.9.sroa.9.0.extract.trunc27.i = trunc nuw i64 %.sroa.9.sroa.9.0.extract.shift26.i to i56
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.c, align 8, !noalias !237, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !237
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !237
  call void @_RNvMs9_NtNtCs1Nb2CypNuX2_3png7decoder6streamNtB5_16StreamingDecoder6update(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(560) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.k, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null), !noalias !239
  %i.m = load i64, ptr %i.a, align 8, !range !16, !noalias !237, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, -1
  %.sroa.014.0.copyload.i.i = load i64, ptr %i.e, align 8, !noalias !237 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.415.0..sroa_idx.i.i, i64 12, i1 false), !noalias !237
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.624.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.624.0.copyload.i.i = load i32, ptr %.sroa.624.0..sroa_idx.i.i, align 4, !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !237
  %.sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.17.sroa.0.0.copyload.i = load i32, ptr %.sroa.8.i.i, align 8, !noalias !240
  %.sroa.8.i.i.4.i.i.4.i.i.4.i.4.i.4.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8.i.i, i64 4
  %.sroa.8.i.i.4..sroa.8.i.i.4..sroa.8.i.i.4..sroa.8.i.4..sroa.8.i.4..sroa.17.sroa.7.0.copyload.i = load i64, ptr %.sroa.8.i.i.4.i.i.4.i.i.4.i.4.i.4.i.sroa_idx, align 4, !noalias !240
  %.sroa.9.sroa.0.0.extract.trunc24.i = trunc i64 %.sroa.014.0.copyload.i.i to i8
  %.sroa.9.sroa.9.0.extract.shift28.i = lshr i64 %.sroa.014.0.copyload.i.i, 8
  %.sroa.9.sroa.9.0.extract.trunc29.i = trunc nuw i64 %.sroa.9.sroa.9.0.extract.shift28.i to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !237
  %.sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.9.8.copyload.i = load i64, ptr %.sroa.8.i.i, align 8, !noalias !240
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  %i.n = load i64, ptr %i.f, align 8, !alias.scope !241, !noalias !238, !noundef !5
  %i.o = add i64 %i.n, %.sroa.014.0.copyload.i.i
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !241, !noalias !238
  %i.p = and i64 %.sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.9.8.copyload.i, 255
  %cond = icmp eq i64 %i.p, 6
  br i1 %cond, label %bb.h, label %bb.b

.loopexit:                                        ; preds = %bb.d, %bb.f, %bb.c
  %.sroa.19.0.ph = phi i32 [ undef, %bb.c ], [ %.sroa.624.0.copyload.i.i, %bb.f ], [ undef, %bb.d ]
  %.sroa.18.0.ph = phi i64 [ undef, %bb.c ], [ %.sroa.8.i.i.4..sroa.8.i.i.4..sroa.8.i.i.4..sroa.8.i.4..sroa.8.i.4..sroa.17.sroa.7.0.copyload.i, %bb.f ], [ undef, %bb.d ]
  %.sroa.17.0.ph = phi i32 [ undef, %bb.c ], [ %.sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.17.sroa.0.0.copyload.i, %bb.f ], [ undef, %bb.d ]
  %.sroa.15.0.ph = phi i56 [ %.sroa.9.sroa.9.0.extract.trunc27.i, %bb.c ], [ %.sroa.9.sroa.9.0.extract.trunc29.i, %bb.f ], [ 620756992, %bb.d ]
  %.sroa.9.0.ph = phi i8 [ %.sroa.9.sroa.0.0.extract.trunc.i, %bb.c ], [ %.sroa.9.sroa.0.0.extract.trunc24.i, %bb.f ], [ 3, %bb.d ]
  %.sroa.0.0.ph = phi i64 [ 0, %bb.c ], [ %i.m, %bb.f ], [ 0, %bb.d ]
  store i64 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.9.0.ph, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i56 %.sroa.15.0.ph, ptr %.sroa.514.0..sroa_idx, align 1
  %.sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.17.0.ph, ptr %.sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx, align 8
  %.sroa.514.sroa.5.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i64 %.sroa.18.0.ph, ptr %.sroa.514.sroa.5.0..sroa.514.0..sroa_idx.sroa_idx, align 4
  %.sroa.514.sroa.6.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.19.0.ph, ptr %.sroa.514.sroa.6.0..sroa.514.0..sroa_idx.sroa_idx, align 4
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs1Nb2CypNuX2_3png7decoder12read_decoderINtB2_11ReadDecoderINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc3vec3VechEEE3newCseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([592 x i8]) align 8 captures(none) dereferenceable(592) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [560 x i8], align 8               ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs9_NtNtCs1Nb2CypNuX2_3png7decoder6streamNtB5_16StreamingDecoder3new(ptr noalias nofree noundef nonnull sret([560 x i8]) align 8 captures(address) dereferenceable(560) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCsgCecv3eZDcN_5alloc3vec3VechEEECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #22
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(560) %i.d, ptr noundef nonnull align 8 dereferenceable(560) %i.a, i64 560, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable
end_hunk_0
