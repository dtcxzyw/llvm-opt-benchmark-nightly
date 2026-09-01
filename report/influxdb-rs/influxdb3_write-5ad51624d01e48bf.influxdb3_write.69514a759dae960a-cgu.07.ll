Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_write-5ad51624d01e48bf.influxdb3_write.69514a759dae960a-cgu.07?download=true
inline.NumInlined: 2366
inline.NumDeleted: 1166
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id7TableIdKj1_ENCINvXsc_NtCsc96bKABWO34_9hashbrown3setINtB2h_7HashSetB1r_EINtNtNtBa_6traits7collect6ExtendB1r_E6extendBX_E0ENtNtB3a_8iterator8Iterator4folduNCINvNvB3T_8for_each4callTB1r_uENCINvXs1x_NtB2j_3mapINtB55_7HashMapB1r_uEIB36_B4O_E6extendBN_E0E0ECs92BnbMq7p8c_15influxdb3_write
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id7TableIdKj1_ENCINvXsc_NtCsc96bKABWO34_9hashbrown3setINtB2h_7HashSetB1r_EINtNtNtBa_6traits7collect6ExtendB1r_E6extendBX_E0ENtNtB3a_8iterator8Iterator4folduNCINvNvB3T_8for_each4callTB1r_uENCINvXs1x_NtB2j_3mapINtB55_7HashMapB1r_uEIB36_B4O_E6extendBN_E0E0ECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2049)
  %i.c = icmp ule i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  tail call void @llvm.assume(i1 %i.c)
  %.not2.i.i = icmp eq i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  br i1 %.not2.i.i, label %_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id7TableIdKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldBT_TBT_uEuNCINvXsc_NtCsc96bKABWO34_9hashbrown3setINtB3d_7HashSetBT_EINtNtB1E_7collect6ExtendBT_E6extendBE_E0NCINvNvB1A_8for_each4callB2X_NCINvXs1x_NtB3f_3mapINtB5h_7HashMapBT_uEIB41_B2X_E6extendINtB2q_3MapBE_B34_EE0E0E0ECs92BnbMq7p8c_15influxdb3_write.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload, 1
  %i.i = icmp eq i64 %.sroa.0.0.copyload, 0
  %i.j = zext i32 %.sroa.5.0.copyload to i64
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2055
  store i32 %.sroa.5.0.copyload, ptr %i.b, align 4, !noalias !2062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2063
  call void @_RNvXs1_NtCs4NRVxsYgnAr_4core4hashINtB5_18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtB5_11BuildHasher12build_hasherCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d), !noalias !2066
  %i.k = load i64, ptr %i.e, align 8, !alias.scope !2067, !noalias !2063, !noundef !12
  %i.l = xor i64 %i.k, %i.j
  %i.m = zext i64 %i.l to i128
  %i.n = mul nuw nsw i128 %i.m, 6364136223846793005 ; 2 uses
  %i.o = lshr i128 %i.n, 64
  %i.p = xor i128 %i.o, %i.n                      ; 2 uses
  %i.q = trunc i128 %i.p to i64
  %.val2.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !2063, !noundef !12
  %i.r = and i128 %i.p, 18446744073709551615
  %i.s = zext i64 %.val2.i.i.i.i.i.i.i.i.i to i128
  %i.t = mul nuw i128 %i.r, %i.s                  ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = xor i128 %i.u, %i.t
  %i.w = trunc i128 %i.v to i64                   ; 2 uses
  %i.x = call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 %i.q) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2063
  %i.y = load i64, ptr %i.g, align 8, !alias.scope !2072, !noalias !2077, !noundef !12
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.noexc1.i, label %_RINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_8RawTableTNtCsbFlE7Gjht9i_12influxdb3_id7TableIduEE7reserveNCINvNtBa_3map11make_hasherBY_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0ECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i.i.i.i.i, !prof !11

.noexc1.i:                                        ; preds = %.lr.ph.i.i
  %i.aa = call { i64, i64 } @_RINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_8RawTableTNtCsbFlE7Gjht9i_12influxdb3_id7TableIduEE14reserve_rehashNCINvNtBa_3map11make_hasherBY_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0ECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i1 noundef zeroext true), !noalias !2066 ; 0 uses
  br label %_RINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_8RawTableTNtCsbFlE7Gjht9i_12influxdb3_id7TableIduEE7reserveNCINvNtBa_3map11make_hasherBY_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0ECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i.i.i.i.i

_RINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_8RawTableTNtCsbFlE7Gjht9i_12influxdb3_id7TableIduEE7reserveNCINvNtBa_3map11make_hasherBY_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0ECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc1.i, %.lr.ph.i.i
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !2081, !noalias !2082, !nonnull !12, !noundef !12 ; 3 uses
  %.val7.i.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !2081, !noalias !2082, !noundef !12 ; 3 uses
  %i.ab = lshr i64 %i.x, 57
  %i.ac = trunc nuw nsw i64 %i.ab to i8           ; 3 uses
  %i.ad = insertelement <16 x i8> poison, i8 %i.ac, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %_RINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_8RawTableTNtCsbFlE7Gjht9i_12influxdb3_id7TableIduEE7reserveNCINvNtBa_3map11make_hasherBY_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0ECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.x, %_RINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_8RawTableTNtCsbFlE7Gjht9i_12influxdb3_id7TableIduEE7reserveNCINvNtBa_3map11make_hasherBY_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0ECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i.i.i.i.i ], [ %i.be, %bb.g ]
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_8RawTableTNtCsbFlE7Gjht9i_12influxdb3_id7TableIduEE7reserveNCINvNtBa_3map11make_hasherBY_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0ECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.1.i.i.i.i.i.i.i.i.i.i, %bb.g ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_8RawTableTNtCsbFlE7Gjht9i_12influxdb3_id7TableIduEE7reserveNCINvNtBa_3map11make_hasherBY_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0ECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.01.1.i.i.i.i.i.i.i.i.i.i, %bb.g ]
  %i.af = phi i64 [ 0, %_RINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_8RawTableTNtCsbFlE7Gjht9i_12influxdb3_id7TableIduEE7reserveNCINvNtBa_3map11make_hasherBY_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0ECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i.i.i.i.i ], [ %i.bd, %bb.g ]
  %.sroa.0.017.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i18.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ag, align 1, !noalias !2083 ; 3 uses
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i.i.i.i.i.i.i, %i.ae
  %i.ai = bitcast <16 x i1> %i.ah to i16
  br label %bb.c

bb.c:                                             ; preds = %.noexc2.i, %bb.b
  %.sroa.05.0.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ai, %bb.b ], [ %i.am, %.noexc2.i ] ; 4 uses
  %.not.i.i.not.not.not.i.not.i.i.i.i.i.i.i = icmp eq i16 %.sroa.05.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.not.not.not.i.not.i.i.i.i.i.i.i, label %bb.d, label %.noexc2.i

.noexc2.i:                                        ; preds = %bb.c
  %i.aj = add i16 %.sroa.05.0.i.i.i.i.i.i.i.i.i.i, -1
  %i.ak = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = and i16 %i.aj, %.sroa.05.0.i.i.i.i.i.i.i.i.i.i
  %i.an = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i, %i.al
  %i.ao = and i64 %i.an, %.val7.i.i.i.i.i.i.i.i.i
  %i.ap = load ptr, ptr %1, align 8, !alias.scope !2081, !noalias !2086, !nonnull !12, !noundef !12
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -4
  %i.at = call noundef zeroext i1 @_RNvXCsc96bKABWO34_9hashbrownNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtB2_10EquivalentBq_E10equivalentCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.as), !noalias !2066
  br i1 %i.at, label %_RNCINvMs6_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCsbFlE7Gjht9i_12influxdb3_id7TableIdEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2R_17NeverShortCircuituE10wrap_mut_2uB1X_NCINvNtNtNtBe_4iter8adapters3map8map_foldB1X_TB1X_uEuNCINvXsc_NtCsc96bKABWO34_9hashbrown3setINtB4V_7HashSetB1X_EINtNtNtB44_6traits7collect6ExtendB1X_E6extendINtBa_8IntoIterB1X_Kj1_EE0NCINvNvNtNtB5O_8iterator8Iterator8for_each4callB4E_NCINvXs1x_NtB4X_3mapINtB7R_7HashMapB1X_uEIB5K_B4E_E6extendINtB40_3MapB6s_B4M_EE0E0E0E0B3c_E0Cs92BnbMq7p8c_15influxdb3_write.exit.i.i, label %bb.c

bb.d:                                             ; preds = %bb.c
  %.not12.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i, label %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = icmp slt <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.av, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i, %i.ax
  %i.az = and i64 %i.ay, %.val7.i.i.i.i.i.i.i.i.i
  br label %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i.i.i.i.i.i.i

_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.4.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.i.i.i.i.i.i.i.i.i, %bb.d ], [ %i.az, %bb.f ], [ undef, %bb.e ] ; 3 uses
  %.sroa.01.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.d ], [ 1, %bb.f ], [ 0, %bb.e ]
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16
  %i.bc = icmp eq i16 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i.i.i.i.i.i.i
  %i.bd = add i64 %i.af, 16                       ; 2 uses
  %i.be = add i64 %i.bd, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i
  br label %bb.b

bb.h:                                             ; preds = %_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.4.1.i.i.i.i.i.i.i.i.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !2089, !noundef !12
  %i.bh = icmp sgt i8 %i.bg, -1
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.val72.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i.i.i.i.i, align 16, !noalias !2089
  %i.bi = icmp slt <16 x i8> %.val72.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.bj = bitcast <16 x i1> %i.bi to i16          ; 2 uses
  %.not.i23.i.i.i.i.i.i.i.i.i.i = icmp ne i16 %i.bj, 0
  %i.bk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bj, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64
  call void @llvm.assume(i1 %.not.i23.i.i.i.i.i.i.i.i.i.i)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bl, %bb.i ], [ %.sroa.4.1.i.i.i.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !2093, !noalias !2089, !nonnull !12, !noundef !12 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !2094, !noundef !12
  %i.bp = and i8 %i.bo, 1
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i, -16
  %i.bs = load i64, ptr %i.h, align 8, !alias.scope !2093, !noalias !2089, !noundef !12
  %i.bt = and i64 %i.bs, %i.br
  store i8 %i.ac, ptr %i.bn, align 1, !noalias !2094
  %i.bu = getelementptr i8, ptr %i.bm, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 16
  store i8 %i.ac, ptr %i.bv, align 1, !noalias !2094
  %i.bw = load <2 x i64>, ptr %i.g, align 8, !alias.scope !2093, !noalias !2089
  %i.bx = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bq, i64 0
  %i.by = sub <2 x i64> %i.bw, %i.bx
  store <2 x i64> %i.by, ptr %i.g, align 8, !alias.scope !2093, !noalias !2089
  %i.bz = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -4
  store i32 %.sroa.5.0.copyload, ptr %i.cb, align 4, !noalias !2094
  br label %_RNCINvMs6_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCsbFlE7Gjht9i_12influxdb3_id7TableIdEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2R_17NeverShortCircuituE10wrap_mut_2uB1X_NCINvNtNtNtBe_4iter8adapters3map8map_foldB1X_TB1X_uEuNCINvXsc_NtCsc96bKABWO34_9hashbrown3setINtB4V_7HashSetB1X_EINtNtNtB44_6traits7collect6ExtendB1X_E6extendINtBa_8IntoIterB1X_Kj1_EE0NCINvNvNtNtB5O_8iterator8Iterator8for_each4callB4E_NCINvXs1x_NtB4X_3mapINtB7R_7HashMapB1X_uEIB5K_B4E_E6extendINtB40_3MapB6s_B4M_EE0E0E0E0B3c_E0Cs92BnbMq7p8c_15influxdb3_write.exit.i.i

_RNCINvMs6_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCsbFlE7Gjht9i_12influxdb3_id7TableIdEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2R_17NeverShortCircuituE10wrap_mut_2uB1X_NCINvNtNtNtBe_4iter8adapters3map8map_foldB1X_TB1X_uEuNCINvXsc_NtCsc96bKABWO34_9hashbrown3setINtB4V_7HashSetB1X_EINtNtNtB44_6traits7collect6ExtendB1X_E6extendINtBa_8IntoIterB1X_Kj1_EE0NCINvNvNtNtB5O_8iterator8Iterator8for_each4callB4E_NCINvXs1x_NtB4X_3mapINtB7R_7HashMapB1X_uEIB5K_B4E_E6extendINtB40_3MapB6s_B4M_EE0E0E0E0B3c_E0Cs92BnbMq7p8c_15influxdb3_write.exit.i.i: ; preds = %.noexc2.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2055
  call void @llvm.assume(i1 %.not.i.i)
  br label %_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id7TableIdKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldBT_TBT_uEuNCINvXsc_NtCsc96bKABWO34_9hashbrown3setINtB3d_7HashSetBT_EINtNtB1E_7collect6ExtendBT_E6extendBE_E0NCINvNvB1A_8for_each4callB2X_NCINvXs1x_NtB3f_3mapINtB5h_7HashMapBT_uEIB41_B2X_E6extendINtB2q_3MapBE_B34_EE0E0E0ECs92BnbMq7p8c_15influxdb3_write.exit

_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id7TableIdKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldBT_TBT_uEuNCINvXsc_NtCsc96bKABWO34_9hashbrown3setINtB3d_7HashSetBT_EINtNtB1E_7collect6ExtendBT_E6extendBE_E0NCINvNvB1A_8for_each4callB2X_NCINvXs1x_NtB3f_3mapINtB5h_7HashMapBT_uEIB41_B2X_E6extendINtB2q_3MapBE_B34_EE0E0E0ECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.a, %_RNCINvMs6_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCsbFlE7Gjht9i_12influxdb3_id7TableIdEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2R_17NeverShortCircuituE10wrap_mut_2uB1X_NCINvNtNtNtBe_4iter8adapters3map8map_foldB1X_TB1X_uEuNCINvXsc_NtCsc96bKABWO34_9hashbrown3setINtB4V_7HashSetB1X_EINtNtNtB44_6traits7collect6ExtendB1X_E6extendINtBa_8IntoIterB1X_Kj1_EE0NCINvNvNtNtB5O_8iterator8Iterator8for_each4callB4E_NCINvXs1x_NtB4X_3mapINtB7R_7HashMapB1X_uEIB5K_B4E_E6extendINtB40_3MapB6s_B4M_EE0E0E0E0B3c_E0Cs92BnbMq7p8c_15influxdb3_write.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterTReINtNtCscdodAO9FK5_5alloc6borrow3CoweEEKj0_ENCNvXs5_CsamjPIc071P4_6metricNtB2j_10AttributesINtNtBc_7convert4FromAB1r_B27_E4from0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3y_8for_each4callB1r_NCINvMsj_NtB1z_3vecINtB4O_3VecB1r_E14extend_trustedBN_E0E0ECs92BnbMq7p8c_15influxdb3_write(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8, !noalias !2095
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8, !noalias !2095
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.16.copyload.i = load ptr, ptr %2, align 8, !alias.scope !2095, !nonnull !12, !noundef !12
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.9.16.copyload.i = load i64, ptr %.sroa.9.16..sroa_idx.i, align 8, !alias.scope !2095
  %.not6.i.i = icmp eq i64 %0, %1
  tail call void @llvm.assume(i1 %.not6.i.i)
  store i64 %.sroa.9.16.copyload.i, ptr %.sroa.6.16.copyload.i, align 8, !noalias !2098
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTReINtNtCscdodAO9FK5_5alloc6borrow3CoweEEEj0_NtB4_11PartialDrop12partial_dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 %i.c, i64 noundef %0, i64 noundef %0), !noalias !2095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEENCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB2J_11TableBuffer26partitioned_record_batchess_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtB2J_5ErrorEEB4z_8try_folduNCINvNvB4z_12try_for_each4callIB1o_DNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB7w_ENcNtB8n_5Break0E0B8n_E0IB8o_B8n_EEB2N_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !2107, !noalias !2102, !nonnull !12, !noundef !12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2107, !noalias !2102, !nonnull !12, !noundef !12
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB26_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultIBK_DNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_ENtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5V_B3T_EENCNvMB4L_NtB4L_11TableBuffer26partitioned_record_batchess_0NCINvXB2W_INtB2W_12GenericShuntINtB2U_3MapB3_B6K_EIB3y_NtNtBa_7convert10InfallibleB4J_EEB20_8try_folduNCINvNvB20_12try_for_each4callB3T_B6z_NcNtB6z_5Break0E0B6z_E0E0B5U_EB4P_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %1, align 8, !alias.scope !2107, !noalias !2102
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i)
  %.val5.i = load ptr, ptr %i.c, align 8, !noalias !2110, !nonnull !12, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2111)
  %.val.i.i = load ptr, ptr %i.g, align 8, !noalias !2114, !nonnull !12, !align !30, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %.val5.i, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !noalias !2115, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %.val5.i, i64 32 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !2115, !noundef !12
  %i.m = tail call noundef align 8 ptr @_RNvMs_NtCs6ePPILGZvJ2_11arrow_array12record_batchNtB4_11RecordBatch14column_by_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l), !noalias !2115 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2115
  %i.n = load ptr, ptr %i.i, align 8, !noalias !2115, !nonnull !12, !noundef !12
  %i.o = load i64, ptr %i.k, align 8, !noalias !2115, !noundef !12 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2115
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.o, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2115
  %i.p = load i64, ptr %i.a, align 8, !range !16, !noalias !2115, !noundef !12
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !17, !noalias !2115, !noundef !12 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.t, align 8, !noalias !2115
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #35, !noalias !2115
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.t, align 8, !noalias !2115, !nonnull !12, !noundef !12 ; 4 uses
  %i.w = icmp ule i64 %i.o, %i.s
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2115
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store i64 %i.s, ptr %i.x, align 8, !noalias !2115
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.v, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !2115
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.o, ptr %.sroa.510.0..sroa_idx.i.i.i, align 8, !noalias !2115
  store i64 -1, ptr %i.b, align 8, !noalias !2115
  %.not18.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not18.i.i.i, label %bb.k, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %i.n, i64 %i.o, i1 false), !noalias !2115
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer5ErrorEBH_.exit.i.i.i unwind label %bb.h, !noalias !2115

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume.i.i unwind label %bb.i, !noalias !2115

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !2115
  unreachable

common.resume.i.i:                                ; preds = %.body.i.i.i, %bb.h
  %common.resume.op.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.y, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer5ErrorEBH_.exit.i.i.i: ; preds = %bb.g
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x), !noalias !2115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2115
  %i.aa = load ptr, ptr %i.m, align 8, !noalias !2115, !nonnull !12, !noundef !12 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !2115, !nonnull !12, !align !30, !noundef !12
  %i.ad = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !2115
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer5ErrorEBH_.exit.i.i.i
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.af = inttoptr i64 %i.s to ptr                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2118)
  %i.ag = load i64, ptr %3, align 8, !range !2121, !alias.scope !2122, !noalias !2125, !noundef !12
  switch i64 %i.ag, label %bb.o [
    i64 -2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer5ErrorEEEB1Q_.exit.i.i.i
    i64 -1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i.i unwind label %bb.m, !noalias !2125

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body.i.i.i unwind label %bb.n, !noalias !2125

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !2125
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer5ErrorEEEB1Q_.exit.i.i.i unwind label %bb.q, !noalias !2125

bb.o:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj9JzdWj4GcM_12arrow_schema5error10ArrowErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(32) %3)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer5ErrorEEEB1Q_.exit.i.i.i unwind label %bb.q, !noalias !2125

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer5ErrorEBH_.exit.i.i.i
  %4 = ptrtoint ptr %i.aa to i64
  store i64 %4, ptr %.sroa.4.i, align 8, !alias.scope !2127, !noalias !2128
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.q, %bb.m
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.q ], [ %i.ai, %bb.m ]
  store i64 -1, ptr %3, align 8, !noalias !2125
  %.sroa.512.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %.sroa.512.0..8.val.sroa_idx.i.i.i, align 8, !noalias !2125
  %.sroa.615.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.v, ptr %.sroa.615.0..8.val.sroa_idx.i.i.i, align 8, !noalias !2125
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.o, ptr %.sroa.7.0..8.val.sroa_idx.i.i.i, align 8, !noalias !2125
  br label %common.resume.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer5ErrorEEEB1Q_.exit.i.i.i: ; preds = %bb.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i.i, %bb.k
  store i64 -1, ptr %3, align 8, !noalias !2125
  %.sroa.512.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %.sroa.512.0..8.val.sroa_idx13.i.i.i, align 8, !noalias !2125
  %.sroa.615.0..8.val.sroa_idx16.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.v, ptr %.sroa.615.0..8.val.sroa_idx16.i.i.i, align 8, !noalias !2125
  %.sroa.7.0..8.val.sroa_idx18.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.o, ptr %.sroa.7.0..8.val.sroa_idx18.i.i.i, align 8, !noalias !2125
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer5ErrorEEEB1Q_.exit.i.i.i, %bb.p
  %.sink32.i.i.sroa.phi.i = phi ptr [ %.sroa.4.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer5ErrorEEEB1Q_.exit.i.i.i ], [ %.sroa.73.i, %bb.p ]
  %.sink.i.i.i = phi ptr [ null, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer5ErrorEEEB1Q_.exit.i.i.i ], [ %i.ac, %bb.p ]
  store ptr %.sink.i.i.i, ptr %.sink32.i.i.sroa.phi.i, align 8, !alias.scope !2127, !noalias !2128
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !alias.scope !2129, !noalias !2132, !noundef !12
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !alias.scope !2129, !noalias !2132
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %5, ptr %i.al, align 8, !alias.scope !2134, !noalias !2105
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %6, ptr %i.am, align 8, !alias.scope !2134, !noalias !2105
  br label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB26_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultIBK_DNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_ENtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5V_B3T_EENCNvMB4L_NtB4L_11TableBuffer26partitioned_record_batchess_0NCINvXB2W_INtB2W_12GenericShuntINtB2U_3MapB3_B6K_EIB3y_NtNtBa_7convert10InfallibleB4J_EEB20_8try_folduNCINvNvB20_12try_for_each4callB3T_B6z_NcNtB6z_5Break0E0B6z_E0E0B5U_EB4P_.exit

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB26_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultIBK_DNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_ENtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5V_B3T_EENCNvMB4L_NtB4L_11TableBuffer26partitioned_record_batchess_0NCINvXB2W_INtB2W_12GenericShuntINtB2U_3MapB3_B6K_EIB3y_NtNtBa_7convert10InfallibleB4J_EEB20_8try_folduNCINvNvB20_12try_for_each4callB3T_B6z_NcNtB6z_5Break0E0B6z_E0E0B5U_EB4P_.exit: ; preds = %bb.a, %bb.r
  %storemerge.i = phi i64 [ 1, %bb.r ], [ 0, %bb.a ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !2102, !noalias !2105
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types16ColumnDescriptorEENCNvMNtNtNtB20_4file8metadata6writerINtB2Y_20ThriftMetadataWriterQINtNtB1s_3vec3VechEE6finishs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callNtNtB20_5basic11ColumnOrderNCINvMsj_B40_IB3Y_B5v_E14extend_trustedBN_E0E0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types16ColumnDescriptorEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2s_8adapters3map8map_foldRBQ_NtNtB1t_5basic11ColumnOrderuNCNvMNtNtNtB1t_4file8metadata6writerINtB4h_20ThriftMetadataWriterQINtNtBV_3vec3VechEE6finishs_0NCINvNvB2m_8for_each4callB3K_NCINvMsj_B5j_IB5h_B3K_E14extend_trustedINtB3c_3MapBF_B4c_EE0E0E0ECs92BnbMq7p8c_15influxdb3_write.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.t, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.u, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val16.i = load ptr, ptr %i.f, align 8, !noalias !2137, !nonnull !12, !noundef !12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val16.i, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !noalias !2140, !nonnull !12, !noundef !12 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !39, !noalias !2140, !noundef !12
  %.not.i.i.i = icmp eq i64 %i.j, -1
  %..i.i.i = select i1 %.not.i.i.i, i64 24, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %..i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !269, !noalias !2140, !noundef !12
  %i.n = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 65
  %i.p = load i8, ptr %i.o, align 1, !range !1981, !noalias !2140, !noundef !12
  %i.q = invoke noundef i8 @_RNvMsc_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptor13physical_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n)
          to label %.noexc.i unwind label %bb.e, !noalias !2137

.noexc.i:                                         ; preds = %bb.c
  %.not4.i.i.i = icmp eq i64 %i.m, -2
  %.sroa.0.0.i.i.i = select i1 %.not4.i.i.i, ptr null, ptr %i.l
  %i.r = invoke noundef range(i8 0, 3) i8 @_RNvMsd_NtCs7Ez7UXBn1VF_7parquet5basicNtB5_11ColumnOrder19sort_order_for_type(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %.sroa.0.0.i.i.i, i8 noundef %i.p, i8 noundef %i.q)
          to label %bb.d unwind label %bb.e, !noalias !2137

bb.d:                                             ; preds = %.noexc.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 %.val15.i
  store i8 %i.r, ptr %i.s, align 1, !noalias !2143
  %i.t = add i64 %.val15.i, 1                     ; 2 uses
  %i.u = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.e
  br i1 %i.v, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types16ColumnDescriptorEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2s_8adapters3map8map_foldRBQ_NtNtB1t_5basic11ColumnOrderuNCNvMNtNtNtB1t_4file8metadata6writerINtB4h_20ThriftMetadataWriterQINtNtBV_3vec3VechEE6finishs_0NCINvNvB2m_8for_each4callB3K_NCINvMsj_B5j_IB5h_B3K_E14extend_trustedINtB3c_3MapBF_B4c_EE0E0E0ECs92BnbMq7p8c_15influxdb3_write.exit, label %bb.c

bb.e:                                             ; preds = %.noexc.i, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2137
  resume { ptr, i32 } %i.w

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types16ColumnDescriptorEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2s_8adapters3map8map_foldRBQ_NtNtB1t_5basic11ColumnOrderuNCNvMNtNtNtB1t_4file8metadata6writerINtB4h_20ThriftMetadataWriterQINtNtBV_3vec3VechEE6finishs_0NCINvNvB2m_8for_each4callB3K_NCINvMsj_B5j_IB5h_B3K_E14extend_trustedINtB3c_3MapBF_B4c_EE0E0E0ECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.t, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2137
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCscdodAO9FK5_5alloc4sync3ArceEENCINvMNtCsjGL2vCcvtUM_6schema7builderNtB23_13SchemaBuilder15with_series_keyRINtNtB1s_3vec3VecB1n_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3A_8for_each4callNtNtB1s_6string6StringNCINvMsj_B3e_IB3c_B4D_E14extend_trustedBN_E0E0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc4sync3ArceEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_NtNtBV_6string6StringuNCINvMNtCsjGL2vCcvtUM_6schema7builderNtB3g_13SchemaBuilder15with_series_keyRINtNtBV_3vec3VecBQ_EE0NCINvNvB1q_8for_each4callB2O_NCINvMsj_B4r_IB4p_B2O_E14extend_trustedINtB2g_3MapBF_B3a_EE0E0E0ECs92BnbMq7p8c_15influxdb3_write.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.s, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.t, %bb.g ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val16.i = load ptr, ptr %i.i, align 8, !alias.scope !2148, !noalias !2151, !nonnull !12, !noundef !12
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val17.i = load i64, ptr %i.j, align 8, !alias.scope !2148, !noalias !2151, !noundef !12 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2155
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val17.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !2161

.noexc.i:                                         ; preds = %bb.c
  %i.l = load i64, ptr %i.a, align 8, !range !16, !noalias !2155, !noundef !12
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = load i64, ptr %i.g, align 8, !range !17, !noalias !2155, !noundef !12 ; 3 uses
  br i1 %i.m, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %.noexc.i
  %i.o = load i64, ptr %i.h, align 8, !noalias !2155
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.o) #35
          to label %.noexc18.i unwind label %.loopexit.split-lp.i, !noalias !2161

.noexc18.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i
  %i.p = load ptr, ptr %i.h, align 8, !noalias !2155, !nonnull !12, !noundef !12 ; 2 uses
  %i.q = icmp ule i64 %.val17.i, %i.n
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2155
  %.not.i.i.i = icmp eq i64 %.val17.i, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %i.k, i64 %.val17.i, i1 false), !noalias !2155
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i ; 3 uses
  store i64 %i.n, ptr %i.r, align 8, !noalias !2162
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.p, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !2162
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.val17.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !2162
  %i.s = add i64 %.val15.i, 1                     ; 2 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.f
  br i1 %i.u, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc4sync3ArceEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_NtNtBV_6string6StringuNCINvMNtCsjGL2vCcvtUM_6schema7builderNtB3g_13SchemaBuilder15with_series_keyRINtNtBV_3vec3VecBQ_EE0NCINvNvB1q_8for_each4callB2O_NCINvMsj_B4r_IB4p_B2O_E14extend_trustedINtB2g_3MapBF_B3a_EE0E0E0ECs92BnbMq7p8c_15influxdb3_write.exit, label %bb.c

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp.i:                             ; preds = %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2161
  resume { ptr, i32 } %lpad.phi.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc4sync3ArceEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_NtNtBV_6string6StringuNCINvMNtCsjGL2vCcvtUM_6schema7builderNtB3g_13SchemaBuilder15with_series_keyRINtNtBV_3vec3VecBQ_EE0NCINvNvB1q_8for_each4callB2O_NCINvMsj_B4r_IB4p_B2O_E14extend_trustedINtB2g_3MapBF_B3a_EE0E0E0ECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.s, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2161
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENCINvNtB1p_12write_buffer19cache_parquet_filesB1n_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Z_8for_each4callINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiveruENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB50_3VecB42_E14extend_trustedBN_E0E0EB1p_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [160 x i8], align 8               ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !12, !align !30, !noundef !12 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.j = icmp eq ptr %i.e, %i.g
  br i1 %i.j, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_INtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiveruEuNCINvNtBS_12write_buffer19cache_parquet_filesBQ_E0NCINvNvB1B_8for_each4callB2Z_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5f_3VecB2Z_E14extend_trustedINtB2r_3MapBF_B3P_EE0E0E0EBS_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 6
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.d

end_hunk_0
