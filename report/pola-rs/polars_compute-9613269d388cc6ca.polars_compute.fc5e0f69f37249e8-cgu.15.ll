Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_compute-9613269d388cc6ca.polars_compute.fc5e0f69f37249e8-cgu.15?download=true
inline.NumInlined: 2689
inline.NumDeleted: 868
begin_hunk_0_@_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapaINtNtNtB7_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB5_7mutableINtB2x_22MutableDictionaryArrayaB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2l_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2l_INtNtB7_8iterator15ArrayValuesIterINtB1o_11BinaryArrayxEENtNtB4A_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute:bb.a
  %.val3.i.i = load i8, ptr %i.ad, align 8, !dbg !1442, !noalias !1407, !noundef !666 ; 3 uses
  %i.ae = zext nneg i8 %.val3.i.i to i64, !dbg !1443 ; 2 uses
  %i.af = icmp sgt i8 %.val3.i.i, -1, !dbg !1444
  tail call void @llvm.assume(i1 %i.af), !dbg !1444
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ae, !dbg !1445
  %.val1.i.i.i.i = load i64, ptr %i.ag, align 8, !dbg !1446, !noalias !1408, !noundef !666 ; 2 uses
  %i.ah = add nuw nsw i64 %i.ae, 1, !dbg !1447    ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.q, !dbg !1448
  tail call void @llvm.assume(i1 %i.ai), !dbg !1449
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ah, !dbg !1450
  %.val.i.i.i.i = load i64, ptr %i.aj, align 8, !dbg !1451, !noalias !1408, !noundef !666
  %i.ak = sub nuw i64 %.val.i.i.i.i, %.val1.i.i.i.i, !dbg !1452
  %i.al = icmp eq i64 %i.ak, %3, !dbg !1453
  br i1 %i.al, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !1453, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 %.val1.i.i.i.i, !dbg !1454
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.am, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !1455, !alias.scope !1409, !noalias !1407
  %i.an = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !1455
  br i1 %i.an, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !1456, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !1457
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !1458, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.ao = add i16 %.sroa.05.029.i.i, -1, !dbg !1459
  %i.ap = and i16 %i.ao, %.sroa.05.029.i.i, !dbg !1460 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ap, 0, !dbg !1435
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !1436

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.aq = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !1461
  %i.ar = bitcast <16 x i1> %i.aq to i16, !dbg !1461 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ar, 0, !dbg !1462
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !1463, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ar, i1 true), !dbg !1464
  %i.at = zext nneg i16 %i.as to i64, !dbg !1465
  %i.au = add i64 %.sroa.0.017.i.i, %i.at, !dbg !1466
  %i.av = and i64 %i.au, %.val7.i, !dbg !1466
  br label %.thread.i.i, !dbg !1467

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.av, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !1468
  %i.ax = bitcast <16 x i1> %i.aw to i16, !dbg !1469
  %i.ay = icmp eq i16 %i.ax, 0, !dbg !1470
  br i1 %i.ay, label %bb.e, label %bb.f, !dbg !1470, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.az = add i64 %i.t, 16, !dbg !1471            ; 2 uses
  %i.ba = add i64 %i.az, %.sroa.0.017.i.i, !dbg !1472
  br label %bb.c, !dbg !1428

bb.f:                                             ; preds = %.thread.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !1473
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !1474, !noalias !1404, !noundef !666
  %i.bd = icmp sgt i8 %i.bc, -1, !dbg !1475
  br i1 %i.bd, label %bb.g, label %bb.h, !dbg !1475, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !1476, !noalias !1404
  %i.be = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !1477
  %i.bf = bitcast <16 x i1> %i.be to i16, !dbg !1477 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.bf, 0, !dbg !1478
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bf, i1 true), !dbg !1479
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !1479
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !1480
  br label %bb.h, !dbg !1481

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.bh, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.bi = icmp ult i64 %i.q, 1152921504606846976, !dbg !1482
  tail call void @llvm.assume(i1 %i.bi), !dbg !1483
  %i.bj = add nsw i64 %i.q, -1, !dbg !1484        ; 2 uses
  %i.bk = icmp ugt i64 %i.bj, 127, !dbg !1485
  %i.bl = trunc nuw nsw i64 %i.bj to i8, !dbg !1485 ; 2 uses
  br i1 %i.bk, label %bb.n, label %bb.k, !dbg !1486

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1487
  store i8 %.val3.i.i, ptr %i.bm, align 8, !dbg !1487
  store i64 18, ptr %0, align 8, !dbg !1487
  br label %bb.j, !dbg !1488

bb.j:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i
  ret void, !dbg !1489

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1411), !dbg !1490
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i, !dbg !1491 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !dbg !1492, !noalias !1411, !noundef !666
  %i.bp = and i8 %i.bo, 1, !dbg !1493
  %i.bq = zext nneg i8 %i.bp to i64, !dbg !1493
  %i.br = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !1494
  %i.bs = and i64 %i.br, %.val7.i, !dbg !1495
  store i8 %i.k, ptr %i.bn, align 1, !dbg !1496, !noalias !1411
  %i.bt = getelementptr i8, ptr %.val.i, i64 %i.bs, !dbg !1497
  %i.bu = getelementptr i8, ptr %i.bt, i64 16, !dbg !1497
  store i8 %i.k, ptr %i.bu, align 1, !dbg !1498, !noalias !1411
  %i.bv = load <2 x i64>, ptr %i.e, align 8, !dbg !1499, !alias.scope !1411
  %i.bw = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bq, i64 0, !dbg !1499
  %i.bx = sub <2 x i64> %i.bv, %i.bw, !dbg !1499
  store <2 x i64> %i.bx, ptr %i.e, align 8, !dbg !1499, !alias.scope !1411
  %i.by = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !1500
  %i.bz = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.by, !dbg !1501 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -16, !dbg !1502
  store i64 %i.c, ptr %i.ca, align 8, !dbg !1503, !noalias !1411
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 -8, !dbg !1503
  store i8 %i.bl, ptr %i.cb, align 8, !dbg !1503, !noalias !1411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1413
  call void @_RNvXs7_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7mutableINtB5_18MutableBinaryArrayxEINtB9_7TryPushINtNtCscgRAwXFJnXP_4core6option6OptionRShEE8try_pushCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !1504
  %i.cc = load i64, ptr %i.a, align 8, !dbg !1505, !range !814, !noundef !666
  %.not = icmp eq i64 %i.cc, 18, !dbg !1505
  br i1 %.not, label %bb.m, label %bb.l, !dbg !1506

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1508
  br label %bb.j, !dbg !1488

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1508
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1487
  store i8 %i.bl, ptr %i.cd, align 8, !dbg !1487
  store i64 18, ptr %0, align 8, !dbg !1487
  br label %bb.j, !dbg !1488

bb.n:                                             ; preds = %bb.h
  store i64 2, ptr %0, align 8, !dbg !1509
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1509
  store i8 0, ptr %.sroa.235.0..sroa_idx, align 8, !dbg !1509
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !1509
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(63) getelementptr inbounds nuw (i8, ptr @1, i64 9), i64 63, i1 false), !dbg !1509
  br label %bb.j, !dbg !1488
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapaINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB27_NCINvXs3_NtB5_7mutableINtB2F_22MutableDictionaryArrayaB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2r_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2r_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericB27_EENtNtB4I_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1510 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !1721
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRShECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !1722 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !1723 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !1724 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !1724, !alias.scope !1695, !noalias !1696, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !1725
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyaEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapaINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayaB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !1726, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyaEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMapaINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3m_NCINvXs3_NtB1i_7mutableINtB3U_22MutableDictionaryArrayaB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3G_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3G_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericB3m_EENtNtB5Z_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !1727, !noalias !1696 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyaEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapaINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayaB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !1728

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyaEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapaINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayaB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !1729, !alias.scope !1697, !noalias !1696, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !1729 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !1729, !alias.scope !1697, !noalias !1696, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !1730
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !1731 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !1732

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyaEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapaINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayaB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyaEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapaINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayaB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.as, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyaEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapaINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayaB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !1733
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyaEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapaINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayaB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !1733
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyaEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapaINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayaB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ar, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !1734 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !1735
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !1736, !noalias !1698 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !1737
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !1738 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !1739
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !1740

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ah, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !1741
  %i.s = zext nneg i16 %i.r to i64, !dbg !1742
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !1743
  %i.u = and i64 %i.t, %.val7.i, !dbg !1743
  %i.v = load ptr, ptr %i.d, align 8, !dbg !1744, !alias.scope !1697, !noalias !1699, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !1745          ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.w, !dbg !1746
  %i.y = getelementptr i8, ptr %i.x, i64 -8, !dbg !1747
  %.val3.i.i = load i8, ptr %i.y, align 8, !dbg !1747, !noalias !1700, !noundef !666 ; 2 uses
  %i.z = zext nneg i8 %.val3.i.i to i64, !dbg !1748
  %i.aa = icmp sgt i8 %.val3.i.i, -1, !dbg !1749
  tail call void @llvm.assume(i1 %i.aa), !dbg !1749
  %i.ab = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %i.z), !dbg !1750, !noalias !1700 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 1, !dbg !1750
  %i.ad = icmp eq i64 %i.ac, %3, !dbg !1751
  br i1 %i.ad, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !1751, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ae = extractvalue { ptr, i64 } %i.ab, 0, !dbg !1750
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ae, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !1752, !alias.scope !1701, !noalias !1700
  %i.af = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !1752
  br i1 %i.af, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !1753, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !1754
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !1755, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.ag = add i16 %.sroa.05.029.i.i, -1, !dbg !1756
  %i.ah = and i16 %i.ag, %.sroa.05.029.i.i, !dbg !1757 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ah, 0, !dbg !1739
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !1740

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !1758
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !1758 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aj, 0, !dbg !1759
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !1760, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aj, i1 true), !dbg !1761
  %i.al = zext nneg i16 %i.ak to i64, !dbg !1762
  %i.am = add i64 %.sroa.0.017.i.i, %i.al, !dbg !1763
  %i.an = and i64 %i.am, %.val7.i, !dbg !1763
  br label %.thread.i.i, !dbg !1764

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.an, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !1765
  %i.ap = bitcast <16 x i1> %i.ao to i16, !dbg !1766
  %i.aq = icmp eq i16 %i.ap, 0, !dbg !1767
  br i1 %i.aq, label %bb.e, label %bb.f, !dbg !1767, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ar = add i64 %i.n, 16, !dbg !1768            ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.0.017.i.i, !dbg !1769
  br label %bb.c, !dbg !1732

bb.f:                                             ; preds = %.thread.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !1770
  %i.au = load i8, ptr %i.at, align 1, !dbg !1771, !noalias !1702, !noundef !666
  %i.av = icmp sgt i8 %i.au, -1, !dbg !1772
  br i1 %i.av, label %bb.g, label %bb.h, !dbg !1772, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !1773, !noalias !1702
  %i.aw = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !1774
  %i.ax = bitcast <16 x i1> %i.aw to i16, !dbg !1774 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.ax, 0, !dbg !1775
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ax, i1 true), !dbg !1776
  %i.az = zext nneg i16 %i.ay to i64, !dbg !1776
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !1777
  br label %bb.h, !dbg !1778

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.az, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1779 ; 3 uses
  %.val41 = load i64, ptr %i.ba, align 8, !dbg !1779, !noundef !666 ; 3 uses
  %i.bb = icmp ult i64 %.val41, 576460752303423488, !dbg !1780
  tail call void @llvm.assume(i1 %i.bb), !dbg !1781
  %i.bc = icmp samesign ugt i64 %.val41, 127, !dbg !1782
  %i.bd = trunc nuw nsw i64 %.val41 to i8, !dbg !1782 ; 2 uses
  br i1 %i.bc, label %bb.r, label %bb.k, !dbg !1783

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.be = load ptr, ptr %i.d, align 8, !dbg !1784, !alias.scope !1697, !noalias !1696, !nonnull !666, !noundef !666
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.w, !dbg !1785
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8, !dbg !1786
  %i.bh = load i8, ptr %i.bg, align 8, !dbg !1786, !noundef !666
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1787
  store i8 %i.bh, ptr %i.bi, align 8, !dbg !1787
  store i64 18, ptr %0, align 8, !dbg !1787
  br label %bb.j, !dbg !1788

bb.j:                                             ; preds = %bb.r, %bb.q, %bb.i
  ret void, !dbg !1789

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1704), !dbg !1790
  %i.bj = load ptr, ptr %i.d, align 8, !dbg !1791, !alias.scope !1704, !nonnull !666, !noundef !666 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.3.0.i.ph.i, !dbg !1792 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !1793, !noalias !1704, !noundef !666
  %i.bm = and i8 %i.bl, 1, !dbg !1794
  %i.bn = zext nneg i8 %i.bm to i64, !dbg !1794
  %i.bo = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !1795
  %i.bp = load i64, ptr %i.i, align 8, !dbg !1796, !alias.scope !1704, !noundef !666
  %i.bq = and i64 %i.bp, %i.bo, !dbg !1797
  store i8 %i.k, ptr %i.bk, align 1, !dbg !1798, !noalias !1704
  %i.br = getelementptr i8, ptr %i.bj, i64 %i.bq, !dbg !1799
  %i.bs = getelementptr i8, ptr %i.br, i64 16, !dbg !1799
  store i8 %i.k, ptr %i.bs, align 1, !dbg !1800, !noalias !1704
  %i.bt = load <2 x i64>, ptr %i.e, align 8, !dbg !1801, !alias.scope !1704
  %i.bu = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bn, i64 0, !dbg !1801
  %i.bv = sub <2 x i64> %i.bt, %i.bu, !dbg !1801
  store <2 x i64> %i.bv, ptr %i.e, align 8, !dbg !1801, !alias.scope !1704
  %i.bw = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !1802
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bj, i64 %i.bw, !dbg !1803 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -16, !dbg !1804
  store i64 %i.c, ptr %i.by, align 8, !dbg !1805, !noalias !1704
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -8, !dbg !1805
  store i8 %i.bd, ptr %i.bz, align 8, !dbg !1805, !noalias !1704
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1706), !dbg !1806
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1707), !dbg !1807, !noalias !1708
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !1808 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !1808, !range !795, !alias.scope !1709, !noalias !1710, !noundef !666 ; 2 uses
  %.not.i.i43 = icmp eq i64 %i.cb, -9223372036854775808, !dbg !1808
  br i1 %.not.i.i43, label %bb.o, label %bb.l, !dbg !1809

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !1810 ; 4 uses
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !1810, !alias.scope !1711, !noalias !1710, !noundef !666 ; 2 uses
  %i.ce = and i64 %i.cd, 7, !dbg !1811
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !1811
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !1812, !alias.scope !1711, !noalias !1710 ; 4 uses
  br i1 %i.cf, label %bb.m, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !1810

bb.m:                                             ; preds = %bb.l
  %i.ci = icmp eq i64 %i.ch, %i.cb, !dbg !1813
  br i1 %i.ci, label %bb.n, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !1813

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ca), !dbg !1814, !noalias !1710
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !1814

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.n, %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !1815
  %i.ck = load ptr, ptr %i.cj, align 8, !dbg !1815, !alias.scope !1712, !noalias !1710, !nonnull !666, !noundef !666
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ch, !dbg !1816
  store i8 0, ptr %i.cl, align 1, !dbg !1817, !noalias !1710
  %i.cm = add i64 %i.ch, 1, !dbg !1818            ; 2 uses
  store i64 %i.cm, ptr %i.cg, align 8, !dbg !1818, !alias.scope !1712, !noalias !1710
  %.pre.i.i = load i64, ptr %i.cc, align 8, !dbg !1819, !alias.scope !1711, !noalias !1710
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !1820

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.l
  %i.cn = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cd, %bb.l ], !dbg !1819
  %i.co = phi i64 [ %i.cm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.ch, %bb.l ], !dbg !1821 ; 2 uses
  %.not.i.i.i44 = icmp ne i64 %i.co, 0, !dbg !1822
  tail call void @llvm.assume(i1 %.not.i.i.i44), !dbg !1822, !noalias !1708
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !1823
  %i.cq = load ptr, ptr %i.cp, align 8, !dbg !1823, !alias.scope !1711, !noalias !1710, !nonnull !666, !noundef !666
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.co, !dbg !1824
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1, !dbg !1824 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ], !dbg !1825, !noalias !1708
  %i.ct = load i8, ptr %i.cs, align 1, !dbg !1826, !noalias !1710, !noundef !666
  %i.cu = trunc i64 %i.cn to i8, !dbg !1827
  %i.cv = and i8 %i.cu, 7, !dbg !1827
  %i.cw = shl nuw i8 1, %i.cv, !dbg !1827
  %i.cx = or i8 %i.ct, %i.cw, !dbg !1828
  store i8 %i.cx, ptr %i.cs, align 1, !dbg !1829, !noalias !1710
  %i.cy = load i64, ptr %i.cc, align 8, !dbg !1830, !alias.scope !1711, !noalias !1710, !noundef !666
  %i.cz = add i64 %i.cy, 1, !dbg !1830
  store i64 %i.cz, ptr %i.cc, align 8, !dbg !1830, !alias.scope !1711, !noalias !1710
  br label %bb.o, !dbg !1831

bb.o:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1832, !noalias !1713
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !1832 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !dbg !1832, !alias.scope !1714, !noalias !1715, !noundef !666
  %i.dc = add i64 %i.db, %3, !dbg !1832
  store i64 %i.dc, ptr %i.da, align 8, !dbg !1832, !alias.scope !1714, !noalias !1715
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3), !dbg !1833, !noalias !1708
  %i.dd = load i64, ptr %i.ba, align 8, !dbg !1834, !alias.scope !1716, !noalias !1717, !noundef !666 ; 3 uses
  %i.de = load i64, ptr %1, align 8, !dbg !1835, !range !790, !alias.scope !1716, !noalias !1717, !noundef !666
  %i.df = icmp eq i64 %i.dd, %i.de, !dbg !1836
  br i1 %i.df, label %bb.p, label %bb.q, !dbg !1836

bb.p:                                             ; preds = %bb.o
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !1837, !noalias !1718
  br label %bb.q, !dbg !1837

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1838
  %i.dh = load ptr, ptr %i.dg, align 8, !dbg !1838, !alias.scope !1716, !noalias !1717, !nonnull !666, !noundef !666
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dd, !dbg !1839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.di, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !1840, !noalias !1708
  %i.dj = add i64 %i.dd, 1, !dbg !1841
  store i64 %i.dj, ptr %i.ba, align 8, !dbg !1841, !alias.scope !1716, !noalias !1717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1842, !noalias !1713
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1787
  store i8 %i.bd, ptr %i.dk, align 8, !dbg !1787
  store i64 18, ptr %0, align 8, !dbg !1787
  br label %bb.j, !dbg !1788

bb.r:                                             ; preds = %bb.h
  store i64 2, ptr %0, align 8, !dbg !1843
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1843
  store i8 0, ptr %.sroa.235.0..sroa_idx, align 8, !dbg !1843
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !1843
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(63) getelementptr inbounds nuw (i8, ptr @1, i64 9), i64 63, i1 false), !dbg !1843
  br label %bb.j, !dbg !1788
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapaINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArrayaB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2q_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2q_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericeEENtNtB4E_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1844 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !2057
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !2058 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !2059 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !2060 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !2060, !alias.scope !2031, !noalias !2032, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !2061
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyaEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapaINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayaB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !2062, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyaEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMapaINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1i_7mutableINtB3Q_22MutableDictionaryArrayaB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3F_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3F_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericeEENtNtB5V_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !2063, !noalias !2032 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyaEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapaINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayaB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !2064

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyaEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapaINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayaB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !2065, !alias.scope !2033, !noalias !2032, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !2065 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !2065, !alias.scope !2033, !noalias !2032, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !2066
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !2067 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !2068

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyaEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapaINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayaB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyaEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapaINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayaB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.as, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyaEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapaINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayaB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !2069
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyaEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapaINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayaB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !2069
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyaEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapaINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayaB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ar, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !2070 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !2071
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !2072, !noalias !2034 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !2073
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !2074 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !2075
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !2076

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ah, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !2077
  %i.s = zext nneg i16 %i.r to i64, !dbg !2078
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !2079
  %i.u = and i64 %i.t, %.val7.i, !dbg !2079
  %i.v = load ptr, ptr %i.d, align 8, !dbg !2080, !alias.scope !2033, !noalias !2035, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !2081          ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.w, !dbg !2082
  %i.y = getelementptr i8, ptr %i.x, i64 -8, !dbg !2083
  %.val3.i.i = load i8, ptr %i.y, align 8, !dbg !2083, !noalias !2036, !noundef !666 ; 2 uses
  %i.z = zext nneg i8 %.val3.i.i to i64, !dbg !2084
  %i.aa = icmp sgt i8 %.val3.i.i, -1, !dbg !2085
  tail call void @llvm.assume(i1 %i.aa), !dbg !2085
  %i.ab = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %i.z), !dbg !2086, !noalias !2036 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 1, !dbg !2086
  %i.ad = icmp eq i64 %i.ac, %3, !dbg !2087
  br i1 %i.ad, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !2087, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ae = extractvalue { ptr, i64 } %i.ab, 0, !dbg !2086
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ae, ptr nonnull readonly %2, i64 %3), !dbg !2088, !alias.scope !2037, !noalias !2036
  %i.af = icmp eq i32 %bcmp.i.i.i.i, 0, !dbg !2088
  br i1 %i.af, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !2089, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !2090
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !2091, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.ag = add i16 %.sroa.05.029.i.i, -1, !dbg !2092
  %i.ah = and i16 %i.ag, %.sroa.05.029.i.i, !dbg !2093 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ah, 0, !dbg !2075
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !2076

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !2094
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !2094 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aj, 0, !dbg !2095
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !2096, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aj, i1 true), !dbg !2097
  %i.al = zext nneg i16 %i.ak to i64, !dbg !2098
  %i.am = add i64 %.sroa.0.017.i.i, %i.al, !dbg !2099
  %i.an = and i64 %i.am, %.val7.i, !dbg !2099
  br label %.thread.i.i, !dbg !2100

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.an, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !2101
  %i.ap = bitcast <16 x i1> %i.ao to i16, !dbg !2102
  %i.aq = icmp eq i16 %i.ap, 0, !dbg !2103
  br i1 %i.aq, label %bb.e, label %bb.f, !dbg !2103, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ar = add i64 %i.n, 16, !dbg !2104            ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.0.017.i.i, !dbg !2105
  br label %bb.c, !dbg !2068

bb.f:                                             ; preds = %.thread.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !2106
  %i.au = load i8, ptr %i.at, align 1, !dbg !2107, !noalias !2038, !noundef !666
  %i.av = icmp sgt i8 %i.au, -1, !dbg !2108
  br i1 %i.av, label %bb.g, label %bb.h, !dbg !2108, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !2109, !noalias !2038
  %i.aw = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !2110
  %i.ax = bitcast <16 x i1> %i.aw to i16, !dbg !2110 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.ax, 0, !dbg !2111
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ax, i1 true), !dbg !2112
  %i.az = zext nneg i16 %i.ay to i64, !dbg !2112
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !2113
  br label %bb.h, !dbg !2114

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.az, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2115 ; 3 uses
  %.val41 = load i64, ptr %i.ba, align 8, !dbg !2115, !noundef !666 ; 3 uses
  %i.bb = icmp ult i64 %.val41, 576460752303423488, !dbg !2116
  tail call void @llvm.assume(i1 %i.bb), !dbg !2117
  %i.bc = icmp samesign ugt i64 %.val41, 127, !dbg !2118
  %i.bd = trunc nuw nsw i64 %.val41 to i8, !dbg !2118 ; 2 uses
  br i1 %i.bc, label %bb.r, label %bb.k, !dbg !2119

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyaEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapaINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayaB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.be = load ptr, ptr %i.d, align 8, !dbg !2120, !alias.scope !2033, !noalias !2032, !nonnull !666, !noundef !666
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.w, !dbg !2121
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8, !dbg !2122
  %i.bh = load i8, ptr %i.bg, align 8, !dbg !2122, !noundef !666
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2123
  store i8 %i.bh, ptr %i.bi, align 8, !dbg !2123
  store i64 18, ptr %0, align 8, !dbg !2123
  br label %bb.j, !dbg !2124

bb.j:                                             ; preds = %bb.r, %bb.q, %bb.i
  ret void, !dbg !2125

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2040), !dbg !2126
  %i.bj = load ptr, ptr %i.d, align 8, !dbg !2127, !alias.scope !2040, !nonnull !666, !noundef !666 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.3.0.i.ph.i, !dbg !2128 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !2129, !noalias !2040, !noundef !666
  %i.bm = and i8 %i.bl, 1, !dbg !2130
  %i.bn = zext nneg i8 %i.bm to i64, !dbg !2130
  %i.bo = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !2131
  %i.bp = load i64, ptr %i.i, align 8, !dbg !2132, !alias.scope !2040, !noundef !666
  %i.bq = and i64 %i.bp, %i.bo, !dbg !2133
  store i8 %i.k, ptr %i.bk, align 1, !dbg !2134, !noalias !2040
  %i.br = getelementptr i8, ptr %i.bj, i64 %i.bq, !dbg !2135
  %i.bs = getelementptr i8, ptr %i.br, i64 16, !dbg !2135
  store i8 %i.k, ptr %i.bs, align 1, !dbg !2136, !noalias !2040
  %i.bt = load <2 x i64>, ptr %i.e, align 8, !dbg !2137, !alias.scope !2040
  %i.bu = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bn, i64 0, !dbg !2137
  %i.bv = sub <2 x i64> %i.bt, %i.bu, !dbg !2137
  store <2 x i64> %i.bv, ptr %i.e, align 8, !dbg !2137, !alias.scope !2040
  %i.bw = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !2138
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bj, i64 %i.bw, !dbg !2139 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -16, !dbg !2140
  store i64 %i.c, ptr %i.by, align 8, !dbg !2141, !noalias !2040
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -8, !dbg !2141
  store i8 %i.bd, ptr %i.bz, align 8, !dbg !2141, !noalias !2040
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2042), !dbg !2142
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2043), !dbg !2143, !noalias !2044
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !2144 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !2144, !range !795, !alias.scope !2045, !noalias !2046, !noundef !666 ; 2 uses
  %.not.i.i43 = icmp eq i64 %i.cb, -9223372036854775808, !dbg !2144
  br i1 %.not.i.i43, label %bb.o, label %bb.l, !dbg !2145

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !2146 ; 4 uses
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !2146, !alias.scope !2047, !noalias !2046, !noundef !666 ; 2 uses
  %i.ce = and i64 %i.cd, 7, !dbg !2147
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !2147
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !2148, !alias.scope !2047, !noalias !2046 ; 4 uses
  br i1 %i.cf, label %bb.m, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !2146

bb.m:                                             ; preds = %bb.l
  %i.ci = icmp eq i64 %i.ch, %i.cb, !dbg !2149
  br i1 %i.ci, label %bb.n, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !2149

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ca), !dbg !2150, !noalias !2046
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !2150

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.n, %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !2151
  %i.ck = load ptr, ptr %i.cj, align 8, !dbg !2151, !alias.scope !2048, !noalias !2046, !nonnull !666, !noundef !666
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ch, !dbg !2152
  store i8 0, ptr %i.cl, align 1, !dbg !2153, !noalias !2046
  %i.cm = add i64 %i.ch, 1, !dbg !2154            ; 2 uses
  store i64 %i.cm, ptr %i.cg, align 8, !dbg !2154, !alias.scope !2048, !noalias !2046
  %.pre.i.i = load i64, ptr %i.cc, align 8, !dbg !2155, !alias.scope !2047, !noalias !2046
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !2156

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.l
  %i.cn = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cd, %bb.l ], !dbg !2155
  %i.co = phi i64 [ %i.cm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.ch, %bb.l ], !dbg !2157 ; 2 uses
  %.not.i.i.i44 = icmp ne i64 %i.co, 0, !dbg !2158
  tail call void @llvm.assume(i1 %.not.i.i.i44), !dbg !2158, !noalias !2044
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !2159
  %i.cq = load ptr, ptr %i.cp, align 8, !dbg !2159, !alias.scope !2047, !noalias !2046, !nonnull !666, !noundef !666
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.co, !dbg !2160
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1, !dbg !2160 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ], !dbg !2161, !noalias !2044
  %i.ct = load i8, ptr %i.cs, align 1, !dbg !2162, !noalias !2046, !noundef !666
  %i.cu = trunc i64 %i.cn to i8, !dbg !2163
  %i.cv = and i8 %i.cu, 7, !dbg !2163
  %i.cw = shl nuw i8 1, %i.cv, !dbg !2163
  %i.cx = or i8 %i.ct, %i.cw, !dbg !2164
  store i8 %i.cx, ptr %i.cs, align 1, !dbg !2165, !noalias !2046
  %i.cy = load i64, ptr %i.cc, align 8, !dbg !2166, !alias.scope !2047, !noalias !2046, !noundef !666
  %i.cz = add i64 %i.cy, 1, !dbg !2166
  store i64 %i.cz, ptr %i.cc, align 8, !dbg !2166, !alias.scope !2047, !noalias !2046
  br label %bb.o, !dbg !2167

bb.o:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2168, !noalias !2049
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !2168 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !dbg !2168, !alias.scope !2050, !noalias !2051, !noundef !666
  %i.dc = add i64 %i.db, %3, !dbg !2168
  store i64 %i.dc, ptr %i.da, align 8, !dbg !2168, !alias.scope !2050, !noalias !2051
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !2169, !noalias !2044
  %i.dd = load i64, ptr %i.ba, align 8, !dbg !2170, !alias.scope !2052, !noalias !2053, !noundef !666 ; 3 uses
  %i.de = load i64, ptr %1, align 8, !dbg !2171, !range !790, !alias.scope !2052, !noalias !2053, !noundef !666
  %i.df = icmp eq i64 %i.dd, %i.de, !dbg !2172
  br i1 %i.df, label %bb.p, label %bb.q, !dbg !2172

bb.p:                                             ; preds = %bb.o
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !2173, !noalias !2054
  br label %bb.q, !dbg !2173

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2174
  %i.dh = load ptr, ptr %i.dg, align 8, !dbg !2174, !alias.scope !2052, !noalias !2053, !nonnull !666, !noundef !666
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dd, !dbg !2175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.di, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !2176, !noalias !2044
  %i.dj = add i64 %i.dd, 1, !dbg !2177
  store i64 %i.dj, ptr %i.ba, align 8, !dbg !2177, !alias.scope !2052, !noalias !2053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2178, !noalias !2049
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2123
  store i8 %i.bd, ptr %i.dk, align 8, !dbg !2123
  store i64 18, ptr %0, align 8, !dbg !2123
  br label %bb.j, !dbg !2124

bb.r:                                             ; preds = %bb.h
  store i64 2, ptr %0, align 8, !dbg !2179
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2179
  store i8 0, ptr %.sroa.235.0..sroa_idx, align 8, !dbg !2179
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !2179
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(63) getelementptr inbounds nuw (i8, ptr @1, i64 9), i64 63, i1 false), !dbg !2179
  br label %bb.j, !dbg !2124
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapaINtNtNtB7_9primitive7mutable21MutablePrimitiveArrayaEE14try_push_validaNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArrayaB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionaEE10try_extendINtNtNtNtB3K_4iter8adapters3map3MapINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB3K_5slice4iter4IteraENtNtB5a_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to23primitive_to_dictionaryaaE0EE0EB73_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(128) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2180 {
bb.a:
end_hunk_0
begin_hunk_1_@_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMaphINtNtNtB7_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB5_7mutableINtB2x_22MutableDictionaryArrayhB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2l_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2l_INtNtB7_8iterator15ArrayValuesIterINtB1o_11BinaryArrayxEENtNtB4A_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute:bb.a
  %i.aa = and i64 %i.z, %.val7.i, !dbg !5086
  %i.ab = sub nsw i64 0, %i.aa, !dbg !5087
  %i.ac = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.ab, !dbg !5088
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8, !dbg !5089
  %.val3.i.i = load i8, ptr %i.ad, align 8, !dbg !5089, !noalias !5054, !noundef !666 ; 2 uses
  %i.ae = zext i8 %.val3.i.i to i64, !dbg !5090   ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ae, !dbg !5091
  %.val1.i.i.i.i = load i64, ptr %i.af, align 8, !dbg !5092, !noalias !5055, !noundef !666 ; 2 uses
  %i.ag = add nuw nsw i64 %i.ae, 1, !dbg !5093    ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.q, !dbg !5094
  tail call void @llvm.assume(i1 %i.ah), !dbg !5095
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ag, !dbg !5096
  %.val.i.i.i.i = load i64, ptr %i.ai, align 8, !dbg !5097, !noalias !5055, !noundef !666
  %i.aj = sub nuw i64 %.val.i.i.i.i, %.val1.i.i.i.i, !dbg !5098
  %i.ak = icmp eq i64 %i.aj, %3, !dbg !5099
  br i1 %i.ak, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !5099, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 %.val1.i.i.i.i, !dbg !5100
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.al, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !5101, !alias.scope !5056, !noalias !5054
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !5101
  br i1 %i.am, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !5102, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !5103
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !5104, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.an = add i16 %.sroa.05.029.i.i, -1, !dbg !5105
  %i.ao = and i16 %i.an, %.sroa.05.029.i.i, !dbg !5106 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ao, 0, !dbg !5082
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !5083

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ap = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !5107
  %i.aq = bitcast <16 x i1> %i.ap to i16, !dbg !5107 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aq, 0, !dbg !5108
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !5109, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true), !dbg !5110
  %i.as = zext nneg i16 %i.ar to i64, !dbg !5111
  %i.at = add i64 %.sroa.0.017.i.i, %i.as, !dbg !5112
  %i.au = and i64 %i.at, %.val7.i, !dbg !5112
  br label %.thread.i.i, !dbg !5113

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.au, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.av = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !5114
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !5115
  %i.ax = icmp eq i16 %i.aw, 0, !dbg !5116
  br i1 %i.ax, label %bb.e, label %bb.f, !dbg !5116, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ay = add i64 %i.t, 16, !dbg !5117            ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.0.017.i.i, !dbg !5118
  br label %bb.c, !dbg !5075

bb.f:                                             ; preds = %.thread.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !5119
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !5120, !noalias !5051, !noundef !666
  %i.bc = icmp sgt i8 %i.bb, -1, !dbg !5121
  br i1 %i.bc, label %bb.g, label %bb.h, !dbg !5121, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !5122, !noalias !5051
  %i.bd = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !5123
  %i.be = bitcast <16 x i1> %i.bd to i16, !dbg !5123 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.be, 0, !dbg !5124
  %i.bf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.be, i1 true), !dbg !5125
  %i.bg = zext nneg i16 %i.bf to i64, !dbg !5125
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !5126
  br label %bb.h, !dbg !5127

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.bg, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.bh = icmp ult i64 %i.q, 1152921504606846976, !dbg !5128
  tail call void @llvm.assume(i1 %i.bh), !dbg !5129
  %i.bi = add nsw i64 %i.q, -1, !dbg !5130        ; 2 uses
  %i.bj = icmp ugt i64 %i.bi, 255, !dbg !5131
  %i.bk = trunc nuw i64 %i.bi to i8, !dbg !5131   ; 2 uses
  br i1 %i.bj, label %bb.n, label %bb.k, !dbg !5132

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5133
  store i8 %.val3.i.i, ptr %i.bl, align 8, !dbg !5133
  store i64 18, ptr %0, align 8, !dbg !5133
  br label %bb.j, !dbg !5134

bb.j:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i
  ret void, !dbg !5135

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5058), !dbg !5136
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i, !dbg !5137 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !dbg !5138, !noalias !5058, !noundef !666
  %i.bo = and i8 %i.bn, 1, !dbg !5139
  %i.bp = zext nneg i8 %i.bo to i64, !dbg !5139
  %i.bq = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !5140
  %i.br = and i64 %i.bq, %.val7.i, !dbg !5141
  store i8 %i.k, ptr %i.bm, align 1, !dbg !5142, !noalias !5058
  %i.bs = getelementptr i8, ptr %.val.i, i64 %i.br, !dbg !5143
  %i.bt = getelementptr i8, ptr %i.bs, i64 16, !dbg !5143
  store i8 %i.k, ptr %i.bt, align 1, !dbg !5144, !noalias !5058
  %i.bu = load <2 x i64>, ptr %i.e, align 8, !dbg !5145, !alias.scope !5058
  %i.bv = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bp, i64 0, !dbg !5145
  %i.bw = sub <2 x i64> %i.bu, %i.bv, !dbg !5145
  store <2 x i64> %i.bw, ptr %i.e, align 8, !dbg !5145, !alias.scope !5058
  %i.bx = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !5146
  %i.by = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.bx, !dbg !5147 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -16, !dbg !5148
  store i64 %i.c, ptr %i.bz, align 8, !dbg !5149, !noalias !5058
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -8, !dbg !5149
  store i8 %i.bk, ptr %i.ca, align 8, !dbg !5149, !noalias !5058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5060
  call void @_RNvXs7_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7mutableINtB5_18MutableBinaryArrayxEINtB9_7TryPushINtNtCscgRAwXFJnXP_4core6option6OptionRShEE8try_pushCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !5150
  %i.cb = load i64, ptr %i.a, align 8, !dbg !5151, !range !814, !noundef !666
  %.not = icmp eq i64 %i.cb, 18, !dbg !5151
  br i1 %.not, label %bb.m, label %bb.l, !dbg !5152

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !5153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5154
  br label %bb.j, !dbg !5134

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5154
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5133
  store i8 %i.bk, ptr %i.cc, align 8, !dbg !5133
  store i64 18, ptr %0, align 8, !dbg !5133
  br label %bb.j, !dbg !5134

bb.n:                                             ; preds = %bb.h
  store i64 2, ptr %0, align 8, !dbg !5155
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5155
  store i8 0, ptr %.sroa.235.0..sroa_idx, align 8, !dbg !5155
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !5155
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(63) getelementptr inbounds nuw (i8, ptr @1, i64 9), i64 63, i1 false), !dbg !5155
  br label %bb.j, !dbg !5134
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMaphINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB27_NCINvXs3_NtB5_7mutableINtB2F_22MutableDictionaryArrayhB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2r_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2r_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericB27_EENtNtB4I_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5156 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !5369
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRShECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !5370 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !5371 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !5372 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !5372, !alias.scope !5343, !noalias !5344, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !5373
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyhEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaphINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayhB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !5374, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyhEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMaphINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3m_NCINvXs3_NtB1i_7mutableINtB3U_22MutableDictionaryArrayhB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3G_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3G_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericB3m_EENtNtB5Z_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !5375, !noalias !5344 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyhEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaphINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayhB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !5376

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyhEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaphINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayhB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !5377, !alias.scope !5345, !noalias !5344, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !5377 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !5377, !alias.scope !5345, !noalias !5344, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !5378
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !5379 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !5380

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyhEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaphINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayhB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyhEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaphINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayhB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ar, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyhEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaphINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayhB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !5381
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyhEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaphINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayhB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !5381
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyhEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaphINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayhB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.aq, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !5382 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !5383
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !5384, !noalias !5346 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !5385
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !5386 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !5387
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !5388

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ag, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !5389
  %i.s = zext nneg i16 %i.r to i64, !dbg !5390
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !5391
  %i.u = and i64 %i.t, %.val7.i, !dbg !5391
  %i.v = load ptr, ptr %i.d, align 8, !dbg !5392, !alias.scope !5345, !noalias !5347, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !5393          ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.w, !dbg !5394
  %i.y = getelementptr i8, ptr %i.x, i64 -8, !dbg !5395
  %.val3.i.i = load i8, ptr %i.y, align 8, !dbg !5395, !noalias !5348, !noundef !666
  %i.z = zext i8 %.val3.i.i to i64, !dbg !5396
  %i.aa = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %i.z), !dbg !5397, !noalias !5348 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 1, !dbg !5397
  %i.ac = icmp eq i64 %i.ab, %3, !dbg !5398
  br i1 %i.ac, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !5398, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ad = extractvalue { ptr, i64 } %i.aa, 0, !dbg !5397
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ad, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !5399, !alias.scope !5349, !noalias !5348
  %i.ae = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !5399
  br i1 %i.ae, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !5400, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !5401
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !5402, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.af = add i16 %.sroa.05.029.i.i, -1, !dbg !5403
  %i.ag = and i16 %i.af, %.sroa.05.029.i.i, !dbg !5404 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ag, 0, !dbg !5387
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !5388

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ah = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !5405
  %i.ai = bitcast <16 x i1> %i.ah to i16, !dbg !5405 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ai, 0, !dbg !5406
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !5407, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ai, i1 true), !dbg !5408
  %i.ak = zext nneg i16 %i.aj to i64, !dbg !5409
  %i.al = add i64 %.sroa.0.017.i.i, %i.ak, !dbg !5410
  %i.am = and i64 %i.al, %.val7.i, !dbg !5410
  br label %.thread.i.i, !dbg !5411

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.am, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !5412
  %i.ao = bitcast <16 x i1> %i.an to i16, !dbg !5413
  %i.ap = icmp eq i16 %i.ao, 0, !dbg !5414
  br i1 %i.ap, label %bb.e, label %bb.f, !dbg !5414, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.aq = add i64 %i.n, 16, !dbg !5415            ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.0.017.i.i, !dbg !5416
  br label %bb.c, !dbg !5380

bb.f:                                             ; preds = %.thread.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !5417
  %i.at = load i8, ptr %i.as, align 1, !dbg !5418, !noalias !5350, !noundef !666
  %i.au = icmp sgt i8 %i.at, -1, !dbg !5419
  br i1 %i.au, label %bb.g, label %bb.h, !dbg !5419, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !5420, !noalias !5350
  %i.av = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !5421
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !5421 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.aw, 0, !dbg !5422
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true), !dbg !5423
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !5423
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !5424
  br label %bb.h, !dbg !5425

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ay, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !5426 ; 3 uses
  %.val41 = load i64, ptr %i.az, align 8, !dbg !5426, !noundef !666 ; 3 uses
  %i.ba = icmp ult i64 %.val41, 576460752303423488, !dbg !5427
  tail call void @llvm.assume(i1 %i.ba), !dbg !5428
  %i.bb = icmp samesign ugt i64 %.val41, 255, !dbg !5429
  %i.bc = trunc nuw i64 %.val41 to i8, !dbg !5429 ; 2 uses
  br i1 %i.bb, label %bb.r, label %bb.k, !dbg !5430

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.bd = load ptr, ptr %i.d, align 8, !dbg !5431, !alias.scope !5345, !noalias !5344, !nonnull !666, !noundef !666
  %i.be = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.w, !dbg !5432
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8, !dbg !5433
  %i.bg = load i8, ptr %i.bf, align 8, !dbg !5433, !noundef !666
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5434
  store i8 %i.bg, ptr %i.bh, align 8, !dbg !5434
  store i64 18, ptr %0, align 8, !dbg !5434
  br label %bb.j, !dbg !5435

bb.j:                                             ; preds = %bb.r, %bb.q, %bb.i
  ret void, !dbg !5436

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5352), !dbg !5437
  %i.bi = load ptr, ptr %i.d, align 8, !dbg !5438, !alias.scope !5352, !nonnull !666, !noundef !666 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.3.0.i.ph.i, !dbg !5439 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !5440, !noalias !5352, !noundef !666
  %i.bl = and i8 %i.bk, 1, !dbg !5441
  %i.bm = zext nneg i8 %i.bl to i64, !dbg !5441
  %i.bn = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !5442
  %i.bo = load i64, ptr %i.i, align 8, !dbg !5443, !alias.scope !5352, !noundef !666
  %i.bp = and i64 %i.bo, %i.bn, !dbg !5444
  store i8 %i.k, ptr %i.bj, align 1, !dbg !5445, !noalias !5352
  %i.bq = getelementptr i8, ptr %i.bi, i64 %i.bp, !dbg !5446
  %i.br = getelementptr i8, ptr %i.bq, i64 16, !dbg !5446
  store i8 %i.k, ptr %i.br, align 1, !dbg !5447, !noalias !5352
  %i.bs = load <2 x i64>, ptr %i.e, align 8, !dbg !5448, !alias.scope !5352
  %i.bt = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bm, i64 0, !dbg !5448
  %i.bu = sub <2 x i64> %i.bs, %i.bt, !dbg !5448
  store <2 x i64> %i.bu, ptr %i.e, align 8, !dbg !5448, !alias.scope !5352
  %i.bv = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !5449
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.bv, !dbg !5450 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -16, !dbg !5451
  store i64 %i.c, ptr %i.bx, align 8, !dbg !5452, !noalias !5352
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -8, !dbg !5452
  store i8 %i.bc, ptr %i.by, align 8, !dbg !5452, !noalias !5352
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5354), !dbg !5453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5355), !dbg !5454, !noalias !5356
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !5455 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !5455, !range !795, !alias.scope !5357, !noalias !5358, !noundef !666 ; 2 uses
  %.not.i.i43 = icmp eq i64 %i.ca, -9223372036854775808, !dbg !5455
  br i1 %.not.i.i43, label %bb.o, label %bb.l, !dbg !5456

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !5457 ; 4 uses
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !5457, !alias.scope !5359, !noalias !5358, !noundef !666 ; 2 uses
  %i.cd = and i64 %i.cc, 7, !dbg !5458
  %i.ce = icmp eq i64 %i.cd, 0, !dbg !5458
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !5459, !alias.scope !5359, !noalias !5358 ; 4 uses
  br i1 %i.ce, label %bb.m, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !5457

bb.m:                                             ; preds = %bb.l
  %i.ch = icmp eq i64 %i.cg, %i.ca, !dbg !5460
  br i1 %i.ch, label %bb.n, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !5460

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bz), !dbg !5461, !noalias !5358
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !5461

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.n, %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !5462
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !5462, !alias.scope !5360, !noalias !5358, !nonnull !666, !noundef !666
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cg, !dbg !5463
  store i8 0, ptr %i.ck, align 1, !dbg !5464, !noalias !5358
  %i.cl = add i64 %i.cg, 1, !dbg !5465            ; 2 uses
  store i64 %i.cl, ptr %i.cf, align 8, !dbg !5465, !alias.scope !5360, !noalias !5358
  %.pre.i.i = load i64, ptr %i.cb, align 8, !dbg !5466, !alias.scope !5359, !noalias !5358
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !5467

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.l
  %i.cm = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cc, %bb.l ], !dbg !5466
  %i.cn = phi i64 [ %i.cl, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cg, %bb.l ], !dbg !5468 ; 2 uses
  %.not.i.i.i44 = icmp ne i64 %i.cn, 0, !dbg !5469
  tail call void @llvm.assume(i1 %.not.i.i.i44), !dbg !5469, !noalias !5356
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !5470
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !5470, !alias.scope !5359, !noalias !5358, !nonnull !666, !noundef !666
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cn, !dbg !5471
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !5471 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !5472, !noalias !5356
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !5473, !noalias !5358, !noundef !666
  %i.ct = trunc i64 %i.cm to i8, !dbg !5474
  %i.cu = and i8 %i.ct, 7, !dbg !5474
  %i.cv = shl nuw i8 1, %i.cu, !dbg !5474
  %i.cw = or i8 %i.cs, %i.cv, !dbg !5475
  store i8 %i.cw, ptr %i.cr, align 1, !dbg !5476, !noalias !5358
  %i.cx = load i64, ptr %i.cb, align 8, !dbg !5477, !alias.scope !5359, !noalias !5358, !noundef !666
  %i.cy = add i64 %i.cx, 1, !dbg !5477
  store i64 %i.cy, ptr %i.cb, align 8, !dbg !5477, !alias.scope !5359, !noalias !5358
  br label %bb.o, !dbg !5478

bb.o:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5479, !noalias !5361
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !5479 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !dbg !5479, !alias.scope !5362, !noalias !5363, !noundef !666
  %i.db = add i64 %i.da, %3, !dbg !5479
  store i64 %i.db, ptr %i.cz, align 8, !dbg !5479, !alias.scope !5362, !noalias !5363
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3), !dbg !5480, !noalias !5356
  %i.dc = load i64, ptr %i.az, align 8, !dbg !5481, !alias.scope !5364, !noalias !5365, !noundef !666 ; 3 uses
  %i.dd = load i64, ptr %1, align 8, !dbg !5482, !range !790, !alias.scope !5364, !noalias !5365, !noundef !666
  %i.de = icmp eq i64 %i.dc, %i.dd, !dbg !5483
  br i1 %i.de, label %bb.p, label %bb.q, !dbg !5483

bb.p:                                             ; preds = %bb.o
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !5484, !noalias !5366
  br label %bb.q, !dbg !5484

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !5485
  %i.dg = load ptr, ptr %i.df, align 8, !dbg !5485, !alias.scope !5364, !noalias !5365, !nonnull !666, !noundef !666
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dc, !dbg !5486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dh, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !5487, !noalias !5356
  %i.di = add i64 %i.dc, 1, !dbg !5488
  store i64 %i.di, ptr %i.az, align 8, !dbg !5488, !alias.scope !5364, !noalias !5365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5489, !noalias !5361
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5434
  store i8 %i.bc, ptr %i.dj, align 8, !dbg !5434
  store i64 18, ptr %0, align 8, !dbg !5434
  br label %bb.j, !dbg !5435

bb.r:                                             ; preds = %bb.h
  store i64 2, ptr %0, align 8, !dbg !5490
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5490
  store i8 0, ptr %.sroa.235.0..sroa_idx, align 8, !dbg !5490
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !5490
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(63) getelementptr inbounds nuw (i8, ptr @1, i64 9), i64 63, i1 false), !dbg !5490
  br label %bb.j, !dbg !5435
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMaphINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArrayhB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2q_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2q_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericeEENtNtB4E_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5491 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !5706
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !5707 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !5708 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !5709 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !5709, !alias.scope !5680, !noalias !5681, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !5710
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyhEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaphINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayhB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !5711, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyhEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMaphINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1i_7mutableINtB3Q_22MutableDictionaryArrayhB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3F_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3F_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericeEENtNtB5V_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !5712, !noalias !5681 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyhEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaphINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayhB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !5713

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyhEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaphINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayhB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !5714, !alias.scope !5682, !noalias !5681, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !5714 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !5714, !alias.scope !5682, !noalias !5681, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !5715
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !5716 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !5717

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyhEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaphINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayhB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyhEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaphINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayhB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ar, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyhEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaphINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayhB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !5718
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyhEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaphINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayhB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !5718
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyhEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaphINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayhB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.aq, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !5719 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !5720
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !5721, !noalias !5683 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !5722
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !5723 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !5724
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !5725

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ag, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !5726
  %i.s = zext nneg i16 %i.r to i64, !dbg !5727
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !5728
  %i.u = and i64 %i.t, %.val7.i, !dbg !5728
  %i.v = load ptr, ptr %i.d, align 8, !dbg !5729, !alias.scope !5682, !noalias !5684, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !5730          ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.w, !dbg !5731
  %i.y = getelementptr i8, ptr %i.x, i64 -8, !dbg !5732
  %.val3.i.i = load i8, ptr %i.y, align 8, !dbg !5732, !noalias !5685, !noundef !666
  %i.z = zext i8 %.val3.i.i to i64, !dbg !5733
  %i.aa = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %i.z), !dbg !5734, !noalias !5685 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 1, !dbg !5734
  %i.ac = icmp eq i64 %i.ab, %3, !dbg !5735
  br i1 %i.ac, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !5735, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ad = extractvalue { ptr, i64 } %i.aa, 0, !dbg !5734
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ad, ptr nonnull readonly %2, i64 %3), !dbg !5736, !alias.scope !5686, !noalias !5685
  %i.ae = icmp eq i32 %bcmp.i.i.i.i, 0, !dbg !5736
  br i1 %i.ae, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !5737, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !5738
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !5739, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.af = add i16 %.sroa.05.029.i.i, -1, !dbg !5740
  %i.ag = and i16 %i.af, %.sroa.05.029.i.i, !dbg !5741 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ag, 0, !dbg !5724
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !5725

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ah = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !5742
  %i.ai = bitcast <16 x i1> %i.ah to i16, !dbg !5742 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ai, 0, !dbg !5743
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !5744, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ai, i1 true), !dbg !5745
  %i.ak = zext nneg i16 %i.aj to i64, !dbg !5746
  %i.al = add i64 %.sroa.0.017.i.i, %i.ak, !dbg !5747
  %i.am = and i64 %i.al, %.val7.i, !dbg !5747
  br label %.thread.i.i, !dbg !5748

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.am, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !5749
  %i.ao = bitcast <16 x i1> %i.an to i16, !dbg !5750
  %i.ap = icmp eq i16 %i.ao, 0, !dbg !5751
  br i1 %i.ap, label %bb.e, label %bb.f, !dbg !5751, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.aq = add i64 %i.n, 16, !dbg !5752            ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.0.017.i.i, !dbg !5753
  br label %bb.c, !dbg !5717

bb.f:                                             ; preds = %.thread.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !5754
  %i.at = load i8, ptr %i.as, align 1, !dbg !5755, !noalias !5687, !noundef !666
  %i.au = icmp sgt i8 %i.at, -1, !dbg !5756
  br i1 %i.au, label %bb.g, label %bb.h, !dbg !5756, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !5757, !noalias !5687
  %i.av = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !5758
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !5758 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.aw, 0, !dbg !5759
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true), !dbg !5760
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !5760
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !5761
  br label %bb.h, !dbg !5762

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ay, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !5763 ; 3 uses
  %.val41 = load i64, ptr %i.az, align 8, !dbg !5763, !noundef !666 ; 3 uses
  %i.ba = icmp ult i64 %.val41, 576460752303423488, !dbg !5764
  tail call void @llvm.assume(i1 %i.ba), !dbg !5765
  %i.bb = icmp samesign ugt i64 %.val41, 255, !dbg !5766
  %i.bc = trunc nuw i64 %.val41 to i8, !dbg !5766 ; 2 uses
  br i1 %i.bb, label %bb.r, label %bb.k, !dbg !5767

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyhEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaphINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayhB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.bd = load ptr, ptr %i.d, align 8, !dbg !5768, !alias.scope !5682, !noalias !5681, !nonnull !666, !noundef !666
  %i.be = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.w, !dbg !5769
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8, !dbg !5770
  %i.bg = load i8, ptr %i.bf, align 8, !dbg !5770, !noundef !666
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5771
  store i8 %i.bg, ptr %i.bh, align 8, !dbg !5771
  store i64 18, ptr %0, align 8, !dbg !5771
  br label %bb.j, !dbg !5772

bb.j:                                             ; preds = %bb.r, %bb.q, %bb.i
  ret void, !dbg !5773

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5689), !dbg !5774
  %i.bi = load ptr, ptr %i.d, align 8, !dbg !5775, !alias.scope !5689, !nonnull !666, !noundef !666 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.3.0.i.ph.i, !dbg !5776 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !5777, !noalias !5689, !noundef !666
  %i.bl = and i8 %i.bk, 1, !dbg !5778
  %i.bm = zext nneg i8 %i.bl to i64, !dbg !5778
  %i.bn = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !5779
  %i.bo = load i64, ptr %i.i, align 8, !dbg !5780, !alias.scope !5689, !noundef !666
  %i.bp = and i64 %i.bo, %i.bn, !dbg !5781
  store i8 %i.k, ptr %i.bj, align 1, !dbg !5782, !noalias !5689
  %i.bq = getelementptr i8, ptr %i.bi, i64 %i.bp, !dbg !5783
  %i.br = getelementptr i8, ptr %i.bq, i64 16, !dbg !5783
  store i8 %i.k, ptr %i.br, align 1, !dbg !5784, !noalias !5689
  %i.bs = load <2 x i64>, ptr %i.e, align 8, !dbg !5785, !alias.scope !5689
  %i.bt = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bm, i64 0, !dbg !5785
  %i.bu = sub <2 x i64> %i.bs, %i.bt, !dbg !5785
  store <2 x i64> %i.bu, ptr %i.e, align 8, !dbg !5785, !alias.scope !5689
  %i.bv = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !5786
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.bv, !dbg !5787 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -16, !dbg !5788
  store i64 %i.c, ptr %i.bx, align 8, !dbg !5789, !noalias !5689
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -8, !dbg !5789
  store i8 %i.bc, ptr %i.by, align 8, !dbg !5789, !noalias !5689
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5691), !dbg !5790
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5692), !dbg !5791, !noalias !5693
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !5792 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !5792, !range !795, !alias.scope !5694, !noalias !5695, !noundef !666 ; 2 uses
  %.not.i.i43 = icmp eq i64 %i.ca, -9223372036854775808, !dbg !5792
  br i1 %.not.i.i43, label %bb.o, label %bb.l, !dbg !5793

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !5794 ; 4 uses
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !5794, !alias.scope !5696, !noalias !5695, !noundef !666 ; 2 uses
  %i.cd = and i64 %i.cc, 7, !dbg !5795
  %i.ce = icmp eq i64 %i.cd, 0, !dbg !5795
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !5796, !alias.scope !5696, !noalias !5695 ; 4 uses
  br i1 %i.ce, label %bb.m, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !5794

bb.m:                                             ; preds = %bb.l
  %i.ch = icmp eq i64 %i.cg, %i.ca, !dbg !5797
  br i1 %i.ch, label %bb.n, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !5797

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bz), !dbg !5798, !noalias !5695
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !5798

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.n, %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !5799
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !5799, !alias.scope !5697, !noalias !5695, !nonnull !666, !noundef !666
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cg, !dbg !5800
  store i8 0, ptr %i.ck, align 1, !dbg !5801, !noalias !5695
  %i.cl = add i64 %i.cg, 1, !dbg !5802            ; 2 uses
  store i64 %i.cl, ptr %i.cf, align 8, !dbg !5802, !alias.scope !5697, !noalias !5695
  %.pre.i.i = load i64, ptr %i.cb, align 8, !dbg !5803, !alias.scope !5696, !noalias !5695
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !5804

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.l
  %i.cm = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cc, %bb.l ], !dbg !5803
  %i.cn = phi i64 [ %i.cl, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cg, %bb.l ], !dbg !5805 ; 2 uses
  %.not.i.i.i44 = icmp ne i64 %i.cn, 0, !dbg !5806
  tail call void @llvm.assume(i1 %.not.i.i.i44), !dbg !5806, !noalias !5693
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !5807
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !5807, !alias.scope !5696, !noalias !5695, !nonnull !666, !noundef !666
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cn, !dbg !5808
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !5808 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !5809, !noalias !5693
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !5810, !noalias !5695, !noundef !666
  %i.ct = trunc i64 %i.cm to i8, !dbg !5811
  %i.cu = and i8 %i.ct, 7, !dbg !5811
  %i.cv = shl nuw i8 1, %i.cu, !dbg !5811
  %i.cw = or i8 %i.cs, %i.cv, !dbg !5812
  store i8 %i.cw, ptr %i.cr, align 1, !dbg !5813, !noalias !5695
  %i.cx = load i64, ptr %i.cb, align 8, !dbg !5814, !alias.scope !5696, !noalias !5695, !noundef !666
  %i.cy = add i64 %i.cx, 1, !dbg !5814
  store i64 %i.cy, ptr %i.cb, align 8, !dbg !5814, !alias.scope !5696, !noalias !5695
  br label %bb.o, !dbg !5815

bb.o:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5816, !noalias !5698
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !5816 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !dbg !5816, !alias.scope !5699, !noalias !5700, !noundef !666
  %i.db = add i64 %i.da, %3, !dbg !5816
  store i64 %i.db, ptr %i.cz, align 8, !dbg !5816, !alias.scope !5699, !noalias !5700
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !5817, !noalias !5693
  %i.dc = load i64, ptr %i.az, align 8, !dbg !5818, !alias.scope !5701, !noalias !5702, !noundef !666 ; 3 uses
  %i.dd = load i64, ptr %1, align 8, !dbg !5819, !range !790, !alias.scope !5701, !noalias !5702, !noundef !666
  %i.de = icmp eq i64 %i.dc, %i.dd, !dbg !5820
  br i1 %i.de, label %bb.p, label %bb.q, !dbg !5820

bb.p:                                             ; preds = %bb.o
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !5821, !noalias !5703
  br label %bb.q, !dbg !5821

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !5822
  %i.dg = load ptr, ptr %i.df, align 8, !dbg !5822, !alias.scope !5701, !noalias !5702, !nonnull !666, !noundef !666
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dc, !dbg !5823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dh, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !5824, !noalias !5693
  %i.di = add i64 %i.dc, 1, !dbg !5825
  store i64 %i.di, ptr %i.az, align 8, !dbg !5825, !alias.scope !5701, !noalias !5702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5826, !noalias !5698
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5771
  store i8 %i.bc, ptr %i.dj, align 8, !dbg !5771
  store i64 18, ptr %0, align 8, !dbg !5771
  br label %bb.j, !dbg !5772

bb.r:                                             ; preds = %bb.h
  store i64 2, ptr %0, align 8, !dbg !5827
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5827
  store i8 0, ptr %.sroa.235.0..sroa_idx, align 8, !dbg !5827
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !5827
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(63) getelementptr inbounds nuw (i8, ptr @1, i64 9), i64 63, i1 false), !dbg !5827
  br label %bb.j, !dbg !5772
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMaphINtNtNtB7_9primitive7mutable21MutablePrimitiveArrayaEE14try_push_validaNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArrayhB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionaEE10try_extendINtNtNtNtB3K_4iter8adapters3map3MapINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB3K_5slice4iter4IteraENtNtB5a_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to23primitive_to_dictionaryahE0EE0EB73_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(128) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5828 {
bb.a:
end_hunk_1
begin_hunk_2_@_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMaplINtNtNtB7_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB5_7mutableINtB2x_22MutableDictionaryArraylB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2l_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2l_INtNtB7_8iterator15ArrayValuesIterINtB1o_11BinaryArrayxEENtNtB4A_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute:bb.a
  %.val3.i.i = load i32, ptr %i.ad, align 8, !dbg !8742, !noalias !8707, !noundef !666 ; 3 uses
  %i.ae = zext nneg i32 %.val3.i.i to i64, !dbg !8743 ; 2 uses
  %i.af = icmp sgt i32 %.val3.i.i, -1, !dbg !8744
  tail call void @llvm.assume(i1 %i.af), !dbg !8744
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ae, !dbg !8745
  %.val1.i.i.i.i = load i64, ptr %i.ag, align 8, !dbg !8746, !noalias !8708, !noundef !666 ; 2 uses
  %i.ah = add nuw nsw i64 %i.ae, 1, !dbg !8747    ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.q, !dbg !8748
  tail call void @llvm.assume(i1 %i.ai), !dbg !8749
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ah, !dbg !8750
  %.val.i.i.i.i = load i64, ptr %i.aj, align 8, !dbg !8751, !noalias !8708, !noundef !666
  %i.ak = sub nuw i64 %.val.i.i.i.i, %.val1.i.i.i.i, !dbg !8752
  %i.al = icmp eq i64 %i.ak, %3, !dbg !8753
  br i1 %i.al, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !8753, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 %.val1.i.i.i.i, !dbg !8754
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.am, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !8755, !alias.scope !8709, !noalias !8707
  %i.an = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !8755
  br i1 %i.an, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !8756, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !8757
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !8758, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.ao = add i16 %.sroa.05.029.i.i, -1, !dbg !8759
  %i.ap = and i16 %i.ao, %.sroa.05.029.i.i, !dbg !8760 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ap, 0, !dbg !8735
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !8736

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.aq = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !8761
  %i.ar = bitcast <16 x i1> %i.aq to i16, !dbg !8761 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ar, 0, !dbg !8762
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !8763, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ar, i1 true), !dbg !8764
  %i.at = zext nneg i16 %i.as to i64, !dbg !8765
  %i.au = add i64 %.sroa.0.017.i.i, %i.at, !dbg !8766
  %i.av = and i64 %i.au, %.val7.i, !dbg !8766
  br label %.thread.i.i, !dbg !8767

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.av, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !8768
  %i.ax = bitcast <16 x i1> %i.aw to i16, !dbg !8769
  %i.ay = icmp eq i16 %i.ax, 0, !dbg !8770
  br i1 %i.ay, label %bb.e, label %bb.f, !dbg !8770, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.az = add i64 %i.t, 16, !dbg !8771            ; 2 uses
  %i.ba = add i64 %i.az, %.sroa.0.017.i.i, !dbg !8772
  br label %bb.c, !dbg !8728

bb.f:                                             ; preds = %.thread.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !8773
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !8774, !noalias !8704, !noundef !666
  %i.bd = icmp sgt i8 %i.bc, -1, !dbg !8775
  br i1 %i.bd, label %bb.g, label %bb.h, !dbg !8775, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !8776, !noalias !8704
  %i.be = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !8777
  %i.bf = bitcast <16 x i1> %i.be to i16, !dbg !8777 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.bf, 0, !dbg !8778
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bf, i1 true), !dbg !8779
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !8779
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !8780
  br label %bb.h, !dbg !8781

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.bh, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.bi = icmp ult i64 %i.q, 1152921504606846976, !dbg !8782
  tail call void @llvm.assume(i1 %i.bi), !dbg !8783
  %i.bj = add nsw i64 %i.q, -1, !dbg !8784        ; 2 uses
  %i.bk = icmp ugt i64 %i.bj, 2147483647, !dbg !8785
  %i.bl = trunc nuw nsw i64 %i.bj to i32, !dbg !8785 ; 2 uses
  br i1 %i.bk, label %bb.n, label %bb.k, !dbg !8786

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8787
  store i32 %.val3.i.i, ptr %i.bm, align 8, !dbg !8787
  store i64 18, ptr %0, align 8, !dbg !8787
  br label %bb.j, !dbg !8788

bb.j:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i
  ret void, !dbg !8789

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8711), !dbg !8790
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i, !dbg !8791 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !dbg !8792, !noalias !8711, !noundef !666
  %i.bp = and i8 %i.bo, 1, !dbg !8793
  %i.bq = zext nneg i8 %i.bp to i64, !dbg !8793
  %i.br = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !8794
  %i.bs = and i64 %i.br, %.val7.i, !dbg !8795
  store i8 %i.k, ptr %i.bn, align 1, !dbg !8796, !noalias !8711
  %i.bt = getelementptr i8, ptr %.val.i, i64 %i.bs, !dbg !8797
  %i.bu = getelementptr i8, ptr %i.bt, i64 16, !dbg !8797
  store i8 %i.k, ptr %i.bu, align 1, !dbg !8798, !noalias !8711
  %i.bv = load <2 x i64>, ptr %i.e, align 8, !dbg !8799, !alias.scope !8711
  %i.bw = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bq, i64 0, !dbg !8799
  %i.bx = sub <2 x i64> %i.bv, %i.bw, !dbg !8799
  store <2 x i64> %i.bx, ptr %i.e, align 8, !dbg !8799, !alias.scope !8711
  %i.by = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !8800
  %i.bz = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.by, !dbg !8801 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -16, !dbg !8802
  store i64 %i.c, ptr %i.ca, align 8, !dbg !8803, !noalias !8711
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 -8, !dbg !8803
  store i32 %i.bl, ptr %i.cb, align 8, !dbg !8803, !noalias !8711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8713
  call void @_RNvXs7_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7mutableINtB5_18MutableBinaryArrayxEINtB9_7TryPushINtNtCscgRAwXFJnXP_4core6option6OptionRShEE8try_pushCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !8804
  %i.cc = load i64, ptr %i.a, align 8, !dbg !8805, !range !814, !noundef !666
  %.not = icmp eq i64 %i.cc, 18, !dbg !8805
  br i1 %.not, label %bb.m, label %bb.l, !dbg !8806

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !8807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8808
  br label %bb.j, !dbg !8788

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8808
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8787
  store i32 %i.bl, ptr %i.cd, align 8, !dbg !8787
  store i64 18, ptr %0, align 8, !dbg !8787
  br label %bb.j, !dbg !8788

bb.n:                                             ; preds = %bb.h
  store i64 2, ptr %0, align 8, !dbg !8809
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8809
  store i32 0, ptr %.sroa.235.0..sroa_idx, align 8, !dbg !8809
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !8809
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds nuw (i8, ptr @1, i64 12), i64 60, i1 false), !dbg !8809
  br label %bb.j, !dbg !8788
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMaplINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB27_NCINvXs3_NtB5_7mutableINtB2F_22MutableDictionaryArraylB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2r_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2r_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericB27_EENtNtB4I_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8810 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !9021
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRShECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !9022 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !9023 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !9024 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !9024, !alias.scope !8995, !noalias !8996, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !9025
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTylEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaplINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraylB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !9026, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTylEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMaplINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3m_NCINvXs3_NtB1i_7mutableINtB3U_22MutableDictionaryArraylB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3G_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3G_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericB3m_EENtNtB5Z_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !9027, !noalias !8996 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTylEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaplINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraylB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !9028

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTylEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaplINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraylB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !9029, !alias.scope !8997, !noalias !8996, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !9029 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !9029, !alias.scope !8997, !noalias !8996, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !9030
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !9031 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !9032

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTylEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaplINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraylB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTylEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaplINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraylB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.as, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTylEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaplINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraylB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !9033
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTylEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaplINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraylB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !9033
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTylEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaplINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraylB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ar, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !9034 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !9035
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !9036, !noalias !8998 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !9037
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !9038 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !9039
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !9040

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ah, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !9041
  %i.s = zext nneg i16 %i.r to i64, !dbg !9042
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !9043
  %i.u = and i64 %i.t, %.val7.i, !dbg !9043
  %i.v = load ptr, ptr %i.d, align 8, !dbg !9044, !alias.scope !8997, !noalias !8999, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !9045          ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.w, !dbg !9046
  %i.y = getelementptr i8, ptr %i.x, i64 -8, !dbg !9047
  %.val3.i.i = load i32, ptr %i.y, align 8, !dbg !9047, !noalias !9000, !noundef !666 ; 2 uses
  %i.z = zext nneg i32 %.val3.i.i to i64, !dbg !9048
  %i.aa = icmp sgt i32 %.val3.i.i, -1, !dbg !9049
  tail call void @llvm.assume(i1 %i.aa), !dbg !9049
  %i.ab = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %i.z), !dbg !9050, !noalias !9000 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 1, !dbg !9050
  %i.ad = icmp eq i64 %i.ac, %3, !dbg !9051
  br i1 %i.ad, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !9051, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ae = extractvalue { ptr, i64 } %i.ab, 0, !dbg !9050
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ae, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !9052, !alias.scope !9001, !noalias !9000
  %i.af = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !9052
  br i1 %i.af, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !9053, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !9054
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !9055, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.ag = add i16 %.sroa.05.029.i.i, -1, !dbg !9056
  %i.ah = and i16 %i.ag, %.sroa.05.029.i.i, !dbg !9057 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ah, 0, !dbg !9039
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !9040

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !9058
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !9058 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aj, 0, !dbg !9059
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !9060, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aj, i1 true), !dbg !9061
  %i.al = zext nneg i16 %i.ak to i64, !dbg !9062
  %i.am = add i64 %.sroa.0.017.i.i, %i.al, !dbg !9063
  %i.an = and i64 %i.am, %.val7.i, !dbg !9063
  br label %.thread.i.i, !dbg !9064

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.an, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !9065
  %i.ap = bitcast <16 x i1> %i.ao to i16, !dbg !9066
  %i.aq = icmp eq i16 %i.ap, 0, !dbg !9067
  br i1 %i.aq, label %bb.e, label %bb.f, !dbg !9067, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ar = add i64 %i.n, 16, !dbg !9068            ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.0.017.i.i, !dbg !9069
  br label %bb.c, !dbg !9032

bb.f:                                             ; preds = %.thread.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !9070
  %i.au = load i8, ptr %i.at, align 1, !dbg !9071, !noalias !9002, !noundef !666
  %i.av = icmp sgt i8 %i.au, -1, !dbg !9072
  br i1 %i.av, label %bb.g, label %bb.h, !dbg !9072, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !9073, !noalias !9002
  %i.aw = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !9074
  %i.ax = bitcast <16 x i1> %i.aw to i16, !dbg !9074 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.ax, 0, !dbg !9075
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ax, i1 true), !dbg !9076
  %i.az = zext nneg i16 %i.ay to i64, !dbg !9076
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !9077
  br label %bb.h, !dbg !9078

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.az, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9079 ; 3 uses
  %.val41 = load i64, ptr %i.ba, align 8, !dbg !9079, !noundef !666 ; 3 uses
  %i.bb = icmp ult i64 %.val41, 576460752303423488, !dbg !9080
  tail call void @llvm.assume(i1 %i.bb), !dbg !9081
  %i.bc = icmp samesign ugt i64 %.val41, 2147483647, !dbg !9082
  %i.bd = trunc nuw nsw i64 %.val41 to i32, !dbg !9082 ; 2 uses
  br i1 %i.bc, label %bb.r, label %bb.k, !dbg !9083

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.be = load ptr, ptr %i.d, align 8, !dbg !9084, !alias.scope !8997, !noalias !8996, !nonnull !666, !noundef !666
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.w, !dbg !9085
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8, !dbg !9086
  %i.bh = load i32, ptr %i.bg, align 8, !dbg !9086, !noundef !666
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9087
  store i32 %i.bh, ptr %i.bi, align 8, !dbg !9087
  store i64 18, ptr %0, align 8, !dbg !9087
  br label %bb.j, !dbg !9088

bb.j:                                             ; preds = %bb.r, %bb.q, %bb.i
  ret void, !dbg !9089

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9004), !dbg !9090
  %i.bj = load ptr, ptr %i.d, align 8, !dbg !9091, !alias.scope !9004, !nonnull !666, !noundef !666 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.3.0.i.ph.i, !dbg !9092 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !9093, !noalias !9004, !noundef !666
  %i.bm = and i8 %i.bl, 1, !dbg !9094
  %i.bn = zext nneg i8 %i.bm to i64, !dbg !9094
  %i.bo = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !9095
  %i.bp = load i64, ptr %i.i, align 8, !dbg !9096, !alias.scope !9004, !noundef !666
  %i.bq = and i64 %i.bp, %i.bo, !dbg !9097
  store i8 %i.k, ptr %i.bk, align 1, !dbg !9098, !noalias !9004
  %i.br = getelementptr i8, ptr %i.bj, i64 %i.bq, !dbg !9099
  %i.bs = getelementptr i8, ptr %i.br, i64 16, !dbg !9099
  store i8 %i.k, ptr %i.bs, align 1, !dbg !9100, !noalias !9004
  %i.bt = load <2 x i64>, ptr %i.e, align 8, !dbg !9101, !alias.scope !9004
  %i.bu = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bn, i64 0, !dbg !9101
  %i.bv = sub <2 x i64> %i.bt, %i.bu, !dbg !9101
  store <2 x i64> %i.bv, ptr %i.e, align 8, !dbg !9101, !alias.scope !9004
  %i.bw = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !9102
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bj, i64 %i.bw, !dbg !9103 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -16, !dbg !9104
  store i64 %i.c, ptr %i.by, align 8, !dbg !9105, !noalias !9004
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -8, !dbg !9105
  store i32 %i.bd, ptr %i.bz, align 8, !dbg !9105, !noalias !9004
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9006), !dbg !9106
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9007), !dbg !9107, !noalias !9008
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !9108 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !9108, !range !795, !alias.scope !9009, !noalias !9010, !noundef !666 ; 2 uses
  %.not.i.i44 = icmp eq i64 %i.cb, -9223372036854775808, !dbg !9108
  br i1 %.not.i.i44, label %bb.o, label %bb.l, !dbg !9109

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !9110 ; 4 uses
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !9110, !alias.scope !9011, !noalias !9010, !noundef !666 ; 2 uses
  %i.ce = and i64 %i.cd, 7, !dbg !9111
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !9111
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !9112, !alias.scope !9011, !noalias !9010 ; 4 uses
  br i1 %i.cf, label %bb.m, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !9110

bb.m:                                             ; preds = %bb.l
  %i.ci = icmp eq i64 %i.ch, %i.cb, !dbg !9113
  br i1 %i.ci, label %bb.n, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !9113

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ca), !dbg !9114, !noalias !9010
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !9114

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.n, %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !9115
  %i.ck = load ptr, ptr %i.cj, align 8, !dbg !9115, !alias.scope !9012, !noalias !9010, !nonnull !666, !noundef !666
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ch, !dbg !9116
  store i8 0, ptr %i.cl, align 1, !dbg !9117, !noalias !9010
  %i.cm = add i64 %i.ch, 1, !dbg !9118            ; 2 uses
  store i64 %i.cm, ptr %i.cg, align 8, !dbg !9118, !alias.scope !9012, !noalias !9010
  %.pre.i.i = load i64, ptr %i.cc, align 8, !dbg !9119, !alias.scope !9011, !noalias !9010
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !9120

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.l
  %i.cn = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cd, %bb.l ], !dbg !9119
  %i.co = phi i64 [ %i.cm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.ch, %bb.l ], !dbg !9121 ; 2 uses
  %.not.i.i.i45 = icmp ne i64 %i.co, 0, !dbg !9122
  tail call void @llvm.assume(i1 %.not.i.i.i45), !dbg !9122, !noalias !9008
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !9123
  %i.cq = load ptr, ptr %i.cp, align 8, !dbg !9123, !alias.scope !9011, !noalias !9010, !nonnull !666, !noundef !666
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.co, !dbg !9124
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1, !dbg !9124 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ], !dbg !9125, !noalias !9008
  %i.ct = load i8, ptr %i.cs, align 1, !dbg !9126, !noalias !9010, !noundef !666
  %i.cu = trunc i64 %i.cn to i8, !dbg !9127
  %i.cv = and i8 %i.cu, 7, !dbg !9127
  %i.cw = shl nuw i8 1, %i.cv, !dbg !9127
  %i.cx = or i8 %i.ct, %i.cw, !dbg !9128
  store i8 %i.cx, ptr %i.cs, align 1, !dbg !9129, !noalias !9010
  %i.cy = load i64, ptr %i.cc, align 8, !dbg !9130, !alias.scope !9011, !noalias !9010, !noundef !666
  %i.cz = add i64 %i.cy, 1, !dbg !9130
  store i64 %i.cz, ptr %i.cc, align 8, !dbg !9130, !alias.scope !9011, !noalias !9010
  br label %bb.o, !dbg !9131

bb.o:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9132, !noalias !9013
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !9132 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !dbg !9132, !alias.scope !9014, !noalias !9015, !noundef !666
  %i.dc = add i64 %i.db, %3, !dbg !9132
  store i64 %i.dc, ptr %i.da, align 8, !dbg !9132, !alias.scope !9014, !noalias !9015
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3), !dbg !9133, !noalias !9008
  %i.dd = load i64, ptr %i.ba, align 8, !dbg !9134, !alias.scope !9016, !noalias !9017, !noundef !666 ; 3 uses
  %i.de = load i64, ptr %1, align 8, !dbg !9135, !range !790, !alias.scope !9016, !noalias !9017, !noundef !666
  %i.df = icmp eq i64 %i.dd, %i.de, !dbg !9136
  br i1 %i.df, label %bb.p, label %bb.q, !dbg !9136

bb.p:                                             ; preds = %bb.o
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !9137, !noalias !9018
  br label %bb.q, !dbg !9137

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9138
  %i.dh = load ptr, ptr %i.dg, align 8, !dbg !9138, !alias.scope !9016, !noalias !9017, !nonnull !666, !noundef !666
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dd, !dbg !9139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.di, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !9140, !noalias !9008
  %i.dj = add i64 %i.dd, 1, !dbg !9141
  store i64 %i.dj, ptr %i.ba, align 8, !dbg !9141, !alias.scope !9016, !noalias !9017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9142, !noalias !9013
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9087
  store i32 %i.bd, ptr %i.dk, align 8, !dbg !9087
  store i64 18, ptr %0, align 8, !dbg !9087
  br label %bb.j, !dbg !9088

bb.r:                                             ; preds = %bb.h
  store i64 2, ptr %0, align 8, !dbg !9143
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9143
  store i32 0, ptr %.sroa.235.0..sroa_idx, align 8, !dbg !9143
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !9143
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds nuw (i8, ptr @1, i64 12), i64 60, i1 false), !dbg !9143
  br label %bb.j, !dbg !9088
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMaplINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArraylB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2q_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2q_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericeEENtNtB4E_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9144 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !9357
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !9358 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !9359 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !9360 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !9360, !alias.scope !9331, !noalias !9332, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !9361
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTylEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaplINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraylB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !9362, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTylEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMaplINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1i_7mutableINtB3Q_22MutableDictionaryArraylB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3F_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3F_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericeEENtNtB5V_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !9363, !noalias !9332 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTylEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaplINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraylB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !9364

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTylEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaplINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraylB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !9365, !alias.scope !9333, !noalias !9332, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !9365 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !9365, !alias.scope !9333, !noalias !9332, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !9366
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !9367 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !9368

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTylEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaplINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraylB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTylEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaplINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraylB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.as, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTylEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaplINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraylB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !9369
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTylEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaplINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraylB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !9369
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTylEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaplINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraylB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ar, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !9370 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !9371
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !9372, !noalias !9334 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !9373
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !9374 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !9375
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !9376

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ah, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !9377
  %i.s = zext nneg i16 %i.r to i64, !dbg !9378
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !9379
  %i.u = and i64 %i.t, %.val7.i, !dbg !9379
  %i.v = load ptr, ptr %i.d, align 8, !dbg !9380, !alias.scope !9333, !noalias !9335, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !9381          ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.w, !dbg !9382
  %i.y = getelementptr i8, ptr %i.x, i64 -8, !dbg !9383
  %.val3.i.i = load i32, ptr %i.y, align 8, !dbg !9383, !noalias !9336, !noundef !666 ; 2 uses
  %i.z = zext nneg i32 %.val3.i.i to i64, !dbg !9384
  %i.aa = icmp sgt i32 %.val3.i.i, -1, !dbg !9385
  tail call void @llvm.assume(i1 %i.aa), !dbg !9385
  %i.ab = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %i.z), !dbg !9386, !noalias !9336 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 1, !dbg !9386
  %i.ad = icmp eq i64 %i.ac, %3, !dbg !9387
  br i1 %i.ad, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !9387, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ae = extractvalue { ptr, i64 } %i.ab, 0, !dbg !9386
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ae, ptr nonnull readonly %2, i64 %3), !dbg !9388, !alias.scope !9337, !noalias !9336
  %i.af = icmp eq i32 %bcmp.i.i.i.i, 0, !dbg !9388
  br i1 %i.af, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !9389, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !9390
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !9391, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.ag = add i16 %.sroa.05.029.i.i, -1, !dbg !9392
  %i.ah = and i16 %i.ag, %.sroa.05.029.i.i, !dbg !9393 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ah, 0, !dbg !9375
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !9376

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !9394
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !9394 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aj, 0, !dbg !9395
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !9396, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aj, i1 true), !dbg !9397
  %i.al = zext nneg i16 %i.ak to i64, !dbg !9398
  %i.am = add i64 %.sroa.0.017.i.i, %i.al, !dbg !9399
  %i.an = and i64 %i.am, %.val7.i, !dbg !9399
  br label %.thread.i.i, !dbg !9400

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.an, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !9401
  %i.ap = bitcast <16 x i1> %i.ao to i16, !dbg !9402
  %i.aq = icmp eq i16 %i.ap, 0, !dbg !9403
  br i1 %i.aq, label %bb.e, label %bb.f, !dbg !9403, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ar = add i64 %i.n, 16, !dbg !9404            ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.0.017.i.i, !dbg !9405
  br label %bb.c, !dbg !9368

bb.f:                                             ; preds = %.thread.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !9406
  %i.au = load i8, ptr %i.at, align 1, !dbg !9407, !noalias !9338, !noundef !666
  %i.av = icmp sgt i8 %i.au, -1, !dbg !9408
  br i1 %i.av, label %bb.g, label %bb.h, !dbg !9408, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !9409, !noalias !9338
  %i.aw = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !9410
  %i.ax = bitcast <16 x i1> %i.aw to i16, !dbg !9410 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.ax, 0, !dbg !9411
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ax, i1 true), !dbg !9412
  %i.az = zext nneg i16 %i.ay to i64, !dbg !9412
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !9413
  br label %bb.h, !dbg !9414

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.az, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9415 ; 3 uses
  %.val41 = load i64, ptr %i.ba, align 8, !dbg !9415, !noundef !666 ; 3 uses
  %i.bb = icmp ult i64 %.val41, 576460752303423488, !dbg !9416
  tail call void @llvm.assume(i1 %i.bb), !dbg !9417
  %i.bc = icmp samesign ugt i64 %.val41, 2147483647, !dbg !9418
  %i.bd = trunc nuw nsw i64 %.val41 to i32, !dbg !9418 ; 2 uses
  br i1 %i.bc, label %bb.r, label %bb.k, !dbg !9419

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTylEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaplINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraylB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.be = load ptr, ptr %i.d, align 8, !dbg !9420, !alias.scope !9333, !noalias !9332, !nonnull !666, !noundef !666
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.w, !dbg !9421
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8, !dbg !9422
  %i.bh = load i32, ptr %i.bg, align 8, !dbg !9422, !noundef !666
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9423
  store i32 %i.bh, ptr %i.bi, align 8, !dbg !9423
  store i64 18, ptr %0, align 8, !dbg !9423
  br label %bb.j, !dbg !9424

bb.j:                                             ; preds = %bb.r, %bb.q, %bb.i
  ret void, !dbg !9425

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9340), !dbg !9426
  %i.bj = load ptr, ptr %i.d, align 8, !dbg !9427, !alias.scope !9340, !nonnull !666, !noundef !666 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.3.0.i.ph.i, !dbg !9428 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !9429, !noalias !9340, !noundef !666
  %i.bm = and i8 %i.bl, 1, !dbg !9430
  %i.bn = zext nneg i8 %i.bm to i64, !dbg !9430
  %i.bo = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !9431
  %i.bp = load i64, ptr %i.i, align 8, !dbg !9432, !alias.scope !9340, !noundef !666
  %i.bq = and i64 %i.bp, %i.bo, !dbg !9433
  store i8 %i.k, ptr %i.bk, align 1, !dbg !9434, !noalias !9340
  %i.br = getelementptr i8, ptr %i.bj, i64 %i.bq, !dbg !9435
  %i.bs = getelementptr i8, ptr %i.br, i64 16, !dbg !9435
  store i8 %i.k, ptr %i.bs, align 1, !dbg !9436, !noalias !9340
  %i.bt = load <2 x i64>, ptr %i.e, align 8, !dbg !9437, !alias.scope !9340
  %i.bu = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bn, i64 0, !dbg !9437
  %i.bv = sub <2 x i64> %i.bt, %i.bu, !dbg !9437
  store <2 x i64> %i.bv, ptr %i.e, align 8, !dbg !9437, !alias.scope !9340
  %i.bw = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !9438
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bj, i64 %i.bw, !dbg !9439 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -16, !dbg !9440
  store i64 %i.c, ptr %i.by, align 8, !dbg !9441, !noalias !9340
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -8, !dbg !9441
  store i32 %i.bd, ptr %i.bz, align 8, !dbg !9441, !noalias !9340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9342), !dbg !9442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9343), !dbg !9443, !noalias !9344
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !9444 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !9444, !range !795, !alias.scope !9345, !noalias !9346, !noundef !666 ; 2 uses
  %.not.i.i44 = icmp eq i64 %i.cb, -9223372036854775808, !dbg !9444
  br i1 %.not.i.i44, label %bb.o, label %bb.l, !dbg !9445

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !9446 ; 4 uses
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !9446, !alias.scope !9347, !noalias !9346, !noundef !666 ; 2 uses
  %i.ce = and i64 %i.cd, 7, !dbg !9447
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !9447
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !9448, !alias.scope !9347, !noalias !9346 ; 4 uses
  br i1 %i.cf, label %bb.m, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !9446

bb.m:                                             ; preds = %bb.l
  %i.ci = icmp eq i64 %i.ch, %i.cb, !dbg !9449
  br i1 %i.ci, label %bb.n, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !9449

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ca), !dbg !9450, !noalias !9346
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !9450

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.n, %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !9451
  %i.ck = load ptr, ptr %i.cj, align 8, !dbg !9451, !alias.scope !9348, !noalias !9346, !nonnull !666, !noundef !666
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ch, !dbg !9452
  store i8 0, ptr %i.cl, align 1, !dbg !9453, !noalias !9346
  %i.cm = add i64 %i.ch, 1, !dbg !9454            ; 2 uses
  store i64 %i.cm, ptr %i.cg, align 8, !dbg !9454, !alias.scope !9348, !noalias !9346
  %.pre.i.i = load i64, ptr %i.cc, align 8, !dbg !9455, !alias.scope !9347, !noalias !9346
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !9456

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.l
  %i.cn = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cd, %bb.l ], !dbg !9455
  %i.co = phi i64 [ %i.cm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.ch, %bb.l ], !dbg !9457 ; 2 uses
  %.not.i.i.i45 = icmp ne i64 %i.co, 0, !dbg !9458
  tail call void @llvm.assume(i1 %.not.i.i.i45), !dbg !9458, !noalias !9344
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !9459
  %i.cq = load ptr, ptr %i.cp, align 8, !dbg !9459, !alias.scope !9347, !noalias !9346, !nonnull !666, !noundef !666
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.co, !dbg !9460
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1, !dbg !9460 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ], !dbg !9461, !noalias !9344
  %i.ct = load i8, ptr %i.cs, align 1, !dbg !9462, !noalias !9346, !noundef !666
  %i.cu = trunc i64 %i.cn to i8, !dbg !9463
  %i.cv = and i8 %i.cu, 7, !dbg !9463
  %i.cw = shl nuw i8 1, %i.cv, !dbg !9463
  %i.cx = or i8 %i.ct, %i.cw, !dbg !9464
  store i8 %i.cx, ptr %i.cs, align 1, !dbg !9465, !noalias !9346
  %i.cy = load i64, ptr %i.cc, align 8, !dbg !9466, !alias.scope !9347, !noalias !9346, !noundef !666
  %i.cz = add i64 %i.cy, 1, !dbg !9466
  store i64 %i.cz, ptr %i.cc, align 8, !dbg !9466, !alias.scope !9347, !noalias !9346
  br label %bb.o, !dbg !9467

bb.o:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9468, !noalias !9349
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !9468 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !dbg !9468, !alias.scope !9350, !noalias !9351, !noundef !666
  %i.dc = add i64 %i.db, %3, !dbg !9468
  store i64 %i.dc, ptr %i.da, align 8, !dbg !9468, !alias.scope !9350, !noalias !9351
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !9469, !noalias !9344
  %i.dd = load i64, ptr %i.ba, align 8, !dbg !9470, !alias.scope !9352, !noalias !9353, !noundef !666 ; 3 uses
  %i.de = load i64, ptr %1, align 8, !dbg !9471, !range !790, !alias.scope !9352, !noalias !9353, !noundef !666
  %i.df = icmp eq i64 %i.dd, %i.de, !dbg !9472
  br i1 %i.df, label %bb.p, label %bb.q, !dbg !9472

bb.p:                                             ; preds = %bb.o
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !9473, !noalias !9354
  br label %bb.q, !dbg !9473

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9474
  %i.dh = load ptr, ptr %i.dg, align 8, !dbg !9474, !alias.scope !9352, !noalias !9353, !nonnull !666, !noundef !666
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dd, !dbg !9475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.di, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !9476, !noalias !9344
  %i.dj = add i64 %i.dd, 1, !dbg !9477
  store i64 %i.dj, ptr %i.ba, align 8, !dbg !9477, !alias.scope !9352, !noalias !9353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9478, !noalias !9349
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9423
  store i32 %i.bd, ptr %i.dk, align 8, !dbg !9423
  store i64 18, ptr %0, align 8, !dbg !9423
  br label %bb.j, !dbg !9424

bb.r:                                             ; preds = %bb.h
  store i64 2, ptr %0, align 8, !dbg !9479
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9479
  store i32 0, ptr %.sroa.235.0..sroa_idx, align 8, !dbg !9479
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !9479
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds nuw (i8, ptr @1, i64 12), i64 60, i1 false), !dbg !9479
  br label %bb.j, !dbg !9424
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMaplINtNtNtB7_9primitive7mutable21MutablePrimitiveArrayaEE14try_push_validaNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArraylB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionaEE10try_extendINtNtNtNtB3K_4iter8adapters3map3MapINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB3K_5slice4iter4IteraENtNtB5a_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to23primitive_to_dictionaryalE0EE0EB73_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(128) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9480 {
bb.a:
end_hunk_2
begin_hunk_3_@_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapmINtNtNtB7_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB5_7mutableINtB2x_22MutableDictionaryArraymB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2l_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2l_INtNtB7_8iterator15ArrayValuesIterINtB1o_11BinaryArrayxEENtNtB4A_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute:bb.a
  %i.aa = and i64 %i.z, %.val7.i, !dbg !12382
  %i.ab = sub nsw i64 0, %i.aa, !dbg !12383
  %i.ac = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.ab, !dbg !12384
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8, !dbg !12385
  %.val3.i.i = load i32, ptr %i.ad, align 8, !dbg !12385, !noalias !12350, !noundef !666 ; 2 uses
  %i.ae = zext i32 %.val3.i.i to i64, !dbg !12386 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ae, !dbg !12387
  %.val1.i.i.i.i = load i64, ptr %i.af, align 8, !dbg !12388, !noalias !12351, !noundef !666 ; 2 uses
  %i.ag = add nuw nsw i64 %i.ae, 1, !dbg !12389   ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.q, !dbg !12390
  tail call void @llvm.assume(i1 %i.ah), !dbg !12391
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ag, !dbg !12392
  %.val.i.i.i.i = load i64, ptr %i.ai, align 8, !dbg !12393, !noalias !12351, !noundef !666
  %i.aj = sub nuw i64 %.val.i.i.i.i, %.val1.i.i.i.i, !dbg !12394
  %i.ak = icmp eq i64 %i.aj, %3, !dbg !12395
  br i1 %i.ak, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !12395, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 %.val1.i.i.i.i, !dbg !12396
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.al, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !12397, !alias.scope !12352, !noalias !12350
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !12397
  br i1 %i.am, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !12398, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !12399
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !12400, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.an = add i16 %.sroa.05.029.i.i, -1, !dbg !12401
  %i.ao = and i16 %i.an, %.sroa.05.029.i.i, !dbg !12402 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ao, 0, !dbg !12378
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !12379

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ap = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !12403
  %i.aq = bitcast <16 x i1> %i.ap to i16, !dbg !12403 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aq, 0, !dbg !12404
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !12405, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true), !dbg !12406
  %i.as = zext nneg i16 %i.ar to i64, !dbg !12407
  %i.at = add i64 %.sroa.0.017.i.i, %i.as, !dbg !12408
  %i.au = and i64 %i.at, %.val7.i, !dbg !12408
  br label %.thread.i.i, !dbg !12409

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.au, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.av = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !12410
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !12411
  %i.ax = icmp eq i16 %i.aw, 0, !dbg !12412
  br i1 %i.ax, label %bb.e, label %bb.f, !dbg !12412, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ay = add i64 %i.t, 16, !dbg !12413           ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.0.017.i.i, !dbg !12414
  br label %bb.c, !dbg !12371

bb.f:                                             ; preds = %.thread.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !12415
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !12416, !noalias !12347, !noundef !666
  %i.bc = icmp sgt i8 %i.bb, -1, !dbg !12417
  br i1 %i.bc, label %bb.g, label %bb.h, !dbg !12417, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !12418, !noalias !12347
  %i.bd = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !12419
  %i.be = bitcast <16 x i1> %i.bd to i16, !dbg !12419 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.be, 0, !dbg !12420
  %i.bf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.be, i1 true), !dbg !12421
  %i.bg = zext nneg i16 %i.bf to i64, !dbg !12421
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !12422
  br label %bb.h, !dbg !12423

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.bg, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.bh = icmp ult i64 %i.q, 1152921504606846976, !dbg !12424
  tail call void @llvm.assume(i1 %i.bh), !dbg !12425
  %i.bi = add nsw i64 %i.q, -1, !dbg !12426       ; 2 uses
  %i.bj = icmp ugt i64 %i.bi, 4294967295, !dbg !12427
  %i.bk = trunc nuw i64 %i.bi to i32, !dbg !12427 ; 2 uses
  br i1 %i.bj, label %bb.n, label %bb.k, !dbg !12428

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12429
  store i32 %.val3.i.i, ptr %i.bl, align 8, !dbg !12429
  store i64 18, ptr %0, align 8, !dbg !12429
  br label %bb.j, !dbg !12430

bb.j:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i
  ret void, !dbg !12431

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12354), !dbg !12432
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i, !dbg !12433 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !dbg !12434, !noalias !12354, !noundef !666
  %i.bo = and i8 %i.bn, 1, !dbg !12435
  %i.bp = zext nneg i8 %i.bo to i64, !dbg !12435
  %i.bq = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !12436
  %i.br = and i64 %i.bq, %.val7.i, !dbg !12437
  store i8 %i.k, ptr %i.bm, align 1, !dbg !12438, !noalias !12354
  %i.bs = getelementptr i8, ptr %.val.i, i64 %i.br, !dbg !12439
  %i.bt = getelementptr i8, ptr %i.bs, i64 16, !dbg !12439
  store i8 %i.k, ptr %i.bt, align 1, !dbg !12440, !noalias !12354
  %i.bu = load <2 x i64>, ptr %i.e, align 8, !dbg !12441, !alias.scope !12354
  %i.bv = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bp, i64 0, !dbg !12441
  %i.bw = sub <2 x i64> %i.bu, %i.bv, !dbg !12441
  store <2 x i64> %i.bw, ptr %i.e, align 8, !dbg !12441, !alias.scope !12354
  %i.bx = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !12442
  %i.by = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.bx, !dbg !12443 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -16, !dbg !12444
  store i64 %i.c, ptr %i.bz, align 8, !dbg !12445, !noalias !12354
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -8, !dbg !12445
  store i32 %i.bk, ptr %i.ca, align 8, !dbg !12445, !noalias !12354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12356
  call void @_RNvXs7_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7mutableINtB5_18MutableBinaryArrayxEINtB9_7TryPushINtNtCscgRAwXFJnXP_4core6option6OptionRShEE8try_pushCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !12446
  %i.cb = load i64, ptr %i.a, align 8, !dbg !12447, !range !814, !noundef !666
  %.not = icmp eq i64 %i.cb, 18, !dbg !12447
  br i1 %.not, label %bb.m, label %bb.l, !dbg !12448

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !12449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12450
  br label %bb.j, !dbg !12430

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12450
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12429
  store i32 %i.bk, ptr %i.cc, align 8, !dbg !12429
  store i64 18, ptr %0, align 8, !dbg !12429
  br label %bb.j, !dbg !12430

bb.n:                                             ; preds = %bb.h
  store i64 2, ptr %0, align 8, !dbg !12451
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12451
  store i32 0, ptr %.sroa.235.0..sroa_idx, align 8, !dbg !12451
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !12451
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds nuw (i8, ptr @1, i64 12), i64 60, i1 false), !dbg !12451
  br label %bb.j, !dbg !12430
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapmINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB27_NCINvXs3_NtB5_7mutableINtB2F_22MutableDictionaryArraymB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2r_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2r_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericB27_EENtNtB4I_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12452 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !12663
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRShECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !12664 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !12665 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !12666 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !12666, !alias.scope !12637, !noalias !12638, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !12667
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTymEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapmINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraymB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !12668, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTymEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMapmINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3m_NCINvXs3_NtB1i_7mutableINtB3U_22MutableDictionaryArraymB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3G_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3G_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericB3m_EENtNtB5Z_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !12669, !noalias !12638 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTymEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapmINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraymB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !12670

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTymEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapmINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraymB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !12671, !alias.scope !12639, !noalias !12638, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !12671 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !12671, !alias.scope !12639, !noalias !12638, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !12672
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !12673 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !12674

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTymEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapmINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraymB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTymEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapmINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraymB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ar, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTymEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapmINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraymB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !12675
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTymEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapmINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraymB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !12675
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTymEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapmINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraymB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.aq, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !12676 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !12677
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !12678, !noalias !12640 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !12679
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !12680 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !12681
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !12682

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ag, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !12683
  %i.s = zext nneg i16 %i.r to i64, !dbg !12684
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !12685
  %i.u = and i64 %i.t, %.val7.i, !dbg !12685
  %i.v = load ptr, ptr %i.d, align 8, !dbg !12686, !alias.scope !12639, !noalias !12641, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !12687         ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.w, !dbg !12688
  %i.y = getelementptr i8, ptr %i.x, i64 -8, !dbg !12689
  %.val3.i.i = load i32, ptr %i.y, align 8, !dbg !12689, !noalias !12642, !noundef !666
  %i.z = zext i32 %.val3.i.i to i64, !dbg !12690
  %i.aa = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %i.z), !dbg !12691, !noalias !12642 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 1, !dbg !12691
  %i.ac = icmp eq i64 %i.ab, %3, !dbg !12692
  br i1 %i.ac, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !12692, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ad = extractvalue { ptr, i64 } %i.aa, 0, !dbg !12691
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ad, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !12693, !alias.scope !12643, !noalias !12642
  %i.ae = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !12693
  br i1 %i.ae, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !12694, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !12695
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !12696, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.af = add i16 %.sroa.05.029.i.i, -1, !dbg !12697
  %i.ag = and i16 %i.af, %.sroa.05.029.i.i, !dbg !12698 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ag, 0, !dbg !12681
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !12682

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ah = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !12699
  %i.ai = bitcast <16 x i1> %i.ah to i16, !dbg !12699 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ai, 0, !dbg !12700
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !12701, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ai, i1 true), !dbg !12702
  %i.ak = zext nneg i16 %i.aj to i64, !dbg !12703
  %i.al = add i64 %.sroa.0.017.i.i, %i.ak, !dbg !12704
  %i.am = and i64 %i.al, %.val7.i, !dbg !12704
  br label %.thread.i.i, !dbg !12705

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.am, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !12706
  %i.ao = bitcast <16 x i1> %i.an to i16, !dbg !12707
  %i.ap = icmp eq i16 %i.ao, 0, !dbg !12708
  br i1 %i.ap, label %bb.e, label %bb.f, !dbg !12708, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.aq = add i64 %i.n, 16, !dbg !12709           ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.0.017.i.i, !dbg !12710
  br label %bb.c, !dbg !12674

bb.f:                                             ; preds = %.thread.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !12711
  %i.at = load i8, ptr %i.as, align 1, !dbg !12712, !noalias !12644, !noundef !666
  %i.au = icmp sgt i8 %i.at, -1, !dbg !12713
  br i1 %i.au, label %bb.g, label %bb.h, !dbg !12713, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !12714, !noalias !12644
  %i.av = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !12715
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !12715 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.aw, 0, !dbg !12716
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true), !dbg !12717
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !12717
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !12718
  br label %bb.h, !dbg !12719

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ay, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12720 ; 3 uses
  %.val41 = load i64, ptr %i.az, align 8, !dbg !12720, !noundef !666 ; 3 uses
  %i.ba = icmp ult i64 %.val41, 576460752303423488, !dbg !12721
  tail call void @llvm.assume(i1 %i.ba), !dbg !12722
  %i.bb = icmp samesign ugt i64 %.val41, 4294967295, !dbg !12723
  %i.bc = trunc nuw i64 %.val41 to i32, !dbg !12723 ; 2 uses
  br i1 %i.bb, label %bb.r, label %bb.k, !dbg !12724

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.bd = load ptr, ptr %i.d, align 8, !dbg !12725, !alias.scope !12639, !noalias !12638, !nonnull !666, !noundef !666
  %i.be = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.w, !dbg !12726
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8, !dbg !12727
  %i.bg = load i32, ptr %i.bf, align 8, !dbg !12727, !noundef !666
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12728
  store i32 %i.bg, ptr %i.bh, align 8, !dbg !12728
  store i64 18, ptr %0, align 8, !dbg !12728
  br label %bb.j, !dbg !12729

bb.j:                                             ; preds = %bb.r, %bb.q, %bb.i
  ret void, !dbg !12730

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12646), !dbg !12731
  %i.bi = load ptr, ptr %i.d, align 8, !dbg !12732, !alias.scope !12646, !nonnull !666, !noundef !666 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.3.0.i.ph.i, !dbg !12733 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !12734, !noalias !12646, !noundef !666
  %i.bl = and i8 %i.bk, 1, !dbg !12735
  %i.bm = zext nneg i8 %i.bl to i64, !dbg !12735
  %i.bn = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !12736
  %i.bo = load i64, ptr %i.i, align 8, !dbg !12737, !alias.scope !12646, !noundef !666
  %i.bp = and i64 %i.bo, %i.bn, !dbg !12738
  store i8 %i.k, ptr %i.bj, align 1, !dbg !12739, !noalias !12646
  %i.bq = getelementptr i8, ptr %i.bi, i64 %i.bp, !dbg !12740
  %i.br = getelementptr i8, ptr %i.bq, i64 16, !dbg !12740
  store i8 %i.k, ptr %i.br, align 1, !dbg !12741, !noalias !12646
  %i.bs = load <2 x i64>, ptr %i.e, align 8, !dbg !12742, !alias.scope !12646
  %i.bt = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bm, i64 0, !dbg !12742
  %i.bu = sub <2 x i64> %i.bs, %i.bt, !dbg !12742
  store <2 x i64> %i.bu, ptr %i.e, align 8, !dbg !12742, !alias.scope !12646
  %i.bv = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !12743
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.bv, !dbg !12744 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -16, !dbg !12745
  store i64 %i.c, ptr %i.bx, align 8, !dbg !12746, !noalias !12646
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -8, !dbg !12746
  store i32 %i.bc, ptr %i.by, align 8, !dbg !12746, !noalias !12646
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12648), !dbg !12747
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12649), !dbg !12748, !noalias !12650
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !12749 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !12749, !range !795, !alias.scope !12651, !noalias !12652, !noundef !666 ; 2 uses
  %.not.i.i44 = icmp eq i64 %i.ca, -9223372036854775808, !dbg !12749
  br i1 %.not.i.i44, label %bb.o, label %bb.l, !dbg !12750

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !12751 ; 4 uses
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !12751, !alias.scope !12653, !noalias !12652, !noundef !666 ; 2 uses
  %i.cd = and i64 %i.cc, 7, !dbg !12752
  %i.ce = icmp eq i64 %i.cd, 0, !dbg !12752
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !12753, !alias.scope !12653, !noalias !12652 ; 4 uses
  br i1 %i.ce, label %bb.m, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !12751

bb.m:                                             ; preds = %bb.l
  %i.ch = icmp eq i64 %i.cg, %i.ca, !dbg !12754
  br i1 %i.ch, label %bb.n, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !12754

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bz), !dbg !12755, !noalias !12652
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !12755

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.n, %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !12756
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !12756, !alias.scope !12654, !noalias !12652, !nonnull !666, !noundef !666
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cg, !dbg !12757
  store i8 0, ptr %i.ck, align 1, !dbg !12758, !noalias !12652
  %i.cl = add i64 %i.cg, 1, !dbg !12759           ; 2 uses
  store i64 %i.cl, ptr %i.cf, align 8, !dbg !12759, !alias.scope !12654, !noalias !12652
  %.pre.i.i = load i64, ptr %i.cb, align 8, !dbg !12760, !alias.scope !12653, !noalias !12652
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !12761

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.l
  %i.cm = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cc, %bb.l ], !dbg !12760
  %i.cn = phi i64 [ %i.cl, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cg, %bb.l ], !dbg !12762 ; 2 uses
  %.not.i.i.i45 = icmp ne i64 %i.cn, 0, !dbg !12763
  tail call void @llvm.assume(i1 %.not.i.i.i45), !dbg !12763, !noalias !12650
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !12764
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !12764, !alias.scope !12653, !noalias !12652, !nonnull !666, !noundef !666
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cn, !dbg !12765
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !12765 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !12766, !noalias !12650
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !12767, !noalias !12652, !noundef !666
  %i.ct = trunc i64 %i.cm to i8, !dbg !12768
  %i.cu = and i8 %i.ct, 7, !dbg !12768
  %i.cv = shl nuw i8 1, %i.cu, !dbg !12768
  %i.cw = or i8 %i.cs, %i.cv, !dbg !12769
  store i8 %i.cw, ptr %i.cr, align 1, !dbg !12770, !noalias !12652
  %i.cx = load i64, ptr %i.cb, align 8, !dbg !12771, !alias.scope !12653, !noalias !12652, !noundef !666
  %i.cy = add i64 %i.cx, 1, !dbg !12771
  store i64 %i.cy, ptr %i.cb, align 8, !dbg !12771, !alias.scope !12653, !noalias !12652
  br label %bb.o, !dbg !12772

bb.o:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12773, !noalias !12655
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !12773 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !dbg !12773, !alias.scope !12656, !noalias !12657, !noundef !666
  %i.db = add i64 %i.da, %3, !dbg !12773
  store i64 %i.db, ptr %i.cz, align 8, !dbg !12773, !alias.scope !12656, !noalias !12657
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3), !dbg !12774, !noalias !12650
  %i.dc = load i64, ptr %i.az, align 8, !dbg !12775, !alias.scope !12658, !noalias !12659, !noundef !666 ; 3 uses
  %i.dd = load i64, ptr %1, align 8, !dbg !12776, !range !790, !alias.scope !12658, !noalias !12659, !noundef !666
  %i.de = icmp eq i64 %i.dc, %i.dd, !dbg !12777
  br i1 %i.de, label %bb.p, label %bb.q, !dbg !12777

bb.p:                                             ; preds = %bb.o
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !12778, !noalias !12660
  br label %bb.q, !dbg !12778

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12779
  %i.dg = load ptr, ptr %i.df, align 8, !dbg !12779, !alias.scope !12658, !noalias !12659, !nonnull !666, !noundef !666
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dc, !dbg !12780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dh, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !12781, !noalias !12650
  %i.di = add i64 %i.dc, 1, !dbg !12782
  store i64 %i.di, ptr %i.az, align 8, !dbg !12782, !alias.scope !12658, !noalias !12659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12783, !noalias !12655
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12728
  store i32 %i.bc, ptr %i.dj, align 8, !dbg !12728
  store i64 18, ptr %0, align 8, !dbg !12728
  br label %bb.j, !dbg !12729

bb.r:                                             ; preds = %bb.h
  store i64 2, ptr %0, align 8, !dbg !12784
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12784
  store i32 0, ptr %.sroa.235.0..sroa_idx, align 8, !dbg !12784
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !12784
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds nuw (i8, ptr @1, i64 12), i64 60, i1 false), !dbg !12784
  br label %bb.j, !dbg !12729
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapmINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArraymB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2q_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2q_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericeEENtNtB4E_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12785 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !12998
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !12999 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !13000 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !13001 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !13001, !alias.scope !12972, !noalias !12973, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !13002
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTymEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapmINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraymB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !13003, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTymEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMapmINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1i_7mutableINtB3Q_22MutableDictionaryArraymB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3F_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3F_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericeEENtNtB5V_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !13004, !noalias !12973 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTymEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapmINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraymB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !13005

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTymEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapmINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraymB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !13006, !alias.scope !12974, !noalias !12973, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !13006 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !13006, !alias.scope !12974, !noalias !12973, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !13007
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !13008 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !13009

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTymEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapmINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraymB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTymEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapmINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraymB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ar, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTymEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapmINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraymB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !13010
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTymEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapmINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraymB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !13010
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTymEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapmINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraymB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.aq, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !13011 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !13012
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !13013, !noalias !12975 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !13014
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !13015 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !13016
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !13017

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ag, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !13018
  %i.s = zext nneg i16 %i.r to i64, !dbg !13019
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !13020
  %i.u = and i64 %i.t, %.val7.i, !dbg !13020
  %i.v = load ptr, ptr %i.d, align 8, !dbg !13021, !alias.scope !12974, !noalias !12976, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !13022         ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.w, !dbg !13023
  %i.y = getelementptr i8, ptr %i.x, i64 -8, !dbg !13024
  %.val3.i.i = load i32, ptr %i.y, align 8, !dbg !13024, !noalias !12977, !noundef !666
  %i.z = zext i32 %.val3.i.i to i64, !dbg !13025
  %i.aa = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %i.z), !dbg !13026, !noalias !12977 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 1, !dbg !13026
  %i.ac = icmp eq i64 %i.ab, %3, !dbg !13027
  br i1 %i.ac, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !13027, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ad = extractvalue { ptr, i64 } %i.aa, 0, !dbg !13026
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ad, ptr nonnull readonly %2, i64 %3), !dbg !13028, !alias.scope !12978, !noalias !12977
  %i.ae = icmp eq i32 %bcmp.i.i.i.i, 0, !dbg !13028
  br i1 %i.ae, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !13029, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !13030
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !13031, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.af = add i16 %.sroa.05.029.i.i, -1, !dbg !13032
  %i.ag = and i16 %i.af, %.sroa.05.029.i.i, !dbg !13033 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ag, 0, !dbg !13016
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !13017

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ah = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !13034
  %i.ai = bitcast <16 x i1> %i.ah to i16, !dbg !13034 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ai, 0, !dbg !13035
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !13036, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ai, i1 true), !dbg !13037
  %i.ak = zext nneg i16 %i.aj to i64, !dbg !13038
  %i.al = add i64 %.sroa.0.017.i.i, %i.ak, !dbg !13039
  %i.am = and i64 %i.al, %.val7.i, !dbg !13039
  br label %.thread.i.i, !dbg !13040

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.am, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !13041
  %i.ao = bitcast <16 x i1> %i.an to i16, !dbg !13042
  %i.ap = icmp eq i16 %i.ao, 0, !dbg !13043
  br i1 %i.ap, label %bb.e, label %bb.f, !dbg !13043, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.aq = add i64 %i.n, 16, !dbg !13044           ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.0.017.i.i, !dbg !13045
  br label %bb.c, !dbg !13009

bb.f:                                             ; preds = %.thread.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !13046
  %i.at = load i8, ptr %i.as, align 1, !dbg !13047, !noalias !12979, !noundef !666
  %i.au = icmp sgt i8 %i.at, -1, !dbg !13048
  br i1 %i.au, label %bb.g, label %bb.h, !dbg !13048, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !13049, !noalias !12979
  %i.av = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !13050
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !13050 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.aw, 0, !dbg !13051
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true), !dbg !13052
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !13052
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !13053
  br label %bb.h, !dbg !13054

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ay, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13055 ; 3 uses
  %.val41 = load i64, ptr %i.az, align 8, !dbg !13055, !noundef !666 ; 3 uses
  %i.ba = icmp ult i64 %.val41, 576460752303423488, !dbg !13056
  tail call void @llvm.assume(i1 %i.ba), !dbg !13057
  %i.bb = icmp samesign ugt i64 %.val41, 4294967295, !dbg !13058
  %i.bc = trunc nuw i64 %.val41 to i32, !dbg !13058 ; 2 uses
  br i1 %i.bb, label %bb.r, label %bb.k, !dbg !13059

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTymEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapmINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraymB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.bd = load ptr, ptr %i.d, align 8, !dbg !13060, !alias.scope !12974, !noalias !12973, !nonnull !666, !noundef !666
  %i.be = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.w, !dbg !13061
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8, !dbg !13062
  %i.bg = load i32, ptr %i.bf, align 8, !dbg !13062, !noundef !666
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13063
  store i32 %i.bg, ptr %i.bh, align 8, !dbg !13063
  store i64 18, ptr %0, align 8, !dbg !13063
  br label %bb.j, !dbg !13064

bb.j:                                             ; preds = %bb.r, %bb.q, %bb.i
  ret void, !dbg !13065

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12981), !dbg !13066
  %i.bi = load ptr, ptr %i.d, align 8, !dbg !13067, !alias.scope !12981, !nonnull !666, !noundef !666 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.3.0.i.ph.i, !dbg !13068 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !13069, !noalias !12981, !noundef !666
  %i.bl = and i8 %i.bk, 1, !dbg !13070
  %i.bm = zext nneg i8 %i.bl to i64, !dbg !13070
  %i.bn = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !13071
  %i.bo = load i64, ptr %i.i, align 8, !dbg !13072, !alias.scope !12981, !noundef !666
  %i.bp = and i64 %i.bo, %i.bn, !dbg !13073
  store i8 %i.k, ptr %i.bj, align 1, !dbg !13074, !noalias !12981
  %i.bq = getelementptr i8, ptr %i.bi, i64 %i.bp, !dbg !13075
  %i.br = getelementptr i8, ptr %i.bq, i64 16, !dbg !13075
  store i8 %i.k, ptr %i.br, align 1, !dbg !13076, !noalias !12981
  %i.bs = load <2 x i64>, ptr %i.e, align 8, !dbg !13077, !alias.scope !12981
  %i.bt = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bm, i64 0, !dbg !13077
  %i.bu = sub <2 x i64> %i.bs, %i.bt, !dbg !13077
  store <2 x i64> %i.bu, ptr %i.e, align 8, !dbg !13077, !alias.scope !12981
  %i.bv = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !13078
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.bv, !dbg !13079 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -16, !dbg !13080
  store i64 %i.c, ptr %i.bx, align 8, !dbg !13081, !noalias !12981
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -8, !dbg !13081
  store i32 %i.bc, ptr %i.by, align 8, !dbg !13081, !noalias !12981
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12983), !dbg !13082
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12984), !dbg !13083, !noalias !12985
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !13084 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !13084, !range !795, !alias.scope !12986, !noalias !12987, !noundef !666 ; 2 uses
  %.not.i.i44 = icmp eq i64 %i.ca, -9223372036854775808, !dbg !13084
  br i1 %.not.i.i44, label %bb.o, label %bb.l, !dbg !13085

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !13086 ; 4 uses
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !13086, !alias.scope !12988, !noalias !12987, !noundef !666 ; 2 uses
  %i.cd = and i64 %i.cc, 7, !dbg !13087
  %i.ce = icmp eq i64 %i.cd, 0, !dbg !13087
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !13088, !alias.scope !12988, !noalias !12987 ; 4 uses
  br i1 %i.ce, label %bb.m, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !13086

bb.m:                                             ; preds = %bb.l
  %i.ch = icmp eq i64 %i.cg, %i.ca, !dbg !13089
  br i1 %i.ch, label %bb.n, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !13089

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bz), !dbg !13090, !noalias !12987
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !13090

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.n, %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !13091
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !13091, !alias.scope !12989, !noalias !12987, !nonnull !666, !noundef !666
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cg, !dbg !13092
  store i8 0, ptr %i.ck, align 1, !dbg !13093, !noalias !12987
  %i.cl = add i64 %i.cg, 1, !dbg !13094           ; 2 uses
  store i64 %i.cl, ptr %i.cf, align 8, !dbg !13094, !alias.scope !12989, !noalias !12987
  %.pre.i.i = load i64, ptr %i.cb, align 8, !dbg !13095, !alias.scope !12988, !noalias !12987
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !13096

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.l
  %i.cm = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cc, %bb.l ], !dbg !13095
  %i.cn = phi i64 [ %i.cl, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cg, %bb.l ], !dbg !13097 ; 2 uses
  %.not.i.i.i45 = icmp ne i64 %i.cn, 0, !dbg !13098
  tail call void @llvm.assume(i1 %.not.i.i.i45), !dbg !13098, !noalias !12985
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !13099
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !13099, !alias.scope !12988, !noalias !12987, !nonnull !666, !noundef !666
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cn, !dbg !13100
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !13100 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !13101, !noalias !12985
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !13102, !noalias !12987, !noundef !666
  %i.ct = trunc i64 %i.cm to i8, !dbg !13103
  %i.cu = and i8 %i.ct, 7, !dbg !13103
  %i.cv = shl nuw i8 1, %i.cu, !dbg !13103
  %i.cw = or i8 %i.cs, %i.cv, !dbg !13104
  store i8 %i.cw, ptr %i.cr, align 1, !dbg !13105, !noalias !12987
  %i.cx = load i64, ptr %i.cb, align 8, !dbg !13106, !alias.scope !12988, !noalias !12987, !noundef !666
  %i.cy = add i64 %i.cx, 1, !dbg !13106
  store i64 %i.cy, ptr %i.cb, align 8, !dbg !13106, !alias.scope !12988, !noalias !12987
  br label %bb.o, !dbg !13107

bb.o:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13108, !noalias !12990
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !13108 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !dbg !13108, !alias.scope !12991, !noalias !12992, !noundef !666
  %i.db = add i64 %i.da, %3, !dbg !13108
  store i64 %i.db, ptr %i.cz, align 8, !dbg !13108, !alias.scope !12991, !noalias !12992
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !13109, !noalias !12985
  %i.dc = load i64, ptr %i.az, align 8, !dbg !13110, !alias.scope !12993, !noalias !12994, !noundef !666 ; 3 uses
  %i.dd = load i64, ptr %1, align 8, !dbg !13111, !range !790, !alias.scope !12993, !noalias !12994, !noundef !666
  %i.de = icmp eq i64 %i.dc, %i.dd, !dbg !13112
  br i1 %i.de, label %bb.p, label %bb.q, !dbg !13112

bb.p:                                             ; preds = %bb.o
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !13113, !noalias !12995
  br label %bb.q, !dbg !13113

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13114
  %i.dg = load ptr, ptr %i.df, align 8, !dbg !13114, !alias.scope !12993, !noalias !12994, !nonnull !666, !noundef !666
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dc, !dbg !13115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dh, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !13116, !noalias !12985
  %i.di = add i64 %i.dc, 1, !dbg !13117
  store i64 %i.di, ptr %i.az, align 8, !dbg !13117, !alias.scope !12993, !noalias !12994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13118, !noalias !12990
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13063
  store i32 %i.bc, ptr %i.dj, align 8, !dbg !13063
  store i64 18, ptr %0, align 8, !dbg !13063
  br label %bb.j, !dbg !13064

bb.r:                                             ; preds = %bb.h
  store i64 2, ptr %0, align 8, !dbg !13119
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13119
  store i32 0, ptr %.sroa.235.0..sroa_idx, align 8, !dbg !13119
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !13119
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds nuw (i8, ptr @1, i64 12), i64 60, i1 false), !dbg !13119
  br label %bb.j, !dbg !13064
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapmINtNtNtB7_9primitive7mutable21MutablePrimitiveArrayaEE14try_push_validaNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArraymB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionaEE10try_extendINtNtNtNtB3K_4iter8adapters3map3MapINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB3K_5slice4iter4IteraENtNtB5a_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to23primitive_to_dictionaryamE0EE0EB73_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(128) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13120 {
bb.a:
end_hunk_3
begin_hunk_4_@_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapnINtNtNtB7_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB5_7mutableINtB2x_22MutableDictionaryArraynB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2l_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2l_INtNtB7_8iterator15ArrayValuesIterINtB1o_11BinaryArrayxEENtNtB4A_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute:bb.a
.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ao, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.w, %bb.c ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !16000
  %i.y = zext nneg i16 %i.x to i64, !dbg !16001
  %i.z = add i64 %.sroa.0.017.i.i, %i.y, !dbg !16002
  %i.aa = and i64 %i.z, %.val7.i, !dbg !16002
  %i.ab = sub nsw i64 0, %i.aa, !dbg !16003
  %i.ac = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.ab, !dbg !16004
  %i.ad = getelementptr i8, ptr %i.ac, i64 -16, !dbg !16005
  %.val3.i.i = load i128, ptr %i.ad, align 16, !dbg !16005, !noalias !15971, !noundef !666 ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ult i128 %.val3.i.i, 18446744073709551616, !dbg !16006
  %i.ae = trunc nuw i128 %.val3.i.i to i64, !dbg !16006 ; 2 uses
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i), !dbg !16007
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ae, !dbg !16008
  %.val1.i.i.i.i = load i64, ptr %i.af, align 8, !dbg !16009, !noalias !15972, !noundef !666 ; 2 uses
  %i.ag = add nuw i64 %i.ae, 1, !dbg !16010       ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.q, !dbg !16011
  tail call void @llvm.assume(i1 %i.ah), !dbg !16012
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ag, !dbg !16013
  %.val.i.i.i.i = load i64, ptr %i.ai, align 8, !dbg !16014, !noalias !15972, !noundef !666
  %i.aj = sub nuw i64 %.val.i.i.i.i, %.val1.i.i.i.i, !dbg !16015
  %i.ak = icmp eq i64 %i.aj, %3, !dbg !16016
  br i1 %i.ak, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !16016, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 %.val1.i.i.i.i, !dbg !16017
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.al, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !16018, !alias.scope !15973, !noalias !15971
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !16018
  br i1 %i.am, label %bb.h, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !16019, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !16020
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !16021, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.an = add i16 %.sroa.05.029.i.i, -1, !dbg !16022
  %i.ao = and i16 %i.an, %.sroa.05.029.i.i, !dbg !16023 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ao, 0, !dbg !15998
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !15999

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ap = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !16024
  %i.aq = bitcast <16 x i1> %i.ap to i16, !dbg !16024 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aq, 0, !dbg !16025
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !16026, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true), !dbg !16027
  %i.as = zext nneg i16 %i.ar to i64, !dbg !16028
  %i.at = add i64 %.sroa.0.017.i.i, %i.as, !dbg !16029
  %i.au = and i64 %i.at, %.val7.i, !dbg !16029
  br label %.thread.i.i, !dbg !16030

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.au, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.av = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !16031
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !16032
  %i.ax = icmp eq i16 %i.aw, 0, !dbg !16033
  br i1 %i.ax, label %bb.e, label %bb.f, !dbg !16033, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ay = add i64 %i.t, 16, !dbg !16034           ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.0.017.i.i, !dbg !16035
  br label %bb.c, !dbg !15991

bb.f:                                             ; preds = %.thread.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !16036
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !16037, !noalias !15968, !noundef !666 ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, -1, !dbg !16038
  br i1 %i.bc, label %bb.g, label %bb.j, !dbg !16038, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !16039, !noalias !15968
  %i.bd = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !16040
  %i.be = bitcast <16 x i1> %i.bd to i16, !dbg !16040 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.be, 0, !dbg !16041
  %i.bf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.be, i1 true), !dbg !16042
  %i.bg = zext nneg i16 %i.bf to i64, !dbg !16042 ; 2 uses
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !16043
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bg
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !16044, !noalias !15974
  br label %bb.j, !dbg !16045

bb.h:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16046
  store i128 %.val3.i.i, ptr %i.bh, align 16, !dbg !16046
  br label %bb.i, !dbg !16047

bb.i:                                             ; preds = %bb.l, %bb.k, %bb.h
  %.sink = phi i64 [ 0, %bb.l ], [ 1, %bb.k ], [ 0, %bb.h ]
  store i64 %.sink, ptr %0, align 16, !dbg !16048
  ret void, !dbg !16049

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.bi = phi i8 [ %.pre, %bb.g ], [ %i.bb, %bb.f ], !dbg !16044
  %.sroa.3.0.i.ph.i = phi i64 [ %i.bg, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.bj = icmp ult i64 %i.q, 1152921504606846976, !dbg !16050
  tail call void @llvm.assume(i1 %i.bj), !dbg !16051
  %i.bk = add nsw i64 %i.q, -1, !dbg !16052
  %i.bl = zext i64 %i.bk to i128, !dbg !16053     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15974), !dbg !16054
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i, !dbg !16055
  %i.bn = and i8 %i.bi, 1, !dbg !16056
  %i.bo = zext nneg i8 %i.bn to i64, !dbg !16056
  %i.bp = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !16057
  %i.bq = and i64 %i.bp, %.val7.i, !dbg !16058
  store i8 %i.k, ptr %i.bm, align 1, !dbg !16059, !noalias !15974
  %i.br = getelementptr i8, ptr %.val.i, i64 %i.bq, !dbg !16060
  %i.bs = getelementptr i8, ptr %i.br, i64 16, !dbg !16060
  store i8 %i.k, ptr %i.bs, align 1, !dbg !16061, !noalias !15974
  %i.bt = load <2 x i64>, ptr %i.e, align 8, !dbg !16062, !alias.scope !15974
  %i.bu = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bo, i64 0, !dbg !16062
  %i.bv = sub <2 x i64> %i.bt, %i.bu, !dbg !16062
  store <2 x i64> %i.bv, ptr %i.e, align 8, !dbg !16062, !alias.scope !15974
  %i.bw = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !16063
  %i.bx = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.bw, !dbg !16064 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -32, !dbg !16065
  store i64 %i.c, ptr %i.by, align 16, !dbg !16066, !noalias !15974
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -16, !dbg !16066
  store i128 %i.bl, ptr %i.bz, align 16, !dbg !16066, !noalias !15974
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15976
  call void @_RNvXs7_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7mutableINtB5_18MutableBinaryArrayxEINtB9_7TryPushINtNtCscgRAwXFJnXP_4core6option6OptionRShEE8try_pushCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !16067
  %i.ca = load i64, ptr %i.a, align 8, !dbg !16068, !range !814, !noundef !666
  %.not = icmp eq i64 %i.ca, 18, !dbg !16068
  br i1 %.not, label %bb.l, label %bb.k, !dbg !16069

bb.k:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cb, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !16071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16072
  br label %bb.i, !dbg !16047

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16072
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16046
  store i128 %i.bl, ptr %i.cc, align 16, !dbg !16046
  br label %bb.i, !dbg !16047
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapnINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB27_NCINvXs3_NtB5_7mutableINtB2F_22MutableDictionaryArraynB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2r_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2r_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericB27_EENtNtB4I_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16073 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !16276
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRShECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !16277 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !16278 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !16279 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !16279, !alias.scope !16253, !noalias !16254, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !16280
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapnINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraynB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !16281, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMapnINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3m_NCINvXs3_NtB1i_7mutableINtB3U_22MutableDictionaryArraynB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3G_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3G_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericB3m_EENtNtB5Z_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !16282, !noalias !16254 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapnINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraynB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !16283

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapnINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraynB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !16284, !alias.scope !16255, !noalias !16254, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !16284 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !16284, !alias.scope !16255, !noalias !16254, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !16285
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !16286 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !16287

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapnINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraynB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapnINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraynB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ar, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapnINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraynB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !16288
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapnINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraynB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !16288
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapnINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraynB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.aq, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !16289 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !16290
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !16291, !noalias !16256 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !16292
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !16293 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !16294
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !16295

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ag, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !16296
  %i.s = zext nneg i16 %i.r to i64, !dbg !16297
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !16298
  %i.u = and i64 %i.t, %.val7.i, !dbg !16298
  %i.v = load ptr, ptr %i.d, align 8, !dbg !16299, !alias.scope !16255, !noalias !16257, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !16300         ; 2 uses
  %i.x = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.w, !dbg !16301
  %i.y = getelementptr i8, ptr %i.x, i64 -16, !dbg !16302
  %.val3.i.i = load i128, ptr %i.y, align 16, !dbg !16302, !noalias !16258, !noundef !666 ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp ult i128 %.val3.i.i, 18446744073709551616, !dbg !16303
  %i.z = trunc nuw i128 %.val3.i.i to i64, !dbg !16303
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i), !dbg !16304
  %i.aa = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %i.z), !dbg !16305, !noalias !16258 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 1, !dbg !16305
  %i.ac = icmp eq i64 %i.ab, %3, !dbg !16306
  br i1 %i.ac, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !16306, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ad = extractvalue { ptr, i64 } %i.aa, 0, !dbg !16305
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ad, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !16307, !alias.scope !16259, !noalias !16258
  %i.ae = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !16307
  br i1 %i.ae, label %bb.h, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !16308, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !16309
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !16310, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.af = add i16 %.sroa.05.029.i.i, -1, !dbg !16311
  %i.ag = and i16 %i.af, %.sroa.05.029.i.i, !dbg !16312 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ag, 0, !dbg !16294
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !16295

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ah = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !16313
  %i.ai = bitcast <16 x i1> %i.ah to i16, !dbg !16313 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ai, 0, !dbg !16314
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !16315, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ai, i1 true), !dbg !16316
  %i.ak = zext nneg i16 %i.aj to i64, !dbg !16317
  %i.al = add i64 %.sroa.0.017.i.i, %i.ak, !dbg !16318
  %i.am = and i64 %i.al, %.val7.i, !dbg !16318
  br label %.thread.i.i, !dbg !16319

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.am, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !16320
  %i.ao = bitcast <16 x i1> %i.an to i16, !dbg !16321
  %i.ap = icmp eq i16 %i.ao, 0, !dbg !16322
  br i1 %i.ap, label %bb.e, label %bb.f, !dbg !16322, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.aq = add i64 %i.n, 16, !dbg !16323           ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.0.017.i.i, !dbg !16324
  br label %bb.c, !dbg !16287

bb.f:                                             ; preds = %.thread.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !16325
  %i.at = load i8, ptr %i.as, align 1, !dbg !16326, !noalias !16260, !noundef !666
  %i.au = icmp sgt i8 %i.at, -1, !dbg !16327
  br i1 %i.au, label %bb.g, label %bb.j, !dbg !16327, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !16328, !noalias !16260
  %i.av = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !16329
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !16329 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.aw, 0, !dbg !16330
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true), !dbg !16331
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !16331
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !16332
  br label %bb.j, !dbg !16333

bb.h:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.az = load ptr, ptr %i.d, align 8, !dbg !16334, !alias.scope !16255, !noalias !16254, !nonnull !666, !noundef !666
  %i.ba = getelementptr inbounds [32 x i8], ptr %i.az, i64 %i.w, !dbg !16335
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -16, !dbg !16336
  %i.bc = load i128, ptr %i.bb, align 16, !dbg !16336, !noundef !666
  br label %bb.i, !dbg !16337

bb.i:                                             ; preds = %bb.p, %bb.h
  %.sink = phi i128 [ %i.bg, %bb.p ], [ %i.bc, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16338
  store i128 %.sink, ptr %i.bd, align 16, !dbg !16338
  store i64 0, ptr %0, align 16, !dbg !16338
  ret void, !dbg !16339

bb.j:                                             ; preds = %bb.g, %bb.f
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ay, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !16340 ; 3 uses
  %.val39 = load i64, ptr %i.be, align 8, !dbg !16340, !noundef !666 ; 2 uses
  %i.bf = icmp ult i64 %.val39, 576460752303423488, !dbg !16341
  tail call void @llvm.assume(i1 %i.bf), !dbg !16342
  %i.bg = zext nneg i64 %.val39 to i128, !dbg !16343 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16261), !dbg !16344
  %i.bh = load ptr, ptr %i.d, align 8, !dbg !16345, !alias.scope !16261, !nonnull !666, !noundef !666 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.3.0.i.ph.i, !dbg !16346 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !dbg !16347, !noalias !16261, !noundef !666
  %i.bk = and i8 %i.bj, 1, !dbg !16348
  %i.bl = zext nneg i8 %i.bk to i64, !dbg !16348
  %i.bm = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !16349
  %i.bn = load i64, ptr %i.i, align 8, !dbg !16350, !alias.scope !16261, !noundef !666
  %i.bo = and i64 %i.bn, %i.bm, !dbg !16351
  store i8 %i.k, ptr %i.bi, align 1, !dbg !16352, !noalias !16261
  %i.bp = getelementptr i8, ptr %i.bh, i64 %i.bo, !dbg !16353
  %i.bq = getelementptr i8, ptr %i.bp, i64 16, !dbg !16353
  store i8 %i.k, ptr %i.bq, align 1, !dbg !16354, !noalias !16261
  %i.br = load <2 x i64>, ptr %i.e, align 8, !dbg !16355, !alias.scope !16261
  %i.bs = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bl, i64 0, !dbg !16355
  %i.bt = sub <2 x i64> %i.br, %i.bs, !dbg !16355
  store <2 x i64> %i.bt, ptr %i.e, align 8, !dbg !16355, !alias.scope !16261
  %i.bu = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !16356
  %i.bv = getelementptr inbounds [32 x i8], ptr %i.bh, i64 %i.bu, !dbg !16357 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -32, !dbg !16358
  store i64 %i.c, ptr %i.bw, align 16, !dbg !16359, !noalias !16261
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -16, !dbg !16359
  store i128 %i.bg, ptr %i.bx, align 16, !dbg !16359, !noalias !16261
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16263), !dbg !16360
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16264), !dbg !16361, !noalias !16265
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !16362 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !dbg !16362, !range !795, !alias.scope !16266, !noalias !16267, !noundef !666 ; 2 uses
  %.not.i.i40 = icmp eq i64 %i.bz, -9223372036854775808, !dbg !16362
  br i1 %.not.i.i40, label %bb.n, label %bb.k, !dbg !16363

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !16364 ; 4 uses
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !16364, !alias.scope !16268, !noalias !16267, !noundef !666 ; 2 uses
  %i.cc = and i64 %i.cb, 7, !dbg !16365
  %i.cd = icmp eq i64 %i.cc, 0, !dbg !16365
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !16366, !alias.scope !16268, !noalias !16267 ; 4 uses
  br i1 %i.cd, label %bb.l, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !16364

bb.l:                                             ; preds = %bb.k
  %i.cg = icmp eq i64 %i.cf, %i.bz, !dbg !16367
  br i1 %i.cg, label %bb.m, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !16367

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.by), !dbg !16368, !noalias !16267
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !16368

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !16369
  %i.ci = load ptr, ptr %i.ch, align 8, !dbg !16369, !alias.scope !16269, !noalias !16267, !nonnull !666, !noundef !666
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cf, !dbg !16370
  store i8 0, ptr %i.cj, align 1, !dbg !16371, !noalias !16267
  %i.ck = add i64 %i.cf, 1, !dbg !16372           ; 2 uses
  store i64 %i.ck, ptr %i.ce, align 8, !dbg !16372, !alias.scope !16269, !noalias !16267
  %.pre.i.i = load i64, ptr %i.ca, align 8, !dbg !16373, !alias.scope !16268, !noalias !16267
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !16374

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.k
  %i.cl = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cb, %bb.k ], !dbg !16373
  %i.cm = phi i64 [ %i.ck, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cf, %bb.k ], !dbg !16375 ; 2 uses
  %.not.i.i.i41 = icmp ne i64 %i.cm, 0, !dbg !16376
  tail call void @llvm.assume(i1 %.not.i.i.i41), !dbg !16376, !noalias !16265
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !16377
  %i.co = load ptr, ptr %i.cn, align 8, !dbg !16377, !alias.scope !16268, !noalias !16267, !nonnull !666, !noundef !666
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.cm, !dbg !16378
  %i.cq = getelementptr i8, ptr %i.cp, i64 -1, !dbg !16378 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ], !dbg !16379, !noalias !16265
  %i.cr = load i8, ptr %i.cq, align 1, !dbg !16380, !noalias !16267, !noundef !666
  %i.cs = trunc i64 %i.cl to i8, !dbg !16381
  %i.ct = and i8 %i.cs, 7, !dbg !16381
  %i.cu = shl nuw i8 1, %i.ct, !dbg !16381
  %i.cv = or i8 %i.cr, %i.cu, !dbg !16382
  store i8 %i.cv, ptr %i.cq, align 1, !dbg !16383, !noalias !16267
  %i.cw = load i64, ptr %i.ca, align 8, !dbg !16384, !alias.scope !16268, !noalias !16267, !noundef !666
  %i.cx = add i64 %i.cw, 1, !dbg !16384
  store i64 %i.cx, ptr %i.ca, align 8, !dbg !16384, !alias.scope !16268, !noalias !16267
  br label %bb.n, !dbg !16385

bb.n:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16386, !noalias !16270
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !16386 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !16386, !alias.scope !16271, !noalias !16272, !noundef !666
  %i.da = add i64 %i.cz, %3, !dbg !16386
  store i64 %i.da, ptr %i.cy, align 8, !dbg !16386, !alias.scope !16271, !noalias !16272
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3), !dbg !16387, !noalias !16265
  %i.db = load i64, ptr %i.be, align 8, !dbg !16388, !alias.scope !16273, !noalias !16274, !noundef !666 ; 3 uses
  %i.dc = load i64, ptr %1, align 8, !dbg !16389, !range !790, !alias.scope !16273, !noalias !16274, !noundef !666
  %i.dd = icmp eq i64 %i.db, %i.dc, !dbg !16390
  br i1 %i.dd, label %bb.o, label %bb.p, !dbg !16390

bb.o:                                             ; preds = %bb.n
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !16391, !noalias !16275
  br label %bb.p, !dbg !16391

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16392
  %i.df = load ptr, ptr %i.de, align 8, !dbg !16392, !alias.scope !16273, !noalias !16274, !nonnull !666, !noundef !666
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.db, !dbg !16393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dg, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !16394, !noalias !16265
  %i.dh = add i64 %i.db, 1, !dbg !16395
  store i64 %i.dh, ptr %i.be, align 8, !dbg !16395, !alias.scope !16273, !noalias !16274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16396, !noalias !16270
  br label %bb.i, !dbg !16337
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapnINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArraynB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2q_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2q_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericeEENtNtB4E_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16397 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !16602
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !16603 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !16604 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !16605 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !16605, !alias.scope !16579, !noalias !16580, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !16606
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapnINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraynB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !16607, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMapnINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1i_7mutableINtB3Q_22MutableDictionaryArraynB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3F_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3F_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericeEENtNtB5V_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !16608, !noalias !16580 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapnINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraynB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !16609

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapnINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraynB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !16610, !alias.scope !16581, !noalias !16580, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !16610 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !16610, !alias.scope !16581, !noalias !16580, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !16611
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !16612 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !16613

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapnINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraynB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapnINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraynB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ar, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapnINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraynB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !16614
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapnINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraynB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !16614
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapnINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraynB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.aq, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !16615 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !16616
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !16617, !noalias !16582 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !16618
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !16619 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !16620
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !16621

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ag, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !16622
  %i.s = zext nneg i16 %i.r to i64, !dbg !16623
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !16624
  %i.u = and i64 %i.t, %.val7.i, !dbg !16624
  %i.v = load ptr, ptr %i.d, align 8, !dbg !16625, !alias.scope !16581, !noalias !16583, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !16626         ; 2 uses
  %i.x = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.w, !dbg !16627
  %i.y = getelementptr i8, ptr %i.x, i64 -16, !dbg !16628
  %.val3.i.i = load i128, ptr %i.y, align 16, !dbg !16628, !noalias !16584, !noundef !666 ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp ult i128 %.val3.i.i, 18446744073709551616, !dbg !16629
  %i.z = trunc nuw i128 %.val3.i.i to i64, !dbg !16629
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i), !dbg !16630
  %i.aa = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %i.z), !dbg !16631, !noalias !16584 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 1, !dbg !16631
  %i.ac = icmp eq i64 %i.ab, %3, !dbg !16632
  br i1 %i.ac, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !16632, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ad = extractvalue { ptr, i64 } %i.aa, 0, !dbg !16631
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ad, ptr nonnull readonly %2, i64 %3), !dbg !16633, !alias.scope !16585, !noalias !16584
  %i.ae = icmp eq i32 %bcmp.i.i.i.i, 0, !dbg !16633
  br i1 %i.ae, label %bb.h, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !16634, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !16635
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !16636, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.af = add i16 %.sroa.05.029.i.i, -1, !dbg !16637
  %i.ag = and i16 %i.af, %.sroa.05.029.i.i, !dbg !16638 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ag, 0, !dbg !16620
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !16621

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ah = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !16639
  %i.ai = bitcast <16 x i1> %i.ah to i16, !dbg !16639 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ai, 0, !dbg !16640
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !16641, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ai, i1 true), !dbg !16642
  %i.ak = zext nneg i16 %i.aj to i64, !dbg !16643
  %i.al = add i64 %.sroa.0.017.i.i, %i.ak, !dbg !16644
  %i.am = and i64 %i.al, %.val7.i, !dbg !16644
  br label %.thread.i.i, !dbg !16645

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.am, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !16646
  %i.ao = bitcast <16 x i1> %i.an to i16, !dbg !16647
  %i.ap = icmp eq i16 %i.ao, 0, !dbg !16648
  br i1 %i.ap, label %bb.e, label %bb.f, !dbg !16648, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.aq = add i64 %i.n, 16, !dbg !16649           ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.0.017.i.i, !dbg !16650
  br label %bb.c, !dbg !16613

bb.f:                                             ; preds = %.thread.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !16651
  %i.at = load i8, ptr %i.as, align 1, !dbg !16652, !noalias !16586, !noundef !666
  %i.au = icmp sgt i8 %i.at, -1, !dbg !16653
  br i1 %i.au, label %bb.g, label %bb.j, !dbg !16653, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !16654, !noalias !16586
  %i.av = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !16655
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !16655 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.aw, 0, !dbg !16656
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true), !dbg !16657
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !16657
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !16658
  br label %bb.j, !dbg !16659

bb.h:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTynEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapnINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraynB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.az = load ptr, ptr %i.d, align 8, !dbg !16660, !alias.scope !16581, !noalias !16580, !nonnull !666, !noundef !666
  %i.ba = getelementptr inbounds [32 x i8], ptr %i.az, i64 %i.w, !dbg !16661
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -16, !dbg !16662
  %i.bc = load i128, ptr %i.bb, align 16, !dbg !16662, !noundef !666
  br label %bb.i, !dbg !16663

bb.i:                                             ; preds = %bb.p, %bb.h
  %.sink = phi i128 [ %i.bg, %bb.p ], [ %i.bc, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16664
  store i128 %.sink, ptr %i.bd, align 16, !dbg !16664
  store i64 0, ptr %0, align 16, !dbg !16664
  ret void, !dbg !16665

bb.j:                                             ; preds = %bb.g, %bb.f
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ay, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !16666 ; 3 uses
  %.val39 = load i64, ptr %i.be, align 8, !dbg !16666, !noundef !666 ; 2 uses
  %i.bf = icmp ult i64 %.val39, 576460752303423488, !dbg !16667
  tail call void @llvm.assume(i1 %i.bf), !dbg !16668
  %i.bg = zext nneg i64 %.val39 to i128, !dbg !16669 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16587), !dbg !16670
  %i.bh = load ptr, ptr %i.d, align 8, !dbg !16671, !alias.scope !16587, !nonnull !666, !noundef !666 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.3.0.i.ph.i, !dbg !16672 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !dbg !16673, !noalias !16587, !noundef !666
  %i.bk = and i8 %i.bj, 1, !dbg !16674
  %i.bl = zext nneg i8 %i.bk to i64, !dbg !16674
  %i.bm = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !16675
  %i.bn = load i64, ptr %i.i, align 8, !dbg !16676, !alias.scope !16587, !noundef !666
  %i.bo = and i64 %i.bn, %i.bm, !dbg !16677
  store i8 %i.k, ptr %i.bi, align 1, !dbg !16678, !noalias !16587
  %i.bp = getelementptr i8, ptr %i.bh, i64 %i.bo, !dbg !16679
  %i.bq = getelementptr i8, ptr %i.bp, i64 16, !dbg !16679
  store i8 %i.k, ptr %i.bq, align 1, !dbg !16680, !noalias !16587
  %i.br = load <2 x i64>, ptr %i.e, align 8, !dbg !16681, !alias.scope !16587
  %i.bs = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bl, i64 0, !dbg !16681
  %i.bt = sub <2 x i64> %i.br, %i.bs, !dbg !16681
  store <2 x i64> %i.bt, ptr %i.e, align 8, !dbg !16681, !alias.scope !16587
  %i.bu = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !16682
  %i.bv = getelementptr inbounds [32 x i8], ptr %i.bh, i64 %i.bu, !dbg !16683 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -32, !dbg !16684
  store i64 %i.c, ptr %i.bw, align 16, !dbg !16685, !noalias !16587
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -16, !dbg !16685
  store i128 %i.bg, ptr %i.bx, align 16, !dbg !16685, !noalias !16587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16589), !dbg !16686
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16590), !dbg !16687, !noalias !16591
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !16688 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !dbg !16688, !range !795, !alias.scope !16592, !noalias !16593, !noundef !666 ; 2 uses
  %.not.i.i40 = icmp eq i64 %i.bz, -9223372036854775808, !dbg !16688
  br i1 %.not.i.i40, label %bb.n, label %bb.k, !dbg !16689

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !16690 ; 4 uses
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !16690, !alias.scope !16594, !noalias !16593, !noundef !666 ; 2 uses
  %i.cc = and i64 %i.cb, 7, !dbg !16691
  %i.cd = icmp eq i64 %i.cc, 0, !dbg !16691
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !16692, !alias.scope !16594, !noalias !16593 ; 4 uses
  br i1 %i.cd, label %bb.l, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !16690

bb.l:                                             ; preds = %bb.k
  %i.cg = icmp eq i64 %i.cf, %i.bz, !dbg !16693
  br i1 %i.cg, label %bb.m, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !16693

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.by), !dbg !16694, !noalias !16593
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !16694

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !16695
  %i.ci = load ptr, ptr %i.ch, align 8, !dbg !16695, !alias.scope !16595, !noalias !16593, !nonnull !666, !noundef !666
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cf, !dbg !16696
  store i8 0, ptr %i.cj, align 1, !dbg !16697, !noalias !16593
  %i.ck = add i64 %i.cf, 1, !dbg !16698           ; 2 uses
  store i64 %i.ck, ptr %i.ce, align 8, !dbg !16698, !alias.scope !16595, !noalias !16593
  %.pre.i.i = load i64, ptr %i.ca, align 8, !dbg !16699, !alias.scope !16594, !noalias !16593
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !16700

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.k
  %i.cl = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cb, %bb.k ], !dbg !16699
  %i.cm = phi i64 [ %i.ck, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cf, %bb.k ], !dbg !16701 ; 2 uses
  %.not.i.i.i41 = icmp ne i64 %i.cm, 0, !dbg !16702
  tail call void @llvm.assume(i1 %.not.i.i.i41), !dbg !16702, !noalias !16591
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !16703
  %i.co = load ptr, ptr %i.cn, align 8, !dbg !16703, !alias.scope !16594, !noalias !16593, !nonnull !666, !noundef !666
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.cm, !dbg !16704
  %i.cq = getelementptr i8, ptr %i.cp, i64 -1, !dbg !16704 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ], !dbg !16705, !noalias !16591
  %i.cr = load i8, ptr %i.cq, align 1, !dbg !16706, !noalias !16593, !noundef !666
  %i.cs = trunc i64 %i.cl to i8, !dbg !16707
  %i.ct = and i8 %i.cs, 7, !dbg !16707
  %i.cu = shl nuw i8 1, %i.ct, !dbg !16707
  %i.cv = or i8 %i.cr, %i.cu, !dbg !16708
  store i8 %i.cv, ptr %i.cq, align 1, !dbg !16709, !noalias !16593
  %i.cw = load i64, ptr %i.ca, align 8, !dbg !16710, !alias.scope !16594, !noalias !16593, !noundef !666
  %i.cx = add i64 %i.cw, 1, !dbg !16710
  store i64 %i.cx, ptr %i.ca, align 8, !dbg !16710, !alias.scope !16594, !noalias !16593
  br label %bb.n, !dbg !16711

bb.n:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16712, !noalias !16596
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !16712 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !16712, !alias.scope !16597, !noalias !16598, !noundef !666
  %i.da = add i64 %i.cz, %3, !dbg !16712
  store i64 %i.da, ptr %i.cy, align 8, !dbg !16712, !alias.scope !16597, !noalias !16598
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !16713, !noalias !16591
  %i.db = load i64, ptr %i.be, align 8, !dbg !16714, !alias.scope !16599, !noalias !16600, !noundef !666 ; 3 uses
  %i.dc = load i64, ptr %1, align 8, !dbg !16715, !range !790, !alias.scope !16599, !noalias !16600, !noundef !666
  %i.dd = icmp eq i64 %i.db, %i.dc, !dbg !16716
  br i1 %i.dd, label %bb.o, label %bb.p, !dbg !16716

bb.o:                                             ; preds = %bb.n
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !16717, !noalias !16601
  br label %bb.p, !dbg !16717

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16718
  %i.df = load ptr, ptr %i.de, align 8, !dbg !16718, !alias.scope !16599, !noalias !16600, !nonnull !666, !noundef !666
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.db, !dbg !16719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dg, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !16720, !noalias !16591
  %i.dh = add i64 %i.db, 1, !dbg !16721
  store i64 %i.dh, ptr %i.be, align 8, !dbg !16721, !alias.scope !16599, !noalias !16600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16722, !noalias !16596
  br label %bb.i, !dbg !16663
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapnINtNtNtB7_9primitive7mutable21MutablePrimitiveArrayaEE14try_push_validaNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArraynB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionaEE10try_extendINtNtNtNtB3K_4iter8adapters3map3MapINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB3K_5slice4iter4IteraENtNtB5a_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to23primitive_to_dictionaryanE0EE0EB73_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(128) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16723 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %2, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !16896
  %i.c = call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRaECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a), !dbg !16897 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !16898 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16881), !dbg !16899
  call void @llvm.experimental.noalias.scope.decl(metadata !16883), !dbg !16899
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !16900 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !16900, !alias.scope !16884, !noalias !16885, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !16901
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapnINtNtNtB1c_9primitive7mutable21MutablePrimitiveArrayaEE14try_push_validaNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraynB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionaEE10try_extendINtNtNtNtB4T_4iter8adapters3map3MapINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB4T_5slice4iter4IteraENtNtB6j_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to23primitive_to_dictionaryanE0EE0Es_0EB8d_.exit.i, !dbg !16902, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTynEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMapnINtNtNtB1k_9primitive7mutable21MutablePrimitiveArrayaEE14try_push_validaNCINvXs3_NtB1i_7mutableINtB3Q_22MutableDictionaryArraynB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionaEE10try_extendINtNtNtNtB51_4iter8adapters3map3MapINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB51_5slice4iter4IteraENtNtB6r_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to23primitive_to_dictionaryanE0EE0Es_0EB8l_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !16903, !noalias !16885 ; 0 uses
end_hunk_4
begin_hunk_5_@_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapoINtNtNtB7_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB5_7mutableINtB2x_22MutableDictionaryArrayoB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2l_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2l_INtNtB7_8iterator15ArrayValuesIterINtB1o_11BinaryArrayxEENtNtB4A_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute:bb.a
.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ap, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.w, %bb.c ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !19515
  %i.y = zext nneg i16 %i.x to i64, !dbg !19516
  %i.z = add i64 %.sroa.0.017.i.i, %i.y, !dbg !19517
  %i.aa = and i64 %i.z, %.val7.i, !dbg !19517
  %i.ab = sub nsw i64 0, %i.aa, !dbg !19518
  %i.ac = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.ab, !dbg !19519
  %i.ad = getelementptr i8, ptr %i.ac, i64 -16, !dbg !19520
  %.val3.i.i = load i128, ptr %i.ad, align 16, !dbg !19520, !noalias !19486, !noundef !666 ; 3 uses
  %i.ae = icmp ult i128 %.val3.i.i, 18446744073709551616, !dbg !19521
  %i.af = trunc nuw i128 %.val3.i.i to i64, !dbg !19521 ; 2 uses
  tail call void @llvm.assume(i1 %i.ae), !dbg !19522
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.af, !dbg !19523
  %.val1.i.i.i.i = load i64, ptr %i.ag, align 8, !dbg !19524, !noalias !19487, !noundef !666 ; 2 uses
  %i.ah = add nuw i64 %i.af, 1, !dbg !19525       ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.q, !dbg !19526
  tail call void @llvm.assume(i1 %i.ai), !dbg !19527
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ah, !dbg !19528
  %.val.i.i.i.i = load i64, ptr %i.aj, align 8, !dbg !19529, !noalias !19487, !noundef !666
  %i.ak = sub nuw i64 %.val.i.i.i.i, %.val1.i.i.i.i, !dbg !19530
  %i.al = icmp eq i64 %i.ak, %3, !dbg !19531
  br i1 %i.al, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !19531, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 %.val1.i.i.i.i, !dbg !19532
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.am, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !19533, !alias.scope !19488, !noalias !19486
  %i.an = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !19533
  br i1 %i.an, label %bb.h, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !19534, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !19535
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !19536, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.ao = add i16 %.sroa.05.029.i.i, -1, !dbg !19537
  %i.ap = and i16 %i.ao, %.sroa.05.029.i.i, !dbg !19538 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ap, 0, !dbg !19513
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !19514

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.aq = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !19539
  %i.ar = bitcast <16 x i1> %i.aq to i16, !dbg !19539 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ar, 0, !dbg !19540
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !19541, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ar, i1 true), !dbg !19542
  %i.at = zext nneg i16 %i.as to i64, !dbg !19543
  %i.au = add i64 %.sroa.0.017.i.i, %i.at, !dbg !19544
  %i.av = and i64 %i.au, %.val7.i, !dbg !19544
  br label %.thread.i.i, !dbg !19545

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.av, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !19546
  %i.ax = bitcast <16 x i1> %i.aw to i16, !dbg !19547
  %i.ay = icmp eq i16 %i.ax, 0, !dbg !19548
  br i1 %i.ay, label %bb.e, label %bb.f, !dbg !19548, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.az = add i64 %i.t, 16, !dbg !19549           ; 2 uses
  %i.ba = add i64 %i.az, %.sroa.0.017.i.i, !dbg !19550
  br label %bb.c, !dbg !19506

bb.f:                                             ; preds = %.thread.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !19551
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !19552, !noalias !19483, !noundef !666 ; 2 uses
  %i.bd = icmp sgt i8 %i.bc, -1, !dbg !19553
  br i1 %i.bd, label %bb.g, label %bb.j, !dbg !19553, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !19554, !noalias !19483
  %i.be = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !19555
  %i.bf = bitcast <16 x i1> %i.be to i16, !dbg !19555 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.bf, 0, !dbg !19556
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bf, i1 true), !dbg !19557
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !19557 ; 2 uses
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !19558
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bh
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !19559, !noalias !19489
  br label %bb.j, !dbg !19560

bb.h:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19561
  store i128 %.val3.i.i, ptr %i.bi, align 16, !dbg !19561
  br label %bb.i, !dbg !19562

bb.i:                                             ; preds = %bb.l, %bb.k, %bb.h
  %.sink = phi i64 [ 0, %bb.l ], [ 1, %bb.k ], [ 0, %bb.h ]
  store i64 %.sink, ptr %0, align 16, !dbg !19563
  ret void, !dbg !19564

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.bj = phi i8 [ %.pre, %bb.g ], [ %i.bc, %bb.f ], !dbg !19559
  %.sroa.3.0.i.ph.i = phi i64 [ %i.bh, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.bk = icmp ult i64 %i.q, 1152921504606846976, !dbg !19565
  tail call void @llvm.assume(i1 %i.bk), !dbg !19566
  %i.bl = add nsw i64 %i.q, -1, !dbg !19567
  %i.bm = zext i64 %i.bl to i128, !dbg !19568     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19489), !dbg !19569
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i, !dbg !19570
  %i.bo = and i8 %i.bj, 1, !dbg !19571
  %i.bp = zext nneg i8 %i.bo to i64, !dbg !19571
  %i.bq = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !19572
  %i.br = and i64 %i.bq, %.val7.i, !dbg !19573
  store i8 %i.k, ptr %i.bn, align 1, !dbg !19574, !noalias !19489
  %i.bs = getelementptr i8, ptr %.val.i, i64 %i.br, !dbg !19575
  %i.bt = getelementptr i8, ptr %i.bs, i64 16, !dbg !19575
  store i8 %i.k, ptr %i.bt, align 1, !dbg !19576, !noalias !19489
  %i.bu = load <2 x i64>, ptr %i.e, align 8, !dbg !19577, !alias.scope !19489
  %i.bv = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bp, i64 0, !dbg !19577
  %i.bw = sub <2 x i64> %i.bu, %i.bv, !dbg !19577
  store <2 x i64> %i.bw, ptr %i.e, align 8, !dbg !19577, !alias.scope !19489
  %i.bx = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !19578
  %i.by = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.bx, !dbg !19579 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -32, !dbg !19580
  store i64 %i.c, ptr %i.bz, align 16, !dbg !19581, !noalias !19489
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -16, !dbg !19581
  store i128 %i.bm, ptr %i.ca, align 16, !dbg !19581, !noalias !19489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19491
  call void @_RNvXs7_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7mutableINtB5_18MutableBinaryArrayxEINtB9_7TryPushINtNtCscgRAwXFJnXP_4core6option6OptionRShEE8try_pushCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !19582
  %i.cb = load i64, ptr %i.a, align 8, !dbg !19583, !range !814, !noundef !666
  %.not = icmp eq i64 %i.cb, 18, !dbg !19583
  br i1 %.not, label %bb.l, label %bb.k, !dbg !19584

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !19586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19587
  br label %bb.i, !dbg !19562

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19587
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19561
  store i128 %i.bm, ptr %i.cd, align 16, !dbg !19561
  br label %bb.i, !dbg !19562
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapoINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB27_NCINvXs3_NtB5_7mutableINtB2F_22MutableDictionaryArrayoB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2r_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2r_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericB27_EENtNtB4I_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19588 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !19791
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRShECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !19792 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !19793 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !19794 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !19794, !alias.scope !19768, !noalias !19769, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !19795
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapoINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayoB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !19796, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMapoINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3m_NCINvXs3_NtB1i_7mutableINtB3U_22MutableDictionaryArrayoB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3G_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3G_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericB3m_EENtNtB5Z_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !19797, !noalias !19769 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapoINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayoB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !19798

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapoINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayoB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !19799, !alias.scope !19770, !noalias !19769, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !19799 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !19799, !alias.scope !19770, !noalias !19769, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !19800
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !19801 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !19802

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapoINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayoB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapoINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayoB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.as, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapoINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayoB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !19803
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapoINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayoB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !19803
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapoINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayoB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ar, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !19804 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !19805
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !19806, !noalias !19771 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !19807
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !19808 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !19809
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !19810

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ah, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !19811
  %i.s = zext nneg i16 %i.r to i64, !dbg !19812
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !19813
  %i.u = and i64 %i.t, %.val7.i, !dbg !19813
  %i.v = load ptr, ptr %i.d, align 8, !dbg !19814, !alias.scope !19770, !noalias !19772, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !19815         ; 2 uses
  %i.x = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.w, !dbg !19816
  %i.y = getelementptr i8, ptr %i.x, i64 -16, !dbg !19817
  %.val3.i.i = load i128, ptr %i.y, align 16, !dbg !19817, !noalias !19773, !noundef !666 ; 2 uses
  %i.z = icmp ult i128 %.val3.i.i, 18446744073709551616, !dbg !19818
  %i.aa = trunc nuw i128 %.val3.i.i to i64, !dbg !19818
  tail call void @llvm.assume(i1 %i.z), !dbg !19819
  %i.ab = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %i.aa), !dbg !19820, !noalias !19773 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 1, !dbg !19820
  %i.ad = icmp eq i64 %i.ac, %3, !dbg !19821
  br i1 %i.ad, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !19821, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ae = extractvalue { ptr, i64 } %i.ab, 0, !dbg !19820
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ae, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !19822, !alias.scope !19774, !noalias !19773
  %i.af = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !19822
  br i1 %i.af, label %bb.h, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !19823, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !19824
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !19825, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.ag = add i16 %.sroa.05.029.i.i, -1, !dbg !19826
  %i.ah = and i16 %i.ag, %.sroa.05.029.i.i, !dbg !19827 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ah, 0, !dbg !19809
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !19810

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !19828
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !19828 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aj, 0, !dbg !19829
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !19830, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aj, i1 true), !dbg !19831
  %i.al = zext nneg i16 %i.ak to i64, !dbg !19832
  %i.am = add i64 %.sroa.0.017.i.i, %i.al, !dbg !19833
  %i.an = and i64 %i.am, %.val7.i, !dbg !19833
  br label %.thread.i.i, !dbg !19834

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.an, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !19835
  %i.ap = bitcast <16 x i1> %i.ao to i16, !dbg !19836
  %i.aq = icmp eq i16 %i.ap, 0, !dbg !19837
  br i1 %i.aq, label %bb.e, label %bb.f, !dbg !19837, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ar = add i64 %i.n, 16, !dbg !19838           ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.0.017.i.i, !dbg !19839
  br label %bb.c, !dbg !19802

bb.f:                                             ; preds = %.thread.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !19840
  %i.au = load i8, ptr %i.at, align 1, !dbg !19841, !noalias !19775, !noundef !666
  %i.av = icmp sgt i8 %i.au, -1, !dbg !19842
  br i1 %i.av, label %bb.g, label %bb.j, !dbg !19842, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !19843, !noalias !19775
  %i.aw = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !19844
  %i.ax = bitcast <16 x i1> %i.aw to i16, !dbg !19844 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.ax, 0, !dbg !19845
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ax, i1 true), !dbg !19846
  %i.az = zext nneg i16 %i.ay to i64, !dbg !19846
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !19847
  br label %bb.j, !dbg !19848

bb.h:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.ba = load ptr, ptr %i.d, align 8, !dbg !19849, !alias.scope !19770, !noalias !19769, !nonnull !666, !noundef !666
  %i.bb = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.w, !dbg !19850
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -16, !dbg !19851
  %i.bd = load i128, ptr %i.bc, align 16, !dbg !19851, !noundef !666
  br label %bb.i, !dbg !19852

bb.i:                                             ; preds = %bb.p, %bb.h
  %.sink = phi i128 [ %i.bh, %bb.p ], [ %i.bd, %bb.h ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19853
  store i128 %.sink, ptr %i.be, align 16, !dbg !19853
  store i64 0, ptr %0, align 16, !dbg !19853
  ret void, !dbg !19854

bb.j:                                             ; preds = %bb.g, %bb.f
  %.sroa.3.0.i.ph.i = phi i64 [ %i.az, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !19855 ; 3 uses
  %.val39 = load i64, ptr %i.bf, align 8, !dbg !19855, !noundef !666 ; 2 uses
  %i.bg = icmp ult i64 %.val39, 576460752303423488, !dbg !19856
  tail call void @llvm.assume(i1 %i.bg), !dbg !19857
  %i.bh = zext nneg i64 %.val39 to i128, !dbg !19858 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19776), !dbg !19859
  %i.bi = load ptr, ptr %i.d, align 8, !dbg !19860, !alias.scope !19776, !nonnull !666, !noundef !666 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.3.0.i.ph.i, !dbg !19861 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !19862, !noalias !19776, !noundef !666
  %i.bl = and i8 %i.bk, 1, !dbg !19863
  %i.bm = zext nneg i8 %i.bl to i64, !dbg !19863
  %i.bn = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !19864
  %i.bo = load i64, ptr %i.i, align 8, !dbg !19865, !alias.scope !19776, !noundef !666
  %i.bp = and i64 %i.bo, %i.bn, !dbg !19866
  store i8 %i.k, ptr %i.bj, align 1, !dbg !19867, !noalias !19776
  %i.bq = getelementptr i8, ptr %i.bi, i64 %i.bp, !dbg !19868
  %i.br = getelementptr i8, ptr %i.bq, i64 16, !dbg !19868
  store i8 %i.k, ptr %i.br, align 1, !dbg !19869, !noalias !19776
  %i.bs = load <2 x i64>, ptr %i.e, align 8, !dbg !19870, !alias.scope !19776
  %i.bt = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bm, i64 0, !dbg !19870
  %i.bu = sub <2 x i64> %i.bs, %i.bt, !dbg !19870
  store <2 x i64> %i.bu, ptr %i.e, align 8, !dbg !19870, !alias.scope !19776
  %i.bv = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !19871
  %i.bw = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.bv, !dbg !19872 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -32, !dbg !19873
  store i64 %i.c, ptr %i.bx, align 16, !dbg !19874, !noalias !19776
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -16, !dbg !19874
  store i128 %i.bh, ptr %i.by, align 16, !dbg !19874, !noalias !19776
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19778), !dbg !19875
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19779), !dbg !19876, !noalias !19780
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !19877 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !19877, !range !795, !alias.scope !19781, !noalias !19782, !noundef !666 ; 2 uses
  %.not.i.i40 = icmp eq i64 %i.ca, -9223372036854775808, !dbg !19877
  br i1 %.not.i.i40, label %bb.n, label %bb.k, !dbg !19878

bb.k:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !19879 ; 4 uses
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !19879, !alias.scope !19783, !noalias !19782, !noundef !666 ; 2 uses
  %i.cd = and i64 %i.cc, 7, !dbg !19880
  %i.ce = icmp eq i64 %i.cd, 0, !dbg !19880
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !19881, !alias.scope !19783, !noalias !19782 ; 4 uses
  br i1 %i.ce, label %bb.l, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !19879

bb.l:                                             ; preds = %bb.k
  %i.ch = icmp eq i64 %i.cg, %i.ca, !dbg !19882
  br i1 %i.ch, label %bb.m, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !19882

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bz), !dbg !19883, !noalias !19782
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !19883

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !19884
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !19884, !alias.scope !19784, !noalias !19782, !nonnull !666, !noundef !666
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cg, !dbg !19885
  store i8 0, ptr %i.ck, align 1, !dbg !19886, !noalias !19782
  %i.cl = add i64 %i.cg, 1, !dbg !19887           ; 2 uses
  store i64 %i.cl, ptr %i.cf, align 8, !dbg !19887, !alias.scope !19784, !noalias !19782
  %.pre.i.i = load i64, ptr %i.cb, align 8, !dbg !19888, !alias.scope !19783, !noalias !19782
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !19889

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.k
  %i.cm = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cc, %bb.k ], !dbg !19888
  %i.cn = phi i64 [ %i.cl, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cg, %bb.k ], !dbg !19890 ; 2 uses
  %.not.i.i.i41 = icmp ne i64 %i.cn, 0, !dbg !19891
  tail call void @llvm.assume(i1 %.not.i.i.i41), !dbg !19891, !noalias !19780
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !19892
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !19892, !alias.scope !19783, !noalias !19782, !nonnull !666, !noundef !666
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cn, !dbg !19893
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !19893 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !19894, !noalias !19780
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !19895, !noalias !19782, !noundef !666
  %i.ct = trunc i64 %i.cm to i8, !dbg !19896
  %i.cu = and i8 %i.ct, 7, !dbg !19896
  %i.cv = shl nuw i8 1, %i.cu, !dbg !19896
  %i.cw = or i8 %i.cs, %i.cv, !dbg !19897
  store i8 %i.cw, ptr %i.cr, align 1, !dbg !19898, !noalias !19782
  %i.cx = load i64, ptr %i.cb, align 8, !dbg !19899, !alias.scope !19783, !noalias !19782, !noundef !666
  %i.cy = add i64 %i.cx, 1, !dbg !19899
  store i64 %i.cy, ptr %i.cb, align 8, !dbg !19899, !alias.scope !19783, !noalias !19782
  br label %bb.n, !dbg !19900

bb.n:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19901, !noalias !19785
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !19901 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !dbg !19901, !alias.scope !19786, !noalias !19787, !noundef !666
  %i.db = add i64 %i.da, %3, !dbg !19901
  store i64 %i.db, ptr %i.cz, align 8, !dbg !19901, !alias.scope !19786, !noalias !19787
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3), !dbg !19902, !noalias !19780
  %i.dc = load i64, ptr %i.bf, align 8, !dbg !19903, !alias.scope !19788, !noalias !19789, !noundef !666 ; 3 uses
  %i.dd = load i64, ptr %1, align 8, !dbg !19904, !range !790, !alias.scope !19788, !noalias !19789, !noundef !666
  %i.de = icmp eq i64 %i.dc, %i.dd, !dbg !19905
  br i1 %i.de, label %bb.o, label %bb.p, !dbg !19905

bb.o:                                             ; preds = %bb.n
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !19906, !noalias !19790
  br label %bb.p, !dbg !19906

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19907
  %i.dg = load ptr, ptr %i.df, align 8, !dbg !19907, !alias.scope !19788, !noalias !19789, !nonnull !666, !noundef !666
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dc, !dbg !19908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dh, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !19909, !noalias !19780
  %i.di = add i64 %i.dc, 1, !dbg !19910
  store i64 %i.di, ptr %i.bf, align 8, !dbg !19910, !alias.scope !19788, !noalias !19789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19911, !noalias !19785
  br label %bb.i, !dbg !19852
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapoINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArrayoB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2q_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2q_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericeEENtNtB4E_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19912 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !20117
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !20118 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !20119 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !20120 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !20120, !alias.scope !20094, !noalias !20095, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !20121
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapoINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayoB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !20122, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMapoINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1i_7mutableINtB3Q_22MutableDictionaryArrayoB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3F_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3F_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericeEENtNtB5V_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !20123, !noalias !20095 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapoINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayoB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !20124

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapoINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayoB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !20125, !alias.scope !20096, !noalias !20095, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !20125 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !20125, !alias.scope !20096, !noalias !20095, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !20126
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !20127 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !20128

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapoINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayoB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapoINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayoB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.as, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapoINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayoB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !20129
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapoINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayoB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !20129
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapoINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayoB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ar, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !20130 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !20131
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !20132, !noalias !20097 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !20133
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !20134 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !20135
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !20136

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ah, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !20137
  %i.s = zext nneg i16 %i.r to i64, !dbg !20138
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !20139
  %i.u = and i64 %i.t, %.val7.i, !dbg !20139
  %i.v = load ptr, ptr %i.d, align 8, !dbg !20140, !alias.scope !20096, !noalias !20098, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !20141         ; 2 uses
  %i.x = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.w, !dbg !20142
  %i.y = getelementptr i8, ptr %i.x, i64 -16, !dbg !20143
  %.val3.i.i = load i128, ptr %i.y, align 16, !dbg !20143, !noalias !20099, !noundef !666 ; 2 uses
  %i.z = icmp ult i128 %.val3.i.i, 18446744073709551616, !dbg !20144
  %i.aa = trunc nuw i128 %.val3.i.i to i64, !dbg !20144
  tail call void @llvm.assume(i1 %i.z), !dbg !20145
  %i.ab = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %i.aa), !dbg !20146, !noalias !20099 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 1, !dbg !20146
  %i.ad = icmp eq i64 %i.ac, %3, !dbg !20147
  br i1 %i.ad, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !20147, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ae = extractvalue { ptr, i64 } %i.ab, 0, !dbg !20146
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ae, ptr nonnull readonly %2, i64 %3), !dbg !20148, !alias.scope !20100, !noalias !20099
  %i.af = icmp eq i32 %bcmp.i.i.i.i, 0, !dbg !20148
  br i1 %i.af, label %bb.h, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !20149, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !20150
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !20151, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.ag = add i16 %.sroa.05.029.i.i, -1, !dbg !20152
  %i.ah = and i16 %i.ag, %.sroa.05.029.i.i, !dbg !20153 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ah, 0, !dbg !20135
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !20136

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !20154
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !20154 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aj, 0, !dbg !20155
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !20156, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aj, i1 true), !dbg !20157
  %i.al = zext nneg i16 %i.ak to i64, !dbg !20158
  %i.am = add i64 %.sroa.0.017.i.i, %i.al, !dbg !20159
  %i.an = and i64 %i.am, %.val7.i, !dbg !20159
  br label %.thread.i.i, !dbg !20160

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.an, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !20161
  %i.ap = bitcast <16 x i1> %i.ao to i16, !dbg !20162
  %i.aq = icmp eq i16 %i.ap, 0, !dbg !20163
  br i1 %i.aq, label %bb.e, label %bb.f, !dbg !20163, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ar = add i64 %i.n, 16, !dbg !20164           ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.0.017.i.i, !dbg !20165
  br label %bb.c, !dbg !20128

bb.f:                                             ; preds = %.thread.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !20166
  %i.au = load i8, ptr %i.at, align 1, !dbg !20167, !noalias !20101, !noundef !666
  %i.av = icmp sgt i8 %i.au, -1, !dbg !20168
  br i1 %i.av, label %bb.g, label %bb.j, !dbg !20168, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !20169, !noalias !20101
  %i.aw = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !20170
  %i.ax = bitcast <16 x i1> %i.aw to i16, !dbg !20170 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.ax, 0, !dbg !20171
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ax, i1 true), !dbg !20172
  %i.az = zext nneg i16 %i.ay to i64, !dbg !20172
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !20173
  br label %bb.j, !dbg !20174

bb.h:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyoEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapoINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayoB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.ba = load ptr, ptr %i.d, align 8, !dbg !20175, !alias.scope !20096, !noalias !20095, !nonnull !666, !noundef !666
  %i.bb = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.w, !dbg !20176
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -16, !dbg !20177
  %i.bd = load i128, ptr %i.bc, align 16, !dbg !20177, !noundef !666
  br label %bb.i, !dbg !20178

bb.i:                                             ; preds = %bb.p, %bb.h
  %.sink = phi i128 [ %i.bh, %bb.p ], [ %i.bd, %bb.h ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !20179
  store i128 %.sink, ptr %i.be, align 16, !dbg !20179
  store i64 0, ptr %0, align 16, !dbg !20179
  ret void, !dbg !20180

bb.j:                                             ; preds = %bb.g, %bb.f
  %.sroa.3.0.i.ph.i = phi i64 [ %i.az, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20181 ; 3 uses
  %.val39 = load i64, ptr %i.bf, align 8, !dbg !20181, !noundef !666 ; 2 uses
  %i.bg = icmp ult i64 %.val39, 576460752303423488, !dbg !20182
  tail call void @llvm.assume(i1 %i.bg), !dbg !20183
  %i.bh = zext nneg i64 %.val39 to i128, !dbg !20184 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20102), !dbg !20185
  %i.bi = load ptr, ptr %i.d, align 8, !dbg !20186, !alias.scope !20102, !nonnull !666, !noundef !666 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.3.0.i.ph.i, !dbg !20187 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !20188, !noalias !20102, !noundef !666
  %i.bl = and i8 %i.bk, 1, !dbg !20189
  %i.bm = zext nneg i8 %i.bl to i64, !dbg !20189
  %i.bn = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !20190
  %i.bo = load i64, ptr %i.i, align 8, !dbg !20191, !alias.scope !20102, !noundef !666
  %i.bp = and i64 %i.bo, %i.bn, !dbg !20192
  store i8 %i.k, ptr %i.bj, align 1, !dbg !20193, !noalias !20102
  %i.bq = getelementptr i8, ptr %i.bi, i64 %i.bp, !dbg !20194
  %i.br = getelementptr i8, ptr %i.bq, i64 16, !dbg !20194
  store i8 %i.k, ptr %i.br, align 1, !dbg !20195, !noalias !20102
  %i.bs = load <2 x i64>, ptr %i.e, align 8, !dbg !20196, !alias.scope !20102
  %i.bt = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bm, i64 0, !dbg !20196
  %i.bu = sub <2 x i64> %i.bs, %i.bt, !dbg !20196
  store <2 x i64> %i.bu, ptr %i.e, align 8, !dbg !20196, !alias.scope !20102
  %i.bv = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !20197
  %i.bw = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.bv, !dbg !20198 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -32, !dbg !20199
  store i64 %i.c, ptr %i.bx, align 16, !dbg !20200, !noalias !20102
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -16, !dbg !20200
  store i128 %i.bh, ptr %i.by, align 16, !dbg !20200, !noalias !20102
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20104), !dbg !20201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20105), !dbg !20202, !noalias !20106
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !20203 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !20203, !range !795, !alias.scope !20107, !noalias !20108, !noundef !666 ; 2 uses
  %.not.i.i40 = icmp eq i64 %i.ca, -9223372036854775808, !dbg !20203
  br i1 %.not.i.i40, label %bb.n, label %bb.k, !dbg !20204

bb.k:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !20205 ; 4 uses
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !20205, !alias.scope !20109, !noalias !20108, !noundef !666 ; 2 uses
  %i.cd = and i64 %i.cc, 7, !dbg !20206
  %i.ce = icmp eq i64 %i.cd, 0, !dbg !20206
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !20207, !alias.scope !20109, !noalias !20108 ; 4 uses
  br i1 %i.ce, label %bb.l, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !20205

bb.l:                                             ; preds = %bb.k
  %i.ch = icmp eq i64 %i.cg, %i.ca, !dbg !20208
  br i1 %i.ch, label %bb.m, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !20208

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bz), !dbg !20209, !noalias !20108
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !20209

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !20210
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !20210, !alias.scope !20110, !noalias !20108, !nonnull !666, !noundef !666
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cg, !dbg !20211
  store i8 0, ptr %i.ck, align 1, !dbg !20212, !noalias !20108
  %i.cl = add i64 %i.cg, 1, !dbg !20213           ; 2 uses
  store i64 %i.cl, ptr %i.cf, align 8, !dbg !20213, !alias.scope !20110, !noalias !20108
  %.pre.i.i = load i64, ptr %i.cb, align 8, !dbg !20214, !alias.scope !20109, !noalias !20108
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !20215

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.k
  %i.cm = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cc, %bb.k ], !dbg !20214
  %i.cn = phi i64 [ %i.cl, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cg, %bb.k ], !dbg !20216 ; 2 uses
  %.not.i.i.i41 = icmp ne i64 %i.cn, 0, !dbg !20217
  tail call void @llvm.assume(i1 %.not.i.i.i41), !dbg !20217, !noalias !20106
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !20218
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !20218, !alias.scope !20109, !noalias !20108, !nonnull !666, !noundef !666
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cn, !dbg !20219
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !20219 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !20220, !noalias !20106
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !20221, !noalias !20108, !noundef !666
  %i.ct = trunc i64 %i.cm to i8, !dbg !20222
  %i.cu = and i8 %i.ct, 7, !dbg !20222
  %i.cv = shl nuw i8 1, %i.cu, !dbg !20222
  %i.cw = or i8 %i.cs, %i.cv, !dbg !20223
  store i8 %i.cw, ptr %i.cr, align 1, !dbg !20224, !noalias !20108
  %i.cx = load i64, ptr %i.cb, align 8, !dbg !20225, !alias.scope !20109, !noalias !20108, !noundef !666
  %i.cy = add i64 %i.cx, 1, !dbg !20225
  store i64 %i.cy, ptr %i.cb, align 8, !dbg !20225, !alias.scope !20109, !noalias !20108
  br label %bb.n, !dbg !20226

bb.n:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20227, !noalias !20111
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !20227 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !dbg !20227, !alias.scope !20112, !noalias !20113, !noundef !666
  %i.db = add i64 %i.da, %3, !dbg !20227
  store i64 %i.db, ptr %i.cz, align 8, !dbg !20227, !alias.scope !20112, !noalias !20113
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !20228, !noalias !20106
  %i.dc = load i64, ptr %i.bf, align 8, !dbg !20229, !alias.scope !20114, !noalias !20115, !noundef !666 ; 3 uses
  %i.dd = load i64, ptr %1, align 8, !dbg !20230, !range !790, !alias.scope !20114, !noalias !20115, !noundef !666
  %i.de = icmp eq i64 %i.dc, %i.dd, !dbg !20231
  br i1 %i.de, label %bb.o, label %bb.p, !dbg !20231

bb.o:                                             ; preds = %bb.n
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !20232, !noalias !20116
  br label %bb.p, !dbg !20232

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20233
  %i.dg = load ptr, ptr %i.df, align 8, !dbg !20233, !alias.scope !20114, !noalias !20115, !nonnull !666, !noundef !666
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dc, !dbg !20234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dh, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !20235, !noalias !20106
  %i.di = add i64 %i.dc, 1, !dbg !20236
  store i64 %i.di, ptr %i.bf, align 8, !dbg !20236, !alias.scope !20114, !noalias !20115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20237, !noalias !20111
  br label %bb.i, !dbg !20178
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapoINtNtNtB7_9primitive7mutable21MutablePrimitiveArrayaEE14try_push_validaNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArrayoB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionaEE10try_extendINtNtNtNtB3K_4iter8adapters3map3MapINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB3K_5slice4iter4IteraENtNtB5a_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to23primitive_to_dictionaryaoE0EE0EB73_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(128) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20238 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %2, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !20411
  %i.c = call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRaECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a), !dbg !20412 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !20413 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20396), !dbg !20414
  call void @llvm.experimental.noalias.scope.decl(metadata !20398), !dbg !20414
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !20415 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !20415, !alias.scope !20399, !noalias !20400, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !20416
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapoINtNtNtB1c_9primitive7mutable21MutablePrimitiveArrayaEE14try_push_validaNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayoB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionaEE10try_extendINtNtNtNtB4T_4iter8adapters3map3MapINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB4T_5slice4iter4IteraENtNtB6j_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to23primitive_to_dictionaryaoE0EE0Es_0EB8d_.exit.i, !dbg !20417, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyoEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMapoINtNtNtB1k_9primitive7mutable21MutablePrimitiveArrayaEE14try_push_validaNCINvXs3_NtB1i_7mutableINtB3Q_22MutableDictionaryArrayoB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionaEE10try_extendINtNtNtNtB51_4iter8adapters3map3MapINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB51_5slice4iter4IteraENtNtB6r_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to23primitive_to_dictionaryaoE0EE0Es_0EB8l_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !20418, !noalias !20400 ; 0 uses
end_hunk_5
begin_hunk_6_@_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapsINtNtNtB7_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB5_7mutableINtB2x_22MutableDictionaryArraysB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2l_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2l_INtNtB7_8iterator15ArrayValuesIterINtB1o_11BinaryArrayxEENtNtB4A_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute:bb.a
  %.val3.i.i = load i16, ptr %i.ad, align 8, !dbg !23048, !noalias !23013, !noundef !666 ; 3 uses
  %i.ae = zext nneg i16 %.val3.i.i to i64, !dbg !23049 ; 2 uses
  %i.af = icmp sgt i16 %.val3.i.i, -1, !dbg !23050
  tail call void @llvm.assume(i1 %i.af), !dbg !23050
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ae, !dbg !23051
  %.val1.i.i.i.i = load i64, ptr %i.ag, align 8, !dbg !23052, !noalias !23014, !noundef !666 ; 2 uses
  %i.ah = add nuw nsw i64 %i.ae, 1, !dbg !23053   ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.q, !dbg !23054
  tail call void @llvm.assume(i1 %i.ai), !dbg !23055
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ah, !dbg !23056
  %.val.i.i.i.i = load i64, ptr %i.aj, align 8, !dbg !23057, !noalias !23014, !noundef !666
  %i.ak = sub nuw i64 %.val.i.i.i.i, %.val1.i.i.i.i, !dbg !23058
  %i.al = icmp eq i64 %i.ak, %3, !dbg !23059
  br i1 %i.al, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !23059, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 %.val1.i.i.i.i, !dbg !23060
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.am, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !23061, !alias.scope !23015, !noalias !23013
  %i.an = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !23061
  br i1 %i.an, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !23062, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !23063
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !23064, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.ao = add i16 %.sroa.05.029.i.i, -1, !dbg !23065
  %i.ap = and i16 %i.ao, %.sroa.05.029.i.i, !dbg !23066 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ap, 0, !dbg !23041
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !23042

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.aq = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !23067
  %i.ar = bitcast <16 x i1> %i.aq to i16, !dbg !23067 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ar, 0, !dbg !23068
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !23069, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ar, i1 true), !dbg !23070
  %i.at = zext nneg i16 %i.as to i64, !dbg !23071
  %i.au = add i64 %.sroa.0.017.i.i, %i.at, !dbg !23072
  %i.av = and i64 %i.au, %.val7.i, !dbg !23072
  br label %.thread.i.i, !dbg !23073

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.av, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !23074
  %i.ax = bitcast <16 x i1> %i.aw to i16, !dbg !23075
  %i.ay = icmp eq i16 %i.ax, 0, !dbg !23076
  br i1 %i.ay, label %bb.e, label %bb.f, !dbg !23076, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.az = add i64 %i.t, 16, !dbg !23077           ; 2 uses
  %i.ba = add i64 %i.az, %.sroa.0.017.i.i, !dbg !23078
  br label %bb.c, !dbg !23034

bb.f:                                             ; preds = %.thread.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !23079
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !23080, !noalias !23010, !noundef !666
  %i.bd = icmp sgt i8 %i.bc, -1, !dbg !23081
  br i1 %i.bd, label %bb.g, label %bb.h, !dbg !23081, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !23082, !noalias !23010
  %i.be = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !23083
  %i.bf = bitcast <16 x i1> %i.be to i16, !dbg !23083 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.bf, 0, !dbg !23084
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bf, i1 true), !dbg !23085
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !23085
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !23086
  br label %bb.h, !dbg !23087

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.bh, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.bi = icmp ult i64 %i.q, 1152921504606846976, !dbg !23088
  tail call void @llvm.assume(i1 %i.bi), !dbg !23089
  %i.bj = add nsw i64 %i.q, -1, !dbg !23090       ; 2 uses
  %i.bk = icmp ugt i64 %i.bj, 32767, !dbg !23091
  %i.bl = trunc nuw nsw i64 %i.bj to i16, !dbg !23091 ; 2 uses
  br i1 %i.bk, label %bb.n, label %bb.k, !dbg !23092

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23093
  store i16 %.val3.i.i, ptr %i.bm, align 8, !dbg !23093
  store i64 18, ptr %0, align 8, !dbg !23093
  br label %bb.j, !dbg !23094

bb.j:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i
  ret void, !dbg !23095

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23017), !dbg !23096
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i, !dbg !23097 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !dbg !23098, !noalias !23017, !noundef !666
  %i.bp = and i8 %i.bo, 1, !dbg !23099
  %i.bq = zext nneg i8 %i.bp to i64, !dbg !23099
  %i.br = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !23100
  %i.bs = and i64 %i.br, %.val7.i, !dbg !23101
  store i8 %i.k, ptr %i.bn, align 1, !dbg !23102, !noalias !23017
  %i.bt = getelementptr i8, ptr %.val.i, i64 %i.bs, !dbg !23103
  %i.bu = getelementptr i8, ptr %i.bt, i64 16, !dbg !23103
  store i8 %i.k, ptr %i.bu, align 1, !dbg !23104, !noalias !23017
  %i.bv = load <2 x i64>, ptr %i.e, align 8, !dbg !23105, !alias.scope !23017
  %i.bw = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bq, i64 0, !dbg !23105
  %i.bx = sub <2 x i64> %i.bv, %i.bw, !dbg !23105
  store <2 x i64> %i.bx, ptr %i.e, align 8, !dbg !23105, !alias.scope !23017
  %i.by = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !23106
  %i.bz = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.by, !dbg !23107 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -16, !dbg !23108
  store i64 %i.c, ptr %i.ca, align 8, !dbg !23109, !noalias !23017
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 -8, !dbg !23109
  store i16 %i.bl, ptr %i.cb, align 8, !dbg !23109, !noalias !23017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23019
  call void @_RNvXs7_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7mutableINtB5_18MutableBinaryArrayxEINtB9_7TryPushINtNtCscgRAwXFJnXP_4core6option6OptionRShEE8try_pushCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !23110
  %i.cc = load i64, ptr %i.a, align 8, !dbg !23111, !range !814, !noundef !666
  %.not = icmp eq i64 %i.cc, 18, !dbg !23111
  br i1 %.not, label %bb.m, label %bb.l, !dbg !23112

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !23113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23114
  br label %bb.j, !dbg !23094

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23114
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23093
  store i16 %i.bl, ptr %i.cd, align 8, !dbg !23093
  store i64 18, ptr %0, align 8, !dbg !23093
  br label %bb.j, !dbg !23094

bb.n:                                             ; preds = %bb.h
  store i64 2, ptr %0, align 8, !dbg !23115
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23115
  store i16 0, ptr %.sroa.235.0..sroa_idx, align 8, !dbg !23115
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10, !dbg !23115
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(62) getelementptr inbounds nuw (i8, ptr @1, i64 10), i64 62, i1 false), !dbg !23115
  br label %bb.j, !dbg !23094
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapsINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB27_NCINvXs3_NtB5_7mutableINtB2F_22MutableDictionaryArraysB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2r_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2r_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericB27_EENtNtB4I_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23116 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !23327
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRShECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !23328 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !23329 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !23330 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !23330, !alias.scope !23301, !noalias !23302, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !23331
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTysEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapsINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraysB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !23332, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTysEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMapsINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3m_NCINvXs3_NtB1i_7mutableINtB3U_22MutableDictionaryArraysB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3G_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3G_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericB3m_EENtNtB5Z_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !23333, !noalias !23302 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTysEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapsINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraysB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !23334

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTysEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapsINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraysB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !23335, !alias.scope !23303, !noalias !23302, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !23335 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !23335, !alias.scope !23303, !noalias !23302, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !23336
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !23337 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !23338

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTysEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapsINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraysB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTysEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapsINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraysB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.as, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTysEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapsINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraysB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !23339
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTysEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapsINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraysB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !23339
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTysEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapsINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraysB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ar, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !23340 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !23341
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !23342, !noalias !23304 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !23343
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !23344 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !23345
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !23346

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ah, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !23347
  %i.s = zext nneg i16 %i.r to i64, !dbg !23348
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !23349
  %i.u = and i64 %i.t, %.val7.i, !dbg !23349
  %i.v = load ptr, ptr %i.d, align 8, !dbg !23350, !alias.scope !23303, !noalias !23305, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !23351         ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.w, !dbg !23352
  %i.y = getelementptr i8, ptr %i.x, i64 -8, !dbg !23353
  %.val3.i.i = load i16, ptr %i.y, align 8, !dbg !23353, !noalias !23306, !noundef !666 ; 2 uses
  %i.z = zext nneg i16 %.val3.i.i to i64, !dbg !23354
  %i.aa = icmp sgt i16 %.val3.i.i, -1, !dbg !23355
  tail call void @llvm.assume(i1 %i.aa), !dbg !23355
  %i.ab = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %i.z), !dbg !23356, !noalias !23306 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 1, !dbg !23356
  %i.ad = icmp eq i64 %i.ac, %3, !dbg !23357
  br i1 %i.ad, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !23357, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ae = extractvalue { ptr, i64 } %i.ab, 0, !dbg !23356
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ae, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !23358, !alias.scope !23307, !noalias !23306
  %i.af = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !23358
  br i1 %i.af, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !23359, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !23360
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !23361, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.ag = add i16 %.sroa.05.029.i.i, -1, !dbg !23362
  %i.ah = and i16 %i.ag, %.sroa.05.029.i.i, !dbg !23363 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ah, 0, !dbg !23345
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !23346

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !23364
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !23364 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aj, 0, !dbg !23365
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !23366, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aj, i1 true), !dbg !23367
  %i.al = zext nneg i16 %i.ak to i64, !dbg !23368
  %i.am = add i64 %.sroa.0.017.i.i, %i.al, !dbg !23369
  %i.an = and i64 %i.am, %.val7.i, !dbg !23369
  br label %.thread.i.i, !dbg !23370

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.an, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !23371
  %i.ap = bitcast <16 x i1> %i.ao to i16, !dbg !23372
  %i.aq = icmp eq i16 %i.ap, 0, !dbg !23373
  br i1 %i.aq, label %bb.e, label %bb.f, !dbg !23373, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ar = add i64 %i.n, 16, !dbg !23374           ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.0.017.i.i, !dbg !23375
  br label %bb.c, !dbg !23338

bb.f:                                             ; preds = %.thread.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !23376
  %i.au = load i8, ptr %i.at, align 1, !dbg !23377, !noalias !23308, !noundef !666
  %i.av = icmp sgt i8 %i.au, -1, !dbg !23378
  br i1 %i.av, label %bb.g, label %bb.h, !dbg !23378, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !23379, !noalias !23308
  %i.aw = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !23380
  %i.ax = bitcast <16 x i1> %i.aw to i16, !dbg !23380 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.ax, 0, !dbg !23381
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ax, i1 true), !dbg !23382
  %i.az = zext nneg i16 %i.ay to i64, !dbg !23382
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !23383
  br label %bb.h, !dbg !23384

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.az, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23385 ; 3 uses
  %.val41 = load i64, ptr %i.ba, align 8, !dbg !23385, !noundef !666 ; 3 uses
  %i.bb = icmp ult i64 %.val41, 576460752303423488, !dbg !23386
  tail call void @llvm.assume(i1 %i.bb), !dbg !23387
  %i.bc = icmp samesign ugt i64 %.val41, 32767, !dbg !23388
  %i.bd = trunc nuw nsw i64 %.val41 to i16, !dbg !23388 ; 2 uses
  br i1 %i.bc, label %bb.r, label %bb.k, !dbg !23389

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.be = load ptr, ptr %i.d, align 8, !dbg !23390, !alias.scope !23303, !noalias !23302, !nonnull !666, !noundef !666
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.w, !dbg !23391
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8, !dbg !23392
  %i.bh = load i16, ptr %i.bg, align 8, !dbg !23392, !noundef !666
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23393
  store i16 %i.bh, ptr %i.bi, align 8, !dbg !23393
  store i64 18, ptr %0, align 8, !dbg !23393
  br label %bb.j, !dbg !23394

bb.j:                                             ; preds = %bb.r, %bb.q, %bb.i
  ret void, !dbg !23395

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23310), !dbg !23396
  %i.bj = load ptr, ptr %i.d, align 8, !dbg !23397, !alias.scope !23310, !nonnull !666, !noundef !666 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.3.0.i.ph.i, !dbg !23398 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !23399, !noalias !23310, !noundef !666
  %i.bm = and i8 %i.bl, 1, !dbg !23400
  %i.bn = zext nneg i8 %i.bm to i64, !dbg !23400
  %i.bo = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !23401
  %i.bp = load i64, ptr %i.i, align 8, !dbg !23402, !alias.scope !23310, !noundef !666
  %i.bq = and i64 %i.bp, %i.bo, !dbg !23403
  store i8 %i.k, ptr %i.bk, align 1, !dbg !23404, !noalias !23310
  %i.br = getelementptr i8, ptr %i.bj, i64 %i.bq, !dbg !23405
  %i.bs = getelementptr i8, ptr %i.br, i64 16, !dbg !23405
  store i8 %i.k, ptr %i.bs, align 1, !dbg !23406, !noalias !23310
  %i.bt = load <2 x i64>, ptr %i.e, align 8, !dbg !23407, !alias.scope !23310
  %i.bu = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bn, i64 0, !dbg !23407
  %i.bv = sub <2 x i64> %i.bt, %i.bu, !dbg !23407
  store <2 x i64> %i.bv, ptr %i.e, align 8, !dbg !23407, !alias.scope !23310
  %i.bw = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !23408
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bj, i64 %i.bw, !dbg !23409 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -16, !dbg !23410
  store i64 %i.c, ptr %i.by, align 8, !dbg !23411, !noalias !23310
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -8, !dbg !23411
  store i16 %i.bd, ptr %i.bz, align 8, !dbg !23411, !noalias !23310
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23312), !dbg !23412
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23313), !dbg !23413, !noalias !23314
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !23414 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !23414, !range !795, !alias.scope !23315, !noalias !23316, !noundef !666 ; 2 uses
  %.not.i.i44 = icmp eq i64 %i.cb, -9223372036854775808, !dbg !23414
  br i1 %.not.i.i44, label %bb.o, label %bb.l, !dbg !23415

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !23416 ; 4 uses
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !23416, !alias.scope !23317, !noalias !23316, !noundef !666 ; 2 uses
  %i.ce = and i64 %i.cd, 7, !dbg !23417
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !23417
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !23418, !alias.scope !23317, !noalias !23316 ; 4 uses
  br i1 %i.cf, label %bb.m, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !23416

bb.m:                                             ; preds = %bb.l
  %i.ci = icmp eq i64 %i.ch, %i.cb, !dbg !23419
  br i1 %i.ci, label %bb.n, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !23419

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ca), !dbg !23420, !noalias !23316
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !23420

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.n, %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !23421
  %i.ck = load ptr, ptr %i.cj, align 8, !dbg !23421, !alias.scope !23318, !noalias !23316, !nonnull !666, !noundef !666
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ch, !dbg !23422
  store i8 0, ptr %i.cl, align 1, !dbg !23423, !noalias !23316
  %i.cm = add i64 %i.ch, 1, !dbg !23424           ; 2 uses
  store i64 %i.cm, ptr %i.cg, align 8, !dbg !23424, !alias.scope !23318, !noalias !23316
  %.pre.i.i = load i64, ptr %i.cc, align 8, !dbg !23425, !alias.scope !23317, !noalias !23316
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !23426

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.l
  %i.cn = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cd, %bb.l ], !dbg !23425
  %i.co = phi i64 [ %i.cm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.ch, %bb.l ], !dbg !23427 ; 2 uses
  %.not.i.i.i45 = icmp ne i64 %i.co, 0, !dbg !23428
  tail call void @llvm.assume(i1 %.not.i.i.i45), !dbg !23428, !noalias !23314
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !23429
  %i.cq = load ptr, ptr %i.cp, align 8, !dbg !23429, !alias.scope !23317, !noalias !23316, !nonnull !666, !noundef !666
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.co, !dbg !23430
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1, !dbg !23430 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ], !dbg !23431, !noalias !23314
  %i.ct = load i8, ptr %i.cs, align 1, !dbg !23432, !noalias !23316, !noundef !666
  %i.cu = trunc i64 %i.cn to i8, !dbg !23433
  %i.cv = and i8 %i.cu, 7, !dbg !23433
  %i.cw = shl nuw i8 1, %i.cv, !dbg !23433
  %i.cx = or i8 %i.ct, %i.cw, !dbg !23434
  store i8 %i.cx, ptr %i.cs, align 1, !dbg !23435, !noalias !23316
  %i.cy = load i64, ptr %i.cc, align 8, !dbg !23436, !alias.scope !23317, !noalias !23316, !noundef !666
  %i.cz = add i64 %i.cy, 1, !dbg !23436
  store i64 %i.cz, ptr %i.cc, align 8, !dbg !23436, !alias.scope !23317, !noalias !23316
  br label %bb.o, !dbg !23437

bb.o:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23438, !noalias !23319
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !23438 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !dbg !23438, !alias.scope !23320, !noalias !23321, !noundef !666
  %i.dc = add i64 %i.db, %3, !dbg !23438
  store i64 %i.dc, ptr %i.da, align 8, !dbg !23438, !alias.scope !23320, !noalias !23321
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3), !dbg !23439, !noalias !23314
  %i.dd = load i64, ptr %i.ba, align 8, !dbg !23440, !alias.scope !23322, !noalias !23323, !noundef !666 ; 3 uses
  %i.de = load i64, ptr %1, align 8, !dbg !23441, !range !790, !alias.scope !23322, !noalias !23323, !noundef !666
  %i.df = icmp eq i64 %i.dd, %i.de, !dbg !23442
  br i1 %i.df, label %bb.p, label %bb.q, !dbg !23442

bb.p:                                             ; preds = %bb.o
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !23443, !noalias !23324
  br label %bb.q, !dbg !23443

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23444
  %i.dh = load ptr, ptr %i.dg, align 8, !dbg !23444, !alias.scope !23322, !noalias !23323, !nonnull !666, !noundef !666
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dd, !dbg !23445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.di, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !23446, !noalias !23314
  %i.dj = add i64 %i.dd, 1, !dbg !23447
  store i64 %i.dj, ptr %i.ba, align 8, !dbg !23447, !alias.scope !23322, !noalias !23323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23448, !noalias !23319
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23393
  store i16 %i.bd, ptr %i.dk, align 8, !dbg !23393
  store i64 18, ptr %0, align 8, !dbg !23393
  br label %bb.j, !dbg !23394

bb.r:                                             ; preds = %bb.h
  store i64 2, ptr %0, align 8, !dbg !23449
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23449
  store i16 0, ptr %.sroa.235.0..sroa_idx, align 8, !dbg !23449
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10, !dbg !23449
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(62) getelementptr inbounds nuw (i8, ptr @1, i64 10), i64 62, i1 false), !dbg !23449
  br label %bb.j, !dbg !23394
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapsINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArraysB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2q_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2q_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericeEENtNtB4E_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23450 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !23663
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !23664 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !23665 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !23666 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !23666, !alias.scope !23637, !noalias !23638, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !23667
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTysEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapsINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraysB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !23668, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTysEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMapsINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1i_7mutableINtB3Q_22MutableDictionaryArraysB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3F_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3F_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericeEENtNtB5V_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !23669, !noalias !23638 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTysEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapsINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraysB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !23670

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTysEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapsINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraysB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !23671, !alias.scope !23639, !noalias !23638, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !23671 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !23671, !alias.scope !23639, !noalias !23638, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !23672
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !23673 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !23674

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTysEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapsINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraysB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTysEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapsINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraysB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.as, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTysEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapsINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraysB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !23675
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTysEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapsINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraysB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !23675
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTysEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapsINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraysB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ar, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !23676 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !23677
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !23678, !noalias !23640 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !23679
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !23680 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !23681
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !23682

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ah, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !23683
  %i.s = zext nneg i16 %i.r to i64, !dbg !23684
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !23685
  %i.u = and i64 %i.t, %.val7.i, !dbg !23685
  %i.v = load ptr, ptr %i.d, align 8, !dbg !23686, !alias.scope !23639, !noalias !23641, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !23687         ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.w, !dbg !23688
  %i.y = getelementptr i8, ptr %i.x, i64 -8, !dbg !23689
  %.val3.i.i = load i16, ptr %i.y, align 8, !dbg !23689, !noalias !23642, !noundef !666 ; 2 uses
  %i.z = zext nneg i16 %.val3.i.i to i64, !dbg !23690
  %i.aa = icmp sgt i16 %.val3.i.i, -1, !dbg !23691
  tail call void @llvm.assume(i1 %i.aa), !dbg !23691
  %i.ab = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %i.z), !dbg !23692, !noalias !23642 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 1, !dbg !23692
  %i.ad = icmp eq i64 %i.ac, %3, !dbg !23693
  br i1 %i.ad, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !23693, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ae = extractvalue { ptr, i64 } %i.ab, 0, !dbg !23692
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ae, ptr nonnull readonly %2, i64 %3), !dbg !23694, !alias.scope !23643, !noalias !23642
  %i.af = icmp eq i32 %bcmp.i.i.i.i, 0, !dbg !23694
  br i1 %i.af, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !23695, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !23696
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !23697, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.ag = add i16 %.sroa.05.029.i.i, -1, !dbg !23698
  %i.ah = and i16 %i.ag, %.sroa.05.029.i.i, !dbg !23699 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ah, 0, !dbg !23681
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !23682

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !23700
  %i.aj = bitcast <16 x i1> %i.ai to i16, !dbg !23700 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aj, 0, !dbg !23701
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !23702, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aj, i1 true), !dbg !23703
  %i.al = zext nneg i16 %i.ak to i64, !dbg !23704
  %i.am = add i64 %.sroa.0.017.i.i, %i.al, !dbg !23705
  %i.an = and i64 %i.am, %.val7.i, !dbg !23705
  br label %.thread.i.i, !dbg !23706

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.an, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !23707
  %i.ap = bitcast <16 x i1> %i.ao to i16, !dbg !23708
  %i.aq = icmp eq i16 %i.ap, 0, !dbg !23709
  br i1 %i.aq, label %bb.e, label %bb.f, !dbg !23709, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ar = add i64 %i.n, 16, !dbg !23710           ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.0.017.i.i, !dbg !23711
  br label %bb.c, !dbg !23674

bb.f:                                             ; preds = %.thread.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !23712
  %i.au = load i8, ptr %i.at, align 1, !dbg !23713, !noalias !23644, !noundef !666
  %i.av = icmp sgt i8 %i.au, -1, !dbg !23714
  br i1 %i.av, label %bb.g, label %bb.h, !dbg !23714, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !23715, !noalias !23644
  %i.aw = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !23716
  %i.ax = bitcast <16 x i1> %i.aw to i16, !dbg !23716 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.ax, 0, !dbg !23717
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ax, i1 true), !dbg !23718
  %i.az = zext nneg i16 %i.ay to i64, !dbg !23718
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !23719
  br label %bb.h, !dbg !23720

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.az, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23721 ; 3 uses
  %.val41 = load i64, ptr %i.ba, align 8, !dbg !23721, !noundef !666 ; 3 uses
  %i.bb = icmp ult i64 %.val41, 576460752303423488, !dbg !23722
  tail call void @llvm.assume(i1 %i.bb), !dbg !23723
  %i.bc = icmp samesign ugt i64 %.val41, 32767, !dbg !23724
  %i.bd = trunc nuw nsw i64 %.val41 to i16, !dbg !23724 ; 2 uses
  br i1 %i.bc, label %bb.r, label %bb.k, !dbg !23725

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTysEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapsINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraysB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.be = load ptr, ptr %i.d, align 8, !dbg !23726, !alias.scope !23639, !noalias !23638, !nonnull !666, !noundef !666
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.w, !dbg !23727
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8, !dbg !23728
  %i.bh = load i16, ptr %i.bg, align 8, !dbg !23728, !noundef !666
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23729
  store i16 %i.bh, ptr %i.bi, align 8, !dbg !23729
  store i64 18, ptr %0, align 8, !dbg !23729
  br label %bb.j, !dbg !23730

bb.j:                                             ; preds = %bb.r, %bb.q, %bb.i
  ret void, !dbg !23731

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23646), !dbg !23732
  %i.bj = load ptr, ptr %i.d, align 8, !dbg !23733, !alias.scope !23646, !nonnull !666, !noundef !666 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.3.0.i.ph.i, !dbg !23734 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !23735, !noalias !23646, !noundef !666
  %i.bm = and i8 %i.bl, 1, !dbg !23736
  %i.bn = zext nneg i8 %i.bm to i64, !dbg !23736
  %i.bo = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !23737
  %i.bp = load i64, ptr %i.i, align 8, !dbg !23738, !alias.scope !23646, !noundef !666
  %i.bq = and i64 %i.bp, %i.bo, !dbg !23739
  store i8 %i.k, ptr %i.bk, align 1, !dbg !23740, !noalias !23646
  %i.br = getelementptr i8, ptr %i.bj, i64 %i.bq, !dbg !23741
  %i.bs = getelementptr i8, ptr %i.br, i64 16, !dbg !23741
  store i8 %i.k, ptr %i.bs, align 1, !dbg !23742, !noalias !23646
  %i.bt = load <2 x i64>, ptr %i.e, align 8, !dbg !23743, !alias.scope !23646
  %i.bu = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bn, i64 0, !dbg !23743
  %i.bv = sub <2 x i64> %i.bt, %i.bu, !dbg !23743
  store <2 x i64> %i.bv, ptr %i.e, align 8, !dbg !23743, !alias.scope !23646
  %i.bw = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !23744
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bj, i64 %i.bw, !dbg !23745 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -16, !dbg !23746
  store i64 %i.c, ptr %i.by, align 8, !dbg !23747, !noalias !23646
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -8, !dbg !23747
  store i16 %i.bd, ptr %i.bz, align 8, !dbg !23747, !noalias !23646
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23648), !dbg !23748
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23649), !dbg !23749, !noalias !23650
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !23750 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !23750, !range !795, !alias.scope !23651, !noalias !23652, !noundef !666 ; 2 uses
  %.not.i.i44 = icmp eq i64 %i.cb, -9223372036854775808, !dbg !23750
  br i1 %.not.i.i44, label %bb.o, label %bb.l, !dbg !23751

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !23752 ; 4 uses
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !23752, !alias.scope !23653, !noalias !23652, !noundef !666 ; 2 uses
  %i.ce = and i64 %i.cd, 7, !dbg !23753
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !23753
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !23754, !alias.scope !23653, !noalias !23652 ; 4 uses
  br i1 %i.cf, label %bb.m, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !23752

bb.m:                                             ; preds = %bb.l
  %i.ci = icmp eq i64 %i.ch, %i.cb, !dbg !23755
  br i1 %i.ci, label %bb.n, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !23755

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ca), !dbg !23756, !noalias !23652
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !23756

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.n, %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !23757
  %i.ck = load ptr, ptr %i.cj, align 8, !dbg !23757, !alias.scope !23654, !noalias !23652, !nonnull !666, !noundef !666
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ch, !dbg !23758
  store i8 0, ptr %i.cl, align 1, !dbg !23759, !noalias !23652
  %i.cm = add i64 %i.ch, 1, !dbg !23760           ; 2 uses
  store i64 %i.cm, ptr %i.cg, align 8, !dbg !23760, !alias.scope !23654, !noalias !23652
  %.pre.i.i = load i64, ptr %i.cc, align 8, !dbg !23761, !alias.scope !23653, !noalias !23652
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !23762

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.l
  %i.cn = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cd, %bb.l ], !dbg !23761
  %i.co = phi i64 [ %i.cm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.ch, %bb.l ], !dbg !23763 ; 2 uses
  %.not.i.i.i45 = icmp ne i64 %i.co, 0, !dbg !23764
  tail call void @llvm.assume(i1 %.not.i.i.i45), !dbg !23764, !noalias !23650
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !23765
  %i.cq = load ptr, ptr %i.cp, align 8, !dbg !23765, !alias.scope !23653, !noalias !23652, !nonnull !666, !noundef !666
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.co, !dbg !23766
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1, !dbg !23766 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ], !dbg !23767, !noalias !23650
  %i.ct = load i8, ptr %i.cs, align 1, !dbg !23768, !noalias !23652, !noundef !666
  %i.cu = trunc i64 %i.cn to i8, !dbg !23769
  %i.cv = and i8 %i.cu, 7, !dbg !23769
  %i.cw = shl nuw i8 1, %i.cv, !dbg !23769
  %i.cx = or i8 %i.ct, %i.cw, !dbg !23770
  store i8 %i.cx, ptr %i.cs, align 1, !dbg !23771, !noalias !23652
  %i.cy = load i64, ptr %i.cc, align 8, !dbg !23772, !alias.scope !23653, !noalias !23652, !noundef !666
  %i.cz = add i64 %i.cy, 1, !dbg !23772
  store i64 %i.cz, ptr %i.cc, align 8, !dbg !23772, !alias.scope !23653, !noalias !23652
  br label %bb.o, !dbg !23773

bb.o:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23774, !noalias !23655
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !23774 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !dbg !23774, !alias.scope !23656, !noalias !23657, !noundef !666
  %i.dc = add i64 %i.db, %3, !dbg !23774
  store i64 %i.dc, ptr %i.da, align 8, !dbg !23774, !alias.scope !23656, !noalias !23657
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !23775, !noalias !23650
  %i.dd = load i64, ptr %i.ba, align 8, !dbg !23776, !alias.scope !23658, !noalias !23659, !noundef !666 ; 3 uses
  %i.de = load i64, ptr %1, align 8, !dbg !23777, !range !790, !alias.scope !23658, !noalias !23659, !noundef !666
  %i.df = icmp eq i64 %i.dd, %i.de, !dbg !23778
  br i1 %i.df, label %bb.p, label %bb.q, !dbg !23778

bb.p:                                             ; preds = %bb.o
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !23779, !noalias !23660
  br label %bb.q, !dbg !23779

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23780
  %i.dh = load ptr, ptr %i.dg, align 8, !dbg !23780, !alias.scope !23658, !noalias !23659, !nonnull !666, !noundef !666
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dd, !dbg !23781
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.di, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !23782, !noalias !23650
  %i.dj = add i64 %i.dd, 1, !dbg !23783
  store i64 %i.dj, ptr %i.ba, align 8, !dbg !23783, !alias.scope !23658, !noalias !23659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23784, !noalias !23655
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23729
  store i16 %i.bd, ptr %i.dk, align 8, !dbg !23729
  store i64 18, ptr %0, align 8, !dbg !23729
  br label %bb.j, !dbg !23730

bb.r:                                             ; preds = %bb.h
  store i64 2, ptr %0, align 8, !dbg !23785
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23785
  store i16 0, ptr %.sroa.235.0..sroa_idx, align 8, !dbg !23785
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10, !dbg !23785
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(62) getelementptr inbounds nuw (i8, ptr @1, i64 10), i64 62, i1 false), !dbg !23785
  br label %bb.j, !dbg !23730
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapsINtNtNtB7_9primitive7mutable21MutablePrimitiveArrayaEE14try_push_validaNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArraysB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionaEE10try_extendINtNtNtNtB3K_4iter8adapters3map3MapINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB3K_5slice4iter4IteraENtNtB5a_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to23primitive_to_dictionaryasE0EE0EB73_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(128) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23786 {
bb.a:
end_hunk_6
begin_hunk_7_@_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMaptINtNtNtB7_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB5_7mutableINtB2x_22MutableDictionaryArraytB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2l_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2l_INtNtB7_8iterator15ArrayValuesIterINtB1o_11BinaryArrayxEENtNtB4A_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute:bb.a
  %i.aa = and i64 %i.z, %.val7.i, !dbg !26692
  %i.ab = sub nsw i64 0, %i.aa, !dbg !26693
  %i.ac = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.ab, !dbg !26694
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8, !dbg !26695
  %.val3.i.i = load i16, ptr %i.ad, align 8, !dbg !26695, !noalias !26660, !noundef !666 ; 2 uses
  %i.ae = zext i16 %.val3.i.i to i64, !dbg !26696 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ae, !dbg !26697
  %.val1.i.i.i.i = load i64, ptr %i.af, align 8, !dbg !26698, !noalias !26661, !noundef !666 ; 2 uses
  %i.ag = add nuw nsw i64 %i.ae, 1, !dbg !26699   ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.q, !dbg !26700
  tail call void @llvm.assume(i1 %i.ah), !dbg !26701
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ag, !dbg !26702
  %.val.i.i.i.i = load i64, ptr %i.ai, align 8, !dbg !26703, !noalias !26661, !noundef !666
  %i.aj = sub nuw i64 %.val.i.i.i.i, %.val1.i.i.i.i, !dbg !26704
  %i.ak = icmp eq i64 %i.aj, %3, !dbg !26705
  br i1 %i.ak, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !26705, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 %.val1.i.i.i.i, !dbg !26706
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.al, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !26707, !alias.scope !26662, !noalias !26660
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !26707
  br i1 %i.am, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !26708, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !26709
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !26710, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.an = add i16 %.sroa.05.029.i.i, -1, !dbg !26711
  %i.ao = and i16 %i.an, %.sroa.05.029.i.i, !dbg !26712 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ao, 0, !dbg !26688
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !26689

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ap = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !26713
  %i.aq = bitcast <16 x i1> %i.ap to i16, !dbg !26713 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aq, 0, !dbg !26714
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !26715, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true), !dbg !26716
  %i.as = zext nneg i16 %i.ar to i64, !dbg !26717
  %i.at = add i64 %.sroa.0.017.i.i, %i.as, !dbg !26718
  %i.au = and i64 %i.at, %.val7.i, !dbg !26718
  br label %.thread.i.i, !dbg !26719

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.au, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.av = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !26720
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !26721
  %i.ax = icmp eq i16 %i.aw, 0, !dbg !26722
  br i1 %i.ax, label %bb.e, label %bb.f, !dbg !26722, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ay = add i64 %i.t, 16, !dbg !26723           ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.0.017.i.i, !dbg !26724
  br label %bb.c, !dbg !26681

bb.f:                                             ; preds = %.thread.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !26725
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !26726, !noalias !26657, !noundef !666
  %i.bc = icmp sgt i8 %i.bb, -1, !dbg !26727
  br i1 %i.bc, label %bb.g, label %bb.h, !dbg !26727, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !26728, !noalias !26657
  %i.bd = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !26729
  %i.be = bitcast <16 x i1> %i.bd to i16, !dbg !26729 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.be, 0, !dbg !26730
  %i.bf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.be, i1 true), !dbg !26731
  %i.bg = zext nneg i16 %i.bf to i64, !dbg !26731
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !26732
  br label %bb.h, !dbg !26733

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.bg, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.bh = icmp ult i64 %i.q, 1152921504606846976, !dbg !26734
  tail call void @llvm.assume(i1 %i.bh), !dbg !26735
  %i.bi = add nsw i64 %i.q, -1, !dbg !26736       ; 2 uses
  %i.bj = icmp ugt i64 %i.bi, 65535, !dbg !26737
  %i.bk = trunc nuw i64 %i.bi to i16, !dbg !26737 ; 2 uses
  br i1 %i.bj, label %bb.n, label %bb.k, !dbg !26738

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26739
  store i16 %.val3.i.i, ptr %i.bl, align 8, !dbg !26739
  store i64 18, ptr %0, align 8, !dbg !26739
  br label %bb.j, !dbg !26740

bb.j:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i
  ret void, !dbg !26741

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26664), !dbg !26742
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i, !dbg !26743 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !dbg !26744, !noalias !26664, !noundef !666
  %i.bo = and i8 %i.bn, 1, !dbg !26745
  %i.bp = zext nneg i8 %i.bo to i64, !dbg !26745
  %i.bq = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !26746
  %i.br = and i64 %i.bq, %.val7.i, !dbg !26747
  store i8 %i.k, ptr %i.bm, align 1, !dbg !26748, !noalias !26664
  %i.bs = getelementptr i8, ptr %.val.i, i64 %i.br, !dbg !26749
  %i.bt = getelementptr i8, ptr %i.bs, i64 16, !dbg !26749
  store i8 %i.k, ptr %i.bt, align 1, !dbg !26750, !noalias !26664
  %i.bu = load <2 x i64>, ptr %i.e, align 8, !dbg !26751, !alias.scope !26664
  %i.bv = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bp, i64 0, !dbg !26751
  %i.bw = sub <2 x i64> %i.bu, %i.bv, !dbg !26751
  store <2 x i64> %i.bw, ptr %i.e, align 8, !dbg !26751, !alias.scope !26664
  %i.bx = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !26752
  %i.by = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.bx, !dbg !26753 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -16, !dbg !26754
  store i64 %i.c, ptr %i.bz, align 8, !dbg !26755, !noalias !26664
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -8, !dbg !26755
  store i16 %i.bk, ptr %i.ca, align 8, !dbg !26755, !noalias !26664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26666
  call void @_RNvXs7_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7mutableINtB5_18MutableBinaryArrayxEINtB9_7TryPushINtNtCscgRAwXFJnXP_4core6option6OptionRShEE8try_pushCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !26756
  %i.cb = load i64, ptr %i.a, align 8, !dbg !26757, !range !814, !noundef !666
  %.not = icmp eq i64 %i.cb, 18, !dbg !26757
  br i1 %.not, label %bb.m, label %bb.l, !dbg !26758

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !26759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26760
  br label %bb.j, !dbg !26740

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26760
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26739
  store i16 %i.bk, ptr %i.cc, align 8, !dbg !26739
  store i64 18, ptr %0, align 8, !dbg !26739
  br label %bb.j, !dbg !26740

bb.n:                                             ; preds = %bb.h
  store i64 2, ptr %0, align 8, !dbg !26761
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26761
  store i16 0, ptr %.sroa.235.0..sroa_idx, align 8, !dbg !26761
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10, !dbg !26761
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(62) getelementptr inbounds nuw (i8, ptr @1, i64 10), i64 62, i1 false), !dbg !26761
  br label %bb.j, !dbg !26740
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMaptINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB27_NCINvXs3_NtB5_7mutableINtB2F_22MutableDictionaryArraytB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2r_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2r_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericB27_EENtNtB4I_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !26762 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !26975
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRShECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !26976 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !26977 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !26978 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !26978, !alias.scope !26949, !noalias !26950, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !26979
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTytEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaptINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraytB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !26980, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTytEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMaptINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3m_NCINvXs3_NtB1i_7mutableINtB3U_22MutableDictionaryArraytB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3G_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3G_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericB3m_EENtNtB5Z_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !26981, !noalias !26950 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTytEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaptINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraytB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !26982

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTytEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaptINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraytB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !26983, !alias.scope !26951, !noalias !26950, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !26983 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !26983, !alias.scope !26951, !noalias !26950, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !26984
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !26985 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !26986

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTytEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaptINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraytB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTytEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaptINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraytB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ar, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTytEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaptINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraytB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !26987
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTytEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaptINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraytB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !26987
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTytEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaptINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArraytB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.aq, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !26988 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !26989
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !26990, !noalias !26952 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !26991
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !26992 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !26993
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !26994

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ag, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !26995
  %i.s = zext nneg i16 %i.r to i64, !dbg !26996
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !26997
  %i.u = and i64 %i.t, %.val7.i, !dbg !26997
  %i.v = load ptr, ptr %i.d, align 8, !dbg !26998, !alias.scope !26951, !noalias !26953, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !26999         ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.w, !dbg !27000
  %i.y = getelementptr i8, ptr %i.x, i64 -8, !dbg !27001
  %.val3.i.i = load i16, ptr %i.y, align 8, !dbg !27001, !noalias !26954, !noundef !666
  %i.z = zext i16 %.val3.i.i to i64, !dbg !27002
  %i.aa = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %i.z), !dbg !27003, !noalias !26954 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 1, !dbg !27003
  %i.ac = icmp eq i64 %i.ab, %3, !dbg !27004
  br i1 %i.ac, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !27004, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ad = extractvalue { ptr, i64 } %i.aa, 0, !dbg !27003
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ad, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !27005, !alias.scope !26955, !noalias !26954
  %i.ae = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !27005
  br i1 %i.ae, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !27006, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !27007
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !27008, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.af = add i16 %.sroa.05.029.i.i, -1, !dbg !27009
  %i.ag = and i16 %i.af, %.sroa.05.029.i.i, !dbg !27010 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ag, 0, !dbg !26993
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !26994

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ah = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !27011
  %i.ai = bitcast <16 x i1> %i.ah to i16, !dbg !27011 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ai, 0, !dbg !27012
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !27013, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ai, i1 true), !dbg !27014
  %i.ak = zext nneg i16 %i.aj to i64, !dbg !27015
  %i.al = add i64 %.sroa.0.017.i.i, %i.ak, !dbg !27016
  %i.am = and i64 %i.al, %.val7.i, !dbg !27016
  br label %.thread.i.i, !dbg !27017

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.am, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !27018
  %i.ao = bitcast <16 x i1> %i.an to i16, !dbg !27019
  %i.ap = icmp eq i16 %i.ao, 0, !dbg !27020
  br i1 %i.ap, label %bb.e, label %bb.f, !dbg !27020, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.aq = add i64 %i.n, 16, !dbg !27021           ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.0.017.i.i, !dbg !27022
  br label %bb.c, !dbg !26986

bb.f:                                             ; preds = %.thread.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !27023
  %i.at = load i8, ptr %i.as, align 1, !dbg !27024, !noalias !26956, !noundef !666
  %i.au = icmp sgt i8 %i.at, -1, !dbg !27025
  br i1 %i.au, label %bb.g, label %bb.h, !dbg !27025, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !27026, !noalias !26956
  %i.av = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !27027
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !27027 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.aw, 0, !dbg !27028
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true), !dbg !27029
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !27029
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !27030
  br label %bb.h, !dbg !27031

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ay, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !27032 ; 3 uses
  %.val41 = load i64, ptr %i.az, align 8, !dbg !27032, !noundef !666 ; 3 uses
  %i.ba = icmp ult i64 %.val41, 576460752303423488, !dbg !27033
  tail call void @llvm.assume(i1 %i.ba), !dbg !27034
  %i.bb = icmp samesign ugt i64 %.val41, 65535, !dbg !27035
  %i.bc = trunc nuw i64 %.val41 to i16, !dbg !27035 ; 2 uses
  br i1 %i.bb, label %bb.r, label %bb.k, !dbg !27036

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.bd = load ptr, ptr %i.d, align 8, !dbg !27037, !alias.scope !26951, !noalias !26950, !nonnull !666, !noundef !666
  %i.be = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.w, !dbg !27038
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8, !dbg !27039
  %i.bg = load i16, ptr %i.bf, align 8, !dbg !27039, !noundef !666
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27040
  store i16 %i.bg, ptr %i.bh, align 8, !dbg !27040
  store i64 18, ptr %0, align 8, !dbg !27040
  br label %bb.j, !dbg !27041

bb.j:                                             ; preds = %bb.r, %bb.q, %bb.i
  ret void, !dbg !27042

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26958), !dbg !27043
  %i.bi = load ptr, ptr %i.d, align 8, !dbg !27044, !alias.scope !26958, !nonnull !666, !noundef !666 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.3.0.i.ph.i, !dbg !27045 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !27046, !noalias !26958, !noundef !666
  %i.bl = and i8 %i.bk, 1, !dbg !27047
  %i.bm = zext nneg i8 %i.bl to i64, !dbg !27047
  %i.bn = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !27048
  %i.bo = load i64, ptr %i.i, align 8, !dbg !27049, !alias.scope !26958, !noundef !666
  %i.bp = and i64 %i.bo, %i.bn, !dbg !27050
  store i8 %i.k, ptr %i.bj, align 1, !dbg !27051, !noalias !26958
  %i.bq = getelementptr i8, ptr %i.bi, i64 %i.bp, !dbg !27052
  %i.br = getelementptr i8, ptr %i.bq, i64 16, !dbg !27052
  store i8 %i.k, ptr %i.br, align 1, !dbg !27053, !noalias !26958
  %i.bs = load <2 x i64>, ptr %i.e, align 8, !dbg !27054, !alias.scope !26958
  %i.bt = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bm, i64 0, !dbg !27054
  %i.bu = sub <2 x i64> %i.bs, %i.bt, !dbg !27054
  store <2 x i64> %i.bu, ptr %i.e, align 8, !dbg !27054, !alias.scope !26958
  %i.bv = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !27055
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.bv, !dbg !27056 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -16, !dbg !27057
  store i64 %i.c, ptr %i.bx, align 8, !dbg !27058, !noalias !26958
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -8, !dbg !27058
  store i16 %i.bc, ptr %i.by, align 8, !dbg !27058, !noalias !26958
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26960), !dbg !27059
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26961), !dbg !27060, !noalias !26962
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !27061 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !27061, !range !795, !alias.scope !26963, !noalias !26964, !noundef !666 ; 2 uses
  %.not.i.i44 = icmp eq i64 %i.ca, -9223372036854775808, !dbg !27061
  br i1 %.not.i.i44, label %bb.o, label %bb.l, !dbg !27062

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !27063 ; 4 uses
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !27063, !alias.scope !26965, !noalias !26964, !noundef !666 ; 2 uses
  %i.cd = and i64 %i.cc, 7, !dbg !27064
  %i.ce = icmp eq i64 %i.cd, 0, !dbg !27064
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !27065, !alias.scope !26965, !noalias !26964 ; 4 uses
  br i1 %i.ce, label %bb.m, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !27063

bb.m:                                             ; preds = %bb.l
  %i.ch = icmp eq i64 %i.cg, %i.ca, !dbg !27066
  br i1 %i.ch, label %bb.n, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !27066

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bz), !dbg !27067, !noalias !26964
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !27067

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.n, %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !27068
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !27068, !alias.scope !26966, !noalias !26964, !nonnull !666, !noundef !666
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cg, !dbg !27069
  store i8 0, ptr %i.ck, align 1, !dbg !27070, !noalias !26964
  %i.cl = add i64 %i.cg, 1, !dbg !27071           ; 2 uses
  store i64 %i.cl, ptr %i.cf, align 8, !dbg !27071, !alias.scope !26966, !noalias !26964
  %.pre.i.i = load i64, ptr %i.cb, align 8, !dbg !27072, !alias.scope !26965, !noalias !26964
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !27073

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.l
  %i.cm = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cc, %bb.l ], !dbg !27072
  %i.cn = phi i64 [ %i.cl, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cg, %bb.l ], !dbg !27074 ; 2 uses
  %.not.i.i.i45 = icmp ne i64 %i.cn, 0, !dbg !27075
  tail call void @llvm.assume(i1 %.not.i.i.i45), !dbg !27075, !noalias !26962
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !27076
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !27076, !alias.scope !26965, !noalias !26964, !nonnull !666, !noundef !666
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cn, !dbg !27077
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !27077 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !27078, !noalias !26962
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !27079, !noalias !26964, !noundef !666
  %i.ct = trunc i64 %i.cm to i8, !dbg !27080
  %i.cu = and i8 %i.ct, 7, !dbg !27080
  %i.cv = shl nuw i8 1, %i.cu, !dbg !27080
  %i.cw = or i8 %i.cs, %i.cv, !dbg !27081
  store i8 %i.cw, ptr %i.cr, align 1, !dbg !27082, !noalias !26964
  %i.cx = load i64, ptr %i.cb, align 8, !dbg !27083, !alias.scope !26965, !noalias !26964, !noundef !666
  %i.cy = add i64 %i.cx, 1, !dbg !27083
  store i64 %i.cy, ptr %i.cb, align 8, !dbg !27083, !alias.scope !26965, !noalias !26964
  br label %bb.o, !dbg !27084

bb.o:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !27085, !noalias !26967
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !27085 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !dbg !27085, !alias.scope !26968, !noalias !26969, !noundef !666
  %i.db = add i64 %i.da, %3, !dbg !27085
  store i64 %i.db, ptr %i.cz, align 8, !dbg !27085, !alias.scope !26968, !noalias !26969
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3), !dbg !27086, !noalias !26962
  %i.dc = load i64, ptr %i.az, align 8, !dbg !27087, !alias.scope !26970, !noalias !26971, !noundef !666 ; 3 uses
  %i.dd = load i64, ptr %1, align 8, !dbg !27088, !range !790, !alias.scope !26970, !noalias !26971, !noundef !666
  %i.de = icmp eq i64 %i.dc, %i.dd, !dbg !27089
  br i1 %i.de, label %bb.p, label %bb.q, !dbg !27089

bb.p:                                             ; preds = %bb.o
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !27090, !noalias !26972
  br label %bb.q, !dbg !27090

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27091
  %i.dg = load ptr, ptr %i.df, align 8, !dbg !27091, !alias.scope !26970, !noalias !26971, !nonnull !666, !noundef !666
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dc, !dbg !27092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dh, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !27093, !noalias !26962
  %i.di = add i64 %i.dc, 1, !dbg !27094
  store i64 %i.di, ptr %i.az, align 8, !dbg !27094, !alias.scope !26970, !noalias !26971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !27095, !noalias !26967
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27040
  store i16 %i.bc, ptr %i.dj, align 8, !dbg !27040
  store i64 18, ptr %0, align 8, !dbg !27040
  br label %bb.j, !dbg !27041

bb.r:                                             ; preds = %bb.h
  store i64 2, ptr %0, align 8, !dbg !27096
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27096
  store i16 0, ptr %.sroa.235.0..sroa_idx, align 8, !dbg !27096
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10, !dbg !27096
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(62) getelementptr inbounds nuw (i8, ptr @1, i64 10), i64 62, i1 false), !dbg !27096
  br label %bb.j, !dbg !27041
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMaptINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArraytB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2q_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2q_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericeEENtNtB4E_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !27097 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !27312
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !27313 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !27314 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !27315 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !27315, !alias.scope !27286, !noalias !27287, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !27316
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTytEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaptINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraytB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !27317, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTytEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMaptINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1i_7mutableINtB3Q_22MutableDictionaryArraytB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3F_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3F_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericeEENtNtB5V_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !27318, !noalias !27287 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTytEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaptINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraytB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !27319

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTytEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaptINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraytB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !27320, !alias.scope !27288, !noalias !27287, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !27320 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !27320, !alias.scope !27288, !noalias !27287, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !27321
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !27322 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !27323

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTytEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaptINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraytB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTytEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaptINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraytB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ar, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTytEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaptINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraytB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !27324
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTytEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaptINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraytB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !27324
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTytEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMaptINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArraytB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.aq, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !27325 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !27326
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !27327, !noalias !27289 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !27328
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !27329 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !27330
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !27331

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ag, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !27332
  %i.s = zext nneg i16 %i.r to i64, !dbg !27333
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !27334
  %i.u = and i64 %i.t, %.val7.i, !dbg !27334
  %i.v = load ptr, ptr %i.d, align 8, !dbg !27335, !alias.scope !27288, !noalias !27290, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !27336         ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.w, !dbg !27337
  %i.y = getelementptr i8, ptr %i.x, i64 -8, !dbg !27338
  %.val3.i.i = load i16, ptr %i.y, align 8, !dbg !27338, !noalias !27291, !noundef !666
  %i.z = zext i16 %.val3.i.i to i64, !dbg !27339
  %i.aa = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %i.z), !dbg !27340, !noalias !27291 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 1, !dbg !27340
  %i.ac = icmp eq i64 %i.ab, %3, !dbg !27341
  br i1 %i.ac, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !27341, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ad = extractvalue { ptr, i64 } %i.aa, 0, !dbg !27340
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ad, ptr nonnull readonly %2, i64 %3), !dbg !27342, !alias.scope !27292, !noalias !27291
  %i.ae = icmp eq i32 %bcmp.i.i.i.i, 0, !dbg !27342
  br i1 %i.ae, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !27343, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !27344
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !27345, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.af = add i16 %.sroa.05.029.i.i, -1, !dbg !27346
  %i.ag = and i16 %i.af, %.sroa.05.029.i.i, !dbg !27347 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ag, 0, !dbg !27330
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !27331

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ah = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !27348
  %i.ai = bitcast <16 x i1> %i.ah to i16, !dbg !27348 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ai, 0, !dbg !27349
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !27350, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ai, i1 true), !dbg !27351
  %i.ak = zext nneg i16 %i.aj to i64, !dbg !27352
  %i.al = add i64 %.sroa.0.017.i.i, %i.ak, !dbg !27353
  %i.am = and i64 %i.al, %.val7.i, !dbg !27353
  br label %.thread.i.i, !dbg !27354

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.am, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !27355
  %i.ao = bitcast <16 x i1> %i.an to i16, !dbg !27356
  %i.ap = icmp eq i16 %i.ao, 0, !dbg !27357
  br i1 %i.ap, label %bb.e, label %bb.f, !dbg !27357, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.aq = add i64 %i.n, 16, !dbg !27358           ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.0.017.i.i, !dbg !27359
  br label %bb.c, !dbg !27323

bb.f:                                             ; preds = %.thread.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !27360
  %i.at = load i8, ptr %i.as, align 1, !dbg !27361, !noalias !27293, !noundef !666
  %i.au = icmp sgt i8 %i.at, -1, !dbg !27362
  br i1 %i.au, label %bb.g, label %bb.h, !dbg !27362, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !27363, !noalias !27293
  %i.av = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !27364
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !27364 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.aw, 0, !dbg !27365
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true), !dbg !27366
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !27366
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !27367
  br label %bb.h, !dbg !27368

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ay, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !27369 ; 3 uses
  %.val41 = load i64, ptr %i.az, align 8, !dbg !27369, !noundef !666 ; 3 uses
  %i.ba = icmp ult i64 %.val41, 576460752303423488, !dbg !27370
  tail call void @llvm.assume(i1 %i.ba), !dbg !27371
  %i.bb = icmp samesign ugt i64 %.val41, 65535, !dbg !27372
  %i.bc = trunc nuw i64 %.val41 to i16, !dbg !27372 ; 2 uses
  br i1 %i.bb, label %bb.r, label %bb.k, !dbg !27373

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTytEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMaptINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArraytB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.bd = load ptr, ptr %i.d, align 8, !dbg !27374, !alias.scope !27288, !noalias !27287, !nonnull !666, !noundef !666
  %i.be = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.w, !dbg !27375
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8, !dbg !27376
  %i.bg = load i16, ptr %i.bf, align 8, !dbg !27376, !noundef !666
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27377
  store i16 %i.bg, ptr %i.bh, align 8, !dbg !27377
  store i64 18, ptr %0, align 8, !dbg !27377
  br label %bb.j, !dbg !27378

bb.j:                                             ; preds = %bb.r, %bb.q, %bb.i
  ret void, !dbg !27379

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27295), !dbg !27380
  %i.bi = load ptr, ptr %i.d, align 8, !dbg !27381, !alias.scope !27295, !nonnull !666, !noundef !666 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.3.0.i.ph.i, !dbg !27382 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !27383, !noalias !27295, !noundef !666
  %i.bl = and i8 %i.bk, 1, !dbg !27384
  %i.bm = zext nneg i8 %i.bl to i64, !dbg !27384
  %i.bn = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !27385
  %i.bo = load i64, ptr %i.i, align 8, !dbg !27386, !alias.scope !27295, !noundef !666
  %i.bp = and i64 %i.bo, %i.bn, !dbg !27387
  store i8 %i.k, ptr %i.bj, align 1, !dbg !27388, !noalias !27295
  %i.bq = getelementptr i8, ptr %i.bi, i64 %i.bp, !dbg !27389
  %i.br = getelementptr i8, ptr %i.bq, i64 16, !dbg !27389
  store i8 %i.k, ptr %i.br, align 1, !dbg !27390, !noalias !27295
  %i.bs = load <2 x i64>, ptr %i.e, align 8, !dbg !27391, !alias.scope !27295
  %i.bt = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bm, i64 0, !dbg !27391
  %i.bu = sub <2 x i64> %i.bs, %i.bt, !dbg !27391
  store <2 x i64> %i.bu, ptr %i.e, align 8, !dbg !27391, !alias.scope !27295
  %i.bv = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !27392
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.bv, !dbg !27393 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -16, !dbg !27394
  store i64 %i.c, ptr %i.bx, align 8, !dbg !27395, !noalias !27295
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -8, !dbg !27395
  store i16 %i.bc, ptr %i.by, align 8, !dbg !27395, !noalias !27295
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27297), !dbg !27396
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27298), !dbg !27397, !noalias !27299
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !27398 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !27398, !range !795, !alias.scope !27300, !noalias !27301, !noundef !666 ; 2 uses
  %.not.i.i44 = icmp eq i64 %i.ca, -9223372036854775808, !dbg !27398
  br i1 %.not.i.i44, label %bb.o, label %bb.l, !dbg !27399

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !27400 ; 4 uses
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !27400, !alias.scope !27302, !noalias !27301, !noundef !666 ; 2 uses
  %i.cd = and i64 %i.cc, 7, !dbg !27401
  %i.ce = icmp eq i64 %i.cd, 0, !dbg !27401
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !27402, !alias.scope !27302, !noalias !27301 ; 4 uses
  br i1 %i.ce, label %bb.m, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !27400

bb.m:                                             ; preds = %bb.l
  %i.ch = icmp eq i64 %i.cg, %i.ca, !dbg !27403
  br i1 %i.ch, label %bb.n, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !27403

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bz), !dbg !27404, !noalias !27301
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !27404

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.n, %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !27405
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !27405, !alias.scope !27303, !noalias !27301, !nonnull !666, !noundef !666
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cg, !dbg !27406
  store i8 0, ptr %i.ck, align 1, !dbg !27407, !noalias !27301
  %i.cl = add i64 %i.cg, 1, !dbg !27408           ; 2 uses
  store i64 %i.cl, ptr %i.cf, align 8, !dbg !27408, !alias.scope !27303, !noalias !27301
  %.pre.i.i = load i64, ptr %i.cb, align 8, !dbg !27409, !alias.scope !27302, !noalias !27301
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !27410

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.l
  %i.cm = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cc, %bb.l ], !dbg !27409
  %i.cn = phi i64 [ %i.cl, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.cg, %bb.l ], !dbg !27411 ; 2 uses
  %.not.i.i.i45 = icmp ne i64 %i.cn, 0, !dbg !27412
  tail call void @llvm.assume(i1 %.not.i.i.i45), !dbg !27412, !noalias !27299
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !27413
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !27413, !alias.scope !27302, !noalias !27301, !nonnull !666, !noundef !666
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cn, !dbg !27414
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !27414 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !27415, !noalias !27299
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !27416, !noalias !27301, !noundef !666
  %i.ct = trunc i64 %i.cm to i8, !dbg !27417
  %i.cu = and i8 %i.ct, 7, !dbg !27417
  %i.cv = shl nuw i8 1, %i.cu, !dbg !27417
  %i.cw = or i8 %i.cs, %i.cv, !dbg !27418
  store i8 %i.cw, ptr %i.cr, align 1, !dbg !27419, !noalias !27301
  %i.cx = load i64, ptr %i.cb, align 8, !dbg !27420, !alias.scope !27302, !noalias !27301, !noundef !666
  %i.cy = add i64 %i.cx, 1, !dbg !27420
  store i64 %i.cy, ptr %i.cb, align 8, !dbg !27420, !alias.scope !27302, !noalias !27301
  br label %bb.o, !dbg !27421

bb.o:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !27422, !noalias !27304
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !27422 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !dbg !27422, !alias.scope !27305, !noalias !27306, !noundef !666
  %i.db = add i64 %i.da, %3, !dbg !27422
  store i64 %i.db, ptr %i.cz, align 8, !dbg !27422, !alias.scope !27305, !noalias !27306
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !27423, !noalias !27299
  %i.dc = load i64, ptr %i.az, align 8, !dbg !27424, !alias.scope !27307, !noalias !27308, !noundef !666 ; 3 uses
  %i.dd = load i64, ptr %1, align 8, !dbg !27425, !range !790, !alias.scope !27307, !noalias !27308, !noundef !666
  %i.de = icmp eq i64 %i.dc, %i.dd, !dbg !27426
  br i1 %i.de, label %bb.p, label %bb.q, !dbg !27426

bb.p:                                             ; preds = %bb.o
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !27427, !noalias !27309
  br label %bb.q, !dbg !27427

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27428
  %i.dg = load ptr, ptr %i.df, align 8, !dbg !27428, !alias.scope !27307, !noalias !27308, !nonnull !666, !noundef !666
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dc, !dbg !27429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dh, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !27430, !noalias !27299
  %i.di = add i64 %i.dc, 1, !dbg !27431
  store i64 %i.di, ptr %i.az, align 8, !dbg !27431, !alias.scope !27307, !noalias !27308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !27432, !noalias !27304
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27377
  store i16 %i.bc, ptr %i.dj, align 8, !dbg !27377
  store i64 18, ptr %0, align 8, !dbg !27377
  br label %bb.j, !dbg !27378

bb.r:                                             ; preds = %bb.h
  store i64 2, ptr %0, align 8, !dbg !27433
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27433
  store i16 0, ptr %.sroa.235.0..sroa_idx, align 8, !dbg !27433
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10, !dbg !27433
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(62) getelementptr inbounds nuw (i8, ptr @1, i64 10), i64 62, i1 false), !dbg !27433
  br label %bb.j, !dbg !27378
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMaptINtNtNtB7_9primitive7mutable21MutablePrimitiveArrayaEE14try_push_validaNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArraytB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionaEE10try_extendINtNtNtNtB3K_4iter8adapters3map3MapINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB3K_5slice4iter4IteraENtNtB5a_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to23primitive_to_dictionaryatE0EE0EB73_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(128) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !27434 {
bb.a:
end_hunk_7
begin_hunk_8_@_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapxINtNtNtB7_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB5_7mutableINtB2x_22MutableDictionaryArrayxB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2l_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2l_INtNtB7_8iterator15ArrayValuesIterINtB1o_11BinaryArrayxEENtNtB4A_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute:bb.a
  %i.ab = sub nsw i64 0, %i.aa, !dbg !30338
  %i.ac = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.ab, !dbg !30339
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8, !dbg !30340
  %.val3.i.i = load i64, ptr %i.ad, align 8, !dbg !30340, !noalias !30305, !noundef !666 ; 4 uses
  %i.ae = icmp sgt i64 %.val3.i.i, -1, !dbg !30341
  tail call void @llvm.assume(i1 %i.ae), !dbg !30341
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.val3.i.i, !dbg !30342
  %.val1.i.i.i.i = load i64, ptr %i.af, align 8, !dbg !30343, !noalias !30306, !noundef !666 ; 2 uses
  %i.ag = add nuw i64 %.val3.i.i, 1, !dbg !30344  ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.q, !dbg !30345
  tail call void @llvm.assume(i1 %i.ah), !dbg !30346
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ag, !dbg !30347
  %.val.i.i.i.i = load i64, ptr %i.ai, align 8, !dbg !30348, !noalias !30306, !noundef !666
  %i.aj = sub nuw i64 %.val.i.i.i.i, %.val1.i.i.i.i, !dbg !30349
  %i.ak = icmp eq i64 %i.aj, %3, !dbg !30350
  br i1 %i.ak, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !30350, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 %.val1.i.i.i.i, !dbg !30351
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.al, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !30352, !alias.scope !30307, !noalias !30305
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !30352
  br i1 %i.am, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !30353, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !30354
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !30355, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.an = add i16 %.sroa.05.029.i.i, -1, !dbg !30356
  %i.ao = and i16 %i.an, %.sroa.05.029.i.i, !dbg !30357 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ao, 0, !dbg !30333
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !30334

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ap = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !30358
  %i.aq = bitcast <16 x i1> %i.ap to i16, !dbg !30358 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aq, 0, !dbg !30359
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !30360, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true), !dbg !30361
  %i.as = zext nneg i16 %i.ar to i64, !dbg !30362
  %i.at = add i64 %.sroa.0.017.i.i, %i.as, !dbg !30363
  %i.au = and i64 %i.at, %.val7.i, !dbg !30363
  br label %.thread.i.i, !dbg !30364

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.au, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.av = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !30365
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !30366
  %i.ax = icmp eq i16 %i.aw, 0, !dbg !30367
  br i1 %i.ax, label %bb.e, label %bb.f, !dbg !30367, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ay = add i64 %i.t, 16, !dbg !30368           ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.0.017.i.i, !dbg !30369
  br label %bb.c, !dbg !30326

bb.f:                                             ; preds = %.thread.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !30370
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !30371, !noalias !30302, !noundef !666
  %i.bc = icmp sgt i8 %i.bb, -1, !dbg !30372
  br i1 %i.bc, label %bb.g, label %bb.h, !dbg !30372, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !30373, !noalias !30302
  %i.bd = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !30374
  %i.be = bitcast <16 x i1> %i.bd to i16, !dbg !30374 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.be, 0, !dbg !30375
  %i.bf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.be, i1 true), !dbg !30376
  %i.bg = zext nneg i16 %i.bf to i64, !dbg !30376
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !30377
  br label %bb.h, !dbg !30378

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.bg, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.bh = icmp ult i64 %i.q, 1152921504606846976, !dbg !30379
  tail call void @llvm.assume(i1 %i.bh), !dbg !30380
  %i.bi = add nsw i64 %i.q, -1, !dbg !30381       ; 2 uses
  %i.bj = icmp eq i64 %i.q, 0, !dbg !30382
  br i1 %i.bj, label %bb.n, label %bb.k, !dbg !30382

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30383
  store i64 %.val3.i.i, ptr %i.bk, align 8, !dbg !30383
  store i64 18, ptr %0, align 8, !dbg !30383
  br label %bb.j, !dbg !30384

bb.j:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i
  ret void, !dbg !30385

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30309), !dbg !30386
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i, !dbg !30387 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !dbg !30388, !noalias !30309, !noundef !666
  %i.bn = and i8 %i.bm, 1, !dbg !30389
  %i.bo = zext nneg i8 %i.bn to i64, !dbg !30389
  %i.bp = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !30390
  %i.bq = and i64 %i.bp, %.val7.i, !dbg !30391
  store i8 %i.k, ptr %i.bl, align 1, !dbg !30392, !noalias !30309
  %i.br = getelementptr i8, ptr %.val.i, i64 %i.bq, !dbg !30393
  %i.bs = getelementptr i8, ptr %i.br, i64 16, !dbg !30393
  store i8 %i.k, ptr %i.bs, align 1, !dbg !30394, !noalias !30309
  %i.bt = load <2 x i64>, ptr %i.e, align 8, !dbg !30395, !alias.scope !30309
  %i.bu = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bo, i64 0, !dbg !30395
  %i.bv = sub <2 x i64> %i.bt, %i.bu, !dbg !30395
  store <2 x i64> %i.bv, ptr %i.e, align 8, !dbg !30395, !alias.scope !30309
  %i.bw = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !30396
  %i.bx = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.bw, !dbg !30397 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -16, !dbg !30398
  store i64 %i.c, ptr %i.by, align 8, !dbg !30399, !noalias !30309
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -8, !dbg !30399
  store i64 %i.bi, ptr %i.bz, align 8, !dbg !30399, !noalias !30309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !30311
  call void @_RNvXs7_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7mutableINtB5_18MutableBinaryArrayxEINtB9_7TryPushINtNtCscgRAwXFJnXP_4core6option6OptionRShEE8try_pushCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !30400
  %i.ca = load i64, ptr %i.a, align 8, !dbg !30401, !range !814, !noundef !666
  %.not = icmp eq i64 %i.ca, 18, !dbg !30401
  br i1 %.not, label %bb.m, label %bb.l, !dbg !30402

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !30403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !30404
  br label %bb.j, !dbg !30384

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !30404
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30383
  store i64 %i.bi, ptr %i.cb, align 8, !dbg !30383
  store i64 18, ptr %0, align 8, !dbg !30383
  br label %bb.j, !dbg !30384

bb.n:                                             ; preds = %bb.h
  store i64 2, ptr %0, align 8, !dbg !30405
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30405
  store i64 -9223372036854775808, ptr %.sroa.235.0..sroa_idx, align 8, !dbg !30405
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !30405
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @1, i64 16), i64 56, i1 false), !dbg !30405
  br label %bb.j, !dbg !30384
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapxINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB27_NCINvXs3_NtB5_7mutableINtB2F_22MutableDictionaryArrayxB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2r_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2r_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericB27_EENtNtB4I_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !30406 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !30606
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRShECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !30607 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !30608 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !30609 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !30609, !alias.scope !30583, !noalias !30584, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !30610
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapxINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayxB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !30611, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMapxINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3m_NCINvXs3_NtB1i_7mutableINtB3U_22MutableDictionaryArrayxB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3G_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3G_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericB3m_EENtNtB5Z_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !30612, !noalias !30584 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapxINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayxB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !30613

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapxINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayxB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !30614, !alias.scope !30585, !noalias !30584, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !30614 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !30614, !alias.scope !30585, !noalias !30584, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !30615
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !30616 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !30617

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapxINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayxB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapxINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayxB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ar, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapxINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayxB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !30618
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapxINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayxB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !30618
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapxINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayxB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.aq, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !30619 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !30620
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !30621, !noalias !30586 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !30622
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !30623 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !30624
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !30625

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ag, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !30626
  %i.s = zext nneg i16 %i.r to i64, !dbg !30627
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !30628
  %i.u = and i64 %i.t, %.val7.i, !dbg !30628
  %i.v = load ptr, ptr %i.d, align 8, !dbg !30629, !alias.scope !30585, !noalias !30587, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !30630         ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.w, !dbg !30631
  %i.y = getelementptr i8, ptr %i.x, i64 -8, !dbg !30632
  %.val3.i.i = load i64, ptr %i.y, align 8, !dbg !30632, !noalias !30588, !noundef !666 ; 2 uses
  %i.z = icmp sgt i64 %.val3.i.i, -1, !dbg !30633
  tail call void @llvm.assume(i1 %i.z), !dbg !30633
  %i.aa = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %.val3.i.i), !dbg !30634, !noalias !30588 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 1, !dbg !30634
  %i.ac = icmp eq i64 %i.ab, %3, !dbg !30635
  br i1 %i.ac, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !30635, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ad = extractvalue { ptr, i64 } %i.aa, 0, !dbg !30634
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ad, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !30636, !alias.scope !30589, !noalias !30588
  %i.ae = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !30636
  br i1 %i.ae, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !30637, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !30638
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !30639, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.af = add i16 %.sroa.05.029.i.i, -1, !dbg !30640
  %i.ag = and i16 %i.af, %.sroa.05.029.i.i, !dbg !30641 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ag, 0, !dbg !30624
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !30625

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ah = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !30642
  %i.ai = bitcast <16 x i1> %i.ah to i16, !dbg !30642 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ai, 0, !dbg !30643
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !30644, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ai, i1 true), !dbg !30645
  %i.ak = zext nneg i16 %i.aj to i64, !dbg !30646
  %i.al = add i64 %.sroa.0.017.i.i, %i.ak, !dbg !30647
  %i.am = and i64 %i.al, %.val7.i, !dbg !30647
  br label %.thread.i.i, !dbg !30648

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.am, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !30649
  %i.ao = bitcast <16 x i1> %i.an to i16, !dbg !30650
  %i.ap = icmp eq i16 %i.ao, 0, !dbg !30651
  br i1 %i.ap, label %bb.e, label %bb.f, !dbg !30651, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.aq = add i64 %i.n, 16, !dbg !30652           ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.0.017.i.i, !dbg !30653
  br label %bb.c, !dbg !30617

bb.f:                                             ; preds = %.thread.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !30654
  %i.at = load i8, ptr %i.as, align 1, !dbg !30655, !noalias !30590, !noundef !666
  %i.au = icmp sgt i8 %i.at, -1, !dbg !30656
  br i1 %i.au, label %bb.g, label %bb.h, !dbg !30656, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !30657, !noalias !30590
  %i.av = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !30658
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !30658 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.aw, 0, !dbg !30659
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true), !dbg !30660
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !30660
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !30661
  br label %bb.h, !dbg !30662

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ay, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !30663 ; 3 uses
  %.val41 = load i64, ptr %i.az, align 8, !dbg !30663, !noundef !666 ; 3 uses
  %i.ba = icmp ult i64 %.val41, 576460752303423488, !dbg !30664
  tail call void @llvm.assume(i1 %i.ba), !dbg !30665
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30591), !dbg !30666
  %i.bb = load ptr, ptr %i.d, align 8, !dbg !30667, !alias.scope !30591, !nonnull !666, !noundef !666 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.3.0.i.ph.i, !dbg !30668 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !dbg !30669, !noalias !30591, !noundef !666
  %i.be = and i8 %i.bd, 1, !dbg !30670
  %i.bf = zext nneg i8 %i.be to i64, !dbg !30670
  %i.bg = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !30671
  %i.bh = load i64, ptr %i.i, align 8, !dbg !30672, !alias.scope !30591, !noundef !666
  %i.bi = and i64 %i.bh, %i.bg, !dbg !30673
  store i8 %i.k, ptr %i.bc, align 1, !dbg !30674, !noalias !30591
  %i.bj = getelementptr i8, ptr %i.bb, i64 %i.bi, !dbg !30675
  %i.bk = getelementptr i8, ptr %i.bj, i64 16, !dbg !30675
  store i8 %i.k, ptr %i.bk, align 1, !dbg !30676, !noalias !30591
  %i.bl = load <2 x i64>, ptr %i.e, align 8, !dbg !30677, !alias.scope !30591
  %i.bm = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bf, i64 0, !dbg !30677
  %i.bn = sub <2 x i64> %i.bl, %i.bm, !dbg !30677
  store <2 x i64> %i.bn, ptr %i.e, align 8, !dbg !30677, !alias.scope !30591
  %i.bo = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !30678
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %i.bo, !dbg !30679 ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -16, !dbg !30680
  store i64 %i.c, ptr %i.bq, align 8, !dbg !30681, !noalias !30591
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -8, !dbg !30681
  store i64 %.val41, ptr %i.br, align 8, !dbg !30681, !noalias !30591
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30593), !dbg !30682
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30594), !dbg !30683, !noalias !30595
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !30684 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !30684, !range !795, !alias.scope !30596, !noalias !30597, !noundef !666 ; 2 uses
  %.not.i.i42 = icmp eq i64 %i.bt, -9223372036854775808, !dbg !30684
  br i1 %.not.i.i42, label %bb.n, label %bb.k, !dbg !30685

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.bu = load ptr, ptr %i.d, align 8, !dbg !30686, !alias.scope !30585, !noalias !30584, !nonnull !666, !noundef !666
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.bu, i64 %i.w, !dbg !30687
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8, !dbg !30688
  %i.bx = load i64, ptr %i.bw, align 8, !dbg !30688, !noundef !666
  br label %bb.j, !dbg !30689

bb.j:                                             ; preds = %bb.p, %bb.i
  %.val41.sink = phi i64 [ %.val41, %bb.p ], [ %i.bx, %bb.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30690
  store i64 %.val41.sink, ptr %i.by, align 8, !dbg !30690
  store i64 18, ptr %0, align 8, !dbg !30690
  ret void, !dbg !30691

bb.k:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !30692 ; 4 uses
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !30692, !alias.scope !30598, !noalias !30597, !noundef !666 ; 2 uses
  %i.cb = and i64 %i.ca, 7, !dbg !30693
  %i.cc = icmp eq i64 %i.cb, 0, !dbg !30693
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !30694, !alias.scope !30598, !noalias !30597 ; 4 uses
  br i1 %i.cc, label %bb.l, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !30692

bb.l:                                             ; preds = %bb.k
  %i.cf = icmp eq i64 %i.ce, %i.bt, !dbg !30695
  br i1 %i.cf, label %bb.m, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !30695

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bs), !dbg !30696, !noalias !30597
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !30696

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !30697
  %i.ch = load ptr, ptr %i.cg, align 8, !dbg !30697, !alias.scope !30599, !noalias !30597, !nonnull !666, !noundef !666
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ce, !dbg !30698
  store i8 0, ptr %i.ci, align 1, !dbg !30699, !noalias !30597
  %i.cj = add i64 %i.ce, 1, !dbg !30700           ; 2 uses
  store i64 %i.cj, ptr %i.cd, align 8, !dbg !30700, !alias.scope !30599, !noalias !30597
  %.pre.i.i = load i64, ptr %i.bz, align 8, !dbg !30701, !alias.scope !30598, !noalias !30597
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !30702

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.k
  %i.ck = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.ca, %bb.k ], !dbg !30701
  %i.cl = phi i64 [ %i.cj, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.ce, %bb.k ], !dbg !30703 ; 2 uses
  %.not.i.i.i43 = icmp ne i64 %i.cl, 0, !dbg !30704
  tail call void @llvm.assume(i1 %.not.i.i.i43), !dbg !30704, !noalias !30595
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !30705
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !30705, !alias.scope !30598, !noalias !30597, !nonnull !666, !noundef !666
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.cl, !dbg !30706
  %i.cp = getelementptr i8, ptr %i.co, i64 -1, !dbg !30706 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ], !dbg !30707, !noalias !30595
  %i.cq = load i8, ptr %i.cp, align 1, !dbg !30708, !noalias !30597, !noundef !666
  %i.cr = trunc i64 %i.ck to i8, !dbg !30709
  %i.cs = and i8 %i.cr, 7, !dbg !30709
  %i.ct = shl nuw i8 1, %i.cs, !dbg !30709
  %i.cu = or i8 %i.cq, %i.ct, !dbg !30710
  store i8 %i.cu, ptr %i.cp, align 1, !dbg !30711, !noalias !30597
  %i.cv = load i64, ptr %i.bz, align 8, !dbg !30712, !alias.scope !30598, !noalias !30597, !noundef !666
  %i.cw = add i64 %i.cv, 1, !dbg !30712
  store i64 %i.cw, ptr %i.bz, align 8, !dbg !30712, !alias.scope !30598, !noalias !30597
  br label %bb.n, !dbg !30713

bb.n:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !30714, !noalias !30600
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !30714 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !30714, !alias.scope !30601, !noalias !30602, !noundef !666
  %i.cz = add i64 %i.cy, %3, !dbg !30714
  store i64 %i.cz, ptr %i.cx, align 8, !dbg !30714, !alias.scope !30601, !noalias !30602
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3), !dbg !30715, !noalias !30595
  %i.da = load i64, ptr %i.az, align 8, !dbg !30716, !alias.scope !30603, !noalias !30604, !noundef !666 ; 3 uses
  %i.db = load i64, ptr %1, align 8, !dbg !30717, !range !790, !alias.scope !30603, !noalias !30604, !noundef !666
  %i.dc = icmp eq i64 %i.da, %i.db, !dbg !30718
  br i1 %i.dc, label %bb.o, label %bb.p, !dbg !30718

bb.o:                                             ; preds = %bb.n
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !30719, !noalias !30605
  br label %bb.p, !dbg !30719

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !30720
  %i.de = load ptr, ptr %i.dd, align 8, !dbg !30720, !alias.scope !30603, !noalias !30604, !nonnull !666, !noundef !666
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.da, !dbg !30721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.df, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !30722, !noalias !30595
  %i.dg = add i64 %i.da, 1, !dbg !30723
  store i64 %i.dg, ptr %i.az, align 8, !dbg !30723, !alias.scope !30603, !noalias !30604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !30724, !noalias !30600
  br label %bb.j, !dbg !30689
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapxINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArrayxB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2q_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2q_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericeEENtNtB4E_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !30725 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !30927
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !30928 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !30929 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !30930 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !30930, !alias.scope !30904, !noalias !30905, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !30931
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapxINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayxB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !30932, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMapxINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1i_7mutableINtB3Q_22MutableDictionaryArrayxB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3F_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3F_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericeEENtNtB5V_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !30933, !noalias !30905 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapxINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayxB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !30934

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapxINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayxB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !30935, !alias.scope !30906, !noalias !30905, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !30935 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !30935, !alias.scope !30906, !noalias !30905, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !30936
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !30937 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !30938

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapxINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayxB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapxINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayxB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ar, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapxINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayxB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !30939
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapxINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayxB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !30939
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapxINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayxB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.aq, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !30940 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !30941
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !30942, !noalias !30907 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !30943
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !30944 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !30945
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !30946

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.ag, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !30947
  %i.s = zext nneg i16 %i.r to i64, !dbg !30948
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !30949
  %i.u = and i64 %i.t, %.val7.i, !dbg !30949
  %i.v = load ptr, ptr %i.d, align 8, !dbg !30950, !alias.scope !30906, !noalias !30908, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !30951         ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.w, !dbg !30952
  %i.y = getelementptr i8, ptr %i.x, i64 -8, !dbg !30953
  %.val3.i.i = load i64, ptr %i.y, align 8, !dbg !30953, !noalias !30909, !noundef !666 ; 2 uses
  %i.z = icmp sgt i64 %.val3.i.i, -1, !dbg !30954
  tail call void @llvm.assume(i1 %i.z), !dbg !30954
  %i.aa = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %.val3.i.i), !dbg !30955, !noalias !30909 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 1, !dbg !30955
  %i.ac = icmp eq i64 %i.ab, %3, !dbg !30956
  br i1 %i.ac, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !30956, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ad = extractvalue { ptr, i64 } %i.aa, 0, !dbg !30955
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ad, ptr nonnull readonly %2, i64 %3), !dbg !30957, !alias.scope !30910, !noalias !30909
  %i.ae = icmp eq i32 %bcmp.i.i.i.i, 0, !dbg !30957
  br i1 %i.ae, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !30958, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !30959
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !30960, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.af = add i16 %.sroa.05.029.i.i, -1, !dbg !30961
  %i.ag = and i16 %i.af, %.sroa.05.029.i.i, !dbg !30962 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ag, 0, !dbg !30945
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !30946

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ah = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !30963
  %i.ai = bitcast <16 x i1> %i.ah to i16, !dbg !30963 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ai, 0, !dbg !30964
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !30965, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ai, i1 true), !dbg !30966
  %i.ak = zext nneg i16 %i.aj to i64, !dbg !30967
  %i.al = add i64 %.sroa.0.017.i.i, %i.ak, !dbg !30968
  %i.am = and i64 %i.al, %.val7.i, !dbg !30968
  br label %.thread.i.i, !dbg !30969

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.am, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !30970
  %i.ao = bitcast <16 x i1> %i.an to i16, !dbg !30971
  %i.ap = icmp eq i16 %i.ao, 0, !dbg !30972
  br i1 %i.ap, label %bb.e, label %bb.f, !dbg !30972, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.aq = add i64 %i.n, 16, !dbg !30973           ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.0.017.i.i, !dbg !30974
  br label %bb.c, !dbg !30938

bb.f:                                             ; preds = %.thread.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !30975
  %i.at = load i8, ptr %i.as, align 1, !dbg !30976, !noalias !30911, !noundef !666
  %i.au = icmp sgt i8 %i.at, -1, !dbg !30977
  br i1 %i.au, label %bb.g, label %bb.h, !dbg !30977, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !30978, !noalias !30911
  %i.av = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !30979
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !30979 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.aw, 0, !dbg !30980
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true), !dbg !30981
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !30981
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !30982
  br label %bb.h, !dbg !30983

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ay, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !30984 ; 3 uses
  %.val41 = load i64, ptr %i.az, align 8, !dbg !30984, !noundef !666 ; 3 uses
  %i.ba = icmp ult i64 %.val41, 576460752303423488, !dbg !30985
  tail call void @llvm.assume(i1 %i.ba), !dbg !30986
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30912), !dbg !30987
  %i.bb = load ptr, ptr %i.d, align 8, !dbg !30988, !alias.scope !30912, !nonnull !666, !noundef !666 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.3.0.i.ph.i, !dbg !30989 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !dbg !30990, !noalias !30912, !noundef !666
  %i.be = and i8 %i.bd, 1, !dbg !30991
  %i.bf = zext nneg i8 %i.be to i64, !dbg !30991
  %i.bg = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !30992
  %i.bh = load i64, ptr %i.i, align 8, !dbg !30993, !alias.scope !30912, !noundef !666
  %i.bi = and i64 %i.bh, %i.bg, !dbg !30994
  store i8 %i.k, ptr %i.bc, align 1, !dbg !30995, !noalias !30912
  %i.bj = getelementptr i8, ptr %i.bb, i64 %i.bi, !dbg !30996
  %i.bk = getelementptr i8, ptr %i.bj, i64 16, !dbg !30996
  store i8 %i.k, ptr %i.bk, align 1, !dbg !30997, !noalias !30912
  %i.bl = load <2 x i64>, ptr %i.e, align 8, !dbg !30998, !alias.scope !30912
  %i.bm = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bf, i64 0, !dbg !30998
  %i.bn = sub <2 x i64> %i.bl, %i.bm, !dbg !30998
  store <2 x i64> %i.bn, ptr %i.e, align 8, !dbg !30998, !alias.scope !30912
  %i.bo = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !30999
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %i.bo, !dbg !31000 ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -16, !dbg !31001
  store i64 %i.c, ptr %i.bq, align 8, !dbg !31002, !noalias !30912
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -8, !dbg !31002
  store i64 %.val41, ptr %i.br, align 8, !dbg !31002, !noalias !30912
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30914), !dbg !31003
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30915), !dbg !31004, !noalias !30916
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !31005 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !31005, !range !795, !alias.scope !30917, !noalias !30918, !noundef !666 ; 2 uses
  %.not.i.i42 = icmp eq i64 %i.bt, -9223372036854775808, !dbg !31005
  br i1 %.not.i.i42, label %bb.n, label %bb.k, !dbg !31006

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyxEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapxINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayxB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.bu = load ptr, ptr %i.d, align 8, !dbg !31007, !alias.scope !30906, !noalias !30905, !nonnull !666, !noundef !666
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.bu, i64 %i.w, !dbg !31008
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8, !dbg !31009
  %i.bx = load i64, ptr %i.bw, align 8, !dbg !31009, !noundef !666
  br label %bb.j, !dbg !31010

bb.j:                                             ; preds = %bb.p, %bb.i
  %.val41.sink = phi i64 [ %.val41, %bb.p ], [ %i.bx, %bb.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31011
  store i64 %.val41.sink, ptr %i.by, align 8, !dbg !31011
  store i64 18, ptr %0, align 8, !dbg !31011
  ret void, !dbg !31012

bb.k:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !31013 ; 4 uses
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !31013, !alias.scope !30919, !noalias !30918, !noundef !666 ; 2 uses
  %i.cb = and i64 %i.ca, 7, !dbg !31014
  %i.cc = icmp eq i64 %i.cb, 0, !dbg !31014
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !31015, !alias.scope !30919, !noalias !30918 ; 4 uses
  br i1 %i.cc, label %bb.l, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !31013

bb.l:                                             ; preds = %bb.k
  %i.cf = icmp eq i64 %i.ce, %i.bt, !dbg !31016
  br i1 %i.cf, label %bb.m, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !31016

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bs), !dbg !31017, !noalias !30918
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !31017

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !31018
  %i.ch = load ptr, ptr %i.cg, align 8, !dbg !31018, !alias.scope !30920, !noalias !30918, !nonnull !666, !noundef !666
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ce, !dbg !31019
  store i8 0, ptr %i.ci, align 1, !dbg !31020, !noalias !30918
  %i.cj = add i64 %i.ce, 1, !dbg !31021           ; 2 uses
  store i64 %i.cj, ptr %i.cd, align 8, !dbg !31021, !alias.scope !30920, !noalias !30918
  %.pre.i.i = load i64, ptr %i.bz, align 8, !dbg !31022, !alias.scope !30919, !noalias !30918
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !31023

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.k
  %i.ck = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.ca, %bb.k ], !dbg !31022
  %i.cl = phi i64 [ %i.cj, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i ], [ %i.ce, %bb.k ], !dbg !31024 ; 2 uses
  %.not.i.i.i43 = icmp ne i64 %i.cl, 0, !dbg !31025
  tail call void @llvm.assume(i1 %.not.i.i.i43), !dbg !31025, !noalias !30916
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !31026
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !31026, !alias.scope !30919, !noalias !30918, !nonnull !666, !noundef !666
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.cl, !dbg !31027
  %i.cp = getelementptr i8, ptr %i.co, i64 -1, !dbg !31027 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ], !dbg !31028, !noalias !30916
  %i.cq = load i8, ptr %i.cp, align 1, !dbg !31029, !noalias !30918, !noundef !666
  %i.cr = trunc i64 %i.ck to i8, !dbg !31030
  %i.cs = and i8 %i.cr, 7, !dbg !31030
  %i.ct = shl nuw i8 1, %i.cs, !dbg !31030
  %i.cu = or i8 %i.cq, %i.ct, !dbg !31031
  store i8 %i.cu, ptr %i.cp, align 1, !dbg !31032, !noalias !30918
  %i.cv = load i64, ptr %i.bz, align 8, !dbg !31033, !alias.scope !30919, !noalias !30918, !noundef !666
  %i.cw = add i64 %i.cv, 1, !dbg !31033
  store i64 %i.cw, ptr %i.bz, align 8, !dbg !31033, !alias.scope !30919, !noalias !30918
  br label %bb.n, !dbg !31034

bb.n:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31035, !noalias !30921
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !31035 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !31035, !alias.scope !30922, !noalias !30923, !noundef !666
  %i.cz = add i64 %i.cy, %3, !dbg !31035
  store i64 %i.cz, ptr %i.cx, align 8, !dbg !31035, !alias.scope !30922, !noalias !30923
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !31036, !noalias !30916
  %i.da = load i64, ptr %i.az, align 8, !dbg !31037, !alias.scope !30924, !noalias !30925, !noundef !666 ; 3 uses
  %i.db = load i64, ptr %1, align 8, !dbg !31038, !range !790, !alias.scope !30924, !noalias !30925, !noundef !666
  %i.dc = icmp eq i64 %i.da, %i.db, !dbg !31039
  br i1 %i.dc, label %bb.o, label %bb.p, !dbg !31039

bb.o:                                             ; preds = %bb.n
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !31040, !noalias !30926
  br label %bb.p, !dbg !31040

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !31041
  %i.de = load ptr, ptr %i.dd, align 8, !dbg !31041, !alias.scope !30924, !noalias !30925, !nonnull !666, !noundef !666
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.da, !dbg !31042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.df, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !31043, !noalias !30916
  %i.dg = add i64 %i.da, 1, !dbg !31044
  store i64 %i.dg, ptr %i.az, align 8, !dbg !31044, !alias.scope !30924, !noalias !30925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31045, !noalias !30921
  br label %bb.j, !dbg !31010
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapxINtNtNtB7_9primitive7mutable21MutablePrimitiveArrayaEE14try_push_validaNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArrayxB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionaEE10try_extendINtNtNtNtB3K_4iter8adapters3map3MapINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB3K_5slice4iter4IteraENtNtB5a_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to23primitive_to_dictionaryaxE0EE0EB73_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(128) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !31046 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %2, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !31216
  %i.c = call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRaECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a), !dbg !31217 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !31218 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31201), !dbg !31219
  call void @llvm.experimental.noalias.scope.decl(metadata !31203), !dbg !31219
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !31220 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !31220, !alias.scope !31204, !noalias !31205, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !31221
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapxINtNtNtB1c_9primitive7mutable21MutablePrimitiveArrayaEE14try_push_validaNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayxB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionaEE10try_extendINtNtNtNtB4T_4iter8adapters3map3MapINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB4T_5slice4iter4IteraENtNtB6j_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to23primitive_to_dictionaryaxE0EE0Es_0EB8d_.exit.i, !dbg !31222, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMapxINtNtNtB1k_9primitive7mutable21MutablePrimitiveArrayaEE14try_push_validaNCINvXs3_NtB1i_7mutableINtB3Q_22MutableDictionaryArrayxB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionaEE10try_extendINtNtNtNtB51_4iter8adapters3map3MapINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB51_5slice4iter4IteraENtNtB6r_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to23primitive_to_dictionaryaxE0EE0Es_0EB8l_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !31223, !noalias !31205 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyxEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapxINtNtNtB1c_9primitive7mutable21MutablePrimitiveArrayaEE14try_push_validaNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayxB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionaEE10try_extendINtNtNtNtB4T_4iter8adapters3map3MapINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB4T_5slice4iter4IteraENtNtB6j_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to23primitive_to_dictionaryaxE0EE0Es_0EB8d_.exit.i, !dbg !31224
end_hunk_8
begin_hunk_9_@_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapyINtNtNtB7_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB5_7mutableINtB2x_22MutableDictionaryArrayyB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2l_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2l_INtNtB7_8iterator15ArrayValuesIterINtB1o_11BinaryArrayxEENtNtB4A_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute:bb.a
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !33782 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !33783
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.u, align 1, !dbg !33784, !noalias !33761 ; 3 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !33785
  %i.w = bitcast <16 x i1> %i.v to i16, !dbg !33786 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.w, 0, !dbg !33787
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !33788

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.an, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.w, %bb.c ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !33789
  %i.y = zext nneg i16 %i.x to i64, !dbg !33790
  %i.z = add i64 %.sroa.0.017.i.i, %i.y, !dbg !33791
  %i.aa = and i64 %i.z, %.val7.i, !dbg !33791
  %i.ab = sub nsw i64 0, %i.aa, !dbg !33792
  %i.ac = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.ab, !dbg !33793
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8, !dbg !33794
  %.val3.i.i = load i64, ptr %i.ad, align 8, !dbg !33794, !noalias !33762, !noundef !666 ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.val3.i.i, !dbg !33795
  %.val1.i.i.i.i = load i64, ptr %i.ae, align 8, !dbg !33796, !noalias !33763, !noundef !666 ; 2 uses
  %i.af = add nuw i64 %.val3.i.i, 1, !dbg !33797  ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.q, !dbg !33798
  tail call void @llvm.assume(i1 %i.ag), !dbg !33799
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.af, !dbg !33800
  %.val.i.i.i.i = load i64, ptr %i.ah, align 8, !dbg !33801, !noalias !33763, !noundef !666
  %i.ai = sub nuw i64 %.val.i.i.i.i, %.val1.i.i.i.i, !dbg !33802
  %i.aj = icmp eq i64 %i.ai, %3, !dbg !33803
  br i1 %i.aj, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !33803, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 %.val1.i.i.i.i, !dbg !33804
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ak, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !33805, !alias.scope !33764, !noalias !33762
  %i.al = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !33805
  br i1 %i.al, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !33806, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !33807
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !33808, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.am = add i16 %.sroa.05.029.i.i, -1, !dbg !33809
  %i.an = and i16 %i.am, %.sroa.05.029.i.i, !dbg !33810 ; 2 uses
  %.not.i.i = icmp eq i16 %i.an, 0, !dbg !33787
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !33788

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ao = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !33811
  %i.ap = bitcast <16 x i1> %i.ao to i16, !dbg !33811 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ap, 0, !dbg !33812
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !33813, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ap, i1 true), !dbg !33814
  %i.ar = zext nneg i16 %i.aq to i64, !dbg !33815
  %i.as = add i64 %.sroa.0.017.i.i, %i.ar, !dbg !33816
  %i.at = and i64 %i.as, %.val7.i, !dbg !33816
  br label %.thread.i.i, !dbg !33817

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.at, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.au = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !33818
  %i.av = bitcast <16 x i1> %i.au to i16, !dbg !33819
  %i.aw = icmp eq i16 %i.av, 0, !dbg !33820
  br i1 %i.aw, label %bb.e, label %bb.f, !dbg !33820, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ax = add i64 %i.t, 16, !dbg !33821           ; 2 uses
  %i.ay = add i64 %i.ax, %.sroa.0.017.i.i, !dbg !33822
  br label %bb.c, !dbg !33780

bb.f:                                             ; preds = %.thread.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !33823
  %i.ba = load i8, ptr %i.az, align 1, !dbg !33824, !noalias !33759, !noundef !666 ; 2 uses
  %i.bb = icmp sgt i8 %i.ba, -1, !dbg !33825
  br i1 %i.bb, label %bb.g, label %bb.h, !dbg !33825, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !33826, !noalias !33759
  %i.bc = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !33827
  %i.bd = bitcast <16 x i1> %i.bc to i16, !dbg !33827 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.bd, 0, !dbg !33828
  %i.be = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bd, i1 true), !dbg !33829
  %i.bf = zext nneg i16 %i.be to i64, !dbg !33829 ; 2 uses
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !33830
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bf
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !dbg !33831, !noalias !33765
  br label %bb.h, !dbg !33832

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bg = phi i8 [ %.pre, %bb.g ], [ %i.ba, %bb.f ], !dbg !33831
  %.sroa.3.0.i.ph.i = phi i64 [ %i.bf, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.bh = icmp ult i64 %i.q, 1152921504606846976, !dbg !33833
  tail call void @llvm.assume(i1 %i.bh), !dbg !33834
  %i.bi = add nsw i64 %i.q, -1, !dbg !33835       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33765), !dbg !33836
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i, !dbg !33837
  %i.bk = and i8 %i.bg, 1, !dbg !33838
  %i.bl = zext nneg i8 %i.bk to i64, !dbg !33838
  %i.bm = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !33839
  %i.bn = and i64 %i.bm, %.val7.i, !dbg !33840
  store i8 %i.k, ptr %i.bj, align 1, !dbg !33841, !noalias !33765
  %i.bo = getelementptr i8, ptr %.val.i, i64 %i.bn, !dbg !33842
  %i.bp = getelementptr i8, ptr %i.bo, i64 16, !dbg !33842
  store i8 %i.k, ptr %i.bp, align 1, !dbg !33843, !noalias !33765
  %i.bq = load <2 x i64>, ptr %i.e, align 8, !dbg !33844, !alias.scope !33765
  %i.br = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bl, i64 0, !dbg !33844
  %i.bs = sub <2 x i64> %i.bq, %i.br, !dbg !33844
  store <2 x i64> %i.bs, ptr %i.e, align 8, !dbg !33844, !alias.scope !33765
  %i.bt = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !33845
  %i.bu = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.bt, !dbg !33846 ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -16, !dbg !33847
  store i64 %i.c, ptr %i.bv, align 8, !dbg !33848, !noalias !33765
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -8, !dbg !33848
  store i64 %i.bi, ptr %i.bw, align 8, !dbg !33848, !noalias !33765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !33767
  call void @_RNvXs7_NtNtNtCs8774dFTUdNv_12polars_arrow5array6binary7mutableINtB5_18MutableBinaryArrayxEINtB9_7TryPushINtNtCscgRAwXFJnXP_4core6option6OptionRShEE8try_pushCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !33849
  %i.bx = load i64, ptr %i.a, align 8, !dbg !33850, !range !814, !noundef !666
  %.not = icmp eq i64 %i.bx, 18, !dbg !33850
  br i1 %.not, label %bb.l, label %bb.k, !dbg !33851

bb.i:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_6binary7mutable18MutableBinaryArrayxEE14try_push_validRShNCINvXs3_NtB1v_7mutableINtB3Z_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3N_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3N_INtNtB1x_8iterator15ArrayValuesIterINtB2P_11BinaryArrayxEENtNtB64_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33852
  store i64 %.val3.i.i, ptr %i.by, align 8, !dbg !33852
  store i64 18, ptr %0, align 8, !dbg !33852
  br label %bb.j, !dbg !33853

bb.j:                                             ; preds = %bb.l, %bb.k, %bb.i
  ret void, !dbg !33854

bb.k:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !33855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !33856
  br label %bb.j, !dbg !33853

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !33856
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33852
  store i64 %i.bi, ptr %i.bz, align 8, !dbg !33852
  store i64 18, ptr %0, align 8, !dbg !33852
  br label %bb.j, !dbg !33853
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapyINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB27_NCINvXs3_NtB5_7mutableINtB2F_22MutableDictionaryArrayyB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2r_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2r_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericB27_EENtNtB4I_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !33857 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !34060
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRShECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !34061 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !34062 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !34063 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !34063, !alias.scope !34035, !noalias !34036, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !34064
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapyINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayyB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !34065, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMapyINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3m_NCINvXs3_NtB1i_7mutableINtB3U_22MutableDictionaryArrayyB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3G_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3G_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericB3m_EENtNtB5Z_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !34066, !noalias !34036 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapyINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayyB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !34067

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapyINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayyB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !34068, !alias.scope !34037, !noalias !34036, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !34068 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !34068, !alias.scope !34037, !noalias !34036, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !34069
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !34070 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !34071

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapyINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayyB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapyINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayyB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.aq, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapyINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayyB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !34072
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapyINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayyB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !34072
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapyINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3e_NCINvXs3_NtB1a_7mutableINtB3M_22MutableDictionaryArrayyB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3y_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3y_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericB3e_EENtNtB5R_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ap, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !34073 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !34074
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !34075, !noalias !34038 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !34076
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !34077 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !34078
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !34079

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.af, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !34080
  %i.s = zext nneg i16 %i.r to i64, !dbg !34081
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !34082
  %i.u = and i64 %i.t, %.val7.i, !dbg !34082
  %i.v = load ptr, ptr %i.d, align 8, !dbg !34083, !alias.scope !34037, !noalias !34039, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !34084         ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.w, !dbg !34085
  %i.y = getelementptr i8, ptr %i.x, i64 -8, !dbg !34086
  %.val3.i.i = load i64, ptr %i.y, align 8, !dbg !34086, !noalias !34040, !noundef !666
  %i.z = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayShENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %.val3.i.i), !dbg !34087, !noalias !34040 ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 1, !dbg !34087
  %i.ab = icmp eq i64 %i.aa, %3, !dbg !34088
  br i1 %i.ab, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !34088, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ac = extractvalue { ptr, i64 } %i.z, 0, !dbg !34087
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ac, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %3), !dbg !34089, !alias.scope !34041, !noalias !34040
  %i.ad = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !34089
  br i1 %i.ad, label %bb.n, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !34090, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !34091
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !34092, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.ae = add i16 %.sroa.05.029.i.i, -1, !dbg !34093
  %i.af = and i16 %i.ae, %.sroa.05.029.i.i, !dbg !34094 ; 2 uses
  %.not.i.i = icmp eq i16 %i.af, 0, !dbg !34078
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !34079

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ag = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !34095
  %i.ah = bitcast <16 x i1> %i.ag to i16, !dbg !34095 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ah, 0, !dbg !34096
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !34097, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ah, i1 true), !dbg !34098
  %i.aj = zext nneg i16 %i.ai to i64, !dbg !34099
  %i.ak = add i64 %.sroa.0.017.i.i, %i.aj, !dbg !34100
  %i.al = and i64 %i.ak, %.val7.i, !dbg !34100
  br label %.thread.i.i, !dbg !34101

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.al, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !34102
  %i.an = bitcast <16 x i1> %i.am to i16, !dbg !34103
  %i.ao = icmp eq i16 %i.an, 0, !dbg !34104
  br i1 %i.ao, label %bb.e, label %bb.f, !dbg !34104, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ap = add i64 %i.n, 16, !dbg !34105           ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.0.017.i.i, !dbg !34106
  br label %bb.c, !dbg !34071

bb.f:                                             ; preds = %.thread.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !34107
  %i.as = load i8, ptr %i.ar, align 1, !dbg !34108, !noalias !34042, !noundef !666
  %i.at = icmp sgt i8 %i.as, -1, !dbg !34109
  br i1 %i.at, label %bb.g, label %bb.h, !dbg !34109, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !34110, !noalias !34042
  %i.au = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !34111
  %i.av = bitcast <16 x i1> %i.au to i16, !dbg !34111 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.av, 0, !dbg !34112
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true), !dbg !34113
  %i.ax = zext nneg i16 %i.aw to i64, !dbg !34113
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !34114
  br label %bb.h, !dbg !34115

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ax, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !34116 ; 3 uses
  %.val41 = load i64, ptr %i.ay, align 8, !dbg !34116, !noundef !666 ; 3 uses
  %i.az = icmp ult i64 %.val41, 576460752303423488, !dbg !34117
  tail call void @llvm.assume(i1 %i.az), !dbg !34118
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34043), !dbg !34119
  %i.ba = load ptr, ptr %i.d, align 8, !dbg !34120, !alias.scope !34043, !nonnull !666, !noundef !666 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.3.0.i.ph.i, !dbg !34121 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !34122, !noalias !34043, !noundef !666
  %i.bd = and i8 %i.bc, 1, !dbg !34123
  %i.be = zext nneg i8 %i.bd to i64, !dbg !34123
  %i.bf = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !34124
  %i.bg = load i64, ptr %i.i, align 8, !dbg !34125, !alias.scope !34043, !noundef !666
  %i.bh = and i64 %i.bg, %i.bf, !dbg !34126
  store i8 %i.k, ptr %i.bb, align 1, !dbg !34127, !noalias !34043
  %i.bi = getelementptr i8, ptr %i.ba, i64 %i.bh, !dbg !34128
  %i.bj = getelementptr i8, ptr %i.bi, i64 16, !dbg !34128
  store i8 %i.k, ptr %i.bj, align 1, !dbg !34129, !noalias !34043
  %i.bk = load <2 x i64>, ptr %i.e, align 8, !dbg !34130, !alias.scope !34043
  %i.bl = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.be, i64 0, !dbg !34130
  %i.bm = sub <2 x i64> %i.bk, %i.bl, !dbg !34130
  store <2 x i64> %i.bm, ptr %i.e, align 8, !dbg !34130, !alias.scope !34043
  %i.bn = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !34131
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %i.bn, !dbg !34132 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -16, !dbg !34133
  store i64 %i.c, ptr %i.bp, align 8, !dbg !34134, !noalias !34043
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -8, !dbg !34134
  store i64 %.val41, ptr %i.bq, align 8, !dbg !34134, !noalias !34043
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34045), !dbg !34135
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34046), !dbg !34136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34047), !dbg !34137, !noalias !34048
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !34138 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !dbg !34138, !range !795, !alias.scope !34049, !noalias !34050, !noundef !666 ; 2 uses
  %.not.i.i.i42 = icmp eq i64 %i.bs, -9223372036854775808, !dbg !34138
  br i1 %.not.i.i.i42, label %bb.l, label %bb.i, !dbg !34139

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !34140 ; 4 uses
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !34140, !alias.scope !34051, !noalias !34050, !noundef !666 ; 2 uses
  %i.bv = and i64 %i.bu, 7, !dbg !34141
  %i.bw = icmp eq i64 %i.bv, 0, !dbg !34141
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !dbg !34142, !alias.scope !34051, !noalias !34050 ; 4 uses
  br i1 %i.bw, label %bb.j, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i.i, !dbg !34140

bb.j:                                             ; preds = %bb.i
  %i.bz = icmp eq i64 %i.by, %i.bs, !dbg !34143
  br i1 %i.bz, label %bb.k, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i.i, !dbg !34143

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.br), !dbg !34144, !noalias !34050
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i.i, !dbg !34144

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !34145
  %i.cb = load ptr, ptr %i.ca, align 8, !dbg !34145, !alias.scope !34052, !noalias !34050, !nonnull !666, !noundef !666
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.by, !dbg !34146
  store i8 0, ptr %i.cc, align 1, !dbg !34147, !noalias !34050
  %i.cd = add i64 %i.by, 1, !dbg !34148           ; 2 uses
  store i64 %i.cd, ptr %i.bx, align 8, !dbg !34148, !alias.scope !34052, !noalias !34050
  %.pre.i.i.i = load i64, ptr %i.bt, align 8, !dbg !34149, !alias.scope !34051, !noalias !34050
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i.i, !dbg !34150

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i.i, %bb.i
  %i.ce = phi i64 [ %.pre.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i.i ], [ %i.bu, %bb.i ], !dbg !34149
  %i.cf = phi i64 [ %i.cd, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i.i ], [ %i.by, %bb.i ], !dbg !34151 ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.cf, 0, !dbg !34152
  tail call void @llvm.assume(i1 %.not.i.i.i.i), !dbg !34152, !noalias !34048
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !34153
  %i.ch = load ptr, ptr %i.cg, align 8, !dbg !34153, !alias.scope !34051, !noalias !34050, !nonnull !666, !noundef !666
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.cf, !dbg !34154
  %i.cj = getelementptr i8, ptr %i.ci, i64 -1, !dbg !34154 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ], !dbg !34155, !noalias !34048
  %i.ck = load i8, ptr %i.cj, align 1, !dbg !34156, !noalias !34050, !noundef !666
  %i.cl = trunc i64 %i.ce to i8, !dbg !34157
  %i.cm = and i8 %i.cl, 7, !dbg !34157
  %i.cn = shl nuw i8 1, %i.cm, !dbg !34157
  %i.co = or i8 %i.ck, %i.cn, !dbg !34158
  store i8 %i.co, ptr %i.cj, align 1, !dbg !34159, !noalias !34050
  %i.cp = load i64, ptr %i.bt, align 8, !dbg !34160, !alias.scope !34051, !noalias !34050, !noundef !666
  %i.cq = add i64 %i.cp, 1, !dbg !34160
  store i64 %i.cq, ptr %i.bt, align 8, !dbg !34160, !alias.scope !34051, !noalias !34050
  br label %bb.l, !dbg !34161

bb.l:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !34162, !noalias !34053
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !34162 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !34162, !alias.scope !34054, !noalias !34055, !noundef !666
  %i.ct = add i64 %i.cs, %3, !dbg !34162
  store i64 %i.ct, ptr %i.cr, align 8, !dbg !34162, !alias.scope !34054, !noalias !34055
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3), !dbg !34163, !noalias !34056
  %i.cu = load i64, ptr %i.ay, align 8, !dbg !34164, !alias.scope !34057, !noalias !34058, !noundef !666 ; 3 uses
  %i.cv = load i64, ptr %1, align 8, !dbg !34165, !range !790, !alias.scope !34057, !noalias !34058, !noundef !666
  %i.cw = icmp eq i64 %i.cu, %i.cv, !dbg !34166
  br i1 %i.cw, label %bb.m, label %bb.p, !dbg !34166

bb.m:                                             ; preds = %bb.l
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !34167, !noalias !34059
  br label %bb.p, !dbg !34167

bb.n:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayShEE14try_push_validRB3z_NCINvXs3_NtB1v_7mutableINtB47_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3T_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3T_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericB3z_EENtNtB6c_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.cx = load ptr, ptr %i.d, align 8, !dbg !34168, !alias.scope !34037, !noalias !34036, !nonnull !666, !noundef !666
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %i.w, !dbg !34169
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8, !dbg !34170
  %i.da = load i64, ptr %i.cz, align 8, !dbg !34170, !noundef !666
  br label %bb.o, !dbg !34171

bb.o:                                             ; preds = %bb.p, %bb.n
  %.val41.sink = phi i64 [ %.val41, %bb.p ], [ %i.da, %bb.n ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34172
  store i64 %.val41.sink, ptr %i.db, align 8, !dbg !34172
  store i64 18, ptr %0, align 8, !dbg !34172
  ret void, !dbg !34173

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !34174
  %i.dd = load ptr, ptr %i.dc, align 8, !dbg !34174, !alias.scope !34057, !noalias !34058, !nonnull !666, !noundef !666
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.cu, !dbg !34175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.de, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !34176, !noalias !34056
  %i.df = add i64 %i.cu, 1, !dbg !34177
  store i64 %i.df, ptr %i.ay, align 8, !dbg !34177, !alias.scope !34057, !noalias !34058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !34178, !noalias !34053
  br label %bb.o, !dbg !34171
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapyINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArrayyB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB2q_EE10try_extendINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityB2q_INtNtB7_8iterator15ArrayValuesIterINtB1o_22BinaryViewArrayGenericeEENtNtB4E_8iterator10BitmapIterEE0ECslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(200) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !34179 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !34384
  %i.c = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !34385 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !34386 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !34387 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !34387, !alias.scope !34359, !noalias !34360, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !34388
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapyINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayyB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !34389, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMapyINtNtNtB1k_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1i_7mutableINtB3Q_22MutableDictionaryArrayyB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3F_EE10try_extendINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityB3F_INtNtB1k_8iterator15ArrayValuesIterINtB2C_22BinaryViewArrayGenericeEENtNtB5V_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !34390, !noalias !34360 ; 0 uses
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapyINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayyB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !34391

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapyINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayyB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !34392, !alias.scope !34361, !noalias !34360, !nonnull !666, !noundef !666 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !34392 ; 2 uses
  %.val7.i = load i64, ptr %i.i, align 8, !dbg !34392, !alias.scope !34361, !noalias !34360, !noundef !666 ; 3 uses
  %i.j = lshr i64 %i.c, 57, !dbg !34393
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !34394 ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !34395

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapyINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayyB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapyINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayyB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.aq, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapyINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayyB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.4.120.i.i, %bb.e ], !dbg !34396
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapyINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayyB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %.sroa.01.122.i.i, %bb.e ], !dbg !34396
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapyINtNtNtB1c_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayyB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3x_EE10try_extendINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityB3x_INtNtB1c_8iterator15ArrayValuesIterINtB2u_22BinaryViewArrayGenericeEENtNtB5N_8iterator10BitmapIterEE0Es_0ECslFlrwjHoTci_14polars_compute.exit.i ], [ %i.ap, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i, !dbg !34397 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !34398
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !dbg !34399, !noalias !34362 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m, !dbg !34400
  %i.q = bitcast <16 x i1> %i.p to i16, !dbg !34401 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0, !dbg !34402
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !34403

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i
  %.sroa.05.029.i.i = phi i16 [ %i.af, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true), !dbg !34404
  %i.s = zext nneg i16 %i.r to i64, !dbg !34405
  %i.t = add i64 %.sroa.0.017.i.i, %i.s, !dbg !34406
  %i.u = and i64 %i.t, %.val7.i, !dbg !34406
  %i.v = load ptr, ptr %i.d, align 8, !dbg !34407, !alias.scope !34361, !noalias !34363, !nonnull !666, !noundef !666
  %i.w = sub nsw i64 0, %i.u, !dbg !34408         ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.w, !dbg !34409
  %i.y = getelementptr i8, ptr %i.x, i64 -8, !dbg !34410
  %.val3.i.i = load i64, ptr %i.y, align 8, !dbg !34410, !noalias !34364, !noundef !666
  %i.z = tail call { ptr, i64 } @_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9indexableINtNtNtB7_7binview7mutable22MutableBinaryViewArrayeENtB5_9Indexable18value_unchecked_atCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, i64 noundef %.val3.i.i), !dbg !34411, !noalias !34364 ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 1, !dbg !34411
  %i.ab = icmp eq i64 %i.aa, %3, !dbg !34412
  br i1 %i.ab, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !34412, !prof !754

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.lr.ph.i.i
  %i.ac = extractvalue { ptr, i64 } %i.z, 0, !dbg !34411
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ac, ptr nonnull readonly %2, i64 %3), !dbg !34413, !alias.scope !34365, !noalias !34364
  %i.ad = icmp eq i32 %bcmp.i.i.i.i, 0, !dbg !34413
  br i1 %i.ad, label %bb.n, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, !dbg !34414, !prof !756

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1, !dbg !34415
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !dbg !34416, !prof !675

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.thread.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i, %.lr.ph.i.i
  %i.ae = add i16 %.sroa.05.029.i.i, -1, !dbg !34417
  %i.af = and i16 %i.ae, %.sroa.05.029.i.i, !dbg !34418 ; 2 uses
  %.not.i.i = icmp eq i16 %i.af, 0, !dbg !34402
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !34403

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ag = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !34419
  %i.ah = bitcast <16 x i1> %i.ag to i16, !dbg !34419 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ah, 0, !dbg !34420
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !dbg !34421, !prof !675

.thread24.i.i:                                    ; preds = %bb.d
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ah, i1 true), !dbg !34422
  %i.aj = zext nneg i16 %i.ai to i64, !dbg !34423
  %i.ak = add i64 %.sroa.0.017.i.i, %i.aj, !dbg !34424
  %i.al = and i64 %i.ak, %.val7.i, !dbg !34424
  br label %.thread.i.i, !dbg !34425

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.al, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !34426
  %i.an = bitcast <16 x i1> %i.am to i16, !dbg !34427
  %i.ao = icmp eq i16 %i.an, 0, !dbg !34428
  br i1 %i.ao, label %bb.e, label %bb.f, !dbg !34428, !prof !675

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ap = add i64 %i.n, 16, !dbg !34429           ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.0.017.i.i, !dbg !34430
  br label %bb.c, !dbg !34395

bb.f:                                             ; preds = %.thread.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !34431
  %i.as = load i8, ptr %i.ar, align 1, !dbg !34432, !noalias !34366, !noundef !666
  %i.at = icmp sgt i8 %i.as, -1, !dbg !34433
  br i1 %i.at, label %bb.g, label %bb.h, !dbg !34433, !prof !675

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !34434, !noalias !34366
  %i.au = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !34435
  %i.av = bitcast <16 x i1> %i.au to i16, !dbg !34435 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.av, 0, !dbg !34436
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true), !dbg !34437
  %i.ax = zext nneg i16 %i.aw to i64, !dbg !34437
  tail call void @llvm.assume(i1 %.not.i23.i.i), !dbg !34438
  br label %bb.h, !dbg !34439

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ax, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !34440 ; 3 uses
  %.val41 = load i64, ptr %i.ay, align 8, !dbg !34440, !noundef !666 ; 3 uses
  %i.az = icmp ult i64 %.val41, 576460752303423488, !dbg !34441
  tail call void @llvm.assume(i1 %i.az), !dbg !34442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34367), !dbg !34443
  %i.ba = load ptr, ptr %i.d, align 8, !dbg !34444, !alias.scope !34367, !nonnull !666, !noundef !666 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.3.0.i.ph.i, !dbg !34445 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !34446, !noalias !34367, !noundef !666
  %i.bd = and i8 %i.bc, 1, !dbg !34447
  %i.be = zext nneg i8 %i.bd to i64, !dbg !34447
  %i.bf = add i64 %.sroa.3.0.i.ph.i, -16, !dbg !34448
  %i.bg = load i64, ptr %i.i, align 8, !dbg !34449, !alias.scope !34367, !noundef !666
  %i.bh = and i64 %i.bg, %i.bf, !dbg !34450
  store i8 %i.k, ptr %i.bb, align 1, !dbg !34451, !noalias !34367
  %i.bi = getelementptr i8, ptr %i.ba, i64 %i.bh, !dbg !34452
  %i.bj = getelementptr i8, ptr %i.bi, i64 16, !dbg !34452
  store i8 %i.k, ptr %i.bj, align 1, !dbg !34453, !noalias !34367
  %i.bk = load <2 x i64>, ptr %i.e, align 8, !dbg !34454, !alias.scope !34367
  %i.bl = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.be, i64 0, !dbg !34454
  %i.bm = sub <2 x i64> %i.bk, %i.bl, !dbg !34454
  store <2 x i64> %i.bm, ptr %i.e, align 8, !dbg !34454, !alias.scope !34367
  %i.bn = sub nsw i64 0, %.sroa.3.0.i.ph.i, !dbg !34455
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %i.bn, !dbg !34456 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -16, !dbg !34457
  store i64 %i.c, ptr %i.bp, align 8, !dbg !34458, !noalias !34367
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -8, !dbg !34458
  store i64 %.val41, ptr %i.bq, align 8, !dbg !34458, !noalias !34367
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34369), !dbg !34459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34370), !dbg !34460
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34371), !dbg !34461, !noalias !34372
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !34462 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !dbg !34462, !range !795, !alias.scope !34373, !noalias !34374, !noundef !666 ; 2 uses
  %.not.i.i.i42 = icmp eq i64 %i.bs, -9223372036854775808, !dbg !34462
  br i1 %.not.i.i.i42, label %bb.l, label %bb.i, !dbg !34463

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !34464 ; 4 uses
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !34464, !alias.scope !34375, !noalias !34374, !noundef !666 ; 2 uses
  %i.bv = and i64 %i.bu, 7, !dbg !34465
  %i.bw = icmp eq i64 %i.bv, 0, !dbg !34465
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !dbg !34466, !alias.scope !34375, !noalias !34374 ; 4 uses
  br i1 %i.bw, label %bb.j, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i.i, !dbg !34464

bb.j:                                             ; preds = %bb.i
  %i.bz = icmp eq i64 %i.by, %i.bs, !dbg !34467
  br i1 %i.bz, label %bb.k, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i.i, !dbg !34467

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.br), !dbg !34468, !noalias !34374
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i.i, !dbg !34468

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !34469
  %i.cb = load ptr, ptr %i.ca, align 8, !dbg !34469, !alias.scope !34376, !noalias !34374, !nonnull !666, !noundef !666
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.by, !dbg !34470
  store i8 0, ptr %i.cc, align 1, !dbg !34471, !noalias !34374
  %i.cd = add i64 %i.by, 1, !dbg !34472           ; 2 uses
  store i64 %i.cd, ptr %i.bx, align 8, !dbg !34472, !alias.scope !34376, !noalias !34374
  %.pre.i.i.i = load i64, ptr %i.bt, align 8, !dbg !34473, !alias.scope !34375, !noalias !34374
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i.i, !dbg !34474

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i.i, %bb.i
  %i.ce = phi i64 [ %.pre.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i.i ], [ %i.bu, %bb.i ], !dbg !34473
  %i.cf = phi i64 [ %i.cd, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCslFlrwjHoTci_14polars_compute.exit.i.i.i.i ], [ %i.by, %bb.i ], !dbg !34475 ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.cf, 0, !dbg !34476
  tail call void @llvm.assume(i1 %.not.i.i.i.i), !dbg !34476, !noalias !34372
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !34477
  %i.ch = load ptr, ptr %i.cg, align 8, !dbg !34477, !alias.scope !34375, !noalias !34374, !nonnull !666, !noundef !666
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.cf, !dbg !34478
  %i.cj = getelementptr i8, ptr %i.ci, i64 -1, !dbg !34478 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ], !dbg !34479, !noalias !34372
  %i.ck = load i8, ptr %i.cj, align 1, !dbg !34480, !noalias !34374, !noundef !666
  %i.cl = trunc i64 %i.ce to i8, !dbg !34481
  %i.cm = and i8 %i.cl, 7, !dbg !34481
  %i.cn = shl nuw i8 1, %i.cm, !dbg !34481
  %i.co = or i8 %i.ck, %i.cn, !dbg !34482
  store i8 %i.co, ptr %i.cj, align 1, !dbg !34483, !noalias !34374
  %i.cp = load i64, ptr %i.bt, align 8, !dbg !34484, !alias.scope !34375, !noalias !34374, !noundef !666
  %i.cq = add i64 %i.cp, 1, !dbg !34484
  store i64 %i.cq, ptr %i.bt, align 8, !dbg !34484, !alias.scope !34375, !noalias !34374
  br label %bb.l, !dbg !34485

bb.l:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !34486, !noalias !34377
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !34486 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !34486, !alias.scope !34378, !noalias !34379, !noundef !666
  %i.ct = add i64 %i.cs, %3, !dbg !34486
  store i64 %i.ct, ptr %i.cr, align 8, !dbg !34486, !alias.scope !34378, !noalias !34379
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !34487, !noalias !34380
  %i.cu = load i64, ptr %i.ay, align 8, !dbg !34488, !alias.scope !34381, !noalias !34382, !noundef !666 ; 3 uses
  %i.cv = load i64, ptr %1, align 8, !dbg !34489, !range !790, !alias.scope !34381, !noalias !34382, !noundef !666
  %i.cw = icmp eq i64 %i.cu, %i.cv, !dbg !34490
  br i1 %i.cw, label %bb.m, label %bb.p, !dbg !34490

bb.m:                                             ; preds = %bb.l
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %1), !dbg !34491, !noalias !34383
  br label %bb.p, !dbg !34491

bb.n:                                             ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTyyEE25find_or_find_insert_indexNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1t_8ValueMapyINtNtNtB1x_7binview7mutable22MutableBinaryViewArrayeEE14try_push_validReNCINvXs3_NtB1v_7mutableINtB43_22MutableDictionaryArrayyB2K_EINtB1x_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionB3S_EE10try_extendINtNtNtNtB1z_6bitmap5utils12zip_validity11ZipValidityB3S_INtNtB1x_8iterator15ArrayValuesIterINtB2P_22BinaryViewArrayGenericeEENtNtB68_8iterator10BitmapIterEE0E0NCB1p_s_0E0CslFlrwjHoTci_14polars_compute.exit.i
  %i.cx = load ptr, ptr %i.d, align 8, !dbg !34492, !alias.scope !34361, !noalias !34360, !nonnull !666, !noundef !666
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %i.w, !dbg !34493
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8, !dbg !34494
  %i.da = load i64, ptr %i.cz, align 8, !dbg !34494, !noundef !666
  br label %bb.o, !dbg !34495

bb.o:                                             ; preds = %bb.p, %bb.n
  %.val41.sink = phi i64 [ %.val41, %bb.p ], [ %i.da, %bb.n ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34496
  store i64 %.val41.sink, ptr %i.db, align 8, !dbg !34496
  store i64 18, ptr %0, align 8, !dbg !34496
  ret void, !dbg !34497

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !34498
  %i.dd = load ptr, ptr %i.dc, align 8, !dbg !34498, !alias.scope !34381, !noalias !34382, !nonnull !666, !noundef !666
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.cu, !dbg !34499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.de, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !34500, !noalias !34380
  %i.df = add i64 %i.cu, 1, !dbg !34501
  store i64 %i.df, ptr %i.ay, align 8, !dbg !34501, !alias.scope !34381, !noalias !34382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !34502, !noalias !34377
  br label %bb.o, !dbg !34495
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB3_8ValueMapyINtNtNtB7_9primitive7mutable21MutablePrimitiveArrayaEE14try_push_validaNCINvXs3_NtB5_7mutableINtB2B_22MutableDictionaryArrayyB1j_EINtB7_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionaEE10try_extendINtNtNtNtB3K_4iter8adapters3map3MapINtNtNtNtB9_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB3K_5slice4iter4IteraENtNtB5a_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to23primitive_to_dictionaryayE0EE0EB73_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(128) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !34503 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %2, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !34672
  %i.c = call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRaECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a), !dbg !34673 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !34674 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34657), !dbg !34675
  call void @llvm.experimental.noalias.scope.decl(metadata !34659), !dbg !34675
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !34676 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !34676, !alias.scope !34660, !noalias !34661, !noundef !666
  %i.g = icmp eq i64 %i.f, 0, !dbg !34677
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB18_8ValueMapyINtNtNtB1c_9primitive7mutable21MutablePrimitiveArrayaEE14try_push_validaNCINvXs3_NtB1a_7mutableINtB3I_22MutableDictionaryArrayyB2p_EINtB1c_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionaEE10try_extendINtNtNtNtB4T_4iter8adapters3map3MapINtNtNtNtB1e_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB4T_5slice4iter4IteraENtNtB6j_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to23primitive_to_dictionaryayE0EE0Es_0EB8d_.exit.i, !dbg !34678, !prof !675

bb.b:                                             ; preds = %bb.a
  %i.h = call { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTyyEE14reserve_rehashNCINvMNtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary9value_mapINtB1g_8ValueMapyINtNtNtB1k_9primitive7mutable21MutablePrimitiveArrayaEE14try_push_validaNCINvXs3_NtB1i_7mutableINtB3Q_22MutableDictionaryArrayyB2x_EINtB1k_9TryExtendINtNtCscgRAwXFJnXP_4core6option6OptionaEE10try_extendINtNtNtNtB51_4iter8adapters3map3MapINtNtNtNtB1m_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB51_5slice4iter4IteraENtNtB6r_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to23primitive_to_dictionaryayE0EE0Es_0EB8l_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, i1 noundef zeroext true), !dbg !34679, !noalias !34661 ; 0 uses
end_hunk_9
