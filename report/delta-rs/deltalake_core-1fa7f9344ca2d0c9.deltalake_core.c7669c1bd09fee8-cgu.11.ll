inline.NumInlined: 10475
inline.NumDeleted: 2844
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

bb.de:                                            ; preds = %bb.dd
  %i.arf = zext i1 %i.ard to i128
  %i.arg = zext nneg i8 %i.aqz to i128
  %i.arh = shl nuw nsw i128 %i.arf, %i.arg
  %i.ari = load i128, ptr %1, align 16, !alias.scope !4806, !noalias !4813, !noundef !3
  %i.arj = or i128 %i.ari, %i.arh
  %i.ark = add nuw i8 %i.aqz, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i

bb.df:                                            ; preds = %bb.dd
  %i.arl = load i128, ptr %1, align 16, !alias.scope !4806, !noalias !4813, !noundef !3 ; 2 uses
  %i.arm = trunc i128 %i.arl to i64
  %i.arn = lshr i128 %i.arl, 64
  %i.aro = load i64, ptr %i.b, align 8, !alias.scope !4806, !noalias !4813, !noundef !3
  %i.arp = xor i64 %i.aro, %i.arm
  %i.arq = load ptr, ptr %i.c, align 16, !alias.scope !4806, !noalias !4813, !nonnull !3, !align !65, !noundef !3
  %i.arr = load i64, ptr %i.arq, align 8, !noalias !4818, !noundef !3
  %i.ars = zext i64 %i.arp to i128
  %i.art = zext i64 %i.arr to i128
  %i.aru = xor i128 %i.arn, %i.art
  %i.arv = mul nuw i128 %i.aru, %i.ars            ; 2 uses
  %i.arw = lshr i128 %i.arv, 64
  %i.arx = xor i128 %i.arw, %i.arv
  %i.ary = trunc i128 %i.arx to i64
  store i64 %i.ary, ptr %i.b, align 8, !alias.scope !4806, !noalias !4813
  %i.arz = zext i1 %i.ard to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i: ; preds = %bb.df, %bb.de
  %.sink.i18 = phi i128 [ %i.arz, %bb.df ], [ %i.arj, %bb.de ] ; 5 uses
  %storemerge.i.i7.i = phi i8 [ 64, %bb.df ], [ %i.ark, %bb.de ] ; 5 uses
  store i128 %.sink.i18, ptr %1, align 16, !alias.scope !4806, !noalias !4813
  store i8 %storemerge.i.i7.i, ptr %i.a, align 16, !alias.scope !4806, !noalias !4813
  br i1 %i.ard, label %bb.dg, label %bb.do

bb.dg:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arb, i64 8
  %i.asb = load ptr, ptr %i.asa, align 8, !alias.scope !4813, !noalias !4815, !nonnull !3, !noundef !3 ; 8 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arb, i64 16
  %i.asd = load i64, ptr %i.asc, align 8, !alias.scope !4813, !noalias !4815, !noundef !3 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4827)
  %i.ase = load i64, ptr %i.b, align 8, !alias.scope !4829, !noalias !4830, !noundef !3 ; 2 uses
  %i.asf = tail call noundef i64 @llvm.fshr.i64(i64 %i.ase, i64 %i.ase, i64 %i.asd) ; 6 uses
  store i64 %i.asf, ptr %i.b, align 8, !alias.scope !4829, !noalias !4830
  %i.asg = icmp samesign ult i64 %i.asd, 17
  %i.ash = load ptr, ptr %i.c, align 16, !alias.scope !4829, !noalias !4830, !nonnull !3, !align !65, !noundef !3 ; 3 uses
  br i1 %i.asg, label %bb.di, label %bb.dh, !prof !708

bb.dh:                                            ; preds = %bb.dg
  %i.asi = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.asb, i64 noundef range(i64 0, -9223372036854775808) %i.asd, i64 noundef %i.asf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ash) #58, !noalias !4831
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i21

bb.di:                                            ; preds = %bb.dg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4835)
  %i.asj = getelementptr inbounds nuw i8, ptr %i.ash, i64 8
  %i.ask = load i64, ptr %i.asj, align 8, !alias.scope !4835, !noalias !4837, !noundef !3 ; 4 uses
  %i.asl = icmp samesign ugt i64 %i.asd, 7
  br i1 %i.asl, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i32, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.asm = icmp samesign ugt i64 %i.asd, 3
  br i1 %i.asm, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i29, label %bb.dk

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i32: ; preds = %bb.di
  %.sroa.014.0.copyload.i.i.i.i33 = load i64, ptr %i.asb, align 1, !alias.scope !4838, !noalias !4839
  %i.asn = xor i64 %.sroa.014.0.copyload.i.i.i.i33, %i.asf
  %i.aso = getelementptr i8, ptr %i.asb, i64 %i.asd
  %i.asp = getelementptr i8, ptr %i.aso, i64 -8
  %.sroa.016.0.copyload.i.i.i.i34 = load i64, ptr %i.asp, align 1, !alias.scope !4838, !noalias !4839
  %i.asq = xor i64 %.sroa.016.0.copyload.i.i.i.i34, %i.ask
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i26

bb.dk:                                            ; preds = %bb.dj
  %.not.i.i.i.i25 = icmp eq i64 %i.asd, 0
  br i1 %.not.i.i.i.i25, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i26, label %bb.dl

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i29: ; preds = %bb.dj
  %i.asr = getelementptr i8, ptr %i.asb, i64 %i.asd
  %i.ass = getelementptr i8, ptr %i.asr, i64 -4
  %.sroa.019.0.copyload.i.i.i.i30 = load i32, ptr %i.ass, align 1, !alias.scope !4838, !noalias !4839
  %.sroa.018.0.copyload.i.i.i.i31 = load i32, ptr %i.asb, align 1, !alias.scope !4838, !noalias !4839
  %i.ast = zext i32 %.sroa.018.0.copyload.i.i.i.i31 to i64
  %i.asu = xor i64 %i.asf, %i.ast
  %i.asv = zext i32 %.sroa.019.0.copyload.i.i.i.i30 to i64
  %i.asw = xor i64 %i.ask, %i.asv
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i26

bb.dl:                                            ; preds = %bb.dk
  %i.asx = load i8, ptr %i.asb, align 1, !alias.scope !4838, !noalias !4839, !noundef !3
  %i.asy = lshr i64 %i.asd, 1
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asb, i64 %i.asy
  %i.ata = load i8, ptr %i.asz, align 1, !alias.scope !4838, !noalias !4839, !noundef !3
  %i.atb = getelementptr i8, ptr %i.asb, i64 %i.asd
  %i.atc = getelementptr i8, ptr %i.atb, i64 -1
  %i.atd = load i8, ptr %i.atc, align 1, !alias.scope !4838, !noalias !4839, !noundef !3
  %i.ate = zext i8 %i.asx to i64
  %i.atf = xor i64 %i.asf, %i.ate
  %i.atg = zext i8 %i.atd to i64
  %i.ath = shl nuw nsw i64 %i.atg, 8
  %i.ati = zext i8 %i.ata to i64
  %i.atj = or disjoint i64 %i.ath, %i.ati
  %i.atk = xor i64 %i.atj, %i.ask
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i26

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i26: ; preds = %bb.dl, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i29, %bb.dk, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i32
  %.sroa.04.0.i.i.i.i27 = phi i64 [ %i.asq, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i32 ], [ %i.asw, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i29 ], [ %i.atk, %bb.dl ], [ %i.ask, %bb.dk ]
  %.sroa.0.0.i.i.i.i28 = phi i64 [ %i.asn, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i32 ], [ %i.asu, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i29 ], [ %i.atf, %bb.dl ], [ %i.asf, %bb.dk ]
  %i.atl = zext i64 %.sroa.0.0.i.i.i.i28 to i128
  %i.atm = zext i64 %.sroa.04.0.i.i.i.i27 to i128
  %i.atn = mul nuw i128 %i.atl, %i.atm            ; 2 uses
  %i.ato = lshr i128 %i.atn, 64
  %i.atp = xor i128 %i.ato, %i.atn
  %i.atq = trunc i128 %i.atp to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i21

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i21: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i26, %bb.dh
  %storemerge.i.i9.i = phi i64 [ %i.asi, %bb.dh ], [ %i.atq, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i26 ] ; 2 uses
  store i64 %storemerge.i.i9.i, ptr %i.b, align 8, !alias.scope !4829, !noalias !4830
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4843)
  %i.atr = icmp ugt i8 %storemerge.i.i7.i, 120
  br i1 %i.atr, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i21
  %i.ats = zext nneg i8 %storemerge.i.i7.i to i128
  %i.att = shl nuw i128 255, %i.ats
  %i.atu = or i128 %i.att, %.sink.i18
  %i.atv = add nuw i8 %storemerge.i.i7.i, 8
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i22

bb.dn:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i21
  %i.atw = trunc i128 %.sink.i18 to i64
  %i.atx = lshr i128 %.sink.i18, 64
  %i.aty = xor i64 %storemerge.i.i9.i, %i.atw
  %i.atz = load i64, ptr %i.ash, align 8, !noalias !4846, !noundef !3
  %i.aua = zext i64 %i.aty to i128
  %i.aub = zext i64 %i.atz to i128
  %i.auc = xor i128 %i.atx, %i.aub
  %i.aud = mul nuw i128 %i.auc, %i.aua            ; 2 uses
  %i.aue = lshr i128 %i.aud, 64
  %i.auf = xor i128 %i.aue, %i.aud
  %i.aug = trunc i128 %i.auf to i64
  store i64 %i.aug, ptr %i.b, align 8, !alias.scope !4847, !noalias !4848
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i22

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i22: ; preds = %bb.dn, %bb.dm
  %.sink.i.i23 = phi i128 [ 255, %bb.dn ], [ %i.atu, %bb.dm ] ; 2 uses
  %storemerge.i.i.i.i24 = phi i8 [ 8, %bb.dn ], [ %i.atv, %bb.dm ] ; 2 uses
  store i128 %.sink.i.i23, ptr %1, align 16, !alias.scope !4847, !noalias !4848
  store i8 %storemerge.i.i.i.i24, ptr %i.a, align 16, !alias.scope !4847, !noalias !4848
  br label %bb.do

bb.do:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i22, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i
  %i.auh = phi i128 [ %.sink.i.i23, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i22 ], [ %.sink.i18, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i ] ; 3 uses
  %i.aui = phi i8 [ %storemerge.i.i.i.i24, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i22 ], [ %storemerge.i.i7.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i ] ; 3 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %i.arb, i64 160 ; 2 uses
  %i.auk = load i64, ptr %i.auj, align 8, !range !311, !alias.scope !4813, !noalias !4815, !noundef !3 ; 3 uses
  %i.aul = icmp ne i64 %i.auk, -9223372036854775807 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4852)
  %i.aum = icmp ugt i8 %i.aui, 64
  br i1 %i.aum, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i: ; preds = %bb.do
  %i.aun = zext i1 %i.aul to i128
  %i.auo = zext nneg i8 %i.aui to i128
  %i.aup = shl nuw nsw i128 %i.aun, %i.auo
  %i.auq = or i128 %i.aup, %i.auh                 ; 4 uses
  store i128 %i.auq, ptr %1, align 16, !alias.scope !4855, !noalias !4813
  %i.aur = add nuw i8 %i.aui, 64
  store i8 %i.aur, ptr %i.a, align 16, !alias.scope !4855, !noalias !4813
  br i1 %i.aul, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i.i, label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i

_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i
  %i.aus = getelementptr inbounds nuw i8, ptr %i.arb, i64 24 ; 2 uses
  %i.aut = load i64, ptr %i.aus, align 8, !range !4, !alias.scope !4813, !noalias !4815, !noundef !3
  %i.auu = icmp ne i64 %i.aut, -9223372036854775808 ; 2 uses
  %i.auv = zext i1 %i.auu to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i: ; preds = %bb.do
  %i.auw = trunc i128 %i.auh to i64
  %i.aux = lshr i128 %i.auh, 64
  %i.auy = load i64, ptr %i.b, align 8, !alias.scope !4855, !noalias !4813, !noundef !3
  %i.auz = xor i64 %i.auy, %i.auw
  %i.ava = load ptr, ptr %i.c, align 16, !alias.scope !4855, !noalias !4813, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.avb = load i64, ptr %i.ava, align 8, !noalias !4856, !noundef !3
  %i.avc = zext i64 %i.auz to i128
  %i.avd = zext i64 %i.avb to i128
  %i.ave = xor i128 %i.aux, %i.avd
  %i.avf = mul nuw i128 %i.ave, %i.avc            ; 2 uses
  %i.avg = lshr i128 %i.avf, 64
  %i.avh = xor i128 %i.avg, %i.avf
  %i.avi = trunc i128 %i.avh to i64               ; 2 uses
  store i64 %i.avi, ptr %i.b, align 8, !alias.scope !4855, !noalias !4813
  %i.avj = zext i1 %i.aul to i128
  store i128 %i.avj, ptr %1, align 16, !alias.scope !4855, !noalias !4813
  store i8 64, ptr %i.a, align 16, !alias.scope !4855, !noalias !4813
  br i1 %i.aul, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i, label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread27.i

_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread27.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i
  %i.avk = getelementptr inbounds nuw i8, ptr %i.arb, i64 24 ; 2 uses
  %i.avl = load i64, ptr %i.avk, align 8, !range !4, !alias.scope !4813, !noalias !4815, !noundef !3
  %i.avm = icmp ne i64 %i.avl, -9223372036854775808 ; 2 uses
  %i.avn = zext i1 %i.avm to i64
  br label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i
  %i.avo = icmp eq i64 %i.auk, -9223372036854775808 ; 2 uses
  %i.avp = select i1 %i.avo, i128 18446744073709551617, i128 1
  store i128 %i.avp, ptr %1, align 16, !alias.scope !4857, !noalias !4864
  store i8 -128, ptr %i.a, align 16, !alias.scope !4857, !noalias !4864
  br i1 %i.avo, label %bb.dq, label %bb.dr

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4867)
  %i.avq = icmp eq i64 %i.auk, -9223372036854775808 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4869)
  %i.avr = trunc i128 %i.auq to i64
  %i.avs = lshr i128 %i.auq, 64
  %i.avt = load i64, ptr %i.b, align 8, !alias.scope !4857, !noalias !4864, !noundef !3
  %i.avu = xor i64 %i.avt, %i.avr
  %i.avv = load ptr, ptr %i.c, align 16, !alias.scope !4857, !noalias !4864, !nonnull !3, !align !65, !noundef !3
  %i.avw = load i64, ptr %i.avv, align 8, !noalias !4870, !noundef !3
  %i.avx = zext i64 %i.avu to i128
  %i.avy = zext i64 %i.avw to i128
  %i.avz = xor i128 %i.avs, %i.avy
  %i.awa = mul nuw i128 %i.avz, %i.avx            ; 2 uses
  %i.awb = lshr i128 %i.awa, 64
  %i.awc = xor i128 %i.awb, %i.awa
  %i.awd = trunc i128 %i.awc to i64
  store i64 %i.awd, ptr %i.b, align 8, !alias.scope !4857, !noalias !4864
  %i.awe = zext i1 %i.avq to i128
  store i128 %i.awe, ptr %1, align 16, !alias.scope !4857, !noalias !4864
  store i8 64, ptr %i.a, align 16, !alias.scope !4857, !noalias !4864
  br i1 %i.avq, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i.i
  %i.awf = getelementptr inbounds nuw i8, ptr %i.arb, i64 176
  %i.awg = load ptr, ptr %i.awf, align 8, !alias.scope !4864, !noalias !4871, !nonnull !3, !noundef !3
  %i.awh = getelementptr inbounds nuw i8, ptr %i.arb, i64 184
  %i.awi = load i64, ptr %i.awh, align 8, !alias.scope !4864, !noalias !4871, !noundef !3 ; 2 uses
  %i.awj = zext i64 %i.awi to i128
  %i.awk = shl nuw i128 %i.awj, 64
  %i.awl = or disjoint i128 %i.awk, 1
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.dq:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i
  %i.awm = getelementptr inbounds nuw i8, ptr %i.arb, i64 176
  %i.awn = load ptr, ptr %i.awm, align 8, !alias.scope !4864, !noalias !4871, !nonnull !3, !noundef !3
  %i.awo = getelementptr inbounds nuw i8, ptr %i.arb, i64 184
  %i.awp = load i64, ptr %i.awo, align 8, !alias.scope !4864, !noalias !4871, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4878)
  %i.awq = xor i64 %i.avi, 1
  %i.awr = load i64, ptr %i.ava, align 8, !noalias !4881, !noundef !3
  %i.aws = zext i64 %i.awq to i128
  %i.awt = xor i64 %i.awr, 1
  %i.awu = zext i64 %i.awt to i128
  %i.awv = mul nuw i128 %i.awu, %i.aws            ; 2 uses
  %i.aww = lshr i128 %i.awv, 64
  %i.awx = xor i128 %i.aww, %i.awv
  %i.awy = trunc i128 %i.awx to i64
  store i64 %i.awy, ptr %i.b, align 8, !alias.scope !4882, !noalias !4864
  %i.awz = zext i64 %i.awp to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.dq, %bb.dp
  %i.axa = phi i64 [ %i.awp, %bb.dq ], [ %i.awi, %bb.dp ]
  %i.axb = phi ptr [ %i.awn, %bb.dq ], [ %i.awg, %bb.dp ]
  %.sink.i.i.i = phi i128 [ %i.awz, %bb.dq ], [ %i.awl, %bb.dp ]
  %storemerge.i.i.i.i.i = phi i8 [ 64, %bb.dq ], [ -128, %bb.dp ]
  store i128 %.sink.i.i.i, ptr %1, align 16, !alias.scope !4882, !noalias !4864
  store i8 %storemerge.i.i.i.i.i, ptr %i.a, align 16, !alias.scope !4882, !noalias !4864
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.axb, i64 noundef %i.axa, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !4866
  br label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

bb.dr:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.auj, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.dr, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.pr.i = load i8, ptr %i.a, align 16, !alias.scope !4883, !noalias !4813 ; 2 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %i.arb, i64 24 ; 3 uses
  %i.axd = load i64, ptr %i.axc, align 8, !range !4, !alias.scope !4813, !noalias !4815, !noundef !3
  %i.axe = icmp ne i64 %i.axd, -9223372036854775808 ; 3 uses
  %i.axf = zext i1 %i.axe to i64                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4889)
  %i.axg = icmp ugt i8 %.pr.i, 64
  %.pre41.i = load i128, ptr %1, align 16, !alias.scope !4883, !noalias !4813 ; 2 uses
  br i1 %i.axg, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i, label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i

_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i: ; preds = %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread27.i
  %i.axh = phi i128 [ 0, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread27.i ], [ %.pre41.i, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.axi = phi i64 [ %i.avn, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread27.i ], [ %i.axf, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.axj = phi i1 [ %i.avm, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread27.i ], [ %i.axe, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.axk = phi ptr [ %i.avk, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread27.i ], [ %i.axc, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.axl = phi i8 [ 64, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread27.i ], [ %.pr.i, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.axm = zext nneg i64 %i.axi to i128
  %i.axn = zext nneg i8 %i.axl to i128
  %i.axo = shl nuw nsw i128 %i.axm, %i.axn
  %i.axp = or i128 %i.axo, %i.axh                 ; 2 uses
  store i128 %i.axp, ptr %1, align 16, !alias.scope !4883, !noalias !4813
  %i.axq = add nuw i8 %i.axl, 64                  ; 2 uses
  store i8 %i.axq, ptr %i.a, align 16, !alias.scope !4883, !noalias !4813
  br i1 %i.axj, label %bb.ds, label %bb.dv

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i: ; preds = %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.axr = phi i128 [ %i.auq, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %.pre41.i, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.axs = phi i64 [ %i.auv, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.axf, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.axt = phi i1 [ %i.auu, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.axe, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.axu = phi ptr [ %i.aus, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.axc, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.axv = trunc i128 %i.axr to i64
  %i.axw = lshr i128 %i.axr, 64
  %i.axx = load i64, ptr %i.b, align 8, !alias.scope !4883, !noalias !4813, !noundef !3
  %i.axy = xor i64 %i.axx, %i.axv
  %i.axz = load ptr, ptr %i.c, align 16, !alias.scope !4883, !noalias !4813, !nonnull !3, !align !65, !noundef !3
  %i.aya = load i64, ptr %i.axz, align 8, !noalias !4890, !noundef !3
  %i.ayb = zext i64 %i.axy to i128
  %i.ayc = zext i64 %i.aya to i128
  %i.ayd = xor i128 %i.axw, %i.ayc
  %i.aye = mul nuw i128 %i.ayd, %i.ayb            ; 2 uses
  %i.ayf = lshr i128 %i.aye, 64
  %i.ayg = xor i128 %i.ayf, %i.aye
  %i.ayh = trunc i128 %i.ayg to i64
  store i64 %i.ayh, ptr %i.b, align 8, !alias.scope !4883, !noalias !4813
  %i.ayi = zext nneg i64 %i.axs to i128           ; 2 uses
  store i128 %i.ayi, ptr %1, align 16, !alias.scope !4883, !noalias !4813
  store i8 64, ptr %i.a, align 16, !alias.scope !4883, !noalias !4813
  br i1 %i.axt, label %bb.ds, label %.thread29.i

.thread29.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.arb, i64 112 ; 2 uses
  %i.ayk = load i64, ptr %i.ayj, align 8, !range !4, !alias.scope !4813, !noalias !4815, !noundef !3
  %i.ayl = icmp ne i64 %i.ayk, -9223372036854775808
  br label %bb.dw

bb.ds:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i
  %i.aym = phi ptr [ %i.axk, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i ], [ %i.axu, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4894)
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aym, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aym, i64 72
  %i.ayo = load ptr, ptr %i.ayn, align 8, !alias.scope !4896, !noalias !4897, !nonnull !3, !noundef !3
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.aym, i64 80
  %i.ayq = load i64, ptr %i.ayp, align 8, !alias.scope !4896, !noalias !4897, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4904)
  %i.ayr = load i8, ptr %i.a, align 16, !alias.scope !4907, !noalias !4896, !noundef !3 ; 3 uses
  %i.ays = icmp ugt i8 %i.ayr, 64
  br i1 %i.ays, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ayt = zext i64 %i.ayq to i128
  %i.ayu = zext nneg i8 %i.ayr to i128
  %i.ayv = shl nuw i128 %i.ayt, %i.ayu
  %i.ayw = load i128, ptr %1, align 16, !alias.scope !4907, !noalias !4896, !noundef !3
  %i.ayx = or i128 %i.ayw, %i.ayv
  %i.ayy = add nuw i8 %i.ayr, 64
  br label %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

bb.du:                                            ; preds = %bb.ds
  %i.ayz = load i128, ptr %1, align 16, !alias.scope !4907, !noalias !4896, !noundef !3 ; 2 uses
  %i.aza = trunc i128 %i.ayz to i64
  %i.azb = lshr i128 %i.ayz, 64
  %i.azc = load i64, ptr %i.b, align 8, !alias.scope !4907, !noalias !4896, !noundef !3
  %i.azd = xor i64 %i.azc, %i.aza
  %i.aze = load ptr, ptr %i.c, align 16, !alias.scope !4907, !noalias !4896, !nonnull !3, !align !65, !noundef !3
  %i.azf = load i64, ptr %i.aze, align 8, !noalias !4908, !noundef !3
  %i.azg = zext i64 %i.azd to i128
  %i.azh = zext i64 %i.azf to i128
  %i.azi = xor i128 %i.azb, %i.azh
  %i.azj = mul nuw i128 %i.azi, %i.azg            ; 2 uses
  %i.azk = lshr i128 %i.azj, 64
  %i.azl = xor i128 %i.azk, %i.azj
  %i.azm = trunc i128 %i.azl to i64
  store i64 %i.azm, ptr %i.b, align 8, !alias.scope !4907, !noalias !4896
  %i.azn = zext i64 %i.ayq to i128
  br label %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.du, %bb.dt
  %.sink.i.i11.i = phi i128 [ %i.azn, %bb.du ], [ %i.ayx, %bb.dt ]
  %storemerge.i.i.i.i12.i = phi i8 [ 64, %bb.du ], [ %i.ayy, %bb.dt ]
  store i128 %.sink.i.i11.i, ptr %1, align 16, !alias.scope !4907, !noalias !4896
  store i8 %storemerge.i.i.i.i12.i, ptr %i.a, align 16, !alias.scope !4907, !noalias !4896
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ayo, i64 noundef %i.ayq, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %.pr28.i = load i8, ptr %i.a, align 16, !alias.scope !4909, !noalias !4813
  %.pre.pre.i = load i128, ptr %1, align 16, !alias.scope !4909, !noalias !4813
  br label %bb.dv

bb.dv:                                            ; preds = %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i
  %.pre.i = phi i128 [ %i.axp, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i ], [ %.pre.pre.i, %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %i.azo = phi i8 [ %i.axq, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i ], [ %.pr28.i, %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %i.arb, i64 112 ; 3 uses
  %i.azq = load i64, ptr %i.azp, align 8, !range !4, !alias.scope !4813, !noalias !4815, !noundef !3
  %i.azr = icmp ne i64 %i.azq, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4915)
  %i.azs = icmp ugt i8 %i.azo, 64
  br i1 %i.azs, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i20, label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %.thread29.i
  %i.azt = phi i128 [ %i.ayi, %.thread29.i ], [ %.pre.i, %bb.dv ]
  %i.azu = phi i1 [ %i.ayl, %.thread29.i ], [ %i.azr, %bb.dv ] ; 2 uses
  %i.azv = phi ptr [ %i.ayj, %.thread29.i ], [ %i.azp, %bb.dv ] ; 2 uses
  %i.azw = phi i8 [ 64, %.thread29.i ], [ %i.azo, %bb.dv ] ; 3 uses
  %i.azx = zext i1 %i.azu to i128
  %i.azy = zext nneg i8 %i.azw to i128
  %i.azz = shl nuw nsw i128 %i.azx, %i.azy
  %i.baa = or i128 %i.azz, %i.azt                 ; 5 uses
  store i128 %i.baa, ptr %1, align 16, !alias.scope !4909, !noalias !4813
  %i.bab = add nuw i8 %i.azw, 64                  ; 2 uses
  store i8 %i.bab, ptr %i.a, align 16, !alias.scope !4909, !noalias !4813
  br i1 %i.azu, label %bb.dx, label %bb.ec

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i20: ; preds = %bb.dv
  %i.bac = trunc i128 %.pre.i to i64
  %i.bad = lshr i128 %.pre.i, 64
  %i.bae = load i64, ptr %i.b, align 8, !alias.scope !4909, !noalias !4813, !noundef !3
  %i.baf = xor i64 %i.bae, %i.bac
  %i.bag = load ptr, ptr %i.c, align 16, !alias.scope !4909, !noalias !4813, !nonnull !3, !align !65, !noundef !3
  %i.bah = load i64, ptr %i.bag, align 8, !noalias !4916, !noundef !3
  %i.bai = zext i64 %i.baf to i128
  %i.baj = zext i64 %i.bah to i128
  %i.bak = xor i128 %i.bad, %i.baj
  %i.bal = mul nuw i128 %i.bak, %i.bai            ; 2 uses
  %i.bam = lshr i128 %i.bal, 64
  %i.ban = xor i128 %i.bam, %i.bal
  %i.bao = trunc i128 %i.ban to i64
  store i64 %i.bao, ptr %i.b, align 8, !alias.scope !4909, !noalias !4813
  %i.bap = zext i1 %i.azr to i128
  store i128 %i.bap, ptr %1, align 16, !alias.scope !4909, !noalias !4813
  store i8 64, ptr %i.a, align 16, !alias.scope !4909, !noalias !4813
  br i1 %i.azr, label %.thread31.i, label %.thread35.i

.thread35.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i20
  %i.baq = getelementptr inbounds nuw i8, ptr %i.arb, i64 224 ; 2 uses
  %i.bar = load i64, ptr %i.baq, align 8, !range !311, !alias.scope !4813, !noalias !4815, !noundef !3 ; 2 uses
  %i.bas = icmp ne i64 %i.bar, -9223372036854775807
  br label %bb.ed

.thread31.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i20
  %i.bat = getelementptr inbounds nuw i8, ptr %i.arb, i64 120
  %i.bau = load ptr, ptr %i.bat, align 8, !alias.scope !4917, !noalias !4920, !nonnull !3, !noundef !3
  %i.bav = getelementptr inbounds nuw i8, ptr %i.arb, i64 128
  %i.baw = load i64, ptr %i.bav, align 8, !alias.scope !4917, !noalias !4920, !noundef !3
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4924)
  %i.bax = getelementptr inbounds nuw i8, ptr %i.arb, i64 120
  %i.bay = load ptr, ptr %i.bax, align 8, !alias.scope !4926, !noalias !4927, !nonnull !3, !noundef !3 ; 2 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %i.arb, i64 128
  %i.bba = load i64, ptr %i.baz, align 8, !alias.scope !4926, !noalias !4927, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4934)
  %.not.i = icmp eq i8 %i.azw, 0
  br i1 %.not.i, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx, %.thread31.i
  %i.bbb = phi i128 [ 1, %.thread31.i ], [ %i.baa, %bb.dx ]
  %i.bbc = phi i64 [ %i.baw, %.thread31.i ], [ %i.bba, %bb.dx ] ; 2 uses
  %i.bbd = phi ptr [ %i.bau, %.thread31.i ], [ %i.bay, %bb.dx ]
  %i.bbe = phi ptr [ %i.azp, %.thread31.i ], [ %i.azv, %bb.dx ]
  %i.bbf = zext i64 %i.bbc to i128
  %i.bbg = shl nuw i128 %i.bbf, 64
  %i.bbh = or i128 %i.bbg, %i.bbb
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i13.i

bb.dz:                                            ; preds = %bb.dx
  %i.bbi = trunc i128 %i.baa to i64
  %i.bbj = lshr i128 %i.baa, 64
  %i.bbk = load i64, ptr %i.b, align 8, !alias.scope !4937, !noalias !4926, !noundef !3
  %i.bbl = xor i64 %i.bbk, %i.bbi
  %i.bbm = load ptr, ptr %i.c, align 16, !alias.scope !4937, !noalias !4926, !nonnull !3, !align !65, !noundef !3
  %i.bbn = load i64, ptr %i.bbm, align 8, !noalias !4938, !noundef !3
  %i.bbo = zext i64 %i.bbl to i128
  %i.bbp = zext i64 %i.bbn to i128
  %i.bbq = xor i128 %i.bbj, %i.bbp
  %i.bbr = mul nuw i128 %i.bbq, %i.bbo            ; 2 uses
  %i.bbs = lshr i128 %i.bbr, 64
  %i.bbt = xor i128 %i.bbs, %i.bbr
  %i.bbu = trunc i128 %i.bbt to i64
  store i64 %i.bbu, ptr %i.b, align 8, !alias.scope !4937, !noalias !4926
  %i.bbv = zext i64 %i.bba to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i13.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i13.i: ; preds = %bb.dz, %bb.dy
  %i.bbw = phi i64 [ %i.bba, %bb.dz ], [ %i.bbc, %bb.dy ]
  %i.bbx = phi ptr [ %i.bay, %bb.dz ], [ %i.bbd, %bb.dy ]
  %i.bby = phi ptr [ %i.azv, %bb.dz ], [ %i.bbe, %bb.dy ] ; 2 uses
  %.sink.i.i14.i = phi i128 [ %i.bbv, %bb.dz ], [ %i.bbh, %bb.dy ]
  %storemerge.i.i.i.i15.i = phi i8 [ 64, %bb.dz ], [ -128, %bb.dy ]
  store i128 %.sink.i.i14.i, ptr %1, align 16, !alias.scope !4937, !noalias !4926
  store i8 %storemerge.i.i.i.i15.i, ptr %i.a, align 16, !alias.scope !4937, !noalias !4926
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bbx, i64 noundef %i.bbw, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !4922
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bby, i64 32
  %i.bca = load ptr, ptr %i.bbz, align 8, !alias.scope !4926, !noalias !4927, !nonnull !3, !noundef !3
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bby, i64 40
  %i.bcc = load i64, ptr %i.bcb, align 8, !alias.scope !4926, !noalias !4927, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4945)
  %i.bcd = load i8, ptr %i.a, align 16, !alias.scope !4948, !noalias !4926, !noundef !3 ; 3 uses
  %i.bce = icmp ugt i8 %i.bcd, 64
  br i1 %i.bce, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i13.i
  %i.bcf = zext i64 %i.bcc to i128
  %i.bcg = zext nneg i8 %i.bcd to i128
  %i.bch = shl nuw i128 %i.bcf, %i.bcg
  %i.bci = load i128, ptr %1, align 16, !alias.scope !4948, !noalias !4926, !noundef !3
  %i.bcj = or i128 %i.bci, %i.bch
  %i.bck = add nuw i8 %i.bcd, 64
  br label %_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

bb.eb:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i13.i
  %i.bcl = load i128, ptr %1, align 16, !alias.scope !4948, !noalias !4926, !noundef !3 ; 2 uses
  %i.bcm = trunc i128 %i.bcl to i64
  %i.bcn = lshr i128 %i.bcl, 64
  %i.bco = load i64, ptr %i.b, align 8, !alias.scope !4948, !noalias !4926, !noundef !3
  %i.bcp = xor i64 %i.bco, %i.bcm
  %i.bcq = load ptr, ptr %i.c, align 16, !alias.scope !4948, !noalias !4926, !nonnull !3, !align !65, !noundef !3
  %i.bcr = load i64, ptr %i.bcq, align 8, !noalias !4949, !noundef !3
  %i.bcs = zext i64 %i.bcp to i128
  %i.bct = zext i64 %i.bcr to i128
  %i.bcu = xor i128 %i.bcn, %i.bct
  %i.bcv = mul nuw i128 %i.bcu, %i.bcs            ; 2 uses
  %i.bcw = lshr i128 %i.bcv, 64
  %i.bcx = xor i128 %i.bcw, %i.bcv
  %i.bcy = trunc i128 %i.bcx to i64
  store i64 %i.bcy, ptr %i.b, align 8, !alias.scope !4948, !noalias !4926
  %i.bcz = zext i64 %i.bcc to i128
  br label %_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.eb, %bb.ea
  %.sink.i1.i.i = phi i128 [ %i.bcz, %bb.eb ], [ %i.bcj, %bb.ea ]
  %storemerge.i.i.i2.i.i = phi i8 [ 64, %bb.eb ], [ %i.bck, %bb.ea ]
  store i128 %.sink.i1.i.i, ptr %1, align 16, !alias.scope !4948, !noalias !4926
  store i8 %storemerge.i.i.i2.i.i, ptr %i.a, align 16, !alias.scope !4948, !noalias !4926
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.bca, i64 noundef %i.bcc, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !4922
  %.pr34.i = load i8, ptr %i.a, align 16, !alias.scope !4950, !noalias !4813
  %.pre42.pre.i = load i128, ptr %1, align 16, !alias.scope !4950, !noalias !4813
  br label %bb.ec

bb.ec:                                            ; preds = %_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.dw
  %.pre42.i = phi i128 [ %i.baa, %bb.dw ], [ %.pre42.pre.i, %_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %i.bda = phi i8 [ %i.bab, %bb.dw ], [ %.pr34.i, %_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.arb, i64 224 ; 4 uses
  %i.bdc = load i64, ptr %i.bdb, align 8, !range !311, !alias.scope !4813, !noalias !4815, !noundef !3 ; 3 uses
  %i.bdd = icmp ne i64 %i.bdc, -9223372036854775807 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4956)
  %i.bde = icmp ugt i8 %i.bda, 64
  br i1 %i.bde, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i19, label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %.thread35.i
  %i.bdf = phi i128 [ 0, %.thread35.i ], [ %.pre42.i, %bb.ec ]
  %i.bdg = phi i1 [ %i.bas, %.thread35.i ], [ %i.bdd, %bb.ec ] ; 2 uses
  %i.bdh = phi i64 [ %i.bar, %.thread35.i ], [ %i.bdc, %bb.ec ]
  %i.bdi = phi ptr [ %i.baq, %.thread35.i ], [ %i.bdb, %bb.ec ] ; 3 uses
  %i.bdj = phi i8 [ 64, %.thread35.i ], [ %i.bda, %bb.ec ] ; 3 uses
  %i.bdk = zext i1 %i.bdg to i128
  %i.bdl = zext nneg i8 %i.bdj to i128
  %i.bdm = shl nuw nsw i128 %i.bdk, %i.bdl
  %i.bdn = or i128 %i.bdm, %i.bdf                 ; 5 uses
  store i128 %i.bdn, ptr %1, align 16, !alias.scope !4950, !noalias !4813
  %i.bdo = add nuw i8 %i.bdj, 64
  store i8 %i.bdo, ptr %i.a, align 16, !alias.scope !4950, !noalias !4813
  br i1 %i.bdg, label %bb.ee, label %common.ret511

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i19: ; preds = %bb.ec
  %i.bdp = trunc i128 %.pre42.i to i64
  %i.bdq = lshr i128 %.pre42.i, 64
  %i.bdr = load i64, ptr %i.b, align 8, !alias.scope !4950, !noalias !4813, !noundef !3
  %i.bds = xor i64 %i.bdr, %i.bdp
  %i.bdt = load ptr, ptr %i.c, align 16, !alias.scope !4950, !noalias !4813, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.bdu = load i64, ptr %i.bdt, align 8, !noalias !4957, !noundef !3
  %i.bdv = zext i64 %i.bds to i128
  %i.bdw = zext i64 %i.bdu to i128
  %i.bdx = xor i128 %i.bdq, %i.bdw
  %i.bdy = mul nuw i128 %i.bdx, %i.bdv            ; 2 uses
  %i.bdz = lshr i128 %i.bdy, 64
  %i.bea = xor i128 %i.bdz, %i.bdy
  %i.beb = trunc i128 %i.bea to i64               ; 2 uses
  store i64 %i.beb, ptr %i.b, align 8, !alias.scope !4950, !noalias !4813
  %i.bec = zext i1 %i.bdd to i128
  store i128 %i.bec, ptr %1, align 16, !alias.scope !4950, !noalias !4813
  store i8 64, ptr %i.a, align 16, !alias.scope !4950, !noalias !4813
  br i1 %i.bdd, label %.thread37.i, label %common.ret511

.thread37.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i19
  %i.bed = icmp eq i64 %i.bdc, -9223372036854775808 ; 2 uses
  %i.bee = select i1 %i.bed, i128 18446744073709551617, i128 1
  store i128 %i.bee, ptr %1, align 16, !alias.scope !4958, !noalias !4965
  store i8 -128, ptr %i.a, align 16, !alias.scope !4958, !noalias !4965
  br i1 %i.bed, label %bb.eg, label %bb.eh

bb.ee:                                            ; preds = %bb.ed
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4968)
  %i.bef = icmp eq i64 %i.bdh, -9223372036854775808 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4970)
  %.not40.i = icmp eq i8 %i.bdj, 0
  br i1 %.not40.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i21.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i: ; preds = %bb.ee
  %i.beg = select i1 %i.bef, i128 18446744073709551616, i128 0
  %i.beh = or i128 %i.bdn, %i.beg                 ; 2 uses
  store i128 %i.beh, ptr %1, align 16, !alias.scope !4958, !noalias !4965
  store i8 -128, ptr %i.a, align 16, !alias.scope !4958, !noalias !4965
  br i1 %i.bef, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge, label %bb.eh

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i
  %extract.t.i = trunc i128 %i.bdn to i64
  %.pre216 = load i64, ptr %i.b, align 8, !alias.scope !4971, !noalias !4965
  %.pre217 = load ptr, ptr %i.c, align 16, !alias.scope !4971, !noalias !4965
  %2 = lshr i128 %i.beh, 64
  br label %bb.eg

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i21.i: ; preds = %bb.ee
  %i.bei = trunc i128 %i.bdn to i64
  %i.bej = lshr i128 %i.bdn, 64
  %i.bek = load i64, ptr %i.b, align 8, !alias.scope !4958, !noalias !4965, !noundef !3
  %i.bel = xor i64 %i.bek, %i.bei
  %i.bem = load ptr, ptr %i.c, align 16, !alias.scope !4958, !noalias !4965, !nonnull !3, !align !65, !noundef !3
  %i.ben = load i64, ptr %i.bem, align 8, !noalias !4978, !noundef !3
  %i.beo = zext i64 %i.bel to i128
  %i.bep = zext i64 %i.ben to i128
  %i.beq = xor i128 %i.bej, %i.bep
  %i.ber = mul nuw i128 %i.beq, %i.beo            ; 2 uses
  %i.bes = lshr i128 %i.ber, 64
  %i.bet = xor i128 %i.bes, %i.ber
  %i.beu = trunc i128 %i.bet to i64
  store i64 %i.beu, ptr %i.b, align 8, !alias.scope !4958, !noalias !4965
  %i.bev = zext i1 %i.bef to i128
  store i128 %i.bev, ptr %1, align 16, !alias.scope !4958, !noalias !4965
  store i8 64, ptr %i.a, align 16, !alias.scope !4958, !noalias !4965
  br i1 %i.bef, label %bb.ef, label %bb.eh

bb.ef:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i21.i
  %i.bew = getelementptr inbounds nuw i8, ptr %i.arb, i64 240
  %i.bex = load ptr, ptr %i.bew, align 8, !alias.scope !4965, !noalias !4979, !nonnull !3, !noundef !3
  %i.bey = getelementptr inbounds nuw i8, ptr %i.arb, i64 248
  %i.bez = load i64, ptr %i.bey, align 8, !alias.scope !4965, !noalias !4979, !noundef !3 ; 2 uses
  %i.bfa = zext i64 %i.bez to i128
  %i.bfb = shl nuw i128 %i.bfa, 64
  %i.bfc = or disjoint i128 %i.bfb, 1
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i18.i

bb.eg:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge, %.thread37.i
  %i.bfd = phi ptr [ %i.bdt, %.thread37.i ], [ %.pre217, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %i.bfe = phi i64 [ %i.beb, %.thread37.i ], [ %.pre216, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %i.bff = phi i128 [ 1, %.thread37.i ], [ %2, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %i.bfg = phi ptr [ %i.bdb, %.thread37.i ], [ %i.bdi, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ] ; 2 uses
  %.off0.i = phi i64 [ 1, %.thread37.i ], [ %extract.t.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfg, i64 16
  %i.bfi = load ptr, ptr %i.bfh, align 8, !alias.scope !4965, !noalias !4979, !nonnull !3, !noundef !3
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfg, i64 24
  %i.bfk = load i64, ptr %i.bfj, align 8, !alias.scope !4965, !noalias !4979, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4982)
  %i.bfl = xor i64 %i.bfe, %.off0.i
  %i.bfm = load i64, ptr %i.bfd, align 8, !noalias !4983, !noundef !3
  %i.bfn = zext i64 %i.bfl to i128
  %i.bfo = zext i64 %i.bfm to i128
  %i.bfp = xor i128 %i.bff, %i.bfo
  %i.bfq = mul nuw i128 %i.bfp, %i.bfn            ; 2 uses
  %i.bfr = lshr i128 %i.bfq, 64
  %i.bfs = xor i128 %i.bfr, %i.bfq
  %i.bft = trunc i128 %i.bfs to i64
  store i64 %i.bft, ptr %i.b, align 8, !alias.scope !4971, !noalias !4965
  %i.bfu = zext i64 %i.bfk to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i18.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i18.i: ; preds = %bb.eg, %bb.ef
  %i.bfv = phi i64 [ %i.bfk, %bb.eg ], [ %i.bez, %bb.ef ]
  %i.bfw = phi ptr [ %i.bfi, %bb.eg ], [ %i.bex, %bb.ef ]
  %.sink.i.i19.i = phi i128 [ %i.bfu, %bb.eg ], [ %i.bfc, %bb.ef ]
  %storemerge.i.i.i.i20.i = phi i8 [ 64, %bb.eg ], [ -128, %bb.ef ]
  store i128 %.sink.i.i19.i, ptr %1, align 16, !alias.scope !4971, !noalias !4965
  store i8 %storemerge.i.i.i.i20.i, ptr %i.a, align 16, !alias.scope !4971, !noalias !4965
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bfw, i64 noundef %i.bfv, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !4967
  br label %common.ret511

bb.eh:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i21.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i, %.thread37.i
  %i.bfx = phi ptr [ %i.bdi, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i21.i ], [ %i.bdi, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i ], [ %i.bdb, %.thread37.i ] ; 2 uses
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bfx, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfx, i64 64
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bfy, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %common.ret511
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [1 x i8], align 1                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [1 x i8], align 1                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [1 x i8], align 1                ; 4 uses
  %i.ad = alloca [1 x i8], align 1                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [4 x i8], align 4                ; 4 uses
  %i.ag = alloca [1 x i8], align 1                ; 4 uses
  %i.ah = alloca [1 x i8], align 1                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [4 x i8], align 4                ; 4 uses
  %i.ak = alloca [1 x i8], align 1                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [1 x i8], align 1                ; 4 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [1 x i8], align 1                ; 4 uses
  %i.ba = alloca [8 x i8], align 8                ; 4 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [1 x i8], align 1                ; 4 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [8 x i8], align 8                ; 4 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [8 x i8], align 8                ; 4 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [1 x i8], align 1                ; 4 uses
  %i.bm = alloca [8 x i8], align 8                ; 4 uses
  %i.bn = alloca [8 x i8], align 8                ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 74 uses
  %i.bo = load i64, ptr %.tr, align 16, !range !1420, !noundef !3 ; 4 uses
  %i.bp = icmp ne i64 %i.bo, 35
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add nsw i64 %i.bo, -4
  %i.br = icmp samesign ugt i64 %i.bo, 3
  %i.bs = select i1 %i.br, i64 %i.bq, i64 31      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !4984
  store i64 %i.bs, ptr %i.bn, align 8, !noalias !4984
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !4984
  switch i64 %i.bs, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.i
    i64 6, label %bb.k
    i64 7, label %tailrecurse.backedge.sink.split
    i64 8, label %tailrecurse.backedge.sink.split
    i64 9, label %tailrecurse.backedge.sink.split
    i64 10, label %tailrecurse.backedge.sink.split
    i64 11, label %tailrecurse.backedge.sink.split
    i64 12, label %tailrecurse.backedge.sink.split
    i64 13, label %tailrecurse.backedge.sink.split
    i64 14, label %tailrecurse.backedge.sink.split
    i64 15, label %tailrecurse.backedge.sink.split
    i64 16, label %tailrecurse.backedge.sink.split
    i64 17, label %bb.m
    i64 18, label %bb.n
    i64 19, label %bb.q
    i64 20, label %bb.r
    i64 21, label %bb.s
    i64 22, label %bb.t
    i64 23, label %bb.x
    i64 24, label %bb.ab
    i64 25, label %bb.ac
    i64 26, label %bb.ad
    i64 27, label %bb.ae
    i64 28, label %bb.af
    i64 29, label %bb.ag
    i64 30, label %bb.ak
    i64 31, label %bb.am
    i64 32, label %tailrecurse.backedge.sink.split
  ]

bb.b:                                             ; preds = %tailrecurse
  unreachable

bb.c:                                             ; preds = %tailrecurse
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @_RINvXs8_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5AliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bt, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret257

bb.d:                                             ; preds = %tailrecurse
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4989)
  %i.bv = load i64, ptr %i.bu, align 8, !range !312, !alias.scope !4989, !noalias !4992, !noundef !3
  %i.bw = icmp ne i64 %i.bv, 3                    ; 2 uses
  %i.bx = zext i1 %i.bw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !4994
  store i64 %i.bx, ptr %i.bm, align 8, !noalias !4994
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef 8) #57, !noalias !4989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !4994
  br i1 %i.bw, label %bb.e, label %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #57
  br label %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !4989, !noalias !4992, !nonnull !3, !noundef !3
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !4989, !noalias !4992, !noundef !3
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef %i.cb) #57, !noalias !4989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !4999
  store i8 -1, ptr %i.bl, align 1, !noalias !4999
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef 1) #57, !noalias !5006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !4999
  br label %common.ret257

bb.f:                                             ; preds = %tailrecurse
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.cd = load ptr, ptr %i.cc, align 16, !nonnull !3, !noundef !3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  tail call void @_RINvXs3_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5FieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ce, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.cf = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.cg = load ptr, ptr %i.cf, align 16, !nonnull !3, !noundef !3
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !5007
  store i64 %i.ci, ptr %i.bk, align 8, !noalias !5007
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !5007
  tail call void @_RINvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cg, i64 noundef %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret257

bb.g:                                             ; preds = %tailrecurse
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call void @_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.cj, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
end_hunk_0
begin_hunk_1_@_RINvXs1d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB7_10DeallocateNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !6581, !noalias !6582, !noundef !3
  %i.z = getelementptr i8, ptr %.8.val, i64 %.16.val
  %i.aa = getelementptr i8, ptr %i.z, i64 -1
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !6581, !noalias !6582, !noundef !3
  %i.ac = zext i8 %i.v to i64
  %i.ad = xor i64 %i.c, %i.ac
  %i.ae = zext i8 %i.ab to i64
  %i.af = shl nuw nsw i64 %i.ae, 8
  %i.ag = zext i8 %i.y to i64
  %i.ah = or disjoint i64 %i.af, %i.ag
  %i.ai = xor i64 %i.ah, %i.i
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i: ; preds = %bb.f, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.e, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.o, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.u, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ai, %bb.f ], [ %i.i, %bb.e ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.l, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.s, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ad, %bb.f ], [ %i.c, %bb.e ]
  %i.aj = zext i64 %.sroa.0.0.i.i.i to i128
  %i.ak = zext i64 %.sroa.04.0.i.i.i to i128
  %i.al = mul nuw i128 %i.aj, %i.ak               ; 2 uses
  %i.am = lshr i128 %i.al, 64
  %i.an = xor i128 %i.am, %i.al
  %i.ao = trunc i128 %i.an to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i, %bb.b
  %storemerge.i.i = phi i64 [ %i.g, %bb.b ], [ %i.ao, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i ] ; 2 uses
  store i64 %storemerge.i.i, ptr %i.a, align 8, !alias.scope !6573, !noalias !6574
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6586)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 16, !alias.scope !6589, !noalias !6566, !noundef !3 ; 3 uses
  %i.ar = icmp ugt i8 %i.aq, 120
  br i1 %i.ar, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i
  %i.as = zext nneg i8 %i.aq to i128
  %i.at = shl nuw i128 255, %i.as
  %i.au = load i128, ptr %0, align 16, !alias.scope !6589, !noalias !6566, !noundef !3
  %i.av = or i128 %i.au, %i.at
  %i.aw = add nuw i8 %i.aq, 8
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i
  %i.ax = load i128, ptr %0, align 16, !alias.scope !6589, !noalias !6566, !noundef !3 ; 2 uses
  %i.ay = trunc i128 %i.ax to i64
  %i.az = lshr i128 %i.ax, 64
  %i.ba = xor i64 %storemerge.i.i, %i.ay
  %i.bb = load i64, ptr %i.f, align 8, !noalias !6589, !noundef !3
  %i.bc = zext i64 %i.ba to i128
  %i.bd = zext i64 %i.bb to i128
  %i.be = xor i128 %i.az, %i.bd
  %i.bf = mul nuw i128 %i.be, %i.bc               ; 2 uses
  %i.bg = lshr i128 %i.bf, 64
  %i.bh = xor i128 %i.bg, %i.bf
  %i.bi = trunc i128 %i.bh to i64
  store i64 %i.bi, ptr %i.a, align 8, !alias.scope !6589, !noalias !6566
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g, %bb.h
  %.sink.i = phi i128 [ 255, %bb.h ], [ %i.av, %bb.g ]
  %storemerge.i.i.i = phi i8 [ 8, %bb.h ], [ %i.aw, %bb.g ]
  store i128 %.sink.i, ptr %0, align 16, !alias.scope !6589, !noalias !6566
  store i8 %storemerge.i.i.i, ptr %i.ap, align 16, !alias.scope !6589, !noalias !6566
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RINvXs1d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB7_10DeallocateNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr nofree nonnull readonly captures(none) %.8.val, i64 %.16.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #7 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.8.val, i64 noundef %.16.val) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6590
  store i8 -1, ptr %i.a, align 1, !noalias !6590
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #57, !noalias !6597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6590
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvXs1j_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB7_15CharacterLengthNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(48) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !135, !noundef !3 ; 3 uses
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6601)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.d = load i8, ptr %i.c, align 16, !alias.scope !6604, !noundef !3 ; 4 uses
  %i.e = icmp ugt i8 %i.d, 64
  br i1 %i.e, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %bb.a
  %i.f = zext nneg i8 %i.a to i128
  %i.g = zext nneg i8 %i.d to i128
  %i.h = shl nuw nsw i128 %i.f, %i.g
  %i.i = load i128, ptr %1, align 16, !alias.scope !6604, !noundef !3 ; 3 uses
  %i.j = or i128 %i.i, %i.h                       ; 2 uses
  store i128 %i.j, ptr %1, align 16, !alias.scope !6604
  %i.k = add nuw i8 %i.d, 64
  store i8 %i.k, ptr %i.c, align 16, !alias.scope !6604
  br i1 %i.b, label %bb.b, label %bb.c

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread: ; preds = %bb.a
  %i.l = load i128, ptr %1, align 16, !alias.scope !6604, !noundef !3 ; 2 uses
  %i.m = trunc i128 %i.l to i64
  %i.n = lshr i128 %i.l, 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !6604, !noundef !3
  %i.q = xor i64 %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 16, !alias.scope !6604, !nonnull !3, !align !65, !noundef !3
  %i.t = load i64, ptr %i.s, align 8, !noalias !6604, !noundef !3
  %i.u = zext i64 %i.q to i128
  %i.v = zext i64 %i.t to i128                    ; 2 uses
  %i.w = xor i128 %i.n, %i.v
  %i.x = mul nuw i128 %i.w, %i.u                  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = xor i128 %i.y, %i.x
  %i.aa = trunc i128 %i.z to i64                  ; 2 uses
  store i64 %i.aa, ptr %i.o, align 8, !alias.scope !6604
  %i.ab = zext nneg i8 %i.a to i128
  store i128 %i.ab, ptr %1, align 16, !alias.scope !6604
  store i8 64, ptr %i.c, align 16, !alias.scope !6604
  br i1 %i.b, label %bb.b, label %.thread

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !3
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

bb.b:                                             ; preds = %bb.d, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  ret void

bb.c:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6608)
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge, label %bb.d

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !6611
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre16 = load ptr, ptr %.phi.trans.insert15, align 16, !alias.scope !6611
  %.pre17 = load i64, ptr %.pre16, align 8, !noalias !6611
  %.pre18 = zext i64 %.pre17 to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

bb.d:                                             ; preds = %bb.c
  %i.ag = trunc i128 %i.i to i64
  %i.ah = lshr i128 %i.i, 64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !6616, !noundef !3
  %i.ak = xor i64 %i.aj, %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load ptr, ptr %i.al, align 16, !alias.scope !6616, !nonnull !3, !align !65, !noundef !3
  %i.an = load i64, ptr %i.am, align 8, !noalias !6616, !noundef !3
  %i.ao = zext i64 %i.ak to i128
  %i.ap = zext i64 %i.an to i128                  ; 2 uses
  %i.aq = xor i128 %i.ah, %i.ap
  %i.ar = mul nuw i128 %i.aq, %i.ao               ; 2 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64                 ; 2 uses
  store i64 %i.au, ptr %i.ai, align 8, !alias.scope !6616
  %i.av = zext i64 %i.af to i128
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !range !120, !noundef !3 ; 2 uses
  %.not14 = icmp eq i8 %i.ax, 2                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6618)
  %i.ay = select i1 %.not14, i128 0, i128 18446744073709551616
  %i.az = or disjoint i128 %i.ay, %i.av
  store i128 %i.az, ptr %1, align 16, !alias.scope !6611
  store i8 -128, ptr %i.c, align 16, !alias.scope !6611
  br i1 %.not14, label %bb.b, label %bb.f

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge, %.thread
  %.pre-phi = phi i128 [ %.pre18, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ], [ %i.v, %.thread ]
  %i.ba = phi i64 [ %.pre, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ], [ %i.aa, %.thread ]
  %i.bb = phi i128 [ %i.j, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ], [ 0, %.thread ] ; 2 uses
  %i.bc = phi i64 [ %i.af, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ], [ %i.ad, %.thread ]
  %i.bd = zext i64 %i.bc to i128
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !range !120, !noundef !3 ; 2 uses
  %i.bg = icmp ne i8 %i.bf, 2                     ; 2 uses
  %i.bh = trunc i128 %i.bb to i64
  %i.bi = lshr i128 %i.bb, 64
  %i.bj = or i128 %i.bi, %i.bd
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = xor i64 %i.ba, %i.bh
  %i.bm = zext i64 %i.bl to i128
  %i.bn = xor i128 %i.bj, %.pre-phi
  %i.bo = mul nuw i128 %i.bn, %i.bm               ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %i.bq = xor i128 %i.bp, %i.bo
  %i.br = trunc i128 %i.bq to i64
  store i64 %i.br, ptr %i.bk, align 8, !alias.scope !6611
  %i.bs = zext i1 %i.bg to i128
  store i128 %i.bs, ptr %1, align 16, !alias.scope !6611
  store i8 64, ptr %i.c, align 16, !alias.scope !6611
  br i1 %i.bg, label %bb.e, label %bb.b

bb.e:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.bt = zext nneg i8 %i.bf to i128
  %i.bu = shl nuw nsw i128 %i.bt, 64
  %i.bv = or disjoint i128 %i.bu, 1
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

bb.f:                                             ; preds = %bb.d
  %i.bw = xor i64 %i.af, %i.au
  %i.bx = zext i64 %i.bw to i128
  %i.by = xor i128 %i.ap, 1
  %i.bz = mul nuw i128 %i.by, %i.bx               ; 2 uses
  %i.ca = lshr i128 %i.bz, 64
  %i.cb = xor i128 %i.ca, %i.bz
  %i.cc = trunc i128 %i.cb to i64
  store i64 %i.cc, ptr %i.ai, align 8, !alias.scope !6619
  %i.cd = zext nneg i8 %i.ax to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.e, %bb.f
  %storemerge = phi i128 [ %i.cd, %bb.f ], [ %i.bv, %bb.e ]
  %storemerge.i.i = phi i8 [ 64, %bb.f ], [ -128, %bb.e ]
  store i128 %storemerge, ptr %1, align 16, !alias.scope !6619
  store i8 %storemerge.i.i, ptr %i.c, align 16, !alias.scope !6619
  br label %bb.b
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RINvXs1j_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB7_15CharacterLengthNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i8, ptr %0, align 8, !range !135, !noundef !3 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = zext nneg i8 %i.e to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6624
  store i64 %i.g, ptr %i.d, align 8, !noalias !6624
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6624
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6629
  store i64 %i.i, ptr %i.c, align 8, !noalias !6629
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6629
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !120, !noundef !3 ; 2 uses
  %i.l = icmp ne i8 %i.k, 2                       ; 2 uses
  %i.m = zext i1 %i.l to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6632
  store i64 %i.m, ptr %i.b, align 8, !noalias !6632
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6632
  br i1 %i.l, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.n = zext nneg i8 %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6637
  store i64 %i.n, ptr %i.a, align 8, !noalias !6637
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6637
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs1j_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB7_15CharacterLengthNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1b_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !135, !noundef !3 ; 2 uses
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = zext nneg i8 %i.a to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.c)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_u64Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !120, !noundef !3 ; 2 uses
  %i.h = icmp ne i8 %i.g, 2                       ; 2 uses
  %i.i = zext i1 %i.h to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.i)
  br i1 %i.h, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i8 %i.g to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.j)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs1l_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_20AlterPolicyOperationNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(680) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !373, !noundef !3 ; 4 uses
  %i.b = icmp ne i64 %i.a, 70                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6645)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 12 uses
  %i.d = load i8, ptr %i.c, align 16, !alias.scope !6648, !noundef !3 ; 4 uses
  %i.e = icmp ugt i8 %i.d, 64
  br i1 %i.e, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %bb.a
  %i.f = zext i1 %i.b to i128
  %i.g = zext nneg i8 %i.d to i128
  %i.h = shl nuw nsw i128 %i.f, %i.g
  %i.i = load i128, ptr %1, align 16, !alias.scope !6648, !noundef !3
  %i.j = or i128 %i.i, %i.h                       ; 5 uses
  store i128 %i.j, ptr %1, align 16, !alias.scope !6648
  %i.k = add nuw i8 %i.d, 64
  store i8 %i.k, ptr %i.c, align 16, !alias.scope !6648
  br i1 %i.b, label %bb.b, label %bb.d

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread: ; preds = %bb.a
  %i.l = load i128, ptr %1, align 16, !alias.scope !6648, !noundef !3 ; 2 uses
  %i.m = trunc i128 %i.l to i64
  %i.n = lshr i128 %i.l, 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !6648, !noundef !3
  %i.q = xor i64 %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 16, !alias.scope !6648, !nonnull !3, !align !65, !noundef !3
  %i.t = load i64, ptr %i.s, align 8, !noalias !6648, !noundef !3
  %i.u = zext i64 %i.q to i128
  %i.v = zext i64 %i.t to i128
  %i.w = xor i128 %i.n, %i.v
  %i.x = mul nuw i128 %i.w, %i.u                  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = xor i128 %i.y, %i.x
  %i.aa = trunc i128 %i.z to i64
  store i64 %i.aa, ptr %i.o, align 8, !alias.scope !6648
  %i.ab = zext i1 %i.b to i128                    ; 2 uses
  store i128 %i.ab, ptr %1, align 16, !alias.scope !6648
  store i8 64, ptr %i.c, align 16, !alias.scope !6648
  br i1 %i.b, label %.thread, label %bb.d

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ad = load i64, ptr %i.ac, align 8, !range !4, !noundef !3
  %.not23 = icmp eq i64 %i.ad, -9223372036854775808 ; 2 uses
  %i.ae = select i1 %.not23, i128 0, i128 18446744073709551616
  %i.af = or disjoint i128 %i.ae, %i.ab           ; 3 uses
  store i128 %i.af, ptr %1, align 16, !alias.scope !6649
  store i8 -128, ptr %i.c, align 16, !alias.scope !6649
  br i1 %.not23, label %.thread14, label %bb.g

bb.b:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ah = load i64, ptr %i.ag, align 8, !range !4, !noundef !3
  %.not22 = icmp eq i64 %i.ah, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6655)
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

bb.c:                                             ; preds = %bb.b
  %i.ai = select i1 %.not22, i128 0, i128 18446744073709551616
  %i.aj = or i128 %i.j, %i.ai                     ; 3 uses
  store i128 %i.aj, ptr %1, align 16, !alias.scope !6649
  store i8 -128, ptr %i.c, align 16, !alias.scope !6649
  %extract.t = trunc i128 %i.j to i64
  br i1 %.not22, label %.thread14, label %bb.g

.thread14:                                        ; preds = %.thread, %bb.c
  %i.ak = phi i128 [ %i.af, %.thread ], [ %i.aj, %bb.c ]
  %i.al = icmp ne i64 %i.a, 69                    ; 2 uses
  %i.am = zext i1 %i.al to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %bb.b
  %i.an = trunc i128 %i.j to i64
  %i.ao = lshr i128 %i.j, 64
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !6649, !noundef !3
  %i.ar = xor i64 %i.aq, %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 16, !alias.scope !6649, !nonnull !3, !align !65, !noundef !3
  %i.au = load i64, ptr %i.at, align 8, !noalias !6649, !noundef !3
  %i.av = zext i64 %i.ar to i128
  %i.aw = zext i64 %i.au to i128
  %i.ax = xor i128 %i.ao, %i.aw
  %i.ay = mul nuw i128 %i.ax, %i.av               ; 2 uses
  %i.az = lshr i128 %i.ay, 64
  %i.ba = xor i128 %i.az, %i.ay
  %i.bb = trunc i128 %i.ba to i64
  store i64 %i.bb, ptr %i.ap, align 8, !alias.scope !6649
  br i1 %.not22, label %.thread15, label %bb.f

.thread15:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.bc = icmp ne i64 %i.a, 69                    ; 2 uses
  %i.bd = zext i1 %i.bc to i64
  br label %._crit_edge

bb.d:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
end_hunk_1
begin_hunk_2_@_RINvXs1z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5QueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.ary, label %bb.bv, label %bb.bu, !prof !708

bb.bu:                                            ; preds = %bb.bt
  %i.arz = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.art, i64 noundef range(i64 0, -9223372036854775808) %i.arv, i64 noundef %i.arx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.arq) #58, !noalias !7243
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i18.i

bb.bv:                                            ; preds = %bb.bt
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7247)
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arq, i64 8
  %i.asb = load i64, ptr %i.asa, align 8, !alias.scope !7247, !noalias !7249, !noundef !3 ; 4 uses
  %i.asc = icmp samesign ugt i64 %i.arv, 7
  br i1 %i.asc, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i29.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.asd = icmp samesign ugt i64 %i.arv, 3
  br i1 %i.asd, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i26.i, label %bb.bx

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i29.i: ; preds = %bb.bv
  %.sroa.014.0.copyload.i.i.i30.i = load i64, ptr %i.art, align 1, !alias.scope !7250, !noalias !7251
  %i.ase = xor i64 %.sroa.014.0.copyload.i.i.i30.i, %i.arx
  %i.asf = getelementptr i8, ptr %i.art, i64 %i.arv
  %i.asg = getelementptr i8, ptr %i.asf, i64 -8
  %.sroa.016.0.copyload.i.i.i31.i = load i64, ptr %i.asg, align 1, !alias.scope !7250, !noalias !7251
  %i.ash = xor i64 %.sroa.016.0.copyload.i.i.i31.i, %i.asb
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i

bb.bx:                                            ; preds = %bb.bw
  %.not.i.i.i22.i = icmp eq i64 %i.arv, 0
  br i1 %.not.i.i.i22.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i, label %bb.by

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i26.i: ; preds = %bb.bw
  %i.asi = getelementptr i8, ptr %i.art, i64 %i.arv
  %i.asj = getelementptr i8, ptr %i.asi, i64 -4
  %.sroa.019.0.copyload.i.i.i27.i = load i32, ptr %i.asj, align 1, !alias.scope !7250, !noalias !7251
  %.sroa.018.0.copyload.i.i.i28.i = load i32, ptr %i.art, align 1, !alias.scope !7250, !noalias !7251
  %i.ask = zext i32 %.sroa.018.0.copyload.i.i.i28.i to i64
  %i.asl = xor i64 %i.arx, %i.ask
  %i.asm = zext i32 %.sroa.019.0.copyload.i.i.i27.i to i64
  %i.asn = xor i64 %i.asb, %i.asm
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i

bb.by:                                            ; preds = %bb.bx
  %i.aso = load i8, ptr %i.art, align 1, !alias.scope !7250, !noalias !7251, !noundef !3
  %i.asp = lshr i64 %i.arv, 1
  %i.asq = getelementptr inbounds nuw i8, ptr %i.art, i64 %i.asp
  %i.asr = load i8, ptr %i.asq, align 1, !alias.scope !7250, !noalias !7251, !noundef !3
  %i.ass = getelementptr i8, ptr %i.art, i64 %i.arv
  %i.ast = getelementptr i8, ptr %i.ass, i64 -1
  %i.asu = load i8, ptr %i.ast, align 1, !alias.scope !7250, !noalias !7251, !noundef !3
  %i.asv = zext i8 %i.aso to i64
  %i.asw = xor i64 %i.arx, %i.asv
  %i.asx = zext i8 %i.asu to i64
  %i.asy = shl nuw nsw i64 %i.asx, 8
  %i.asz = zext i8 %i.asr to i64
  %i.ata = or disjoint i64 %i.asy, %i.asz
  %i.atb = xor i64 %i.ata, %i.asb
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i: ; preds = %bb.by, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i26.i, %bb.bx, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i29.i
  %.sroa.04.0.i.i.i24.i = phi i64 [ %i.ash, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i29.i ], [ %i.asn, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i26.i ], [ %i.atb, %bb.by ], [ %i.asb, %bb.bx ]
  %.sroa.0.0.i.i.i25.i = phi i64 [ %i.ase, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i29.i ], [ %i.asl, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i26.i ], [ %i.asw, %bb.by ], [ %i.arx, %bb.bx ]
  %i.atc = zext i64 %.sroa.0.0.i.i.i25.i to i128
  %i.atd = zext i64 %.sroa.04.0.i.i.i24.i to i128
  %i.ate = mul nuw i128 %i.atc, %i.atd            ; 2 uses
  %i.atf = lshr i128 %i.ate, 64
  %i.atg = xor i128 %i.atf, %i.ate
  %i.ath = trunc i128 %i.atg to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i18.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i18.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i, %bb.bu
  %storemerge.i.i19.i = phi i64 [ %i.arz, %bb.bu ], [ %i.ath, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i ] ; 2 uses
  store i64 %storemerge.i.i19.i, ptr %i.arw, align 8, !alias.scope !7190, !noalias !7195
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7255)
  %i.ati = icmp ugt i8 %storemerge.i.i39.i, 120
  br i1 %i.ati, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i18.i
  %i.atj = zext nneg i8 %storemerge.i.i39.i to i128
  %i.atk = shl nuw i128 255, %i.atj
  %i.atl = load i128, ptr %1, align 16, !alias.scope !7258, !noalias !7259, !noundef !3
  %i.atm = or i128 %i.atl, %i.atk
  %i.atn = add nuw i8 %storemerge.i.i39.i, 8
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit32.i

bb.ca:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i18.i
  %i.ato = load i128, ptr %1, align 16, !alias.scope !7258, !noalias !7259, !noundef !3 ; 2 uses
  %i.atp = trunc i128 %i.ato to i64
  %i.atq = lshr i128 %i.ato, 64
  %i.atr = xor i64 %storemerge.i.i19.i, %i.atp
  %i.ats = load i64, ptr %i.arq, align 8, !noalias !7260, !noundef !3
  %i.att = zext i64 %i.atr to i128
  %i.atu = zext i64 %i.ats to i128
  %i.atv = xor i128 %i.atq, %i.atu
  %i.atw = mul nuw i128 %i.atv, %i.att            ; 2 uses
  %i.atx = lshr i128 %i.atw, 64
  %i.aty = xor i128 %i.atx, %i.atw
  %i.atz = trunc i128 %i.aty to i64
  store i64 %i.atz, ptr %i.arw, align 8, !alias.scope !7258, !noalias !7259
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit32.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit32.i: ; preds = %bb.ca, %bb.bz
  %.sink.i20.i = phi i128 [ 255, %bb.ca ], [ %i.atm, %bb.bz ] ; 2 uses
  %storemerge.i.i.i21.i = phi i8 [ 8, %bb.ca ], [ %i.atn, %bb.bz ] ; 2 uses
  store i128 %.sink.i20.i, ptr %1, align 16, !alias.scope !7258, !noalias !7259
  store i8 %storemerge.i.i.i21.i, ptr %i.d, align 16, !alias.scope !7258, !noalias !7259
  br label %bb.cb

bb.cb:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit32.i, %bb.bj
  %i.aua = phi i128 [ %i.anj, %bb.bj ], [ %.sink.i20.i, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit32.i ] ; 3 uses
  %i.aub = phi i8 [ %i.ank, %bb.bj ], [ %storemerge.i.i.i21.i, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit32.i ] ; 2 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.aud = load i8, ptr %i.auc, align 2, !range !135, !alias.scope !7041, !noalias !7044, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7264)
  %i.aue = icmp ugt i8 %i.aub, 120
  br i1 %i.aue, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.thread46.i
  %i.auf = phi i128 [ 0, %.thread46.i ], [ %i.aua, %bb.cb ]
  %i.aug = phi i8 [ %i.aoc, %.thread46.i ], [ %i.aud, %bb.cb ]
  %i.auh = phi i8 [ 64, %.thread46.i ], [ %i.aub, %bb.cb ] ; 2 uses
  %i.aui = zext nneg i8 %i.aug to i128
  %i.auj = zext nneg i8 %i.auh to i128
  %i.auk = shl nuw nsw i128 %i.aui, %i.auj
  %i.aul = or i128 %i.auk, %i.auf                 ; 2 uses
  store i128 %i.aul, ptr %1, align 16, !alias.scope !7267, !noalias !7041
  %i.aum = add nuw i8 %i.auh, 8
  br label %.sink.split.i

bb.cd:                                            ; preds = %bb.cb
  %i.aun = trunc i128 %i.aua to i64
  %i.auo = lshr i128 %i.aua, 64
  %i.aup = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.auq = load i64, ptr %i.aup, align 8, !alias.scope !7267, !noalias !7041, !noundef !3
  %i.aur = xor i64 %i.auq, %i.aun
  %i.aus = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aut = load ptr, ptr %i.aus, align 16, !alias.scope !7267, !noalias !7041, !nonnull !3, !align !65, !noundef !3
  %i.auu = load i64, ptr %i.aut, align 8, !noalias !7268, !noundef !3
  %i.auv = zext i64 %i.aur to i128
  %i.auw = zext i64 %i.auu to i128
  %i.aux = xor i128 %i.auo, %i.auw
  %i.auy = mul nuw i128 %i.aux, %i.auv            ; 2 uses
  %i.auz = lshr i128 %i.auy, 64
  %i.ava = xor i128 %i.auz, %i.auy
  %i.avb = trunc i128 %i.ava to i64
  store i64 %i.avb, ptr %i.aup, align 8, !alias.scope !7267, !noalias !7041
  %i.avc = zext nneg i8 %i.aud to i128            ; 2 uses
  store i128 %i.avc, ptr %1, align 16, !alias.scope !7267, !noalias !7041
  br label %.sink.split.i

_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.sink.split.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.avd = phi i128 [ %i.aod, %.sink.split.i ], [ %i.abp, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ], [ %i.zr, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ] ; 3 uses
  %i.ave = phi i8 [ %storemerge.i.i7.sink.i, %.sink.split.i ], [ %storemerge.i.i5.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ], [ %i.zs, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ] ; 2 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.avg = load i64, ptr %i.avf, align 8, !range !4, !noundef !3
  %i.avh = icmp ne i64 %i.avg, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7272)
  %i.avi = icmp ugt i8 %i.ave, 64
  br i1 %i.avi, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, label %bb.ce

bb.ce:                                            ; preds = %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.avj = phi i128 [ 0, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.avd, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.avk = phi i1 [ %i.aam, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.avh, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.avl = phi i8 [ 64, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.ave, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.avm = zext i1 %i.avk to i128
  %i.avn = zext nneg i8 %i.avl to i128
  %i.avo = shl nuw nsw i128 %i.avm, %i.avn
  %i.avp = or i128 %i.avo, %i.avj                 ; 4 uses
  store i128 %i.avp, ptr %1, align 16, !alias.scope !7275
  %i.avq = add nuw i8 %i.avl, 64
  store i8 %i.avq, ptr %i.d, align 16, !alias.scope !7275
  br i1 %i.avk, label %bb.cg, label %.thread79

.thread79:                                        ; preds = %bb.ce
  %i.avr = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.avs = load i64, ptr %i.avr, align 8, !range !311, !noundef !3 ; 2 uses
  %i.avt = icmp ne i64 %i.avs, -9223372036854775807 ; 2 uses
  %i.avu = zext i1 %i.avt to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.avv = trunc i128 %i.avd to i64
  %i.avw = lshr i128 %i.avd, 64
  %i.avx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.avy = load i64, ptr %i.avx, align 8, !alias.scope !7275, !noundef !3
  %i.avz = xor i64 %i.avy, %i.avv
  %i.awa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.awb = load ptr, ptr %i.awa, align 16, !alias.scope !7275, !nonnull !3, !align !65, !noundef !3
  %i.awc = load i64, ptr %i.awb, align 8, !noalias !7275, !noundef !3
  %i.awd = zext i64 %i.avz to i128
  %i.awe = zext i64 %i.awc to i128
  %i.awf = xor i128 %i.avw, %i.awe
  %i.awg = mul nuw i128 %i.awf, %i.awd            ; 2 uses
  %i.awh = lshr i128 %i.awg, 64
  %i.awi = xor i128 %i.awh, %i.awg
  %i.awj = trunc i128 %i.awi to i64
  store i64 %i.awj, ptr %i.avx, align 8, !alias.scope !7275
  %i.awk = zext i1 %i.avh to i128
  store i128 %i.awk, ptr %1, align 16, !alias.scope !7275
  store i8 64, ptr %i.d, align 16, !alias.scope !7275
  br i1 %i.avh, label %bb.cf, label %.thread80

.thread80:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.awl = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.awm = load i64, ptr %i.awl, align 8, !range !311, !noundef !3 ; 2 uses
  %i.awn = icmp ne i64 %i.awm, -9223372036854775807 ; 2 uses
  %i.awo = zext i1 %i.awn to i64
  br label %._crit_edge106

bb.cf:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.awp = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.awq = load ptr, ptr %i.awp, align 8, !nonnull !3, !noundef !3
  %i.awr = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.aws = load i64, ptr %i.awr, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7282)
  %i.awt = zext i64 %i.aws to i128
  %i.awu = shl nuw i128 %i.awt, 64
  %i.awv = or disjoint i128 %i.awu, 1
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.aww = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.awx = load ptr, ptr %i.aww, align 8, !nonnull !3, !noundef !3
  %i.awy = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.awz = load i64, ptr %i.awy, align 8, !noundef !3 ; 2 uses
  %i.axa = trunc i128 %i.avp to i64
  %i.axb = lshr i128 %i.avp, 64
  %i.axc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.axd = load i64, ptr %i.axc, align 8, !alias.scope !7285, !noundef !3
  %i.axe = xor i64 %i.axd, %i.axa
  %i.axf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.axg = load ptr, ptr %i.axf, align 16, !alias.scope !7285, !nonnull !3, !align !65, !noundef !3
  %i.axh = load i64, ptr %i.axg, align 8, !noalias !7285, !noundef !3
  %i.axi = zext i64 %i.axe to i128
  %i.axj = zext i64 %i.axh to i128
  %i.axk = xor i128 %i.axb, %i.axj
  %i.axl = mul nuw i128 %i.axk, %i.axi            ; 2 uses
  %i.axm = lshr i128 %i.axl, 64
  %i.axn = xor i128 %i.axm, %i.axl
  %i.axo = trunc i128 %i.axn to i64
  store i64 %i.axo, ptr %i.axc, align 8, !alias.scope !7285
  %i.axp = zext i64 %i.awz to i128
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.axq = phi i64 [ %i.awz, %bb.cg ], [ %i.aws, %bb.cf ]
  %i.axr = phi ptr [ %i.awx, %bb.cg ], [ %i.awq, %bb.cf ]
  %.sink.i28 = phi i128 [ %i.axp, %bb.cg ], [ %i.awv, %bb.cf ]
  %storemerge.i.i.i29 = phi i8 [ 64, %bb.cg ], [ -128, %bb.cf ]
  store i128 %.sink.i28, ptr %1, align 16, !alias.scope !7285
  store i8 %storemerge.i.i.i29, ptr %i.d, align 16, !alias.scope !7285
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.axr, i64 noundef %i.axq, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %.pr78 = load i8, ptr %i.d, align 16, !alias.scope !7286 ; 2 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 3 uses
  %i.axt = load i64, ptr %i.axs, align 8, !range !311, !noundef !3 ; 3 uses
  %i.axu = icmp ne i64 %i.axt, -9223372036854775807 ; 3 uses
  %i.axv = zext i1 %i.axu to i64                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7292)
  %i.axw = icmp ugt i8 %.pr78, 64
  %.pre108 = load i128, ptr %1, align 16, !alias.scope !7286 ; 2 uses
  br i1 %i.axw, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, label %._crit_edge106

._crit_edge106:                                   ; preds = %bb.ch, %.thread80
  %i.axx = phi i128 [ 0, %.thread80 ], [ %.pre108, %bb.ch ]
  %i.axy = phi i64 [ %i.awo, %.thread80 ], [ %i.axv, %bb.ch ]
  %i.axz = phi i1 [ %i.awn, %.thread80 ], [ %i.axu, %bb.ch ]
  %i.aya = phi i64 [ %i.awm, %.thread80 ], [ %i.axt, %bb.ch ]
  %i.ayb = phi ptr [ %i.awl, %.thread80 ], [ %i.axs, %bb.ch ] ; 2 uses
  %i.ayc = phi i8 [ 64, %.thread80 ], [ %.pr78, %bb.ch ] ; 3 uses
  %i.ayd = zext nneg i64 %i.axy to i128
  %i.aye = zext nneg i8 %i.ayc to i128
  %i.ayf = shl nuw nsw i128 %i.ayd, %i.aye
  %i.ayg = or i128 %i.ayf, %i.axx                 ; 4 uses
  store i128 %i.ayg, ptr %1, align 16, !alias.scope !7286
  %i.ayh = add nuw i8 %i.ayc, 64                  ; 2 uses
  store i8 %i.ayh, ptr %i.d, align 16, !alias.scope !7286
  br i1 %i.axz, label %bb.ci, label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.ch, %.thread79
  %i.ayi = phi i128 [ %i.avp, %.thread79 ], [ %.pre108, %bb.ch ] ; 2 uses
  %i.ayj = phi i64 [ %i.avu, %.thread79 ], [ %i.axv, %bb.ch ]
  %i.ayk = phi i1 [ %i.avt, %.thread79 ], [ %i.axu, %bb.ch ]
  %i.ayl = phi i64 [ %i.avs, %.thread79 ], [ %i.axt, %bb.ch ]
  %i.aym = phi ptr [ %i.avr, %.thread79 ], [ %i.axs, %bb.ch ]
  %i.ayn = trunc i128 %i.ayi to i64
  %i.ayo = lshr i128 %i.ayi, 64
  %i.ayp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ayq = load i64, ptr %i.ayp, align 8, !alias.scope !7286, !noundef !3
  %i.ayr = xor i64 %i.ayq, %i.ayn
  %i.ays = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ayt = load ptr, ptr %i.ays, align 16, !alias.scope !7286, !nonnull !3, !align !65, !noundef !3
  %i.ayu = load i64, ptr %i.ayt, align 8, !noalias !7286, !noundef !3
  %i.ayv = zext i64 %i.ayr to i128
  %i.ayw = zext i64 %i.ayu to i128
  %i.ayx = xor i128 %i.ayo, %i.ayw
  %i.ayy = mul nuw i128 %i.ayx, %i.ayv            ; 2 uses
  %i.ayz = lshr i128 %i.ayy, 64
  %i.aza = xor i128 %i.ayz, %i.ayy
  %i.azb = trunc i128 %i.aza to i64
  store i64 %i.azb, ptr %i.ayp, align 8, !alias.scope !7286
  %i.azc = zext nneg i64 %i.ayj to i128           ; 2 uses
  store i128 %i.azc, ptr %1, align 16, !alias.scope !7286
  br i1 %i.ayk, label %.thread82, label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142

.thread82:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.azd = icmp eq i64 %i.ayl, -9223372036854775808 ; 2 uses
  %i.aze = select i1 %i.azd, i128 18446744073709551616, i128 0
  %i.azf = or disjoint i128 %i.aze, %i.azc
  store i128 %i.azf, ptr %1, align 16, !alias.scope !7293, !noalias !7300
  store i8 -128, ptr %i.d, align 16, !alias.scope !7293, !noalias !7300
  br i1 %i.azd, label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.ck

bb.ci:                                            ; preds = %._crit_edge106
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7302)
  %i.azg = icmp eq i64 %i.aya, -9223372036854775808 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7304)
  %.not90 = icmp eq i8 %i.ayc, 0
  br i1 %.not90, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i31, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.azh = trunc i128 %i.ayg to i64
  %i.azi = lshr i128 %i.ayg, 64
  %i.azj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.azk = load i64, ptr %i.azj, align 8, !alias.scope !7293, !noalias !7300, !noundef !3
  %i.azl = xor i64 %i.azk, %i.azh
  %i.azm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.azn = load ptr, ptr %i.azm, align 16, !alias.scope !7293, !noalias !7300, !nonnull !3, !align !65, !noundef !3
  %i.azo = load i64, ptr %i.azn, align 8, !noalias !7305, !noundef !3
  %i.azp = zext i64 %i.azl to i128
  %i.azq = zext i64 %i.azo to i128
  %i.azr = xor i128 %i.azi, %i.azq
  %i.azs = mul nuw i128 %i.azr, %i.azp            ; 2 uses
  %i.azt = lshr i128 %i.azs, 64
  %i.azu = xor i128 %i.azt, %i.azs
  %i.azv = trunc i128 %i.azu to i64
  store i64 %i.azv, ptr %i.azj, align 8, !alias.scope !7293, !noalias !7300
  %i.azw = zext i1 %i.azg to i128
  store i128 %i.azw, ptr %1, align 16, !alias.scope !7293, !noalias !7300
  store i8 64, ptr %i.d, align 16, !alias.scope !7293, !noalias !7300
  br i1 %i.azg, label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142, label %bb.ck

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i31: ; preds = %bb.ci
  %i.azx = select i1 %i.azg, i128 18446744073709551616, i128 0
  %i.azy = or i128 %i.ayg, %i.azx
  store i128 %i.azy, ptr %1, align 16, !alias.scope !7293, !noalias !7300
  store i8 -128, ptr %i.d, align 16, !alias.scope !7293, !noalias !7300
  br i1 %i.azg, label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.ck

bb.ck:                                            ; preds = %.thread82, %bb.cj, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i31
  %i.azz = phi ptr [ %i.ayb, %bb.cj ], [ %i.ayb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i31 ], [ %i.aym, %.thread82 ]
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.azz, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %.pre109 = load i8, ptr %i.d, align 16, !alias.scope !7306
  br label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i31, %.thread82
  %i.baa = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.bab = load ptr, ptr %i.baa, align 8, !nonnull !3, !noundef !3
  %i.bac = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.bad = load i64, ptr %i.bac, align 8, !noundef !3
  br label %bb.cm

_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, %bb.cj
  %i.bae = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.baf = load ptr, ptr %i.bae, align 8, !nonnull !3, !noundef !3
  %i.bag = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.bah = load i64, ptr %i.bag, align 8, !noundef !3
  br label %bb.cl

_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ck, %._crit_edge106
  %i.bai = phi i8 [ %.pre109, %bb.ck ], [ %i.ayh, %._crit_edge106 ] ; 2 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.bak = load ptr, ptr %i.baj, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.bam = load i64, ptr %i.bal, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7315)
  %i.ban = icmp ugt i8 %i.bai, 64
  br i1 %i.ban, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.bao = phi i64 [ %i.bah, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142 ], [ %i.bam, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bap = phi ptr [ %i.baf, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142 ], [ %i.bak, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.baq = phi i8 [ 64, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142 ], [ %i.bai, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bar = zext i64 %i.bao to i128
  %i.bas = zext nneg i8 %i.baq to i128
  %i.bat = shl nuw i128 %i.bar, %i.bas
  %i.bau = load i128, ptr %1, align 16, !alias.scope !7306, !noundef !3
  %i.bav = or i128 %i.bau, %i.bat
  %i.baw = add nuw i8 %i.baq, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit36

bb.cm:                                            ; preds = %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.bax = phi i64 [ %i.bad, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.bam, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bay = phi ptr [ %i.bab, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.bak, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.baz = load i128, ptr %1, align 16, !alias.scope !7306, !noundef !3 ; 2 uses
  %i.bba = trunc i128 %i.baz to i64
  %i.bbb = lshr i128 %i.baz, 64
  %i.bbc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bbd = load i64, ptr %i.bbc, align 8, !alias.scope !7306, !noundef !3
  %i.bbe = xor i64 %i.bbd, %i.bba
  %i.bbf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bbg = load ptr, ptr %i.bbf, align 16, !alias.scope !7306, !nonnull !3, !align !65, !noundef !3
  %i.bbh = load i64, ptr %i.bbg, align 8, !noalias !7306, !noundef !3
  %i.bbi = zext i64 %i.bbe to i128
  %i.bbj = zext i64 %i.bbh to i128
  %i.bbk = xor i128 %i.bbb, %i.bbj
  %i.bbl = mul nuw i128 %i.bbk, %i.bbi            ; 2 uses
  %i.bbm = lshr i128 %i.bbl, 64
  %i.bbn = xor i128 %i.bbm, %i.bbl
  %i.bbo = trunc i128 %i.bbn to i64
  store i64 %i.bbo, ptr %i.bbc, align 8, !alias.scope !7306
  %i.bbp = zext i64 %i.bax to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit36

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit36: ; preds = %bb.cl, %bb.cm
end_hunk_2
begin_hunk_3_@_RINvXs2L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6SelectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %bb.at, %bb.au
  %.sink120 = phi i128 [ %i.ada, %bb.au ], [ %i.aci, %bb.at ]
  %storemerge.i.i5 = phi i8 [ 64, %bb.au ], [ %i.acj, %bb.at ] ; 2 uses
  store i128 %.sink120, ptr %1, align 16, !alias.scope !7957
  store i8 %storemerge.i.i5, ptr %i.d, align 16, !alias.scope !7957
  br i1 %i.acb, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.abz, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  %.pre126 = load i8, ptr %i.d, align 16, !alias.scope !7958
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  %i.adb = phi i8 [ %.pre126, %bb.av ], [ %storemerge.i.i5, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ] ; 3 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 2152
  %i.add = load ptr, ptr %i.adc, align 8, !nonnull !3, !noundef !3
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 2160
  %i.adf = load i64, ptr %i.ade, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7967)
  %i.adg = icmp ugt i8 %i.adb, 64
  br i1 %i.adg, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.adh = zext i64 %i.adf to i128
  %i.adi = zext nneg i8 %i.adb to i128
  %i.adj = shl nuw i128 %i.adh, %i.adi
  %i.adk = load i128, ptr %1, align 16, !alias.scope !7958, !noundef !3
  %i.adl = or i128 %i.adk, %i.adj
  %i.adm = add nuw i8 %i.adb, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit55

bb.ay:                                            ; preds = %bb.aw
  %i.adn = load i128, ptr %1, align 16, !alias.scope !7958, !noundef !3 ; 2 uses
  %i.ado = trunc i128 %i.adn to i64
  %i.adp = lshr i128 %i.adn, 64
  %i.adq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.adr = load i64, ptr %i.adq, align 8, !alias.scope !7958, !noundef !3
  %i.ads = xor i64 %i.adr, %i.ado
  %i.adt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.adu = load ptr, ptr %i.adt, align 16, !alias.scope !7958, !nonnull !3, !align !65, !noundef !3
  %i.adv = load i64, ptr %i.adu, align 8, !noalias !7958, !noundef !3
  %i.adw = zext i64 %i.ads to i128
  %i.adx = zext i64 %i.adv to i128
  %i.ady = xor i128 %i.adp, %i.adx
  %i.adz = mul nuw i128 %i.ady, %i.adw            ; 2 uses
  %i.aea = lshr i128 %i.adz, 64
  %i.aeb = xor i128 %i.aea, %i.adz
  %i.aec = trunc i128 %i.aeb to i64
  store i64 %i.aec, ptr %i.adq, align 8, !alias.scope !7958
  %i.aed = zext i64 %i.adf to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit55

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit55: ; preds = %bb.ax, %bb.ay
  %.sink.i53 = phi i128 [ %i.aed, %bb.ay ], [ %i.adl, %bb.ax ]
  %storemerge.i.i.i54 = phi i8 [ 64, %bb.ay ], [ %i.adm, %bb.ax ]
  store i128 %.sink.i53, ptr %1, align 16, !alias.scope !7958
  store i8 %storemerge.i.i.i54, ptr %i.d, align 16, !alias.scope !7958
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.add, i64 noundef %i.adf, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.aee = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.aef = load i64, ptr %i.aee, align 8, !range !372, !noundef !3
  %i.aeg = icmp ne i64 %i.aef, 69                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7971)
  %i.aeh = load i8, ptr %i.d, align 16, !alias.scope !7974, !noundef !3 ; 3 uses
  %i.aei = icmp ugt i8 %i.aeh, 64
  br i1 %i.aei, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit55
  %i.aej = zext i1 %i.aeg to i128
  %i.aek = zext nneg i8 %i.aeh to i128
  %i.ael = shl nuw nsw i128 %i.aej, %i.aek
  %i.aem = load i128, ptr %1, align 16, !alias.scope !7974, !noundef !3
  %i.aen = or i128 %i.aem, %i.ael
  %i.aeo = add nuw i8 %i.aeh, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

bb.ba:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit55
  %i.aep = load i128, ptr %1, align 16, !alias.scope !7974, !noundef !3 ; 2 uses
  %i.aeq = trunc i128 %i.aep to i64
  %i.aer = lshr i128 %i.aep, 64
  %i.aes = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aet = load i64, ptr %i.aes, align 8, !alias.scope !7974, !noundef !3
  %i.aeu = xor i64 %i.aet, %i.aeq
  %i.aev = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aew = load ptr, ptr %i.aev, align 16, !alias.scope !7974, !nonnull !3, !align !65, !noundef !3
  %i.aex = load i64, ptr %i.aew, align 8, !noalias !7974, !noundef !3
  %i.aey = zext i64 %i.aeu to i128
  %i.aez = zext i64 %i.aex to i128
  %i.afa = xor i128 %i.aer, %i.aez
  %i.afb = mul nuw i128 %i.afa, %i.aey            ; 2 uses
  %i.afc = lshr i128 %i.afb, 64
  %i.afd = xor i128 %i.afc, %i.afb
  %i.afe = trunc i128 %i.afd to i64
  store i64 %i.afe, ptr %i.aes, align 8, !alias.scope !7974
  %i.aff = zext i1 %i.aeg to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %bb.az, %bb.ba
  %.sink121 = phi i128 [ %i.aff, %bb.ba ], [ %i.aen, %bb.az ]
  %storemerge.i.i3 = phi i8 [ 64, %bb.ba ], [ %i.aeo, %bb.az ] ; 2 uses
  store i128 %.sink121, ptr %1, align 16, !alias.scope !7974
  store i8 %storemerge.i.i3, ptr %i.d, align 16, !alias.scope !7974
  br i1 %i.aeg, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aee, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  %.pr97 = load i8, ptr %i.d, align 16, !alias.scope !7975
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.afg = phi i8 [ %.pr97, %bb.bb ], [ %storemerge.i.i3, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ] ; 4 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 2425
  %i.afi = load i8, ptr %i.afh, align 1, !range !135, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7981)
  %i.afj = icmp ugt i8 %i.afg, 120
  br i1 %i.afj, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread: ; preds = %bb.bc
  %i.afk = load i128, ptr %1, align 16, !alias.scope !7975, !noundef !3 ; 2 uses
  %i.afl = trunc i128 %i.afk to i64
  %i.afm = lshr i128 %i.afk, 64
  %i.afn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.afo = load i64, ptr %i.afn, align 8, !alias.scope !7975, !noundef !3
  %i.afp = xor i64 %i.afo, %i.afl
  %i.afq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.afr = load ptr, ptr %i.afq, align 16, !alias.scope !7975, !nonnull !3, !align !65, !noundef !3
  %i.afs = load i64, ptr %i.afr, align 8, !noalias !7975, !noundef !3
  %i.aft = zext i64 %i.afp to i128
  %i.afu = zext i64 %i.afs to i128
  %i.afv = xor i128 %i.afm, %i.afu
  %i.afw = mul nuw i128 %i.afv, %i.aft            ; 2 uses
  %i.afx = lshr i128 %i.afw, 64
  %i.afy = xor i128 %i.afx, %i.afw
  %i.afz = trunc i128 %i.afy to i64
  store i64 %i.afz, ptr %i.afn, align 8, !alias.scope !7975
  %i.aga = zext nneg i8 %i.afi to i128
  %i.agb = getelementptr inbounds nuw i8, ptr %0, i64 2427
  %i.agc = load i8, ptr %i.agb, align 1, !range !1740, !noundef !3 ; 2 uses
  %i.agd = icmp ne i8 %i.agc, 4
  br label %bb.bd

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit: ; preds = %bb.bc
  %i.age = zext nneg i8 %i.afi to i128
  %i.agf = zext nneg i8 %i.afg to i128
  %i.agg = shl nuw nsw i128 %i.age, %i.agf
  %i.agh = load i128, ptr %1, align 16, !alias.scope !7975, !noundef !3
  %i.agi = or i128 %i.agh, %i.agg                 ; 4 uses
  store i128 %i.agi, ptr %1, align 16, !alias.scope !7975
  %i.agj = add nuw i8 %i.afg, 8                   ; 2 uses
  store i8 %i.agj, ptr %i.d, align 16, !alias.scope !7975
  %i.agk = getelementptr inbounds nuw i8, ptr %0, i64 2427
  %i.agl = load i8, ptr %i.agk, align 1, !range !1740, !noundef !3 ; 3 uses
  %i.agm = icmp ne i8 %i.agl, 4                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7985)
  %i.agn = icmp samesign ugt i8 %i.afg, 56
  br i1 %i.agn, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, label %bb.bd

bb.bd:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit
  %i.ago = phi i128 [ %i.aga, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.agi, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ]
  %i.agp = phi i1 [ %i.agd, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.agm, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ] ; 2 uses
  %i.agq = phi i8 [ %i.agc, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.agl, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ]
  %storemerge.i.i1999 = phi i8 [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.agj, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ] ; 2 uses
  %i.agr = zext i1 %i.agp to i128
  %i.ags = zext nneg i8 %storemerge.i.i1999 to i128
  %i.agt = shl nuw nsw i128 %i.agr, %i.ags
  %i.agu = or i128 %i.agt, %i.ago                 ; 4 uses
  store i128 %i.agu, ptr %1, align 16, !alias.scope !7988
  %i.agv = add nuw i8 %storemerge.i.i1999, 64
  store i8 %i.agv, ptr %i.d, align 16, !alias.scope !7988
  br i1 %i.agp, label %bb.be, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge: ; preds = %bb.bd
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre127 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !7989
  %.phi.trans.insert128 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre129 = load ptr, ptr %.phi.trans.insert128, align 16, !alias.scope !7989
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit
  %i.agw = trunc i128 %i.agi to i64
  %i.agx = lshr i128 %i.agi, 64
  %i.agy = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.agz = load i64, ptr %i.agy, align 8, !alias.scope !7988, !noundef !3
  %i.aha = xor i64 %i.agz, %i.agw
  %i.ahb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ahc = load ptr, ptr %i.ahb, align 16, !alias.scope !7988, !nonnull !3, !align !65, !noundef !3 ; 3 uses
  %i.ahd = load i64, ptr %i.ahc, align 8, !noalias !7988, !noundef !3
  %i.ahe = zext i64 %i.aha to i128
  %i.ahf = zext i64 %i.ahd to i128
  %i.ahg = xor i128 %i.agx, %i.ahf
  %i.ahh = mul nuw i128 %i.ahg, %i.ahe            ; 2 uses
  %i.ahi = lshr i128 %i.ahh, 64
  %i.ahj = xor i128 %i.ahi, %i.ahh
  %i.ahk = trunc i128 %i.ahj to i64               ; 3 uses
  store i64 %i.ahk, ptr %i.agy, align 8, !alias.scope !7988
  %i.ahl = zext i1 %i.agm to i128
  store i128 %i.ahl, ptr %1, align 16, !alias.scope !7988
  store i8 64, ptr %i.d, align 16, !alias.scope !7988
  br i1 %i.agm, label %.thread105, label %.thread104

.thread105:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8000)
  %i.ahm = zext nneg i8 %i.agl to i128
  %i.ahn = shl nuw nsw i128 %i.ahm, 64
  %i.aho = or disjoint i128 %i.ahn, 1             ; 2 uses
  store i128 %i.aho, ptr %1, align 16, !alias.scope !8003
  store i8 -128, ptr %i.d, align 16, !alias.scope !8003
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

bb.be:                                            ; preds = %bb.bd
  %i.ahp = trunc i128 %i.agu to i64
  %i.ahq = lshr i128 %i.agu, 64
  %i.ahr = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ahs = load i64, ptr %i.ahr, align 8, !alias.scope !8003, !noundef !3
  %i.aht = xor i64 %i.ahs, %i.ahp
  %i.ahu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ahv = load ptr, ptr %i.ahu, align 16, !alias.scope !8003, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.ahw = load i64, ptr %i.ahv, align 8, !noalias !8003, !noundef !3
  %i.ahx = zext i64 %i.aht to i128
  %i.ahy = zext i64 %i.ahw to i128
  %i.ahz = xor i128 %i.ahq, %i.ahy
  %i.aia = mul nuw i128 %i.ahz, %i.ahx            ; 2 uses
  %i.aib = lshr i128 %i.aia, 64
  %i.aic = xor i128 %i.aib, %i.aia
  %i.aid = trunc i128 %i.aic to i64               ; 2 uses
  store i64 %i.aid, ptr %i.ahr, align 8, !alias.scope !8003
  %i.aie = zext nneg i8 %i.agq to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8005)
  br label %.thread104

.thread104:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, %bb.be
  %i.aif = phi ptr [ %i.ahc, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2 ], [ %i.ahv, %bb.be ]
  %i.aig = phi i64 [ %i.ahk, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2 ], [ %i.aid, %bb.be ]
  %i.aih = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2 ], [ %i.aie, %bb.be ]
  %i.aii = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %.in117 = load i64, ptr %i.aii, align 8, !range !372, !noundef !3
  %.not118 = icmp eq i64 %.in117, 69              ; 2 uses
  %i.aij = select i1 %.not118, i128 0, i128 18446744073709551616
  %i.aik = or disjoint i128 %i.aij, %i.aih        ; 2 uses
  store i128 %i.aik, ptr %1, align 16, !alias.scope !7989
  store i8 -128, ptr %i.d, align 16, !alias.scope !7989
  br i1 %.not118, label %.thread109, label %bb.bf

.thread109:                                       ; preds = %.thread104
  %i.ail = getelementptr inbounds nuw i8, ptr %0, i64 2426
  %.val22110 = load i8, ptr %i.ail, align 2, !range !120, !noundef !3
  br label %bb.bj

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge, %.thread105
  %i.aim = phi ptr [ %.pre129, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge ], [ %i.ahc, %.thread105 ]
  %i.ain = phi i64 [ %.pre127, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge ], [ %i.ahk, %.thread105 ]
  %i.aio = phi i128 [ %i.agu, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge ], [ %i.aho, %.thread105 ] ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %.in = load i64, ptr %i.aip, align 8, !range !372, !noundef !3
  %i.aiq = icmp ne i64 %.in, 69                   ; 2 uses
  %i.air = trunc i128 %i.aio to i64
  %i.ais = lshr i128 %i.aio, 64
  %i.ait = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aiu = xor i64 %i.ain, %i.air
  %i.aiv = load i64, ptr %i.aim, align 8, !noalias !7989, !noundef !3
  %i.aiw = zext i64 %i.aiu to i128
  %i.aix = zext i64 %i.aiv to i128
  %i.aiy = xor i128 %i.ais, %i.aix
  %i.aiz = mul nuw i128 %i.aiy, %i.aiw            ; 2 uses
  %i.aja = lshr i128 %i.aiz, 64
  %i.ajb = xor i128 %i.aja, %i.aiz
  %i.ajc = trunc i128 %i.ajb to i64
  store i64 %i.ajc, ptr %i.ait, align 8, !alias.scope !7989
  %i.ajd = zext i1 %i.aiq to i128
  store i128 %i.ajd, ptr %1, align 16, !alias.scope !7989
  store i8 64, ptr %i.d, align 16, !alias.scope !7989
  br i1 %i.aiq, label %bb.bf, label %.thread112

.thread112:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.aje = getelementptr inbounds nuw i8, ptr %0, i64 2426
  %.val22113 = load i8, ptr %i.aje, align 2, !range !120, !noundef !3
  br label %._crit_edge

bb.bf:                                            ; preds = %.thread104, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.ajf = phi ptr [ %i.aii, %.thread104 ], [ %i.aip, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit ]
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.ajf, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !inline_history !8006
  %i.ajg = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.ajh = load ptr, ptr %i.ajg, align 8, !alias.scope !8007, !noalias !8010, !nonnull !3, !noundef !3
  %i.aji = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.ajj = load i64, ptr %i.aji, align 8, !alias.scope !8007, !noalias !8010, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8018)
  %i.ajk = load i8, ptr %i.d, align 16, !alias.scope !8021, !noundef !3 ; 3 uses
  %i.ajl = icmp ugt i8 %i.ajk, 64
  br i1 %i.ajl, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ajm = zext i64 %i.ajj to i128
  %i.ajn = zext nneg i8 %i.ajk to i128
  %i.ajo = shl nuw i128 %i.ajm, %i.ajn
  %i.ajp = load i128, ptr %1, align 16, !alias.scope !8021, !noundef !3
  %i.ajq = or i128 %i.ajp, %i.ajo
  %i.ajr = add nuw i8 %i.ajk, 64
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.ajs = load i128, ptr %1, align 16, !alias.scope !8021, !noundef !3 ; 2 uses
  %i.ajt = trunc i128 %i.ajs to i64
  %i.aju = lshr i128 %i.ajs, 64
  %i.ajv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ajw = load i64, ptr %i.ajv, align 8, !alias.scope !8021, !noundef !3
  %i.ajx = xor i64 %i.ajw, %i.ajt
  %i.ajy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ajz = load ptr, ptr %i.ajy, align 16, !alias.scope !8021, !nonnull !3, !align !65, !noundef !3
  %i.aka = load i64, ptr %i.ajz, align 8, !noalias !8021, !noundef !3
  %i.akb = zext i64 %i.ajx to i128
  %i.akc = zext i64 %i.aka to i128
  %i.akd = xor i128 %i.aju, %i.akc
  %i.ake = mul nuw i128 %i.akd, %i.akb            ; 2 uses
  %i.akf = lshr i128 %i.ake, 64
  %i.akg = xor i128 %i.akf, %i.ake
  %i.akh = trunc i128 %i.akg to i64
  store i64 %i.akh, ptr %i.ajv, align 8, !alias.scope !8021
  %i.aki = zext i64 %i.ajj to i128
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sink.i65 = phi i128 [ %i.aki, %bb.bh ], [ %i.ajq, %bb.bg ]
  %storemerge.i.i.i66 = phi i8 [ 64, %bb.bh ], [ %i.ajr, %bb.bg ]
  store i128 %.sink.i65, ptr %1, align 16, !alias.scope !8021
  store i8 %storemerge.i.i.i66, ptr %i.d, align 16, !alias.scope !8021
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ajh, i64 noundef %i.ajj, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !inline_history !8006
  %.pr108 = load i8, ptr %i.d, align 16, !alias.scope !8022 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %0, i64 2426
  %.val22 = load i8, ptr %i.akj, align 2, !range !120, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8031)
  %i.akk = icmp ugt i8 %.pr108, 64
  %.pre131 = load i128, ptr %1, align 16, !alias.scope !8022 ; 2 uses
  br i1 %i.akk, label %._crit_edge132, label %._crit_edge

._crit_edge132:                                   ; preds = %bb.bi
  %.phi.trans.insert133 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre134 = load i64, ptr %.phi.trans.insert133, align 8, !alias.scope !8022
  %.phi.trans.insert135 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre136 = load ptr, ptr %.phi.trans.insert135, align 16, !alias.scope !8022
  br label %bb.bj

._crit_edge:                                      ; preds = %bb.bi, %.thread112
  %i.akl = phi i128 [ 0, %.thread112 ], [ %.pre131, %bb.bi ]
  %.val22114 = phi i8 [ %.val22113, %.thread112 ], [ %.val22, %bb.bi ]
  %i.akm = phi i8 [ 64, %.thread112 ], [ %.pr108, %bb.bi ] ; 2 uses
  %i.akn = zext nneg i8 %.val22114 to i128
  %i.ako = zext nneg i8 %i.akm to i128
  %i.akp = shl nuw nsw i128 %i.akn, %i.ako
  %i.akq = or i128 %i.akp, %i.akl
  %i.akr = add nuw i8 %i.akm, 64
  br label %_RINvXs2B_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12SelectFlavorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.bj:                                            ; preds = %._crit_edge132, %.thread109
  %i.aks = phi ptr [ %i.aif, %.thread109 ], [ %.pre136, %._crit_edge132 ]
  %i.akt = phi i64 [ %i.aig, %.thread109 ], [ %.pre134, %._crit_edge132 ]
  %i.aku = phi i128 [ %i.aik, %.thread109 ], [ %.pre131, %._crit_edge132 ] ; 2 uses
  %.val22111 = phi i8 [ %.val22110, %.thread109 ], [ %.val22, %._crit_edge132 ]
  %i.akv = trunc i128 %i.aku to i64
  %i.akw = lshr i128 %i.aku, 64
  %i.akx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aky = xor i64 %i.akt, %i.akv
  %i.akz = load i64, ptr %i.aks, align 8, !noalias !8022, !noundef !3
  %i.ala = zext i64 %i.aky to i128
  %i.alb = zext i64 %i.akz to i128
  %i.alc = xor i128 %i.akw, %i.alb
  %i.ald = mul nuw i128 %i.alc, %i.ala            ; 2 uses
  %i.ale = lshr i128 %i.ald, 64
  %i.alf = xor i128 %i.ale, %i.ald
  %i.alg = trunc i128 %i.alf to i64
  store i64 %i.alg, ptr %i.akx, align 8, !alias.scope !8022
  %i.alh = zext nneg i8 %.val22111 to i128
  br label %_RINvXs2B_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12SelectFlavorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs2B_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12SelectFlavorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge, %bb.bj
  %.sink.i60 = phi i128 [ %i.alh, %bb.bj ], [ %i.akq, %._crit_edge ]
  %storemerge.i.i.i61 = phi i8 [ 64, %bb.bj ], [ %i.akr, %._crit_edge ]
  store i128 %.sink.i60, ptr %1, align 16, !alias.scope !8022
  store i8 %storemerge.i.i.i61, ptr %i.d, align 16, !alias.scope !8022
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs2L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6SelectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_3
begin_hunk_4_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit206: ; preds = %bb.av, %bb.aw
  %.sink.i204 = phi i128 [ %i.ua, %bb.aw ], [ %i.tk, %bb.av ]
  %storemerge.i.i.i205 = phi i8 [ 64, %bb.aw ], [ -128, %bb.av ]
  store i128 %.sink.i204, ptr %1, align 16, !alias.scope !10382, !noalias !10360
  store i8 %storemerge.i.i.i205, ptr %i.c, align 16, !alias.scope !10382, !noalias !10360
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.te, i64 noundef %i.tg, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !10360, !inline_history !10384
  br label %_RINvXs8J_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16PivotValueSourceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.ax:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.uc = load ptr, ptr %i.ub, align 8, !alias.scope !10360, !noalias !10363, !nonnull !3, !noundef !3
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ue = load i64, ptr %i.ud, align 8, !alias.scope !10360, !noalias !10363, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10388), !noalias !10360
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10391), !noalias !10360
  %i.uf = icmp ugt i8 %storemerge.i.i.i81, 64
  br i1 %i.uf, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ug = zext i64 %i.ue to i128
  %i.uh = shl nuw i128 %i.ug, 64
  %i.ui = or i128 %i.uh, %i.tc
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit203

bb.az:                                            ; preds = %bb.ax
  %i.uj = trunc i128 %i.tc to i64
  %i.uk = lshr i128 %i.tc, 64
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.um = load i64, ptr %i.ul, align 8, !alias.scope !10394, !noalias !10360, !noundef !3
  %i.un = xor i64 %i.um, %i.uj
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.up = load ptr, ptr %i.uo, align 16, !alias.scope !10394, !noalias !10360, !nonnull !3, !align !65, !noundef !3
  %i.uq = load i64, ptr %i.up, align 8, !noalias !10395, !noundef !3
  %i.ur = zext i64 %i.un to i128
  %i.us = zext i64 %i.uq to i128
  %i.ut = xor i128 %i.uk, %i.us
  %i.uu = mul nuw i128 %i.ut, %i.ur               ; 2 uses
  %i.uv = lshr i128 %i.uu, 64
  %i.uw = xor i128 %i.uv, %i.uu
  %i.ux = trunc i128 %i.uw to i64
  store i64 %i.ux, ptr %i.ul, align 8, !alias.scope !10394, !noalias !10360
  %i.uy = zext i64 %i.ue to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit203

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit203: ; preds = %bb.ay, %bb.az
  %.sink.i201 = phi i128 [ %i.uy, %bb.az ], [ %i.ui, %bb.ay ]
  %storemerge.i.i.i202 = phi i8 [ 64, %bb.az ], [ -128, %bb.ay ]
  store i128 %.sink.i201, ptr %1, align 16, !alias.scope !10394, !noalias !10360
  store i8 %storemerge.i.i.i202, ptr %i.c, align 16, !alias.scope !10394, !noalias !10360
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.uc, i64 noundef %i.ue, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !10360, !inline_history !10384
  br label %_RINvXs8J_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16PivotValueSourceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.ba:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.va = load ptr, ptr %i.uz, align 8, !alias.scope !10360, !noalias !10363, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs1z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5QueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.va, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !noalias !10360, !inline_history !10384
  br label %_RINvXs8J_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16PivotValueSourceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs8J_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16PivotValueSourceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit206, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit203, %bb.ba
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.vc = load i64, ptr %i.vb, align 8, !range !372, !noundef !3
  %i.vd = icmp ne i64 %i.vc, 69                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10399)
  %i.ve = load i8, ptr %i.c, align 16, !alias.scope !10402, !noundef !3 ; 3 uses
  %i.vf = icmp ugt i8 %i.ve, 64
  br i1 %i.vf, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_RINvXs8J_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16PivotValueSourceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.vg = zext i1 %i.vd to i128
  %i.vh = zext nneg i8 %i.ve to i128
  %i.vi = shl nuw nsw i128 %i.vg, %i.vh
  %i.vj = load i128, ptr %1, align 16, !alias.scope !10402, !noundef !3
  %i.vk = or i128 %i.vj, %i.vi
  %i.vl = add nuw i8 %i.ve, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit30

bb.bc:                                            ; preds = %_RINvXs8J_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16PivotValueSourceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.vm = load i128, ptr %1, align 16, !alias.scope !10402, !noundef !3 ; 2 uses
  %i.vn = trunc i128 %i.vm to i64
  %i.vo = lshr i128 %i.vm, 64
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.vq = load i64, ptr %i.vp, align 8, !alias.scope !10402, !noundef !3
  %i.vr = xor i64 %i.vq, %i.vn
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.vt = load ptr, ptr %i.vs, align 16, !alias.scope !10402, !nonnull !3, !align !65, !noundef !3
  %i.vu = load i64, ptr %i.vt, align 8, !noalias !10402, !noundef !3
  %i.vv = zext i64 %i.vr to i128
  %i.vw = zext i64 %i.vu to i128
  %i.vx = xor i128 %i.vo, %i.vw
  %i.vy = mul nuw i128 %i.vx, %i.vv               ; 2 uses
  %i.vz = lshr i128 %i.vy, 64
  %i.wa = xor i128 %i.vz, %i.vy
  %i.wb = trunc i128 %i.wa to i64
  store i64 %i.wb, ptr %i.vp, align 8, !alias.scope !10402
  %i.wc = zext i1 %i.vd to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit30

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit30: ; preds = %bb.bb, %bb.bc
  %.sink281 = phi i128 [ %i.wc, %bb.bc ], [ %i.vk, %bb.bb ]
  %storemerge.i.i29 = phi i8 [ 64, %bb.bc ], [ %i.vl, %bb.bb ] ; 2 uses
  store i128 %.sink281, ptr %1, align 16, !alias.scope !10402
  store i8 %storemerge.i.i29, ptr %i.c, align 16, !alias.scope !10402
  br i1 %i.vd, label %bb.fe, label %bb.ff

bb.bd:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.wg = load ptr, ptr %i.wf, align 8, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.wg, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.wd, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.we, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.wi = load ptr, ptr %i.wh, align 8, !nonnull !3, !noundef !3
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.wk = load i64, ptr %i.wj, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10409)
  %i.wl = load i8, ptr %i.c, align 16, !alias.scope !10412, !noundef !3 ; 3 uses
  %i.wm = icmp ugt i8 %i.wl, 64
  br i1 %i.wm, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.wn = zext i64 %i.wk to i128
  %i.wo = zext nneg i8 %i.wl to i128
  %i.wp = shl nuw i128 %i.wn, %i.wo
  %i.wq = load i128, ptr %1, align 16, !alias.scope !10412, !noundef !3
  %i.wr = or i128 %i.wq, %i.wp
  %i.ws = add nuw i8 %i.wl, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit84

bb.bf:                                            ; preds = %bb.bd
  %i.wt = load i128, ptr %1, align 16, !alias.scope !10412, !noundef !3 ; 2 uses
  %i.wu = trunc i128 %i.wt to i64
  %i.wv = lshr i128 %i.wt, 64
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.wx = load i64, ptr %i.ww, align 8, !alias.scope !10412, !noundef !3
  %i.wy = xor i64 %i.wx, %i.wu
  %i.wz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xa = load ptr, ptr %i.wz, align 16, !alias.scope !10412, !nonnull !3, !align !65, !noundef !3
  %i.xb = load i64, ptr %i.xa, align 8, !noalias !10412, !noundef !3
  %i.xc = zext i64 %i.wy to i128
  %i.xd = zext i64 %i.xb to i128
  %i.xe = xor i128 %i.wv, %i.xd
  %i.xf = mul nuw i128 %i.xe, %i.xc               ; 2 uses
  %i.xg = lshr i128 %i.xf, 64
  %i.xh = xor i128 %i.xg, %i.xf
  %i.xi = trunc i128 %i.xh to i64
  store i64 %i.xi, ptr %i.ww, align 8, !alias.scope !10412
  %i.xj = zext i64 %i.wk to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit84

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit84: ; preds = %bb.be, %bb.bf
  %.sink.i82 = phi i128 [ %i.xj, %bb.bf ], [ %i.wr, %bb.be ]
  %storemerge.i.i.i83 = phi i8 [ 64, %bb.bf ], [ %i.ws, %bb.be ]
  store i128 %.sink.i82, ptr %1, align 16, !alias.scope !10412
  store i8 %storemerge.i.i.i83, ptr %i.c, align 16, !alias.scope !10412
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.wi, i64 noundef %i.wk, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.xl = load i8, ptr %i.xk, align 8, !range !120, !noundef !3 ; 3 uses
  %i.xm = icmp ne i8 %i.xl, 2                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10416)
  %i.xn = load i8, ptr %i.c, align 16, !alias.scope !10419, !noundef !3 ; 4 uses
  %i.xo = icmp ugt i8 %i.xn, 64
  br i1 %i.xo, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit28.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit28

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit28: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit84
  %i.xp = zext i1 %i.xm to i128
  %i.xq = zext nneg i8 %i.xn to i128
  %i.xr = shl nuw nsw i128 %i.xp, %i.xq
  %i.xs = load i128, ptr %1, align 16, !alias.scope !10419, !noundef !3
  %i.xt = or i128 %i.xs, %i.xr                    ; 5 uses
  store i128 %i.xt, ptr %1, align 16, !alias.scope !10419
  %i.xu = add nuw i8 %i.xn, 64                    ; 2 uses
  store i8 %i.xu, ptr %i.c, align 16, !alias.scope !10419
  br i1 %i.xm, label %bb.fl, label %bb.fn

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit28.thread: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit84
  %i.xv = load i128, ptr %1, align 16, !alias.scope !10419, !noundef !3 ; 2 uses
  %i.xw = trunc i128 %i.xv to i64
  %i.xx = lshr i128 %i.xv, 64
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.xz = load i64, ptr %i.xy, align 8, !alias.scope !10419, !noundef !3
  %i.ya = xor i64 %i.xz, %i.xw
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.yc = load ptr, ptr %i.yb, align 16, !alias.scope !10419, !nonnull !3, !align !65, !noundef !3
  %i.yd = load i64, ptr %i.yc, align 8, !noalias !10419, !noundef !3
  %i.ye = zext i64 %i.ya to i128
  %i.yf = zext i64 %i.yd to i128
  %i.yg = xor i128 %i.xx, %i.yf
  %i.yh = mul nuw i128 %i.yg, %i.ye               ; 2 uses
  %i.yi = lshr i128 %i.yh, 64
  %i.yj = xor i128 %i.yi, %i.yh
  %i.yk = trunc i128 %i.yj to i64
  store i64 %i.yk, ptr %i.xy, align 8, !alias.scope !10419
  %i.yl = zext i1 %i.xm to i128
  store i128 %i.yl, ptr %1, align 16, !alias.scope !10419
  store i8 64, ptr %i.c, align 16, !alias.scope !10419
  br i1 %i.xm, label %.thread250, label %.thread253

.thread253:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit28.thread
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.yn = load i64, ptr %i.ym, align 8, !range !4, !noundef !3
  %.not363 = icmp eq i64 %i.yn, -9223372036854775808 ; 2 uses
  %i.yo = select i1 %.not363, i128 0, i128 18446744073709551616
  store i128 %i.yo, ptr %1, align 16, !alias.scope !10420
  store i8 -128, ptr %i.c, align 16, !alias.scope !10420
  br i1 %.not363, label %bb.du, label %bb.fp

bb.bg:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.yr = load ptr, ptr %i.yq, align 8, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.yr, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.yt = load ptr, ptr %i.ys, align 8, !nonnull !3, !noundef !3
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.yv = load i64, ptr %i.yu, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10431)
  %i.yw = load i8, ptr %i.c, align 16, !alias.scope !10434, !noundef !3 ; 3 uses
  %i.yx = icmp ugt i8 %i.yw, 64
  br i1 %i.yx, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.yy = zext i64 %i.yv to i128
  %i.yz = zext nneg i8 %i.yw to i128
  %i.za = shl nuw i128 %i.yy, %i.yz
  %i.zb = load i128, ptr %1, align 16, !alias.scope !10434, !noundef !3
  %i.zc = or i128 %i.zb, %i.za
  %i.zd = add nuw i8 %i.yw, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit87

bb.bi:                                            ; preds = %bb.bg
  %i.ze = load i128, ptr %1, align 16, !alias.scope !10434, !noundef !3 ; 2 uses
  %i.zf = trunc i128 %i.ze to i64
  %i.zg = lshr i128 %i.ze, 64
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.zi = load i64, ptr %i.zh, align 8, !alias.scope !10434, !noundef !3
  %i.zj = xor i64 %i.zi, %i.zf
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.zl = load ptr, ptr %i.zk, align 16, !alias.scope !10434, !nonnull !3, !align !65, !noundef !3
  %i.zm = load i64, ptr %i.zl, align 8, !noalias !10434, !noundef !3
  %i.zn = zext i64 %i.zj to i128
  %i.zo = zext i64 %i.zm to i128
  %i.zp = xor i128 %i.zg, %i.zo
  %i.zq = mul nuw i128 %i.zp, %i.zn               ; 2 uses
  %i.zr = lshr i128 %i.zq, 64
  %i.zs = xor i128 %i.zr, %i.zq
  %i.zt = trunc i128 %i.zs to i64
  store i64 %i.zt, ptr %i.zh, align 8, !alias.scope !10434
  %i.zu = zext i64 %i.yv to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit87

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit87: ; preds = %bb.bh, %bb.bi
  %.sink.i85 = phi i128 [ %i.zu, %bb.bi ], [ %i.zc, %bb.bh ]
  %storemerge.i.i.i86 = phi i8 [ 64, %bb.bi ], [ %i.zd, %bb.bh ]
  store i128 %.sink.i85, ptr %1, align 16, !alias.scope !10434
  store i8 %storemerge.i.i.i86, ptr %i.c, align 16, !alias.scope !10434
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.yt, i64 noundef %i.yv, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.zw = load ptr, ptr %i.zv, align 8, !nonnull !3, !noundef !3
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.zy = load i64, ptr %i.zx, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10441)
  %i.zz = load i8, ptr %i.c, align 16, !alias.scope !10444, !noundef !3 ; 3 uses
  %i.aaa = icmp ugt i8 %i.zz, 64
  br i1 %i.aaa, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit87
  %i.aab = zext i64 %i.zy to i128
  %i.aac = zext nneg i8 %i.zz to i128
  %i.aad = shl nuw i128 %i.aab, %i.aac
  %i.aae = load i128, ptr %1, align 16, !alias.scope !10444, !noundef !3
  %i.aaf = or i128 %i.aae, %i.aad
  %i.aag = add nuw i8 %i.zz, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit90

bb.bk:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit87
  %i.aah = load i128, ptr %1, align 16, !alias.scope !10444, !noundef !3 ; 2 uses
  %i.aai = trunc i128 %i.aah to i64
  %i.aaj = lshr i128 %i.aah, 64
  %i.aak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aal = load i64, ptr %i.aak, align 8, !alias.scope !10444, !noundef !3
  %i.aam = xor i64 %i.aal, %i.aai
  %i.aan = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aao = load ptr, ptr %i.aan, align 16, !alias.scope !10444, !nonnull !3, !align !65, !noundef !3
  %i.aap = load i64, ptr %i.aao, align 8, !noalias !10444, !noundef !3
  %i.aaq = zext i64 %i.aam to i128
  %i.aar = zext i64 %i.aap to i128
  %i.aas = xor i128 %i.aaj, %i.aar
  %i.aat = mul nuw i128 %i.aas, %i.aaq            ; 2 uses
  %i.aau = lshr i128 %i.aat, 64
  %i.aav = xor i128 %i.aau, %i.aat
  %i.aaw = trunc i128 %i.aav to i64
  store i64 %i.aaw, ptr %i.aak, align 8, !alias.scope !10444
  %i.aax = zext i64 %i.zy to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit90

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit90: ; preds = %bb.bj, %bb.bk
  %.sink.i88 = phi i128 [ %i.aax, %bb.bk ], [ %i.aaf, %bb.bj ]
  %storemerge.i.i.i89 = phi i8 [ 64, %bb.bk ], [ %i.aag, %bb.bj ]
  store i128 %.sink.i88, ptr %1, align 16, !alias.scope !10444
  store i8 %storemerge.i.i.i89, ptr %i.c, align 16, !alias.scope !10444
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.zw, i64 noundef %i.zy, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aaz = load ptr, ptr %i.aay, align 8, !nonnull !3, !noundef !3
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.abb = load i64, ptr %i.aba, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10451)
  %i.abc = load i8, ptr %i.c, align 16, !alias.scope !10454, !noundef !3 ; 3 uses
  %i.abd = icmp ugt i8 %i.abc, 64
  br i1 %i.abd, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit90
  %i.abe = zext i64 %i.abb to i128
  %i.abf = zext nneg i8 %i.abc to i128
  %i.abg = shl nuw i128 %i.abe, %i.abf
  %i.abh = load i128, ptr %1, align 16, !alias.scope !10454, !noundef !3
  %i.abi = or i128 %i.abh, %i.abg
  %i.abj = add nuw i8 %i.abc, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit93

bb.bm:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit90
  %i.abk = load i128, ptr %1, align 16, !alias.scope !10454, !noundef !3 ; 2 uses
  %i.abl = trunc i128 %i.abk to i64
  %i.abm = lshr i128 %i.abk, 64
  %i.abn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.abo = load i64, ptr %i.abn, align 8, !alias.scope !10454, !noundef !3
  %i.abp = xor i64 %i.abo, %i.abl
  %i.abq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.abr = load ptr, ptr %i.abq, align 16, !alias.scope !10454, !nonnull !3, !align !65, !noundef !3
  %i.abs = load i64, ptr %i.abr, align 8, !noalias !10454, !noundef !3
  %i.abt = zext i64 %i.abp to i128
  %i.abu = zext i64 %i.abs to i128
  %i.abv = xor i128 %i.abm, %i.abu
  %i.abw = mul nuw i128 %i.abv, %i.abt            ; 2 uses
  %i.abx = lshr i128 %i.abw, 64
  %i.aby = xor i128 %i.abx, %i.abw
  %i.abz = trunc i128 %i.aby to i64
  store i64 %i.abz, ptr %i.abn, align 8, !alias.scope !10454
  %i.aca = zext i64 %i.abb to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit93

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit93: ; preds = %bb.bl, %bb.bm
  %.sink.i91 = phi i128 [ %i.aca, %bb.bm ], [ %i.abi, %bb.bl ]
  %storemerge.i.i.i92 = phi i8 [ 64, %bb.bm ], [ %i.abj, %bb.bl ]
  store i128 %.sink.i91, ptr %1, align 16, !alias.scope !10454
  store i8 %storemerge.i.i.i92, ptr %i.c, align 16, !alias.scope !10454
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aaz, i64 noundef %i.abb, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.acb = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.acc = load i8, ptr %i.acb, align 8, !range !3100, !noundef !3 ; 7 uses
  %i.acd = icmp ne i8 %i.acc, 5                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10458)
  %i.ace = load i8, ptr %i.c, align 16, !alias.scope !10461, !noundef !3 ; 4 uses
  %i.acf = icmp ugt i8 %i.ace, 64
  br i1 %i.acf, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit93
  %i.acg = zext i1 %i.acd to i128
  %i.ach = zext nneg i8 %i.ace to i128
  %i.aci = shl nuw nsw i128 %i.acg, %i.ach
  %i.acj = load i128, ptr %1, align 16, !alias.scope !10461, !noundef !3
  %i.ack = or i128 %i.acj, %i.aci                 ; 6 uses
  store i128 %i.ack, ptr %1, align 16, !alias.scope !10461
  %i.acl = add nuw i8 %i.ace, 64                  ; 2 uses
  store i8 %i.acl, ptr %i.c, align 16, !alias.scope !10461
  br i1 %i.acd, label %bb.fs, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26.thread: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit93
  %i.acm = load i128, ptr %1, align 16, !alias.scope !10461, !noundef !3 ; 2 uses
  %i.acn = trunc i128 %i.acm to i64
  %i.aco = lshr i128 %i.acm, 64
  %i.acp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.acq = load i64, ptr %i.acp, align 8, !alias.scope !10461, !noundef !3
  %i.acr = xor i64 %i.acq, %i.acn
  %i.acs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.act = load ptr, ptr %i.acs, align 16, !alias.scope !10461, !nonnull !3, !align !65, !noundef !3 ; 3 uses
  %i.acu = load i64, ptr %i.act, align 8, !noalias !10461, !noundef !3
  %i.acv = zext i64 %i.acr to i128
  %i.acw = zext i64 %i.acu to i128
  %i.acx = xor i128 %i.aco, %i.acw
  %i.acy = mul nuw i128 %i.acx, %i.acv            ; 2 uses
  %i.acz = lshr i128 %i.acy, 64
  %i.ada = xor i128 %i.acz, %i.acy
  %i.adb = trunc i128 %i.ada to i64               ; 3 uses
  store i64 %i.adb, ptr %i.acp, align 8, !alias.scope !10461
  br i1 %i.acd, label %.thread256, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

.thread256:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26.thread
  %.not358 = icmp eq i8 %i.acc, 4                 ; 2 uses
  %i.adc = select i1 %.not358, i128 1, i128 18446744073709551617
  store i128 %i.adc, ptr %1, align 16, !alias.scope !10462
  store i8 -128, ptr %i.c, align 16, !alias.scope !10462
  br i1 %.not358, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread260, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i

bb.bn:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.adf = load ptr, ptr %i.ade, align 8, !nonnull !3, !noundef !3
end_hunk_4
begin_hunk_5_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.cii = zext i64 %i.cif to i128
  %i.cij = zext nneg i8 %i.cig to i128
  %i.cik = shl nuw i128 %i.cii, %i.cij
  %i.cil = load i128, ptr %1, align 16, !alias.scope !11083, !noalias !11069, !noundef !3
  %i.cim = or i128 %i.cil, %i.cik
  %i.cin = add nuw i8 %i.cig, 64
  br label %_RINvXsab_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_10TableAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit178

bb.fr:                                            ; preds = %bb.fp
  %i.cio = load i128, ptr %1, align 16, !alias.scope !11083, !noalias !11069, !noundef !3 ; 2 uses
  %i.cip = trunc i128 %i.cio to i64
  %i.ciq = lshr i128 %i.cio, 64
  %i.cir = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cis = load i64, ptr %i.cir, align 8, !alias.scope !11083, !noalias !11069, !noundef !3
  %i.cit = xor i64 %i.cis, %i.cip
  %i.ciu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.civ = load ptr, ptr %i.ciu, align 16, !alias.scope !11083, !noalias !11069, !nonnull !3, !align !65, !noundef !3
  %i.ciw = load i64, ptr %i.civ, align 8, !noalias !11084, !noundef !3
  %i.cix = zext i64 %i.cit to i128
  %i.ciy = zext i64 %i.ciw to i128
  %i.ciz = xor i128 %i.ciq, %i.ciy
  %i.cja = mul nuw i128 %i.ciz, %i.cix            ; 2 uses
  %i.cjb = lshr i128 %i.cja, 64
  %i.cjc = xor i128 %i.cjb, %i.cja
  %i.cjd = trunc i128 %i.cjc to i64
  store i64 %i.cjd, ptr %i.cir, align 8, !alias.scope !11083, !noalias !11069
  %i.cje = zext i64 %i.cif to i128
  br label %_RINvXsab_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_10TableAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit178

_RINvXsab_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_10TableAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit178: ; preds = %bb.fq, %bb.fr
  %.sink.i.i176 = phi i128 [ %i.cje, %bb.fr ], [ %i.cim, %bb.fq ]
  %storemerge.i.i.i.i177 = phi i8 [ 64, %bb.fr ], [ %i.cin, %bb.fq ]
  store i128 %.sink.i.i176, ptr %1, align 16, !alias.scope !11083, !noalias !11069
  store i8 %storemerge.i.i.i.i177, ptr %i.c, align 16, !alias.scope !11083, !noalias !11069
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cid, i64 noundef %i.cif, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %bb.du

bb.fs:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11085)
  %.not357 = icmp eq i8 %i.acc, 4                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11087)
  %.not = icmp eq i8 %i.ace, 0
  br i1 %.not, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i: ; preds = %bb.fs
  %i.cjf = select i1 %.not357, i128 0, i128 18446744073709551616
  %i.cjg = or i128 %i.ack, %i.cjf                 ; 3 uses
  store i128 %i.cjg, ptr %1, align 16, !alias.scope !10462
  store i8 -128, ptr %i.c, align 16, !alias.scope !10462
  br i1 %.not357, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread260, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i
  %extract.t = trunc i128 %i.ack to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre375 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !11088
  %.phi.trans.insert376 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre377 = load ptr, ptr %.phi.trans.insert376, align 16, !alias.scope !11088
  %i.cjh = lshr i128 %i.cjg, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i: ; preds = %bb.fs
  %i.cji = trunc i128 %i.ack to i64
  %i.cjj = lshr i128 %i.ack, 64
  %i.cjk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.cjl = load i64, ptr %i.cjk, align 8, !alias.scope !10462, !noundef !3
  %i.cjm = xor i64 %i.cjl, %i.cji
  %i.cjn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cjo = load ptr, ptr %i.cjn, align 16, !alias.scope !10462, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.cjp = load i64, ptr %i.cjo, align 8, !noalias !10462, !noundef !3
  %i.cjq = zext i64 %i.cjm to i128
  %i.cjr = zext i64 %i.cjp to i128                ; 2 uses
  %i.cjs = xor i128 %i.cjj, %i.cjr
  %i.cjt = mul nuw i128 %i.cjs, %i.cjq            ; 2 uses
  %i.cju = lshr i128 %i.cjt, 64
  %i.cjv = xor i128 %i.cju, %i.cjt
  %i.cjw = trunc i128 %i.cjv to i64               ; 3 uses
  store i64 %i.cjw, ptr %i.cjk, align 8, !alias.scope !10462
  br i1 %.not357, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, label %.thread.i182

.thread.i182:                                     ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i
  %.not8.i = icmp eq i8 %i.acc, 3                 ; 2 uses
  %i.cjx = select i1 %.not8.i, i128 1, i128 18446744073709551617
  store i128 %i.cjx, ptr %1, align 16, !alias.scope !11088
  store i8 -128, ptr %i.c, align 16, !alias.scope !11088
  br i1 %.not8.i, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread260, label %bb.fu

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge, %.thread256
  %i.cjy = phi ptr [ %i.act, %.thread256 ], [ %.pre377, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ] ; 2 uses
  %i.cjz = phi i64 [ %i.adb, %.thread256 ], [ %.pre375, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ]
  %i.cka = phi i128 [ 1, %.thread256 ], [ %i.cjh, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ]
  %.off0 = phi i64 [ 1, %.thread256 ], [ %extract.t, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ]
  %.not359 = icmp eq i8 %i.acc, 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11094)
  %i.ckb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ckc = xor i64 %i.cjz, %.off0
  %i.ckd = load i64, ptr %i.cjy, align 8, !noalias !11088, !noundef !3
  %i.cke = zext i64 %i.ckc to i128
  %i.ckf = zext i64 %i.ckd to i128
  %i.ckg = xor i128 %i.cka, %i.ckf
  %i.ckh = mul nuw i128 %i.ckg, %i.cke            ; 2 uses
  %i.cki = lshr i128 %i.ckh, 64
  %i.ckj = xor i128 %i.cki, %i.ckh
  %i.ckk = trunc i128 %i.ckj to i64               ; 2 uses
  store i64 %i.ckk, ptr %i.ckb, align 8, !alias.scope !11088
  br i1 %.not359, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.ft

bb.ft:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i
  %i.ckl = zext nneg i8 %i.acc to i128
  %i.ckm = shl nuw nsw i128 %i.ckl, 64
  %i.ckn = or disjoint i128 %i.ckm, 1
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i180

bb.fu:                                            ; preds = %.thread.i182
  %i.cko = xor i64 %i.cjw, 1
  %i.ckp = zext i64 %i.cko to i128
  %i.ckq = xor i128 %i.cjr, 1
  %i.ckr = mul nuw i128 %i.ckq, %i.ckp            ; 2 uses
  %i.cks = lshr i128 %i.ckr, 64
  %i.ckt = xor i128 %i.cks, %i.ckr
  %i.cku = trunc i128 %i.ckt to i64
  store i64 %i.cku, ptr %i.cjk, align 8, !alias.scope !11095
  %i.ckv = zext nneg i8 %i.acc to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i180

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i180: ; preds = %bb.fu, %bb.ft
  %storemerge.i = phi i128 [ %i.ckn, %bb.ft ], [ %i.ckv, %bb.fu ] ; 2 uses
  %storemerge.i.i.i181 = phi i8 [ -128, %bb.ft ], [ 64, %bb.fu ] ; 2 uses
  store i128 %storemerge.i, ptr %1, align 16, !alias.scope !11095
  store i8 %storemerge.i.i.i181, ptr %i.c, align 16, !alias.scope !11095
  br label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26.thread
  %i.ckw = phi ptr [ %i.cjy, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i ], [ %i.cjo, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i ], [ %i.act, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26.thread ]
  %i.ckx = phi i64 [ %i.ckk, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i ], [ %i.cjw, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i ], [ %i.adb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26.thread ]
  %i.cky = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ckz = load i64, ptr %i.cky, align 8, !range !397, !noundef !3 ; 2 uses
  %.not360 = icmp eq i64 %i.ckz, 4                ; 2 uses
  %i.cla = select i1 %.not360, i128 0, i128 18446744073709551616
  store i128 %i.cla, ptr %1, align 16, !alias.scope !11100
  store i8 -128, ptr %i.c, align 16, !alias.scope !11100
  br i1 %.not360, label %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %bb.fx

_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread260: ; preds = %.thread256, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i, %.thread.i182
  %i.clb = phi i128 [ %i.cjg, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ], [ 1, %.thread.i182 ], [ 1, %.thread256 ]
  %i.clc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cld = load i64, ptr %i.clc, align 8, !range !397, !noundef !3 ; 2 uses
  %i.cle = icmp ne i64 %i.cld, 4
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i180, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26
  %i.clf = phi i128 [ %storemerge.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i180 ], [ %i.ack, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26 ] ; 3 uses
  %i.clg = phi i8 [ %storemerge.i.i.i181, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i180 ], [ %i.acl, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26 ]
  %i.clh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cli = load i64, ptr %i.clh, align 8, !range !397, !noundef !3 ; 3 uses
  %i.clj = icmp ne i64 %i.cli, 4                  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11106)
  %i.clk = icmp ugt i8 %i.clg, 64
  br i1 %i.clk, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, label %bb.fv

bb.fv:                                            ; preds = %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.cll = select i1 %i.clj, i128 18446744073709551616, i128 0
  %i.clm = or i128 %i.cll, %i.clf                 ; 2 uses
  store i128 %i.clm, ptr %1, align 16, !alias.scope !11100
  store i8 -128, ptr %i.c, align 16, !alias.scope !11100
  br i1 %i.clj, label %._crit_edge, label %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %bb.fv
  %extract.t362 = trunc i128 %i.clf to i64
  %.phi.trans.insert378 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre379 = load i64, ptr %.phi.trans.insert378, align 8, !alias.scope !11107, !noalias !11114
  %.phi.trans.insert380 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre381 = load ptr, ptr %.phi.trans.insert380, align 16, !alias.scope !11107, !noalias !11114
  %i.cln = lshr i128 %i.clm, 64
  %i.clo = xor i64 %.pre379, %extract.t362
  br label %bb.fx

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread260
  %i.clp = phi i128 [ %i.clb, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread260 ], [ %i.clf, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.clq = phi i1 [ %i.cle, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread260 ], [ %i.clj, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.clr = phi i64 [ %i.cld, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread260 ], [ %i.cli, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.cls = phi ptr [ %i.clc, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread260 ], [ %i.clh, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.clt = trunc i128 %i.clp to i64
  %i.clu = lshr i128 %i.clp, 64
  %i.clv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.clw = load i64, ptr %i.clv, align 8, !alias.scope !11100, !noundef !3
  %i.clx = xor i64 %i.clw, %i.clt
  %i.cly = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.clz = load ptr, ptr %i.cly, align 16, !alias.scope !11100, !nonnull !3, !align !65, !noundef !3
  %i.cma = load i64, ptr %i.clz, align 8, !noalias !11100, !noundef !3
  %i.cmb = zext i64 %i.clx to i128
  %i.cmc = zext i64 %i.cma to i128
  %i.cmd = xor i128 %i.clu, %i.cmc
  %i.cme = mul nuw i128 %i.cmd, %i.cmb            ; 2 uses
  %i.cmf = lshr i128 %i.cme, 64
  %i.cmg = xor i128 %i.cmf, %i.cme
  %i.cmh = trunc i128 %i.cmg to i64
  store i64 %i.cmh, ptr %i.clv, align 8, !alias.scope !11100
  %i.cmi = zext i1 %i.clq to i128
  store i128 %i.cmi, ptr %1, align 16, !alias.scope !11100
  store i8 64, ptr %i.c, align 16, !alias.scope !11100
  br i1 %i.clq, label %bb.fw, label %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.fw:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11118)
  %i.cmj = zext nneg i64 %i.clr to i128
  %i.cmk = shl nuw nsw i128 %i.cmj, 64
  %i.cml = or disjoint i128 %i.cmk, 1
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i183

bb.fx:                                            ; preds = %._crit_edge, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.cmm = phi ptr [ %i.ckw, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.pre381, %._crit_edge ]
  %i.cmn = phi i64 [ %i.ckx, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.clo, %._crit_edge ]
  %i.cmo = phi i128 [ 1, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.cln, %._crit_edge ]
  %i.cmp = phi ptr [ %i.cky, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.clh, %._crit_edge ]
  %i.cmq = phi i64 [ %i.ckz, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.cli, %._crit_edge ] ; 2 uses
  %i.cmr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cms = load i64, ptr %i.cmm, align 8, !noalias !11119, !noundef !3
  %i.cmt = zext i64 %i.cmn to i128
  %i.cmu = zext i64 %i.cms to i128
  %i.cmv = xor i128 %i.cmo, %i.cmu
  %i.cmw = mul nuw i128 %i.cmv, %i.cmt            ; 2 uses
  %i.cmx = lshr i128 %i.cmw, 64
  %i.cmy = xor i128 %i.cmx, %i.cmw
  %i.cmz = trunc i128 %i.cmy to i64
  store i64 %i.cmz, ptr %i.cmr, align 8, !alias.scope !11107, !noalias !11114
  %i.cna = zext nneg i64 %i.cmq to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i183

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i183: ; preds = %bb.fx, %bb.fw
  %i.cnb = phi i64 [ %i.cmq, %bb.fx ], [ %i.clr, %bb.fw ]
  %i.cnc = phi ptr [ %i.cmp, %bb.fx ], [ %i.cls, %bb.fw ]
  %.sink.i184 = phi i128 [ %i.cna, %bb.fx ], [ %i.cml, %bb.fw ]
  %storemerge.i.i.i185 = phi i8 [ 64, %bb.fx ], [ -128, %bb.fw ]
  store i128 %.sink.i184, ptr %1, align 16, !alias.scope !11107, !noalias !11114
  store i8 %storemerge.i.i.i185, ptr %i.c, align 16, !alias.scope !11107, !noalias !11114
  %switch.not.i = icmp samesign ult i64 %i.cnb, 2
  br i1 %switch.not.i, label %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i183
  %i.cnd = getelementptr inbounds nuw i8, ptr %i.cnc, i64 8
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cnd, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, %.sink.split.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i183, %bb.fv, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call fastcc void @_RINvXs9R_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.yp, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  %i.cne = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cnf = load ptr, ptr %i.cne, align 8, !nonnull !3, !noundef !3
  %i.cng = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cnh = load i64, ptr %i.cng, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11126)
  %i.cni = load i8, ptr %i.c, align 16, !alias.scope !11129, !noundef !3 ; 3 uses
  %i.cnj = icmp ugt i8 %i.cni, 64
  br i1 %i.cnj, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.cnk = zext i64 %i.cnh to i128
  %i.cnl = zext nneg i8 %i.cni to i128
  %i.cnm = shl nuw i128 %i.cnk, %i.cnl
  %i.cnn = load i128, ptr %1, align 16, !alias.scope !11129, !noundef !3
  %i.cno = or i128 %i.cnn, %i.cnm
  %i.cnp = add nuw i8 %i.cni, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit188

bb.fz:                                            ; preds = %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.cnq = load i128, ptr %1, align 16, !alias.scope !11129, !noundef !3 ; 2 uses
  %i.cnr = trunc i128 %i.cnq to i64
  %i.cns = lshr i128 %i.cnq, 64
  %i.cnt = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cnu = load i64, ptr %i.cnt, align 8, !alias.scope !11129, !noundef !3
  %i.cnv = xor i64 %i.cnu, %i.cnr
  %i.cnw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cnx = load ptr, ptr %i.cnw, align 16, !alias.scope !11129, !nonnull !3, !align !65, !noundef !3
  %i.cny = load i64, ptr %i.cnx, align 8, !noalias !11129, !noundef !3
  %i.cnz = zext i64 %i.cnv to i128
  %i.coa = zext i64 %i.cny to i128
  %i.cob = xor i128 %i.cns, %i.coa
  %i.coc = mul nuw i128 %i.cob, %i.cnz            ; 2 uses
  %i.cod = lshr i128 %i.coc, 64
  %i.coe = xor i128 %i.cod, %i.coc
  %i.cof = trunc i128 %i.coe to i64
  store i64 %i.cof, ptr %i.cnt, align 8, !alias.scope !11129
  %i.cog = zext i64 %i.cnh to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit188

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit188: ; preds = %bb.fy, %bb.fz
  %.sink.i186 = phi i128 [ %i.cog, %bb.fz ], [ %i.cno, %bb.fy ]
  %storemerge.i.i.i187 = phi i8 [ 64, %bb.fz ], [ %i.cnp, %bb.fy ]
  store i128 %.sink.i186, ptr %1, align 16, !alias.scope !11129
  store i8 %storemerge.i.i.i187, ptr %i.c, align 16, !alias.scope !11129
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16SymbolDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cnf, i64 noundef %i.cnh, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.coh = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.coi = load i64, ptr %i.coh, align 8, !range !4, !noundef !3
  %i.coj = icmp ne i64 %i.coi, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11133)
  %i.cok = load i8, ptr %i.c, align 16, !alias.scope !11136, !noundef !3 ; 3 uses
  %i.col = icmp ugt i8 %i.cok, 64
  br i1 %i.col, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit188
  %i.com = zext i1 %i.coj to i128
  %i.con = zext nneg i8 %i.cok to i128
  %i.coo = shl nuw nsw i128 %i.com, %i.con
  %i.cop = load i128, ptr %1, align 16, !alias.scope !11136, !noundef !3
  %i.coq = or i128 %i.cop, %i.coo
  %i.cor = add nuw i8 %i.cok, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

bb.gb:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit188
  %i.cos = load i128, ptr %1, align 16, !alias.scope !11136, !noundef !3 ; 2 uses
  %i.cot = trunc i128 %i.cos to i64
  %i.cou = lshr i128 %i.cos, 64
  %i.cov = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cow = load i64, ptr %i.cov, align 8, !alias.scope !11136, !noundef !3
  %i.cox = xor i64 %i.cow, %i.cot
  %i.coy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.coz = load ptr, ptr %i.coy, align 16, !alias.scope !11136, !nonnull !3, !align !65, !noundef !3
  %i.cpa = load i64, ptr %i.coz, align 8, !noalias !11136, !noundef !3
  %i.cpb = zext i64 %i.cox to i128
  %i.cpc = zext i64 %i.cpa to i128
  %i.cpd = xor i128 %i.cou, %i.cpc
  %i.cpe = mul nuw i128 %i.cpd, %i.cpb            ; 2 uses
  %i.cpf = lshr i128 %i.cpe, 64
  %i.cpg = xor i128 %i.cpf, %i.cpe
  %i.cph = trunc i128 %i.cpg to i64
  store i64 %i.cph, ptr %i.cov, align 8, !alias.scope !11136
  %i.cpi = zext i1 %i.coj to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %bb.ga, %bb.gb
  %.sink286 = phi i128 [ %i.cpi, %bb.gb ], [ %i.coq, %bb.ga ]
  %storemerge.i.i1 = phi i8 [ 64, %bb.gb ], [ %i.cor, %bb.ga ]
  store i128 %.sink286, ptr %1, align 16, !alias.scope !11136
  store i8 %storemerge.i.i1, ptr %i.c, align 16, !alias.scope !11136
  br i1 %i.coj, label %bb.gc, label %bb.du

bb.gc:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11140)
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.coh, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.cpj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.cpk = load ptr, ptr %i.cpj, align 8, !alias.scope !11137, !noalias !11140, !nonnull !3, !noundef !3
  %i.cpl = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cpm = load i64, ptr %i.cpl, align 8, !alias.scope !11137, !noalias !11140, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11148)
  %i.cpn = load i8, ptr %i.c, align 16, !alias.scope !11151, !noalias !11137, !noundef !3 ; 3 uses
  %i.cpo = icmp ugt i8 %i.cpn, 64
  br i1 %i.cpo, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.cpp = zext i64 %i.cpm to i128
  %i.cpq = zext nneg i8 %i.cpn to i128
  %i.cpr = shl nuw i128 %i.cpp, %i.cpq
  %i.cps = load i128, ptr %1, align 16, !alias.scope !11151, !noalias !11137, !noundef !3
  %i.cpt = or i128 %i.cps, %i.cpr
  %i.cpu = add nuw i8 %i.cpn, 64
  br label %_RINvXsab_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_10TableAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit192

bb.ge:                                            ; preds = %bb.gc
  %i.cpv = load i128, ptr %1, align 16, !alias.scope !11151, !noalias !11137, !noundef !3 ; 2 uses
  %i.cpw = trunc i128 %i.cpv to i64
  %i.cpx = lshr i128 %i.cpv, 64
  %i.cpy = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cpz = load i64, ptr %i.cpy, align 8, !alias.scope !11151, !noalias !11137, !noundef !3
  %i.cqa = xor i64 %i.cpz, %i.cpw
  %i.cqb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cqc = load ptr, ptr %i.cqb, align 16, !alias.scope !11151, !noalias !11137, !nonnull !3, !align !65, !noundef !3
  %i.cqd = load i64, ptr %i.cqc, align 8, !noalias !11152, !noundef !3
  %i.cqe = zext i64 %i.cqa to i128
  %i.cqf = zext i64 %i.cqd to i128
  %i.cqg = xor i128 %i.cpx, %i.cqf
  %i.cqh = mul nuw i128 %i.cqg, %i.cqe            ; 2 uses
  %i.cqi = lshr i128 %i.cqh, 64
  %i.cqj = xor i128 %i.cqi, %i.cqh
  %i.cqk = trunc i128 %i.cqj to i64
  store i64 %i.cqk, ptr %i.cpy, align 8, !alias.scope !11151, !noalias !11137
  %i.cql = zext i64 %i.cpm to i128
  br label %_RINvXsab_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_10TableAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit192

_RINvXsab_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_10TableAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit192: ; preds = %bb.gd, %bb.ge
  %.sink.i.i190 = phi i128 [ %i.cql, %bb.ge ], [ %i.cpt, %bb.gd ]
  %storemerge.i.i.i.i191 = phi i8 [ 64, %bb.ge ], [ %i.cpu, %bb.gd ]
  store i128 %.sink.i.i190, ptr %1, align 16, !alias.scope !11151, !noalias !11137
  store i8 %storemerge.i.i.i.i191, ptr %i.c, align 16, !alias.scope !11151, !noalias !11137
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cpk, i64 noundef %i.cpm, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %bb.du

bb.gf:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11156)
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.agg, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.cqm = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cqn = load ptr, ptr %i.cqm, align 8, !alias.scope !11153, !noalias !11156, !nonnull !3, !noundef !3
  %i.cqo = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cqp = load i64, ptr %i.cqo, align 8, !alias.scope !11153, !noalias !11156, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11164)
  %i.cqq = load i8, ptr %i.c, align 16, !alias.scope !11167, !noalias !11153, !noundef !3 ; 3 uses
  %i.cqr = icmp ugt i8 %i.cqq, 64
  br i1 %i.cqr, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
end_hunk_5
begin_hunk_6_@_RINvXs7_NtNtCs4lawaffTVVK_9sqlparser3ast3dmlNtB6_6InsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ym = icmp ne i64 %i.yl, -9223372036854775808 ; 3 uses
  %i.yn = zext i1 %i.ym to i64                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12574)
  %i.yo = icmp ugt i8 %i.yj, 64
  br i1 %i.yo, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8, label %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge

_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge: ; preds = %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.yp = phi i128 [ 0, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.pre163, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.yq = phi i64 [ %i.yi, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.yn, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.yr = phi i1 [ %i.yh, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.ym, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ys = phi i8 [ 64, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.yj, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.yt = zext nneg i64 %i.yq to i128
  %i.yu = zext nneg i8 %i.ys to i128
  %i.yv = shl nuw nsw i128 %i.yt, %i.yu
  %i.yw = or i128 %i.yv, %i.yp                    ; 5 uses
  store i128 %i.yw, ptr %1, align 16, !alias.scope !12568
  %i.yx = add nuw i8 %i.ys, 64                    ; 2 uses
  store i8 %i.yx, ptr %i.d, align 16, !alias.scope !12568
  br i1 %i.yr, label %bb.al, label %bb.ao

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8: ; preds = %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread115
  %i.yy = phi i128 [ %i.qp, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread115 ], [ %.pre163, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.yz = phi i64 [ %i.qu, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread115 ], [ %i.yn, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.za = phi i1 [ %i.qt, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread115 ], [ %i.ym, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.zb = trunc i128 %i.yy to i64
  %i.zc = lshr i128 %i.yy, 64
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ze = load i64, ptr %i.zd, align 8, !alias.scope !12568, !noundef !3
  %i.zf = xor i64 %i.ze, %i.zb
  %i.zg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.zh = load ptr, ptr %i.zg, align 16, !alias.scope !12568, !nonnull !3, !align !65, !noundef !3
  %i.zi = load i64, ptr %i.zh, align 8, !noalias !12568, !noundef !3
  %i.zj = zext i64 %i.zf to i128
  %i.zk = zext i64 %i.zi to i128
  %i.zl = xor i128 %i.zc, %i.zk
  %i.zm = mul nuw i128 %i.zl, %i.zj               ; 2 uses
  %i.zn = lshr i128 %i.zm, 64
  %i.zo = xor i128 %i.zn, %i.zm
  %i.zp = trunc i128 %i.zo to i64
  store i64 %i.zp, ptr %i.zd, align 8, !alias.scope !12568
  %i.zq = zext nneg i64 %i.yz to i128             ; 3 uses
  store i128 %i.zq, ptr %1, align 16, !alias.scope !12568
  store i8 64, ptr %i.d, align 16, !alias.scope !12568
  br i1 %i.za, label %.thread117, label %.thread121

.thread121:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %i.zs = load i8, ptr %i.zr, align 4, !range !135, !noundef !3
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit

.thread117:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.zu = load ptr, ptr %i.zt, align 8, !nonnull !3, !noundef !3
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.zw = load i64, ptr %i.zv, align 8, !noundef !3
  br label %bb.am

bb.al:                                            ; preds = %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.zy = load ptr, ptr %i.zx, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.aaa = load i64, ptr %i.zz, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12581)
  %.not153 = icmp eq i8 %i.ys, 0
  br i1 %.not153, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.thread117, %bb.al
  %i.aab = phi i128 [ %i.zq, %.thread117 ], [ %i.yw, %bb.al ]
  %i.aac = phi i64 [ %i.zw, %.thread117 ], [ %i.aaa, %bb.al ] ; 2 uses
  %i.aad = phi ptr [ %i.zu, %.thread117 ], [ %i.zy, %bb.al ]
  %i.aae = zext i64 %i.aac to i128
  %i.aaf = shl nuw i128 %i.aae, 64
  %i.aag = or i128 %i.aab, %i.aaf
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit45

bb.an:                                            ; preds = %bb.al
  %i.aah = trunc i128 %i.yw to i64
  %i.aai = lshr i128 %i.yw, 64
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aak = load i64, ptr %i.aaj, align 8, !alias.scope !12584, !noundef !3
  %i.aal = xor i64 %i.aak, %i.aah
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aan = load ptr, ptr %i.aam, align 16, !alias.scope !12584, !nonnull !3, !align !65, !noundef !3
  %i.aao = load i64, ptr %i.aan, align 8, !noalias !12584, !noundef !3
  %i.aap = zext i64 %i.aal to i128
  %i.aaq = zext i64 %i.aao to i128
  %i.aar = xor i128 %i.aai, %i.aaq
  %i.aas = mul nuw i128 %i.aar, %i.aap            ; 2 uses
  %i.aat = lshr i128 %i.aas, 64
  %i.aau = xor i128 %i.aat, %i.aas
  %i.aav = trunc i128 %i.aau to i64
  store i64 %i.aav, ptr %i.aaj, align 8, !alias.scope !12584
  %i.aaw = zext i64 %i.aaa to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit45

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit45: ; preds = %bb.am, %bb.an
  %i.aax = phi i64 [ %i.aaa, %bb.an ], [ %i.aac, %bb.am ]
  %i.aay = phi ptr [ %i.zy, %bb.an ], [ %i.aad, %bb.am ]
  %.sink.i43 = phi i128 [ %i.aaw, %bb.an ], [ %i.aag, %bb.am ]
  %storemerge.i.i.i44 = phi i8 [ 64, %bb.an ], [ -128, %bb.am ]
  store i128 %.sink.i43, ptr %1, align 16, !alias.scope !12584
  store i8 %storemerge.i.i.i44, ptr %i.d, align 16, !alias.scope !12584
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aay, i64 noundef %i.aax, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %.pr120 = load i8, ptr %i.d, align 16, !alias.scope !12585
  %.pre164.pre = load i128, ptr %1, align 16, !alias.scope !12585
  br label %bb.ao

bb.ao:                                            ; preds = %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit45
  %.pre164 = phi i128 [ %i.yw, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge ], [ %.pre164.pre, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit45 ] ; 3 uses
  %i.aaz = phi i8 [ %i.yx, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge ], [ %.pr120, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit45 ] ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %i.abb = load i8, ptr %i.aba, align 4, !range !135, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12591)
  %i.abc = icmp ugt i8 %i.aaz, 120
  br i1 %i.abc, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread: ; preds = %bb.ao
  %i.abd = trunc i128 %.pre164 to i64
  %i.abe = lshr i128 %.pre164, 64
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.abg = load i64, ptr %i.abf, align 8, !alias.scope !12585, !noundef !3
  %i.abh = xor i64 %i.abg, %i.abd
  %i.abi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.abj = load ptr, ptr %i.abi, align 16, !alias.scope !12585, !nonnull !3, !align !65, !noundef !3
  %i.abk = load i64, ptr %i.abj, align 8, !noalias !12585, !noundef !3
  %i.abl = zext i64 %i.abh to i128
  %i.abm = zext i64 %i.abk to i128
  %i.abn = xor i128 %i.abe, %i.abm
  %i.abo = mul nuw i128 %i.abn, %i.abl            ; 2 uses
  %i.abp = lshr i128 %i.abo, 64
  %i.abq = xor i128 %i.abp, %i.abo
  %i.abr = trunc i128 %i.abq to i64
  store i64 %i.abr, ptr %i.abf, align 8, !alias.scope !12585
  %i.abs = zext nneg i8 %i.abb to i128
  %i.abt = getelementptr inbounds nuw i8, ptr %0, i64 1069
  %i.abu = load i8, ptr %i.abt, align 1, !range !864, !noundef !3 ; 2 uses
  %i.abv = icmp ne i8 %i.abu, 3
  br label %bb.ap

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit: ; preds = %bb.ao, %.thread121
  %i.abw = phi i128 [ %i.zq, %.thread121 ], [ %.pre164, %bb.ao ]
  %i.abx = phi i8 [ %i.zs, %.thread121 ], [ %i.abb, %bb.ao ]
  %i.aby = phi i8 [ 64, %.thread121 ], [ %i.aaz, %bb.ao ] ; 3 uses
  %i.abz = zext nneg i8 %i.abx to i128
  %i.aca = zext nneg i8 %i.aby to i128
  %i.acb = shl nuw nsw i128 %i.abz, %i.aca
  %i.acc = or i128 %i.acb, %i.abw                 ; 4 uses
  store i128 %i.acc, ptr %1, align 16, !alias.scope !12585
  %i.acd = add nuw i8 %i.aby, 8                   ; 2 uses
  store i8 %i.acd, ptr %i.d, align 16, !alias.scope !12585
  %i.ace = getelementptr inbounds nuw i8, ptr %0, i64 1069
  %i.acf = load i8, ptr %i.ace, align 1, !range !864, !noundef !3 ; 3 uses
  %i.acg = icmp ne i8 %i.acf, 3                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12595)
  %i.ach = icmp samesign ugt i8 %i.aby, 56
  br i1 %i.ach, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6, label %bb.ap

bb.ap:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit
  %i.aci = phi i128 [ %i.abs, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.acc, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ]
  %i.acj = phi i1 [ %i.abv, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.acg, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ] ; 2 uses
  %i.ack = phi i8 [ %i.abu, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.acf, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ]
  %storemerge.i.i19123 = phi i8 [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.acd, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ] ; 2 uses
  %i.acl = zext i1 %i.acj to i128
  %i.acm = zext nneg i8 %storemerge.i.i19123 to i128
  %i.acn = shl nuw nsw i128 %i.acl, %i.acm
  %i.aco = or i128 %i.acn, %i.aci                 ; 4 uses
  store i128 %i.aco, ptr %1, align 16, !alias.scope !12598
  %i.acp = add nuw i8 %storemerge.i.i19123, 64
  store i8 %i.acp, ptr %i.d, align 16, !alias.scope !12598
  br i1 %i.acj, label %bb.aq, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge: ; preds = %bb.ap
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre165 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !12599
  %.phi.trans.insert166 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre167 = load ptr, ptr %.phi.trans.insert166, align 16, !alias.scope !12599
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit
  %i.acq = trunc i128 %i.acc to i64
  %i.acr = lshr i128 %i.acc, 64
  %i.acs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.act = load i64, ptr %i.acs, align 8, !alias.scope !12598, !noundef !3
  %i.acu = xor i64 %i.act, %i.acq
  %i.acv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.acw = load ptr, ptr %i.acv, align 16, !alias.scope !12598, !nonnull !3, !align !65, !noundef !3 ; 3 uses
  %i.acx = load i64, ptr %i.acw, align 8, !noalias !12598, !noundef !3
  %i.acy = zext i64 %i.acu to i128
  %i.acz = zext i64 %i.acx to i128
  %i.ada = xor i128 %i.acr, %i.acz
  %i.adb = mul nuw i128 %i.ada, %i.acy            ; 2 uses
  %i.adc = lshr i128 %i.adb, 64
  %i.add = xor i128 %i.adc, %i.adb
  %i.ade = trunc i128 %i.add to i64               ; 3 uses
  store i64 %i.ade, ptr %i.acs, align 8, !alias.scope !12598
  %i.adf = zext i1 %i.acg to i128
  store i128 %i.adf, ptr %1, align 16, !alias.scope !12598
  store i8 64, ptr %i.d, align 16, !alias.scope !12598
  br i1 %i.acg, label %.thread129, label %.thread128

.thread129:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12610)
  %i.adg = zext nneg i8 %i.acf to i128
  %i.adh = shl nuw nsw i128 %i.adg, 64
  %i.adi = or disjoint i128 %i.adh, 1             ; 2 uses
  store i128 %i.adi, ptr %1, align 16, !alias.scope !12613
  store i8 -128, ptr %i.d, align 16, !alias.scope !12613
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

bb.aq:                                            ; preds = %bb.ap
  %i.adj = trunc i128 %i.aco to i64
  %i.adk = lshr i128 %i.aco, 64
  %i.adl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.adm = load i64, ptr %i.adl, align 8, !alias.scope !12613, !noundef !3
  %i.adn = xor i64 %i.adm, %i.adj
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.adp = load ptr, ptr %i.ado, align 16, !alias.scope !12613, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.adq = load i64, ptr %i.adp, align 8, !noalias !12613, !noundef !3
  %i.adr = zext i64 %i.adn to i128
  %i.ads = zext i64 %i.adq to i128
  %i.adt = xor i128 %i.adk, %i.ads
  %i.adu = mul nuw i128 %i.adt, %i.adr            ; 2 uses
  %i.adv = lshr i128 %i.adu, 64
  %i.adw = xor i128 %i.adv, %i.adu
  %i.adx = trunc i128 %i.adw to i64               ; 2 uses
  store i64 %i.adx, ptr %i.adl, align 8, !alias.scope !12613
  %i.ady = zext nneg i8 %i.ack to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12615)
  br label %.thread128

.thread128:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6, %bb.aq
  %i.adz = phi ptr [ %i.acw, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ], [ %i.adp, %bb.aq ] ; 2 uses
  %i.aea = phi i64 [ %i.ade, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ], [ %i.adx, %bb.aq ] ; 2 uses
  %i.aeb = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ], [ %i.ady, %bb.aq ] ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 896
  %.in155 = load i64, ptr %i.aec, align 8, !range !4, !noundef !3
  %.not156 = icmp eq i64 %.in155, -9223372036854775808 ; 2 uses
  %i.aed = select i1 %.not156, i128 0, i128 18446744073709551616
  %i.aee = or disjoint i128 %i.aed, %i.aeb        ; 2 uses
  store i128 %i.aee, ptr %1, align 16, !alias.scope !12599
  store i8 -128, ptr %i.d, align 16, !alias.scope !12599
  br i1 %.not156, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142, label %bb.as

_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142: ; preds = %.thread128
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.aeg = load i64, ptr %i.aef, align 8, !range !4, !noundef !3
  %i.aeh = icmp ne i64 %i.aeg, -9223372036854775808 ; 2 uses
  %i.aei = zext i1 %i.aeh to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge, %.thread129
  %i.aej = phi ptr [ %.pre167, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ], [ %i.acw, %.thread129 ]
  %i.aek = phi i64 [ %.pre165, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ], [ %i.ade, %.thread129 ]
  %i.ael = phi i128 [ %i.aco, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ], [ %i.adi, %.thread129 ] ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %0, i64 896
  %.in = load i64, ptr %i.aem, align 8, !range !4, !noundef !3
  %i.aen = icmp ne i64 %.in, -9223372036854775808 ; 2 uses
  %i.aeo = trunc i128 %i.ael to i64
  %i.aep = lshr i128 %i.ael, 64
  %i.aeq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aer = xor i64 %i.aek, %i.aeo
  %i.aes = load i64, ptr %i.aej, align 8, !noalias !12599, !noundef !3
  %i.aet = zext i64 %i.aer to i128
  %i.aeu = zext i64 %i.aes to i128
  %i.aev = xor i128 %i.aep, %i.aeu
  %i.aew = mul nuw i128 %i.aev, %i.aet            ; 2 uses
  %i.aex = lshr i128 %i.aew, 64
  %i.aey = xor i128 %i.aex, %i.aew
  %i.aez = trunc i128 %i.aey to i64
  store i64 %i.aez, ptr %i.aeq, align 8, !alias.scope !12599
  %i.afa = zext i1 %i.aen to i128
  store i128 %i.afa, ptr %1, align 16, !alias.scope !12599
  store i8 64, ptr %i.d, align 16, !alias.scope !12599
  br i1 %i.aen, label %bb.ar, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.ar:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12619)
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 904
  %.val.i49 = load ptr, ptr %i.afb, align 8, !alias.scope !12616, !noalias !12619, !nonnull !3, !noundef !3
  %i.afc = getelementptr inbounds nuw i8, ptr %0, i64 912
  %.val1.i50 = load i64, ptr %i.afc, align 8, !alias.scope !12616, !noalias !12619, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12633)
  %i.afd = zext i64 %.val1.i50 to i128
  %i.afe = shl nuw i128 %i.afd, 64
  %i.aff = or disjoint i128 %i.afe, 1
  br label %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

bb.as:                                            ; preds = %.thread128
  %i.afg = getelementptr inbounds nuw i8, ptr %0, i64 904
  %.val.i49135 = load ptr, ptr %i.afg, align 8, !alias.scope !12636, !noalias !12638, !nonnull !3, !noundef !3
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 912
  %.val1.i50136 = load i64, ptr %i.afh, align 8, !alias.scope !12636, !noalias !12638, !noundef !3 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.afj = load i64, ptr %i.adz, align 8, !noalias !12640, !noundef !3
  %i.afk = zext i64 %i.aea to i128
  %i.afl = xor i128 %i.aeb, %i.afk
  %i.afm = xor i64 %i.afj, 1
  %i.afn = zext i64 %i.afm to i128
  %i.afo = mul nuw i128 %i.afl, %i.afn            ; 2 uses
  %i.afp = lshr i128 %i.afo, 64
  %i.afq = xor i128 %i.afp, %i.afo
  %i.afr = trunc i128 %i.afq to i64
  store i64 %i.afr, ptr %i.afi, align 8, !alias.scope !12641, !noalias !12616
  %i.afs = zext i64 %.val1.i50136 to i128
  br label %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.as, %bb.ar
  %.val1.i50139 = phi i64 [ %.val1.i50136, %bb.as ], [ %.val1.i50, %bb.ar ]
  %.val.i49137 = phi ptr [ %.val.i49135, %bb.as ], [ %.val.i49, %bb.ar ]
  %.sink.i.i.i.i = phi i128 [ %i.afs, %bb.as ], [ %i.aff, %bb.ar ]
  %storemerge.i.i.i.i.i.i = phi i8 [ 64, %bb.as ], [ -128, %bb.ar ]
  store i128 %.sink.i.i.i.i, ptr %1, align 16, !alias.scope !12641, !noalias !12616
  store i8 %storemerge.i.i.i.i.i.i, ptr %i.d, align 16, !alias.scope !12641, !noalias !12616
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i49137, i64 noundef %.val1.i50139, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !12616
  %i.aft = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.afu = load i64, ptr %i.aft, align 8, !range !4, !alias.scope !12616, !noalias !12619, !noundef !3
  %i.afv = icmp ne i64 %i.afu, -9223372036854775808 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12645)
  %i.afw = load i8, ptr %i.d, align 16, !alias.scope !12648, !noalias !12616, !noundef !3 ; 4 uses
  %i.afx = icmp ugt i8 %i.afw, 64
  br i1 %i.afx, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i51

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i51: ; preds = %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.afy = zext i1 %i.afv to i128
  %i.afz = zext nneg i8 %i.afw to i128
  %i.aga = shl nuw nsw i128 %i.afy, %i.afz
  %i.agb = load i128, ptr %1, align 16, !alias.scope !12648, !noalias !12616, !noundef !3
  %i.agc = or i128 %i.agb, %i.aga                 ; 5 uses
  store i128 %i.agc, ptr %1, align 16, !alias.scope !12648, !noalias !12616
  %i.agd = add nuw i8 %i.afw, 64                  ; 2 uses
  store i8 %i.agd, ptr %i.d, align 16, !alias.scope !12648, !noalias !12616
  br i1 %i.afv, label %bb.at, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i: ; preds = %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.age = load i128, ptr %1, align 16, !alias.scope !12648, !noalias !12616, !noundef !3 ; 2 uses
  %i.agf = trunc i128 %i.age to i64
  %i.agg = lshr i128 %i.age, 64
  %i.agh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.agi = load i64, ptr %i.agh, align 8, !alias.scope !12648, !noalias !12616, !noundef !3
  %i.agj = xor i64 %i.agi, %i.agf
  %i.agk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.agl = load ptr, ptr %i.agk, align 16, !alias.scope !12648, !noalias !12616, !nonnull !3, !align !65, !noundef !3
  %i.agm = load i64, ptr %i.agl, align 8, !noalias !12649, !noundef !3
  %i.agn = zext i64 %i.agj to i128
  %i.ago = zext i64 %i.agm to i128
  %i.agp = xor i128 %i.agg, %i.ago
  %i.agq = mul nuw i128 %i.agp, %i.agn            ; 2 uses
  %i.agr = lshr i128 %i.agq, 64
  %i.ags = xor i128 %i.agr, %i.agq
  %i.agt = trunc i128 %i.ags to i64
  store i64 %i.agt, ptr %i.agh, align 8, !alias.scope !12648, !noalias !12616
  %i.agu = zext i1 %i.afv to i128
  store i128 %i.agu, ptr %1, align 16, !alias.scope !12648, !noalias !12616
  store i8 64, ptr %i.d, align 16, !alias.scope !12648, !noalias !12616
  br i1 %i.afv, label %.thread.i, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

.thread.i:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i
  %i.agv = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.agw = load ptr, ptr %i.agv, align 8, !alias.scope !12616, !noalias !12619, !nonnull !3, !noundef !3
  %i.agx = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.agy = load i64, ptr %i.agx, align 8, !alias.scope !12616, !noalias !12619, !noundef !3
  br label %bb.au

bb.at:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i51
  %i.agz = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.aha = load ptr, ptr %i.agz, align 8, !alias.scope !12616, !noalias !12619, !nonnull !3, !noundef !3 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.ahc = load i64, ptr %i.ahb, align 8, !alias.scope !12616, !noalias !12619, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12656)
  %.not.i = icmp eq i8 %i.afw, 0
  br i1 %.not.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at, %.thread.i
  %i.ahd = phi i128 [ 1, %.thread.i ], [ %i.agc, %bb.at ]
  %i.ahe = phi i64 [ %i.agy, %.thread.i ], [ %i.ahc, %bb.at ] ; 2 uses
  %i.ahf = phi ptr [ %i.agw, %.thread.i ], [ %i.aha, %bb.at ]
  %i.ahg = zext i64 %i.ahe to i128
  %i.ahh = shl nuw i128 %i.ahg, 64
  %i.ahi = or i128 %i.ahh, %i.ahd
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i

bb.av:                                            ; preds = %bb.at
  %i.ahj = trunc i128 %i.agc to i64
  %i.ahk = lshr i128 %i.agc, 64
  %i.ahl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ahm = load i64, ptr %i.ahl, align 8, !alias.scope !12659, !noalias !12616, !noundef !3
  %i.ahn = xor i64 %i.ahm, %i.ahj
  %i.aho = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ahp = load ptr, ptr %i.aho, align 16, !alias.scope !12659, !noalias !12616, !nonnull !3, !align !65, !noundef !3
  %i.ahq = load i64, ptr %i.ahp, align 8, !noalias !12660, !noundef !3
  %i.ahr = zext i64 %i.ahn to i128
  %i.ahs = zext i64 %i.ahq to i128
  %i.aht = xor i128 %i.ahk, %i.ahs
  %i.ahu = mul nuw i128 %i.aht, %i.ahr            ; 2 uses
  %i.ahv = lshr i128 %i.ahu, 64
  %i.ahw = xor i128 %i.ahv, %i.ahu
  %i.ahx = trunc i128 %i.ahw to i64
  store i64 %i.ahx, ptr %i.ahl, align 8, !alias.scope !12659, !noalias !12616
  %i.ahy = zext i64 %i.ahc to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.av, %bb.au
  %i.ahz = phi i64 [ %i.ahc, %bb.av ], [ %i.ahe, %bb.au ]
  %i.aia = phi ptr [ %i.aha, %bb.av ], [ %i.ahf, %bb.au ]
  %.sink.i.i = phi i128 [ %i.ahy, %bb.av ], [ %i.ahi, %bb.au ]
  %storemerge.i.i.i.i = phi i8 [ 64, %bb.av ], [ -128, %bb.au ]
  store i128 %.sink.i.i, ptr %1, align 16, !alias.scope !12659, !noalias !12616
  store i8 %storemerge.i.i.i.i, ptr %i.d, align 16, !alias.scope !12659, !noalias !12616
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aia, i64 noundef %i.ahz, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !12616
  %.pr141 = load i8, ptr %i.d, align 16, !alias.scope !12661
  %.pre169.pre = load i128, ptr %1, align 16, !alias.scope !12661
  br label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.aib = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.aic = load i64, ptr %i.aib, align 8, !range !4, !noundef !3
  %i.aid = icmp ne i64 %i.aic, -9223372036854775808 ; 2 uses
  %i.aie = zext i1 %i.aid to i64
  br label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge

_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i51
  %.pre169 = phi i128 [ %.pre169.pre, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.agc, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i51 ] ; 2 uses
  %i.aif = phi i8 [ %.pr141, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.agd, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i51 ] ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.aih = load i64, ptr %i.aig, align 8, !range !4, !noundef !3
  %i.aii = icmp ne i64 %i.aih, -9223372036854775808 ; 3 uses
  %i.aij = zext i1 %i.aii to i64                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12667)
  %i.aik = icmp ugt i8 %i.aif, 64
  br i1 %i.aik, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge

_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge: ; preds = %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %.phi.trans.insert170 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre171 = load i64, ptr %.phi.trans.insert170, align 8, !alias.scope !12661
  %.phi.trans.insert172 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre173 = load ptr, ptr %.phi.trans.insert172, align 16, !alias.scope !12661
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge: ; preds = %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.ail = phi i128 [ 0, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.pre169, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.aim = phi i64 [ %i.aie, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.aij, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ain = phi i1 [ %i.aid, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.aii, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.aio = phi i8 [ 64, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.aif, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.aip = zext nneg i64 %i.aim to i128
  %i.aiq = zext nneg i8 %i.aio to i128
  %i.air = shl nuw nsw i128 %i.aip, %i.aiq
  %i.ais = or i128 %i.air, %i.ail                 ; 5 uses
  store i128 %i.ais, ptr %1, align 16, !alias.scope !12661
  %i.ait = add nuw i8 %i.aio, 64                  ; 2 uses
  store i8 %i.ait, ptr %i.d, align 16, !alias.scope !12661
  br i1 %i.ain, label %bb.aw, label %bb.az

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142
  %i.aiu = phi ptr [ %i.adz, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142 ], [ %.pre173, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ]
  %i.aiv = phi i64 [ %i.aea, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142 ], [ %.pre171, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ]
  %i.aiw = phi i128 [ %i.aee, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142 ], [ %.pre169, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ] ; 2 uses
  %i.aix = phi i64 [ %i.aei, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142 ], [ %i.aij, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ]
  %i.aiy = phi i1 [ %i.aeh, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142 ], [ %i.aii, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ]
  %i.aiz = trunc i128 %i.aiw to i64
  %i.aja = lshr i128 %i.aiw, 64
  %i.ajb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ajc = xor i64 %i.aiv, %i.aiz
  %i.ajd = load i64, ptr %i.aiu, align 8, !noalias !12661, !noundef !3
  %i.aje = zext i64 %i.ajc to i128
  %i.ajf = zext i64 %i.ajd to i128
  %i.ajg = xor i128 %i.aja, %i.ajf
  %i.ajh = mul nuw i128 %i.ajg, %i.aje            ; 2 uses
  %i.aji = lshr i128 %i.ajh, 64
  %i.ajj = xor i128 %i.aji, %i.ajh
  %i.ajk = trunc i128 %i.ajj to i64
  store i64 %i.ajk, ptr %i.ajb, align 8, !alias.scope !12661
  %i.ajl = zext nneg i64 %i.aix to i128           ; 3 uses
  store i128 %i.ajl, ptr %1, align 16, !alias.scope !12661
  store i8 64, ptr %i.d, align 16, !alias.scope !12661
  br i1 %i.aiy, label %.thread144, label %.thread148

.thread148:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.ajm = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  %i.ajn = load i64, ptr %i.ajm, align 8, !range !4, !noundef !3
  %i.ajo = icmp ne i64 %i.ajn, -9223372036854775808
  br label %bb.ba
end_hunk_6
begin_hunk_7_@_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.nk = load i64, ptr %i.nj, align 8, !noalias !15066, !noundef !3
  %i.nl = zext i64 %i.nh to i128
  %i.nm = zext i64 %i.nk to i128
  %i.nn = xor i128 %i.ne, %i.nm
  %i.no = mul nuw i128 %i.nn, %i.nl               ; 2 uses
  %i.np = lshr i128 %i.no, 64
  %i.nq = xor i128 %i.np, %i.no
  %i.nr = trunc i128 %i.nq to i64
  store i64 %i.nr, ptr %i.nf, align 8, !alias.scope !15066
  %i.ns = zext nneg i8 %i.lx to i128
  br label %_RINvXstC_NtCs4lawaffTVVK_9sqlparser3astNtB7_16FunctionBehaviorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXstC_NtCs4lawaffTVVK_9sqlparser3astNtB7_16FunctionBehaviorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.thread83, %bb.z
  %.sink.i37 = phi i128 [ %i.ns, %bb.z ], [ %i.nc, %.thread83 ] ; 2 uses
  %storemerge.i.i.i38 = phi i8 [ 64, %bb.z ], [ -128, %.thread83 ] ; 2 uses
  store i128 %.sink.i37, ptr %1, align 16, !alias.scope !15066
  store i8 %storemerge.i.i.i38, ptr %i.c, align 16, !alias.scope !15066
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %_RINvXstC_NtCs4lawaffTVVK_9sqlparser3astNtB7_16FunctionBehaviorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.nt = phi i128 [ %i.mc, %bb.x ], [ %.sink.i37, %_RINvXstC_NtCs4lawaffTVVK_9sqlparser3astNtB7_16FunctionBehaviorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 4 uses
  %i.nu = phi i8 [ %i.md, %bb.x ], [ %storemerge.i.i.i38, %_RINvXstC_NtCs4lawaffTVVK_9sqlparser3astNtB7_16FunctionBehaviorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 2686
  %i.nw = load i8, ptr %i.nv, align 2, !range !864, !noundef !3 ; 3 uses
  %i.nx = icmp ne i8 %i.nw, 3                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15068)
  %i.ny = icmp ugt i8 %i.nu, 64
  br i1 %i.ny, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.nz = select i1 %i.nx, i128 18446744073709551616, i128 0
  %i.oa = or i128 %i.nt, %i.nz                    ; 3 uses
  store i128 %i.oa, ptr %1, align 16, !alias.scope !15052
  store i8 -128, ptr %i.c, align 16, !alias.scope !15052
  %extract.t = trunc i128 %i.nt to i64
  br i1 %i.nx, label %bb.ac, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10_crit_edge

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10_crit_edge: ; preds = %.thread86, %bb.ab
  %i.ob = phi i128 [ %i.mx, %.thread86 ], [ %i.oa, %bb.ab ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre155 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !15069
  %.phi.trans.insert156 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre157 = load ptr, ptr %.phi.trans.insert156, align 16, !alias.scope !15069
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12: ; preds = %bb.aa
  %i.oc = trunc i128 %i.nt to i64
  %i.od = lshr i128 %i.nt, 64
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.of = load i64, ptr %i.oe, align 8, !alias.scope !15052, !noundef !3
  %i.og = xor i64 %i.of, %i.oc
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.oi = load ptr, ptr %i.oh, align 16, !alias.scope !15052, !nonnull !3, !align !65, !noundef !3 ; 3 uses
  %i.oj = load i64, ptr %i.oi, align 8, !noalias !15052, !noundef !3
  %i.ok = zext i64 %i.og to i128
  %i.ol = zext i64 %i.oj to i128
  %i.om = xor i128 %i.od, %i.ol
  %i.on = mul nuw i128 %i.om, %i.ok               ; 2 uses
  %i.oo = lshr i128 %i.on, 64
  %i.op = xor i128 %i.oo, %i.on
  %i.oq = trunc i128 %i.op to i64                 ; 3 uses
  store i64 %i.oq, ptr %i.oe, align 8, !alias.scope !15052
  %i.or = zext i1 %i.nx to i128                   ; 2 uses
  store i128 %i.or, ptr %1, align 16, !alias.scope !15052
  store i8 64, ptr %i.c, align 16, !alias.scope !15052
  br i1 %i.nx, label %.thread92, label %.thread91

.thread92:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15080)
  %i.os = zext nneg i8 %i.nw to i128
  %i.ot = shl nuw nsw i128 %i.os, 64
  %i.ou = or disjoint i128 %i.ot, %i.or           ; 2 uses
  store i128 %i.ou, ptr %1, align 16, !alias.scope !15083
  store i8 -128, ptr %i.c, align 16, !alias.scope !15083
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10

bb.ac:                                            ; preds = %.thread86, %bb.ab
  %i.ov = phi i128 [ %i.mx, %.thread86 ], [ %i.oa, %bb.ab ]
  %i.ow = phi i8 [ %i.mv, %.thread86 ], [ %i.nw, %bb.ab ]
  %.off0 = phi i64 [ 0, %.thread86 ], [ %extract.t, %bb.ab ]
  %i.ox = lshr i128 %i.ov, 64
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.oz = load i64, ptr %i.oy, align 8, !alias.scope !15083, !noundef !3
  %i.pa = xor i64 %i.oz, %.off0
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pc = load ptr, ptr %i.pb, align 16, !alias.scope !15083, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.pd = load i64, ptr %i.pc, align 8, !noalias !15083, !noundef !3
  %i.pe = zext i64 %i.pa to i128
  %i.pf = zext i64 %i.pd to i128
  %i.pg = xor i128 %i.ox, %i.pf
  %i.ph = mul nuw i128 %i.pg, %i.pe               ; 2 uses
  %i.pi = lshr i128 %i.ph, 64
  %i.pj = xor i128 %i.pi, %i.ph
  %i.pk = trunc i128 %i.pj to i64                 ; 2 uses
  store i64 %i.pk, ptr %i.oy, align 8, !alias.scope !15083
  %i.pl = zext nneg i8 %i.ow to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15085)
  br label %.thread91

.thread91:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12, %bb.ac
  %i.pm = phi ptr [ %i.oi, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12 ], [ %i.pc, %bb.ac ] ; 3 uses
  %i.pn = phi i64 [ %i.oq, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12 ], [ %i.pk, %bb.ac ] ; 2 uses
  %i.po = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12 ], [ %i.pl, %bb.ac ] ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 2687
  %i.pp = load i8, ptr %.in, align 1, !range !864, !noundef !3 ; 2 uses
  %.not137 = icmp eq i8 %i.pp, 3                  ; 2 uses
  %i.pq = select i1 %.not137, i128 0, i128 18446744073709551616
  %i.pr = or disjoint i128 %i.pq, %i.po           ; 2 uses
  store i128 %i.pr, ptr %1, align 16, !alias.scope !15069
  store i8 -128, ptr %i.c, align 16, !alias.scope !15069
  br i1 %.not137, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8, label %bb.ad

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10_crit_edge, %.thread92
  %i.ps = phi ptr [ %.pre157, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10_crit_edge ], [ %i.oi, %.thread92 ] ; 3 uses
  %i.pt = phi i64 [ %.pre155, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10_crit_edge ], [ %i.oq, %.thread92 ]
  %i.pu = phi i128 [ %i.ob, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10_crit_edge ], [ %i.ou, %.thread92 ] ; 2 uses
  %.in140 = getelementptr inbounds nuw i8, ptr %0, i64 2687
  %i.pv = load i8, ptr %.in140, align 1, !range !864, !noundef !3 ; 2 uses
  %i.pw = icmp ne i8 %i.pv, 3                     ; 2 uses
  %i.px = trunc i128 %i.pu to i64
  %i.py = lshr i128 %i.pu, 64
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qa = xor i64 %i.pt, %i.px
  %i.qb = load i64, ptr %i.ps, align 8, !noalias !15069, !noundef !3
  %i.qc = zext i64 %i.qa to i128
  %i.qd = zext i64 %i.qb to i128
  %i.qe = xor i128 %i.py, %i.qd
  %i.qf = mul nuw i128 %i.qe, %i.qc               ; 2 uses
  %i.qg = lshr i128 %i.qf, 64
  %i.qh = xor i128 %i.qg, %i.qf
  %i.qi = trunc i128 %i.qh to i64                 ; 3 uses
  store i64 %i.qi, ptr %i.pz, align 8, !alias.scope !15069
  %i.qj = zext i1 %i.pw to i128                   ; 2 uses
  store i128 %i.qj, ptr %1, align 16, !alias.scope !15069
  store i8 64, ptr %i.c, align 16, !alias.scope !15069
  br i1 %i.pw, label %.thread100, label %.thread99

.thread100:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15092)
  %i.qk = zext nneg i8 %i.pv to i128
  %i.ql = shl nuw nsw i128 %i.qk, 64
  %i.qm = or disjoint i128 %i.ql, %i.qj           ; 2 uses
  store i128 %i.qm, ptr %1, align 16, !alias.scope !15095
  store i8 -128, ptr %i.c, align 16, !alias.scope !15095
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8

bb.ad:                                            ; preds = %.thread91
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qo = load i64, ptr %i.pm, align 8, !noalias !15095, !noundef !3
  %i.qp = zext i64 %i.pn to i128
  %i.qq = xor i128 %i.po, %i.qp
  %i.qr = xor i64 %i.qo, 1
  %i.qs = zext i64 %i.qr to i128
  %i.qt = mul nuw i128 %i.qq, %i.qs               ; 2 uses
  %i.qu = lshr i128 %i.qt, 64
  %i.qv = xor i128 %i.qu, %i.qt
  %i.qw = trunc i128 %i.qv to i64                 ; 2 uses
  store i64 %i.qw, ptr %i.qn, align 8, !alias.scope !15095
  %i.qx = zext nneg i8 %i.pp to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15099)
  br label %.thread99

.thread99:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10, %bb.ad
  %i.qy = phi ptr [ %i.ps, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10 ], [ %i.pm, %bb.ad ] ; 3 uses
  %i.qz = phi i64 [ %i.qi, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10 ], [ %i.qw, %bb.ad ] ; 2 uses
  %i.ra = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10 ], [ %i.qx, %bb.ad ] ; 2 uses
  %i.rb = load i64, ptr %0, align 8, !range !312, !noundef !3 ; 3 uses
  %.not143 = icmp eq i64 %i.rb, 3                 ; 2 uses
  %i.rc = select i1 %.not143, i128 0, i128 18446744073709551616
  %i.rd = or disjoint i128 %i.rc, %i.ra           ; 2 uses
  store i128 %i.rd, ptr %1, align 16, !alias.scope !15102
  store i8 -128, ptr %i.c, align 16, !alias.scope !15102
  br i1 %.not143, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6, label %bb.af

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8: ; preds = %.thread91, %.thread100
  %i.re = phi ptr [ %i.pm, %.thread91 ], [ %i.ps, %.thread100 ] ; 2 uses
  %i.rf = phi i64 [ %i.pn, %.thread91 ], [ %i.qi, %.thread100 ]
  %i.rg = phi i128 [ %i.pr, %.thread91 ], [ %i.qm, %.thread100 ] ; 2 uses
  %i.rh = load i64, ptr %0, align 8, !range !312, !noundef !3 ; 3 uses
  %i.ri = icmp ne i64 %i.rh, 3                    ; 2 uses
  %i.rj = trunc i128 %i.rg to i64
  %i.rk = lshr i128 %i.rg, 64
  %i.rl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.rm = xor i64 %i.rf, %i.rj
  %i.rn = load i64, ptr %i.re, align 8, !noalias !15102, !noundef !3
  %i.ro = zext i64 %i.rm to i128
  %i.rp = zext i64 %i.rn to i128
  %i.rq = xor i128 %i.rk, %i.rp
  %i.rr = mul nuw i128 %i.rq, %i.ro               ; 2 uses
  %i.rs = lshr i128 %i.rr, 64
  %i.rt = xor i128 %i.rs, %i.rr
  %i.ru = trunc i128 %i.rt to i64                 ; 3 uses
  store i64 %i.ru, ptr %i.rl, align 8, !alias.scope !15102
  %i.rv = zext i1 %i.ri to i128
  store i128 %i.rv, ptr %1, align 16, !alias.scope !15102
  store i8 64, ptr %i.c, align 16, !alias.scope !15102
  br i1 %i.ri, label %bb.ae, label %.thread107

bb.ae:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15111)
  %i.rw = zext nneg i64 %i.rh to i128
  %i.rx = shl nuw nsw i128 %i.rw, 64
  %i.ry = or disjoint i128 %i.rx, 1
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i45

bb.af:                                            ; preds = %.thread99
  %i.rz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.sa = load i64, ptr %i.qy, align 8, !noalias !15114, !noundef !3
  %i.sb = zext i64 %i.qz to i128
  %i.sc = xor i128 %i.ra, %i.sb
  %i.sd = xor i64 %i.sa, 1
  %i.se = zext i64 %i.sd to i128
  %i.sf = mul nuw i128 %i.sc, %i.se               ; 2 uses
  %i.sg = lshr i128 %i.sf, 64
  %i.sh = xor i128 %i.sg, %i.sf
  %i.si = trunc i128 %i.sh to i64                 ; 2 uses
  store i64 %i.si, ptr %i.rz, align 8, !alias.scope !15115, !noalias !15103
  %i.sj = zext nneg i64 %i.rb to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i45

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i45: ; preds = %bb.af, %bb.ae
  %i.sk = phi ptr [ %i.qy, %bb.af ], [ %i.re, %bb.ae ] ; 7 uses
  %i.sl = phi i64 [ %i.si, %bb.af ], [ %i.ru, %bb.ae ] ; 2 uses
  %i.sm = phi i64 [ %i.rb, %bb.af ], [ %i.rh, %bb.ae ]
  %i.sn = phi i128 [ %i.sj, %bb.af ], [ %i.ry, %bb.ae ] ; 4 uses
  %i.so = phi i1 [ false, %bb.af ], [ true, %bb.ae ] ; 3 uses
  %storemerge.i.i.i46 = phi i8 [ 64, %bb.af ], [ -128, %bb.ae ] ; 2 uses
  store i128 %i.sn, ptr %1, align 16, !alias.scope !15115, !noalias !15103
  store i8 %storemerge.i.i.i46, ptr %i.c, align 16, !alias.scope !15115, !noalias !15103
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sq = load ptr, ptr %i.sp, align 8, !alias.scope !15103, !noalias !15106, !nonnull !3, !noundef !3 ; 24 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ss = load i64, ptr %i.sr, align 8, !alias.scope !15103, !noalias !15106, !noundef !3 ; 26 uses
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.su = icmp samesign ult i64 %i.ss, 17         ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sw = tail call noundef i64 @llvm.fshr.i64(i64 %i.sl, i64 %i.sl, i64 %i.ss) ; 18 uses
  switch i64 %i.sm, label %default.unreachable [
    i64 0, label %bb.ag
    i64 1, label %bb.am
    i64 2, label %bb.as
  ]

default.unreachable:                              ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i45
  unreachable

bb.ag:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i45
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15124)
  store i64 %i.sw, ptr %i.st, align 8, !alias.scope !15126, !noalias !15127
  br i1 %i.su, label %bb.ai, label %bb.ah, !prof !708

bb.ah:                                            ; preds = %bb.ag
  %i.sx = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.sq, i64 noundef range(i64 0, -9223372036854775808) %i.ss, i64 noundef %i.sw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.sk) #58, !noalias !15128
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i

bb.ai:                                            ; preds = %bb.ag
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15132)
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.sz = load i64, ptr %i.sy, align 8, !alias.scope !15132, !noalias !15134, !noundef !3 ; 4 uses
  %i.ta = icmp samesign ugt i64 %i.ss, 7
  br i1 %i.ta, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.tb = icmp samesign ugt i64 %i.ss, 3
  br i1 %i.tb, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.ak

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.ai
  %.sroa.014.0.copyload.i.i.i.i = load i64, ptr %i.sq, align 1, !alias.scope !15135, !noalias !15136
  %i.tc = xor i64 %.sroa.014.0.copyload.i.i.i.i, %i.sw
  %i.td = getelementptr i8, ptr %i.sq, i64 %i.ss
  %i.te = getelementptr i8, ptr %i.td, i64 -8
  %.sroa.016.0.copyload.i.i.i.i = load i64, ptr %i.te, align 1, !alias.scope !15135, !noalias !15136
  %i.tf = xor i64 %.sroa.016.0.copyload.i.i.i.i, %i.sz
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i.i = icmp eq i64 %i.ss, 0
  br i1 %.not.i.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i, label %bb.al

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.aj
  %i.tg = getelementptr i8, ptr %i.sq, i64 %i.ss
  %i.th = getelementptr i8, ptr %i.tg, i64 -4
  %.sroa.019.0.copyload.i.i.i.i = load i32, ptr %i.th, align 1, !alias.scope !15135, !noalias !15136
  %.sroa.018.0.copyload.i.i.i.i = load i32, ptr %i.sq, align 1, !alias.scope !15135, !noalias !15136
  %i.ti = zext i32 %.sroa.018.0.copyload.i.i.i.i to i64
  %i.tj = xor i64 %i.sw, %i.ti
  %i.tk = zext i32 %.sroa.019.0.copyload.i.i.i.i to i64
  %i.tl = xor i64 %i.sz, %i.tk
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.tm = load i8, ptr %i.sq, align 1, !alias.scope !15135, !noalias !15136, !noundef !3
  %i.tn = lshr i64 %i.ss, 1
  %i.to = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.tn
  %i.tp = load i8, ptr %i.to, align 1, !alias.scope !15135, !noalias !15136, !noundef !3
  %i.tq = getelementptr i8, ptr %i.sq, i64 %i.ss
  %i.tr = getelementptr i8, ptr %i.tq, i64 -1
  %i.ts = load i8, ptr %i.tr, align 1, !alias.scope !15135, !noalias !15136, !noundef !3
  %i.tt = zext i8 %i.tm to i64
  %i.tu = xor i64 %i.sw, %i.tt
  %i.tv = zext i8 %i.ts to i64
  %i.tw = shl nuw nsw i64 %i.tv, 8
  %i.tx = zext i8 %i.tp to i64
  %i.ty = or disjoint i64 %i.tw, %i.tx
  %i.tz = xor i64 %i.ty, %i.sz
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i: ; preds = %bb.al, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.ak, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.tf, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.tl, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.tz, %bb.al ], [ %i.sz, %bb.ak ]
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.tc, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.tj, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.tu, %bb.al ], [ %i.sw, %bb.ak ]
  %i.ua = zext i64 %.sroa.0.0.i.i.i.i to i128
  %i.ub = zext i64 %.sroa.04.0.i.i.i.i to i128
  %i.uc = mul nuw i128 %i.ua, %i.ub               ; 2 uses
  %i.ud = lshr i128 %i.uc, 64
  %i.ue = xor i128 %i.ud, %i.uc
  %i.uf = trunc i128 %i.ue to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i, %bb.ah
  %storemerge.i.i1.i = phi i64 [ %i.sx, %bb.ah ], [ %i.uf, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i ] ; 3 uses
  store i64 %storemerge.i.i1.i, ptr %i.st, align 8, !alias.scope !15126, !noalias !15127
  br i1 %i.so, label %bb.ay, label %.thread108

bb.am:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i45
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15145)
  store i64 %i.sw, ptr %i.st, align 8, !alias.scope !15147, !noalias !15148
  br i1 %i.su, label %bb.ao, label %bb.an, !prof !708

bb.an:                                            ; preds = %bb.am
  %i.ug = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.sq, i64 noundef range(i64 0, -9223372036854775808) %i.ss, i64 noundef %i.sw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.sk) #58, !noalias !15149
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i2.i

bb.ao:                                            ; preds = %bb.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15153)
  %i.uh = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.ui = load i64, ptr %i.uh, align 8, !alias.scope !15153, !noalias !15155, !noundef !3 ; 4 uses
  %i.uj = icmp samesign ugt i64 %i.ss, 7
  br i1 %i.uj, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i13.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.uk = icmp samesign ugt i64 %i.ss, 3
  br i1 %i.uk, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i10.i, label %bb.aq

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i13.i: ; preds = %bb.ao
  %.sroa.014.0.copyload.i.i.i14.i = load i64, ptr %i.sq, align 1, !alias.scope !15156, !noalias !15157
  %i.ul = xor i64 %.sroa.014.0.copyload.i.i.i14.i, %i.sw
  %i.um = getelementptr i8, ptr %i.sq, i64 %i.ss
  %i.un = getelementptr i8, ptr %i.um, i64 -8
  %.sroa.016.0.copyload.i.i.i15.i = load i64, ptr %i.un, align 1, !alias.scope !15156, !noalias !15157
  %i.uo = xor i64 %.sroa.016.0.copyload.i.i.i15.i, %i.ui
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i7.i

bb.aq:                                            ; preds = %bb.ap
  %.not.i.i.i6.i = icmp eq i64 %i.ss, 0
  br i1 %.not.i.i.i6.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i7.i, label %bb.ar

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i10.i: ; preds = %bb.ap
  %i.up = getelementptr i8, ptr %i.sq, i64 %i.ss
  %i.uq = getelementptr i8, ptr %i.up, i64 -4
  %.sroa.019.0.copyload.i.i.i11.i = load i32, ptr %i.uq, align 1, !alias.scope !15156, !noalias !15157
  %.sroa.018.0.copyload.i.i.i12.i = load i32, ptr %i.sq, align 1, !alias.scope !15156, !noalias !15157
  %i.ur = zext i32 %.sroa.018.0.copyload.i.i.i12.i to i64
  %i.us = xor i64 %i.sw, %i.ur
  %i.ut = zext i32 %.sroa.019.0.copyload.i.i.i11.i to i64
  %i.uu = xor i64 %i.ui, %i.ut
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i7.i

bb.ar:                                            ; preds = %bb.aq
  %i.uv = load i8, ptr %i.sq, align 1, !alias.scope !15156, !noalias !15157, !noundef !3
  %i.uw = lshr i64 %i.ss, 1
  %i.ux = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.uw
  %i.uy = load i8, ptr %i.ux, align 1, !alias.scope !15156, !noalias !15157, !noundef !3
  %i.uz = getelementptr i8, ptr %i.sq, i64 %i.ss
  %i.va = getelementptr i8, ptr %i.uz, i64 -1
  %i.vb = load i8, ptr %i.va, align 1, !alias.scope !15156, !noalias !15157, !noundef !3
  %i.vc = zext i8 %i.uv to i64
  %i.vd = xor i64 %i.sw, %i.vc
  %i.ve = zext i8 %i.vb to i64
  %i.vf = shl nuw nsw i64 %i.ve, 8
  %i.vg = zext i8 %i.uy to i64
  %i.vh = or disjoint i64 %i.vf, %i.vg
  %i.vi = xor i64 %i.vh, %i.ui
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i7.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i7.i: ; preds = %bb.ar, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i10.i, %bb.aq, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i13.i
  %.sroa.04.0.i.i.i8.i = phi i64 [ %i.uo, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i13.i ], [ %i.uu, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i10.i ], [ %i.vi, %bb.ar ], [ %i.ui, %bb.aq ]
  %.sroa.0.0.i.i.i9.i = phi i64 [ %i.ul, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i13.i ], [ %i.us, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i10.i ], [ %i.vd, %bb.ar ], [ %i.sw, %bb.aq ]
  %i.vj = zext i64 %.sroa.0.0.i.i.i9.i to i128
  %i.vk = zext i64 %.sroa.04.0.i.i.i8.i to i128
  %i.vl = mul nuw i128 %i.vj, %i.vk               ; 2 uses
  %i.vm = lshr i128 %i.vl, 64
  %i.vn = xor i128 %i.vm, %i.vl
  %i.vo = trunc i128 %i.vn to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i2.i

end_hunk_7
begin_hunk_8_@_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  store i128 %i.xs, ptr %1, align 16, !alias.scope !15179
  %i.xt = add nuw i8 %i.xm, 64
  store i8 %i.xt, ptr %i.c, align 16, !alias.scope !15179
  br i1 %i.xo, label %bb.az, label %.thread112

.thread112:                                       ; preds = %.thread107
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 2684
  %i.xv = load i8, ptr %i.xu, align 4, !range !120, !noundef !3 ; 2 uses
  %i.xw = icmp ne i8 %i.xv, 2                     ; 2 uses
  %i.xx = zext i1 %i.xw to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %.thread99, %.thread108
  %i.xy = phi ptr [ %i.qy, %.thread99 ], [ %.pre159, %.thread108 ]
  %i.xz = phi i64 [ %i.qz, %.thread99 ], [ %i.wy, %.thread108 ]
  %i.ya = phi i128 [ %i.rd, %.thread99 ], [ %.sink.i19.sink.i.ph, %.thread108 ] ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 2512 ; 2 uses
  %.in147 = load i64, ptr %i.yb, align 8, !range !4, !noundef !3
  %i.yc = icmp ne i64 %.in147, -9223372036854775808 ; 2 uses
  %i.yd = trunc i128 %i.ya to i64
  %i.ye = lshr i128 %i.ya, 64
  %i.yf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.yg = xor i64 %i.xz, %i.yd
  %i.yh = load i64, ptr %i.xy, align 8, !noalias !15179, !noundef !3
  %i.yi = zext i64 %i.yg to i128
  %i.yj = zext i64 %i.yh to i128
  %i.yk = xor i128 %i.ye, %i.yj
  %i.yl = mul nuw i128 %i.yk, %i.yi               ; 2 uses
  %i.ym = lshr i128 %i.yl, 64
  %i.yn = xor i128 %i.ym, %i.yl
  %i.yo = trunc i128 %i.yn to i64
  store i64 %i.yo, ptr %i.yf, align 8, !alias.scope !15179
  %i.yp = zext i1 %i.yc to i128
  store i128 %i.yp, ptr %1, align 16, !alias.scope !15179
  store i8 64, ptr %i.c, align 16, !alias.scope !15179
  br i1 %i.yc, label %bb.az, label %.thread113

.thread113:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 2684
  %i.yr = load i8, ptr %i.yq, align 4, !range !120, !noundef !3 ; 2 uses
  %i.ys = icmp ne i8 %i.yr, 2                     ; 2 uses
  %i.yt = zext i1 %i.ys to i64
  br label %._crit_edge

bb.az:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6, %.thread107
  %i.yu = phi ptr [ %i.xn, %.thread107 ], [ %i.yb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ]
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.yu, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %.pr111 = load i8, ptr %i.c, align 16, !alias.scope !15187 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 2684
  %i.yw = load i8, ptr %i.yv, align 4, !range !120, !noundef !3 ; 3 uses
  %i.yx = icmp ne i8 %i.yw, 2                     ; 3 uses
  %i.yy = zext i1 %i.yx to i64                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15193)
  %i.yz = icmp ugt i8 %.pr111, 64
  %.pre161 = load i128, ptr %1, align 16, !alias.scope !15187 ; 2 uses
  br i1 %i.yz, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge, label %._crit_edge

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge: ; preds = %bb.az
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre163 = load i64, ptr %.phi.trans.insert162, align 8, !alias.scope !15187
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

._crit_edge:                                      ; preds = %bb.az, %.thread113
  %i.za = phi i128 [ 0, %.thread113 ], [ %.pre161, %bb.az ]
  %i.zb = phi i64 [ %i.yt, %.thread113 ], [ %i.yy, %bb.az ]
  %i.zc = phi i1 [ %i.ys, %.thread113 ], [ %i.yx, %bb.az ]
  %i.zd = phi i8 [ %i.yr, %.thread113 ], [ %i.yw, %bb.az ] ; 2 uses
  %i.ze = phi i8 [ 64, %.thread113 ], [ %.pr111, %bb.az ] ; 3 uses
  %i.zf = zext nneg i64 %i.zb to i128
  %i.zg = zext nneg i8 %i.ze to i128
  %i.zh = shl nuw nsw i128 %i.zf, %i.zg
  %i.zi = or i128 %i.zh, %i.za                    ; 5 uses
  store i128 %i.zi, ptr %1, align 16, !alias.scope !15187
  %i.zj = add nuw i8 %i.ze, 64                    ; 2 uses
  store i8 %i.zj, ptr %i.c, align 16, !alias.scope !15187
  br i1 %i.zc, label %bb.ba, label %bb.bc

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge, %.thread112
  %i.zk = phi i64 [ %i.xk, %.thread112 ], [ %.pre163, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ]
  %i.zl = phi i128 [ %i.xs, %.thread112 ], [ %.pre161, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ] ; 2 uses
  %i.zm = phi i64 [ %i.xx, %.thread112 ], [ %i.yy, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ] ; 2 uses
  %i.zn = phi i1 [ %i.xw, %.thread112 ], [ %i.yx, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ]
  %i.zo = phi i8 [ %i.xv, %.thread112 ], [ %i.yw, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ]
  %i.zp = trunc i128 %i.zl to i64
  %i.zq = lshr i128 %i.zl, 64
  %i.zr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zs = xor i64 %i.zk, %i.zp
  %i.zt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.zu = load ptr, ptr %i.zt, align 16, !alias.scope !15187, !nonnull !3, !align !65, !noundef !3
  %i.zv = load i64, ptr %i.zu, align 8, !noalias !15187, !noundef !3
  %i.zw = zext i64 %i.zs to i128
  %i.zx = zext i64 %i.zv to i128
  %i.zy = xor i128 %i.zq, %i.zx
  %i.zz = mul nuw i128 %i.zy, %i.zw               ; 2 uses
  %i.aaa = lshr i128 %i.zz, 64
  %i.aab = xor i128 %i.aaa, %i.zz
  %i.aac = trunc i128 %i.aab to i64
  store i64 %i.aac, ptr %i.zr, align 8, !alias.scope !15187
  %i.aad = zext nneg i64 %i.zm to i128            ; 3 uses
  store i128 %i.aad, ptr %1, align 16, !alias.scope !15187
  store i8 64, ptr %i.c, align 16, !alias.scope !15187
  br i1 %i.zn, label %.thread115, label %.thread118

.thread118:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.aae = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.aaf = load i64, ptr %i.aae, align 8, !range !4, !noundef !3
  %.not190 = icmp eq i64 %i.aaf, -9223372036854775808 ; 2 uses
  %i.aag = select i1 %.not190, i128 0, i128 18446744073709551616
  %i.aah = or disjoint i128 %i.aag, %i.aad        ; 3 uses
  store i128 %i.aah, ptr %1, align 16, !alias.scope !15194
  store i8 -128, ptr %i.c, align 16, !alias.scope !15194
  br i1 %.not190, label %.thread123, label %bb.bf

bb.ba:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15205)
  %.not150 = icmp eq i8 %i.ze, 0
  br i1 %.not150, label %.thread115, label %bb.bb

.thread115:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %bb.ba
  %i.aai = phi i128 [ %i.zi, %bb.ba ], [ %i.aad, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ]
  %i.aaj = phi i8 [ %i.zd, %bb.ba ], [ %i.zo, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ]
  %i.aak = zext nneg i8 %i.aaj to i128
  %i.aal = shl nuw nsw i128 %i.aak, 64
  %i.aam = or i128 %i.aal, %i.aai
  br label %_RINvXsu6_NtCs4lawaffTVVK_9sqlparser3astNtB7_28FunctionDeterminismSpecifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.bb:                                            ; preds = %bb.ba
  %i.aan = trunc i128 %i.zi to i64
  %i.aao = lshr i128 %i.zi, 64
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aaq = load i64, ptr %i.aap, align 8, !alias.scope !15208, !noundef !3
  %i.aar = xor i64 %i.aaq, %i.aan
  %i.aas = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aat = load ptr, ptr %i.aas, align 16, !alias.scope !15208, !nonnull !3, !align !65, !noundef !3
  %i.aau = load i64, ptr %i.aat, align 8, !noalias !15208, !noundef !3
  %i.aav = zext i64 %i.aar to i128
  %i.aaw = zext i64 %i.aau to i128
  %i.aax = xor i128 %i.aao, %i.aaw
  %i.aay = mul nuw i128 %i.aax, %i.aav            ; 2 uses
  %i.aaz = lshr i128 %i.aay, 64
  %i.aba = xor i128 %i.aaz, %i.aay
  %i.abb = trunc i128 %i.aba to i64
  store i64 %i.abb, ptr %i.aap, align 8, !alias.scope !15208
  %i.abc = zext nneg i8 %i.zd to i128
  br label %_RINvXsu6_NtCs4lawaffTVVK_9sqlparser3astNtB7_28FunctionDeterminismSpecifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsu6_NtCs4lawaffTVVK_9sqlparser3astNtB7_28FunctionDeterminismSpecifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.thread115, %bb.bb
  %.sink.i48 = phi i128 [ %i.abc, %bb.bb ], [ %i.aam, %.thread115 ] ; 2 uses
  %storemerge.i.i.i49 = phi i8 [ 64, %bb.bb ], [ -128, %.thread115 ] ; 2 uses
  store i128 %.sink.i48, ptr %1, align 16, !alias.scope !15208
  store i8 %storemerge.i.i.i49, ptr %i.c, align 16, !alias.scope !15208
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge, %_RINvXsu6_NtCs4lawaffTVVK_9sqlparser3astNtB7_28FunctionDeterminismSpecifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.abd = phi i128 [ %i.zi, %._crit_edge ], [ %.sink.i48, %_RINvXsu6_NtCs4lawaffTVVK_9sqlparser3astNtB7_28FunctionDeterminismSpecifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 4 uses
  %i.abe = phi i8 [ %i.zj, %._crit_edge ], [ %storemerge.i.i.i49, %_RINvXsu6_NtCs4lawaffTVVK_9sqlparser3astNtB7_28FunctionDeterminismSpecifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.abg = load i64, ptr %i.abf, align 8, !range !4, !noundef !3
  %i.abh = icmp ne i64 %i.abg, -9223372036854775808 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15210)
  %i.abi = icmp ugt i8 %i.abe, 64
  br i1 %i.abi, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.abj = select i1 %i.abh, i128 18446744073709551616, i128 0
  %i.abk = or i128 %i.abd, %i.abj                 ; 3 uses
  store i128 %i.abk, ptr %1, align 16, !alias.scope !15194
  store i8 -128, ptr %i.c, align 16, !alias.scope !15194
  %extract.t193 = trunc i128 %i.abd to i64
  br i1 %i.abh, label %bb.bf, label %.thread123

.thread123:                                       ; preds = %.thread118, %bb.bd
  %i.abl = phi i128 [ %i.aah, %.thread118 ], [ %i.abk, %bb.bd ]
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.abn = load i64, ptr %i.abm, align 8, !range !4, !noundef !3
  %i.abo = icmp ne i64 %i.abn, -9223372036854775808 ; 2 uses
  %i.abp = zext i1 %i.abo to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %bb.bc
  %i.abq = trunc i128 %i.abd to i64
  %i.abr = lshr i128 %i.abd, 64
  %i.abs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.abt = load i64, ptr %i.abs, align 8, !alias.scope !15194, !noundef !3
  %i.abu = xor i64 %i.abt, %i.abq
  %i.abv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.abw = load ptr, ptr %i.abv, align 16, !alias.scope !15194, !nonnull !3, !align !65, !noundef !3
  %i.abx = load i64, ptr %i.abw, align 8, !noalias !15194, !noundef !3
  %i.aby = zext i64 %i.abu to i128
  %i.abz = zext i64 %i.abx to i128
  %i.aca = xor i128 %i.abr, %i.abz
  %i.acb = mul nuw i128 %i.aca, %i.aby            ; 2 uses
  %i.acc = lshr i128 %i.acb, 64
  %i.acd = xor i128 %i.acc, %i.acb
  %i.ace = trunc i128 %i.acd to i64
  store i64 %i.ace, ptr %i.abs, align 8, !alias.scope !15194
  %i.acf = zext i1 %i.abh to i128
  store i128 %i.acf, ptr %1, align 16, !alias.scope !15194
  store i8 64, ptr %i.c, align 16, !alias.scope !15194
  br i1 %i.abh, label %bb.be, label %.thread124

.thread124:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.acg = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.ach = load i64, ptr %i.acg, align 8, !range !4, !noundef !3
  %i.aci = icmp ne i64 %i.ach, -9223372036854775808 ; 2 uses
  %i.acj = zext i1 %i.aci to i64
  br label %._crit_edge164

bb.be:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 2584
  %i.acl = load ptr, ptr %i.ack, align 8, !nonnull !3, !noundef !3
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.acn = load i64, ptr %i.acm, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15217)
  %i.aco = zext i64 %i.acn to i128
  %i.acp = shl nuw i128 %i.aco, 64
  %i.acq = or disjoint i128 %i.acp, 1
  br label %bb.bg

bb.bf:                                            ; preds = %.thread118, %bb.bd
  %i.acr = phi i128 [ %i.aah, %.thread118 ], [ %i.abk, %bb.bd ]
  %.off0191 = phi i64 [ %i.zm, %.thread118 ], [ %extract.t193, %bb.bd ]
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 2584
  %i.act = load ptr, ptr %i.acs, align 8, !nonnull !3, !noundef !3
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.acv = load i64, ptr %i.acu, align 8, !noundef !3 ; 2 uses
  %i.acw = lshr i128 %i.acr, 64
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.acy = load i64, ptr %i.acx, align 8, !alias.scope !15220, !noundef !3
  %i.acz = xor i64 %i.acy, %.off0191
  %i.ada = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.adb = load ptr, ptr %i.ada, align 16, !alias.scope !15220, !nonnull !3, !align !65, !noundef !3
  %i.adc = load i64, ptr %i.adb, align 8, !noalias !15220, !noundef !3
  %i.add = zext i64 %i.acz to i128
  %i.ade = zext i64 %i.adc to i128
  %i.adf = xor i128 %i.acw, %i.ade
  %i.adg = mul nuw i128 %i.adf, %i.add            ; 2 uses
  %i.adh = lshr i128 %i.adg, 64
  %i.adi = xor i128 %i.adh, %i.adg
  %i.adj = trunc i128 %i.adi to i64
  store i64 %i.adj, ptr %i.acx, align 8, !alias.scope !15220
  %i.adk = zext i64 %i.acv to i128
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.adl = phi i64 [ %i.acv, %bb.bf ], [ %i.acn, %bb.be ]
  %i.adm = phi ptr [ %i.act, %bb.bf ], [ %i.acl, %bb.be ]
  %.sink.i50 = phi i128 [ %i.adk, %bb.bf ], [ %i.acq, %bb.be ]
  %storemerge.i.i.i51 = phi i8 [ 64, %bb.bf ], [ -128, %bb.be ]
  store i128 %.sink.i50, ptr %1, align 16, !alias.scope !15220
  store i8 %storemerge.i.i.i51, ptr %i.c, align 16, !alias.scope !15220
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.adm, i64 noundef %i.adl, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %.pr122 = load i8, ptr %i.c, align 16, !alias.scope !15221 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.ado = load i64, ptr %i.adn, align 8, !range !4, !noundef !3
  %i.adp = icmp ne i64 %i.ado, -9223372036854775808 ; 3 uses
  %i.adq = zext i1 %i.adp to i64                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15227)
  %i.adr = icmp ugt i8 %.pr122, 64
  %.pre166 = load i128, ptr %1, align 16, !alias.scope !15221 ; 2 uses
  br i1 %i.adr, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, label %._crit_edge164

._crit_edge164:                                   ; preds = %bb.bg, %.thread124
  %i.ads = phi i128 [ 0, %.thread124 ], [ %.pre166, %bb.bg ]
  %i.adt = phi i64 [ %i.acj, %.thread124 ], [ %i.adq, %bb.bg ]
  %i.adu = phi i1 [ %i.aci, %.thread124 ], [ %i.adp, %bb.bg ]
  %i.adv = phi i8 [ 64, %.thread124 ], [ %.pr122, %bb.bg ] ; 3 uses
  %i.adw = zext nneg i64 %i.adt to i128
  %i.adx = zext nneg i8 %i.adv to i128
  %i.ady = shl nuw nsw i128 %i.adw, %i.adx
  %i.adz = or i128 %i.ady, %i.ads                 ; 4 uses
  store i128 %i.adz, ptr %1, align 16, !alias.scope !15221
  %i.aea = add nuw i8 %i.adv, 64
  store i8 %i.aea, ptr %i.c, align 16, !alias.scope !15221
  br i1 %i.adu, label %bb.bh, label %bb.bk

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.bg, %.thread123
  %i.aeb = phi i128 [ %i.abl, %.thread123 ], [ %.pre166, %bb.bg ] ; 2 uses
  %i.aec = phi i64 [ %i.abp, %.thread123 ], [ %i.adq, %bb.bg ]
  %i.aed = phi i1 [ %i.abo, %.thread123 ], [ %i.adp, %bb.bg ]
  %i.aee = trunc i128 %i.aeb to i64
  %i.aef = lshr i128 %i.aeb, 64
  %i.aeg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aeh = load i64, ptr %i.aeg, align 8, !alias.scope !15221, !noundef !3
  %i.aei = xor i64 %i.aeh, %i.aee
  %i.aej = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aek = load ptr, ptr %i.aej, align 16, !alias.scope !15221, !nonnull !3, !align !65, !noundef !3
  %i.ael = load i64, ptr %i.aek, align 8, !noalias !15221, !noundef !3
  %i.aem = zext i64 %i.aei to i128
  %i.aen = zext i64 %i.ael to i128
  %i.aeo = xor i128 %i.aef, %i.aen
  %i.aep = mul nuw i128 %i.aeo, %i.aem            ; 2 uses
  %i.aeq = lshr i128 %i.aep, 64
  %i.aer = xor i128 %i.aeq, %i.aep
  %i.aes = trunc i128 %i.aer to i64
  store i64 %i.aes, ptr %i.aeg, align 8, !alias.scope !15221
  %i.aet = zext nneg i64 %i.aec to i128           ; 2 uses
  store i128 %i.aet, ptr %1, align 16, !alias.scope !15221
  store i8 64, ptr %i.c, align 16, !alias.scope !15221
  br i1 %i.aed, label %.thread126, label %bb.bk

.thread126:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.aeu = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %.val128 = load ptr, ptr %i.aeu, align 8, !nonnull !3, !noundef !3
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 2616
  %.val28129 = load i64, ptr %i.aev, align 8, !noundef !3
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge164
  %i.aew = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %.val = load ptr, ptr %i.aew, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %0, i64 2616
  %.val28 = load i64, ptr %i.aex, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15240)
  %.not152 = icmp eq i8 %i.adv, 0
  br i1 %.not152, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.thread126, %bb.bh
  %i.aey = phi i128 [ %i.aet, %.thread126 ], [ %i.adz, %bb.bh ]
  %.val28133 = phi i64 [ %.val28129, %.thread126 ], [ %.val28, %bb.bh ] ; 2 uses
  %.val132 = phi ptr [ %.val128, %.thread126 ], [ %.val, %bb.bh ]
  %i.aez = zext i64 %.val28133 to i128
  %i.afa = shl nuw i128 %i.aez, 64
  %i.afb = or i128 %i.aey, %i.afa
  br label %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit55

bb.bj:                                            ; preds = %bb.bh
  %i.afc = trunc i128 %i.adz to i64
  %i.afd = lshr i128 %i.adz, 64
  %i.afe = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aff = load i64, ptr %i.afe, align 8, !alias.scope !15243, !noundef !3
  %i.afg = xor i64 %i.aff, %i.afc
  %i.afh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.afi = load ptr, ptr %i.afh, align 16, !alias.scope !15243, !nonnull !3, !align !65, !noundef !3
  %i.afj = load i64, ptr %i.afi, align 8, !noalias !15243, !noundef !3
  %i.afk = zext i64 %i.afg to i128
  %i.afl = zext i64 %i.afj to i128
  %i.afm = xor i128 %i.afd, %i.afl
  %i.afn = mul nuw i128 %i.afm, %i.afk            ; 2 uses
  %i.afo = lshr i128 %i.afn, 64
  %i.afp = xor i128 %i.afo, %i.afn
  %i.afq = trunc i128 %i.afp to i64
  store i64 %i.afq, ptr %i.afe, align 8, !alias.scope !15243
  %i.afr = zext i64 %.val28 to i128
  br label %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit55

_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit55: ; preds = %bb.bi, %bb.bj
  %.val28134 = phi i64 [ %.val28, %bb.bj ], [ %.val28133, %bb.bi ]
  %.val131 = phi ptr [ %.val, %bb.bj ], [ %.val132, %bb.bi ]
  %.sink.i.i.i53 = phi i128 [ %i.afr, %bb.bj ], [ %i.afb, %bb.bi ]
  %storemerge.i.i.i.i.i54 = phi i8 [ 64, %bb.bj ], [ -128, %bb.bi ]
  store i128 %.sink.i.i.i53, ptr %1, align 16, !alias.scope !15243
  store i8 %storemerge.i.i.i.i.i54, ptr %i.c, align 16, !alias.scope !15243
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val131, i64 noundef %.val28134, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge164, %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit55, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2688) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [1 x i8], align 1                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [1 x i8], align 1                 ; 4 uses
  %i.aa = alloca [1 x i8], align 1                ; 4 uses
  %i.ab = alloca [1 x i8], align 1                ; 4 uses
  %i.ac = alloca [1 x i8], align 1                ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %i.ae = load i8, ptr %i.ad, align 8, !range !135, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !15244
  store i8 %i.ae, ptr %i.ac, align 1, !noalias !15244
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 1) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !15244
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2681
  %i.ag = load i8, ptr %i.af, align 1, !range !135, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !15247
  store i8 %i.ag, ptr %i.ab, align 1, !noalias !15247
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 1) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !15247
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2682
  %i.ai = load i8, ptr %i.ah, align 2, !range !135, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !15250
  store i8 %i.ai, ptr %i.aa, align 1, !noalias !15250
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 1) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !15250
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2683
  %i.ak = load i8, ptr %i.aj, align 1, !range !135, !noundef !3
end_hunk_8
begin_hunk_9_@_RINvXs9K_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_13CreateTriggerNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.wz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.xa = load i64, ptr %i.wz, align 8, !alias.scope !16323, !noundef !3
  %i.xb = xor i64 %i.xa, %i.wx
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xd = load ptr, ptr %i.xc, align 16, !alias.scope !16323, !nonnull !3, !align !65, !noundef !3 ; 3 uses
  %i.xe = load i64, ptr %i.xd, align 8, !noalias !16323, !noundef !3
  %i.xf = zext i64 %i.xb to i128
  %i.xg = zext i64 %i.xe to i128
  %i.xh = xor i128 %i.wy, %i.xg
  %i.xi = mul nuw i128 %i.xh, %i.xf               ; 2 uses
  %i.xj = lshr i128 %i.xi, 64
  %i.xk = xor i128 %i.xj, %i.xi
  %i.xl = trunc i128 %i.xk to i64                 ; 3 uses
  store i64 %i.xl, ptr %i.wz, align 8, !alias.scope !16323
  %i.xm = zext nneg i64 %i.wt to i128             ; 2 uses
  store i128 %i.xm, ptr %1, align 16, !alias.scope !16323
  store i8 64, ptr %i.c, align 16, !alias.scope !16323
  br i1 %i.wu, label %.thread90, label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

.thread90:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %.not101 = icmp eq i8 %i.wv, 2                  ; 2 uses
  %i.xn = select i1 %.not101, i128 0, i128 18446744073709551616
  %i.xo = or disjoint i128 %i.xn, %i.xm           ; 2 uses
  br i1 %.not101, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge

bb.x:                                             ; preds = %._crit_edge123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16333)
  %.not99 = icmp eq i8 %i.wk, 2                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16338)
  %.not98 = icmp eq i8 %i.wm, 0
  %.phi.trans.insert132 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.pre133 = load i64, ptr %.phi.trans.insert132, align 8, !alias.scope !16333, !noalias !16330 ; 3 uses
  br i1 %.not98, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i: ; preds = %bb.x
  %i.xp = select i1 %.not99, i128 0, i128 18446744073709551616
  %i.xq = or i128 %i.wq, %i.xp                    ; 2 uses
  %.phi.trans.insert134 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre135 = load ptr, ptr %.phi.trans.insert134, align 16, !alias.scope !16333, !noalias !16330 ; 2 uses
  br i1 %.not99, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i: ; preds = %bb.x
  %i.xr = trunc i128 %i.wq to i64
  %i.xs = lshr i128 %i.wq, 64
  %i.xt = xor i64 %.pre133, %i.xr
  %i.xu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xv = load ptr, ptr %i.xu, align 16, !alias.scope !16341, !noalias !16330, !nonnull !3, !align !65, !noundef !3 ; 4 uses
  %i.xw = load i64, ptr %i.xv, align 8, !noalias !16342, !noundef !3
  %i.xx = zext i64 %i.xt to i128
  %i.xy = zext i64 %i.xw to i128
  %i.xz = xor i128 %i.xs, %i.xy
  %i.ya = mul nuw i128 %i.xz, %i.xx               ; 2 uses
  %i.yb = lshr i128 %i.ya, 64
  %i.yc = xor i128 %i.yb, %i.ya
  %i.yd = trunc i128 %i.yc to i64                 ; 4 uses
  store i64 %i.yd, ptr %.phi.trans.insert132, align 8, !alias.scope !16341, !noalias !16330
  br i1 %.not99, label %.thread14.i, label %.thread.i

.thread14.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 713
  %i.yf = load i8, ptr %i.ye, align 1, !range !120, !alias.scope !16330, !noalias !16333, !noundef !3 ; 2 uses
  %.not100 = icmp eq i8 %i.yf, 2
  br i1 %.not100, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i, label %bb.y

.thread.i:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i
  %i.yg = zext nneg i8 %i.wk to i128
  %i.yh = shl nuw nsw i128 %i.yg, 64
  %i.yi = or disjoint i128 %i.yh, 1
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i, %.thread90
  %i.yj = phi ptr [ %i.xd, %.thread90 ], [ %.pre135, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ] ; 3 uses
  %i.yk = phi i64 [ %i.xl, %.thread90 ], [ %.pre133, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ]
  %i.yl = phi i128 [ %i.xo, %.thread90 ], [ %i.xq, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ] ; 2 uses
  %i.ym = phi ptr [ %i.ww, %.thread90 ], [ %i.wl, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ] ; 3 uses
  %i.yn = phi i8 [ %i.wv, %.thread90 ], [ %i.wk, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16346)
  %i.yo = trunc i128 %i.yl to i64
  %i.yp = lshr i128 %i.yl, 64
  %i.yq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.yr = xor i64 %i.yk, %i.yo
  %i.ys = load i64, ptr %i.yj, align 8, !noalias !16349, !noundef !3
  %i.yt = zext i64 %i.yr to i128
  %i.yu = zext i64 %i.ys to i128
  %i.yv = xor i128 %i.yp, %i.yu
  %i.yw = mul nuw i128 %i.yv, %i.yt               ; 2 uses
  %i.yx = lshr i128 %i.yw, 64
  %i.yy = xor i128 %i.yx, %i.yw
  %i.yz = trunc i128 %i.yy to i64                 ; 3 uses
  store i64 %i.yz, ptr %i.yq, align 8, !alias.scope !16350, !noalias !16330
  %i.za = zext nneg i8 %i.yn to i128
  %i.zb = getelementptr inbounds nuw i8, ptr %i.ym, i64 1
  %i.zc = load i8, ptr %i.zb, align 1, !range !120, !alias.scope !16330, !noalias !16333, !noundef !3 ; 2 uses
  %.not103 = icmp eq i8 %i.zc, 2                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16354)
  %i.zd = select i1 %.not103, i128 0, i128 256
  %i.ze = or disjoint i128 %i.zd, %i.za           ; 2 uses
  br i1 %.not103, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i, label %bb.y

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i: ; preds = %.thread14.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge
  %.pre29.i = phi ptr [ %i.xv, %.thread14.i ], [ %i.yj, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %.pre.i = phi i64 [ %i.yd, %.thread14.i ], [ %i.yz, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %i.zf = phi i128 [ 0, %.thread14.i ], [ %i.ze, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %i.zg = phi ptr [ %i.wl, %.thread14.i ], [ %i.ym, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %.pre30.i = load i64, ptr %.pre29.i, align 8, !noalias !16357
  %.pre31.i = zext i64 %.pre30.i to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i, %.thread.i, %.thread90
  %i.zh = phi ptr [ %i.xd, %.thread90 ], [ %i.xv, %.thread.i ], [ %.pre135, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ]
  %i.zi = phi i64 [ %i.xl, %.thread90 ], [ %i.yd, %.thread.i ], [ %.pre133, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ]
  %.ph = phi ptr [ %i.ww, %.thread90 ], [ %i.wl, %.thread.i ], [ %i.wl, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ] ; 3 uses
  %.ph94 = phi i128 [ %i.xo, %.thread90 ], [ %i.yi, %.thread.i ], [ %i.xq, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ] ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.ph, i64 1
  %i.zk = load i8, ptr %i.zj, align 1, !range !120, !alias.scope !16330, !noalias !16333, !noundef !3 ; 2 uses
  %.not102 = icmp eq i8 %i.zk, 2
  %i.zl = trunc i128 %.ph94 to i64
  %i.zm = lshr i128 %.ph94, 64
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zo = xor i64 %i.zi, %i.zl
  %i.zp = load i64, ptr %i.zh, align 8, !noalias !16362, !noundef !3 ; 2 uses
  %i.zq = zext i64 %i.zo to i128
  %i.zr = zext i64 %i.zp to i128                  ; 2 uses
  %i.zs = xor i128 %i.zm, %i.zr
  %i.zt = mul nuw i128 %i.zs, %i.zq               ; 2 uses
  %i.zu = lshr i128 %i.zt, 64
  %i.zv = xor i128 %i.zu, %i.zt
  %i.zw = trunc i128 %i.zv to i64                 ; 3 uses
  store i64 %i.zw, ptr %i.zn, align 8, !alias.scope !16363, !noalias !16330
  br i1 %.not102, label %.thread19.i, label %.thread20.i

.thread20.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16367)
  %i.zx = zext nneg i8 %i.zk to i128
  %i.zy = shl nuw nsw i128 %i.zx, 64
  %i.zz = or disjoint i128 %i.zy, 1
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i

bb.y:                                             ; preds = %.thread14.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge
  %i.aaa = phi ptr [ %i.xv, %.thread14.i ], [ %i.yj, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %i.aab = phi i64 [ %i.yd, %.thread14.i ], [ %i.yz, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %i.aac = phi i128 [ 18446744073709551616, %.thread14.i ], [ %i.ze, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ] ; 2 uses
  %i.aad = phi i8 [ %i.yf, %.thread14.i ], [ %i.zc, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %i.aae = phi ptr [ %i.wl, %.thread14.i ], [ %i.ym, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %i.aaf = trunc i128 %i.aac to i64
  %i.aag = lshr i128 %i.aac, 64
  %i.aah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aai = xor i64 %i.aab, %i.aaf
  %i.aaj = load i64, ptr %i.aaa, align 8, !noalias !16370, !noundef !3 ; 2 uses
  %i.aak = zext i64 %i.aai to i128
  %i.aal = zext i64 %i.aaj to i128
  %i.aam = xor i128 %i.aag, %i.aal
  %i.aan = mul nuw i128 %i.aam, %i.aak            ; 2 uses
  %i.aao = lshr i128 %i.aan, 64
  %i.aap = xor i128 %i.aao, %i.aan
  %i.aaq = trunc i128 %i.aap to i64               ; 2 uses
  store i64 %i.aaq, ptr %i.aah, align 8, !alias.scope !16371, !noalias !16330
  %i.aar = zext nneg i8 %i.aad to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16373)
  br label %.thread19.i

.thread19.i:                                      ; preds = %bb.y, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i
  %i.aas = phi ptr [ %.ph, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ], [ %i.aae, %bb.y ]
  %i.aat = phi i64 [ %i.zp, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ], [ %i.aaj, %bb.y ]
  %i.aau = phi i64 [ %i.zw, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ], [ %i.aaq, %bb.y ]
  %i.aav = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ], [ %i.aar, %bb.y ] ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %i.aas, i64 2
  %i.aaw = load i8, ptr %.in.i, align 1, !range !120, !alias.scope !16330, !noalias !16333, !noundef !3 ; 2 uses
  %.not.i42 = icmp eq i8 %i.aaw, 2                ; 2 uses
  %i.aax = select i1 %.not.i42, i128 0, i128 18446744073709551616
  %i.aay = or disjoint i128 %i.aax, %i.aav
  store i128 %i.aay, ptr %1, align 16, !alias.scope !16374, !noalias !16330
  store i8 -128, ptr %i.c, align 16, !alias.scope !16374, !noalias !16330
  br i1 %.not.i42, label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %bb.aa

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i: ; preds = %.thread20.i, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i
  %i.aaz = phi ptr [ %i.zg, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i ], [ %.ph, %.thread20.i ]
  %.pre-phi.i = phi i128 [ %.pre31.i, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i ], [ %i.zr, %.thread20.i ]
  %i.aba = phi i64 [ %.pre.i, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i ], [ %i.zw, %.thread20.i ]
  %i.abb = phi i128 [ %i.zf, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i ], [ %i.zz, %.thread20.i ] ; 2 uses
  %.in27.i = getelementptr inbounds nuw i8, ptr %i.aaz, i64 2
  %i.abc = load i8, ptr %.in27.i, align 1, !range !120, !alias.scope !16330, !noalias !16333, !noundef !3 ; 2 uses
  %i.abd = icmp ne i8 %i.abc, 2                   ; 2 uses
  %i.abe = trunc i128 %i.abb to i64
  %i.abf = lshr i128 %i.abb, 64
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.abh = xor i64 %i.aba, %i.abe
  %i.abi = zext i64 %i.abh to i128
  %i.abj = xor i128 %i.abf, %.pre-phi.i
  %i.abk = mul nuw i128 %i.abj, %i.abi            ; 2 uses
  %i.abl = lshr i128 %i.abk, 64
  %i.abm = xor i128 %i.abl, %i.abk
  %i.abn = trunc i128 %i.abm to i64
  store i64 %i.abn, ptr %i.abg, align 8, !alias.scope !16374, !noalias !16330
  %i.abo = zext i1 %i.abd to i128
  store i128 %i.abo, ptr %1, align 16, !alias.scope !16374, !noalias !16330
  store i8 64, ptr %i.c, align 16, !alias.scope !16374, !noalias !16330
  br i1 %i.abd, label %bb.z, label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.z:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.abp = zext nneg i8 %i.abc to i128
  %i.abq = shl nuw nsw i128 %i.abp, 64
  %i.abr = or disjoint i128 %i.abq, 1
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.i

bb.aa:                                            ; preds = %.thread19.i
  %i.abs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.abt = zext i64 %i.aau to i128
  %i.abu = xor i128 %i.aav, %i.abt
  %i.abv = xor i64 %i.aat, 1
  %i.abw = zext i64 %i.abv to i128
  %i.abx = mul nuw i128 %i.abu, %i.abw            ; 2 uses
  %i.aby = lshr i128 %i.abx, 64
  %i.abz = xor i128 %i.aby, %i.abx
  %i.aca = trunc i128 %i.abz to i64
  store i64 %i.aca, ptr %i.abs, align 8, !alias.scope !16375, !noalias !16330
  %i.acb = zext nneg i8 %i.aaw to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.i: ; preds = %bb.aa, %bb.z
  %storemerge.i = phi i128 [ %i.acb, %bb.aa ], [ %i.abr, %bb.z ]
  %storemerge.i.i7.i = phi i8 [ 8, %bb.aa ], [ 72, %bb.z ]
  store i128 %storemerge.i, ptr %1, align 16, !alias.scope !16375, !noalias !16330
  store i8 %storemerge.i.i7.i, ptr %i.c, align 16, !alias.scope !16375, !noalias !16330
  br label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i, %.thread19.i, %._crit_edge123, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs9K_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_13CreateTriggerNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [1 x i8], align 1                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [1 x i8], align 1                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [1 x i8], align 1                ; 4 uses
  %i.ad = alloca [1 x i8], align 1                ; 4 uses
  %i.ae = alloca [1 x i8], align 1                ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ag = load i8, ptr %i.af, align 8, !range !135, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !16380
  store i8 %i.ag, ptr %i.ae, align 1, !noalias !16380
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 1) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !16380
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 705
  %i.ai = load i8, ptr %i.ah, align 1, !range !135, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !16383
  store i8 %i.ai, ptr %i.ad, align 1, !noalias !16383
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 1) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !16383
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 706
  %i.ak = load i8, ptr %i.aj, align 2, !range !135, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !16386
  store i8 %i.ak, ptr %i.ac, align 1, !noalias !16386
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 1) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !16386
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.val4 = load ptr, ptr %i.al, align 8, !nonnull !3, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.val5 = load i64, ptr %i.am, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !16389
  store i64 %.val5, ptr %i.ab, align 8, !noalias !16389
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !16389
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val4, i64 noundef %.val5, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 711
  %.val6 = load i8, ptr %i.an, align 1, !range !864, !noundef !3
  %i.ao = zext nneg i8 %.val6 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !16398
  store i64 %i.ao, ptr %i.aa, align 8, !noalias !16398
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !16398
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 707
  %i.aq = load i8, ptr %i.ap, align 1, !range !135, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !16405
  store i8 %i.aq, ptr %i.z, align 1, !noalias !16405
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 1) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !16405
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !3, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.au = load i64, ptr %i.at, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !16408
  store i64 %i.au, ptr %i.y, align 8, !noalias !16408
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !16408
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger12TriggerEventNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.as, i64 noundef %i.au, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.val2 = load ptr, ptr %i.av, align 8, !nonnull !3, !noundef !3
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.val3 = load i64, ptr %i.aw, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !16413
  store i64 %.val3, ptr %i.x, align 8, !noalias !16413
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !16413
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2, i64 noundef %.val3, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ay = load i64, ptr %i.ax, align 8, !range !4, !noundef !3
  %i.az = icmp ne i64 %i.ay, -9223372036854775808 ; 2 uses
  %i.ba = zext i1 %i.az to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !16422
  store i64 %i.ba, ptr %i.w, align 8, !noalias !16422
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16422
  br i1 %i.az, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.val = load ptr, ptr %i.bb, align 8, !nonnull !3, !noundef !3
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.val1 = load i64, ptr %i.bc, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !16427
  store i64 %.val1, ptr %i.v, align 8, !noalias !16427
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !16427
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !3, !noundef !3
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !16436
  store i64 %i.bg, ptr %i.u, align 8, !noalias !16436
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16436
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger18TriggerReferencingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.be, i64 noundef %i.bg, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 708
  %.val7 = load i8, ptr %i.bh, align 4, !range !135, !noundef !3
  %i.bi = zext nneg i8 %.val7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !16441
  store i64 %i.bi, ptr %i.t, align 8, !noalias !16441
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16441
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 709
  %i.bk = load i8, ptr %i.bj, align 1, !range !135, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !16448
  store i8 %i.bk, ptr %i.s, align 1, !noalias !16448
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef 1) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16448
  %i.bl = load i64, ptr %0, align 8, !range !372, !noundef !3
  %i.bm = icmp ne i64 %i.bl, 69                   ; 2 uses
  %i.bn = zext i1 %i.bm to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !16451
  store i64 %i.bn, ptr %i.r, align 8, !noalias !16451
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !16451
  br i1 %i.bm, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef align 8 dereferenceable(72) %1) #57
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bp = load i64, ptr %i.bo, align 8, !range !4, !noundef !3
  %i.bq = icmp ne i64 %i.bp, -9223372036854775808 ; 2 uses
  %i.br = zext i1 %i.bq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !16456
  store i64 %i.br, ptr %i.q, align 8, !noalias !16456
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !16456
  br i1 %i.bq, label %bb.f, label %_RINvXs1i_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB7_15TriggerExecBodyNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16461)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.val.i = load i8, ptr %i.bs, align 8, !range !135, !alias.scope !16461, !noalias !16464, !noundef !3
  %i.bt = zext nneg i8 %.val.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !16466
  store i64 %i.bt, ptr %i.p, align 8, !noalias !16466
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 8) #57, !noalias !16461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !16466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16473)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 456
  %.val.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !16476, !noalias !16477, !nonnull !3, !noundef !3
end_hunk_9
begin_hunk_10_@_RINvXsbR_NtCs4lawaffTVVK_9sqlparser3astNtB7_3SetNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jt = load ptr, ptr %i.js, align 16, !alias.scope !19868, !noalias !19840, !nonnull !3, !align !65, !noundef !3
  %i.ju = load i64, ptr %i.jt, align 8, !noalias !19869, !noundef !3
  %i.jv = zext i64 %i.jr to i128
  %i.jw = zext i64 %i.ju to i128
  %i.jx = xor i128 %i.jo, %i.jw
  %i.jy = mul nuw i128 %i.jx, %i.jv               ; 2 uses
  %i.jz = lshr i128 %i.jy, 64
  %i.ka = xor i128 %i.jz, %i.jy
  %i.kb = trunc i128 %i.ka to i64
  store i64 %i.kb, ptr %i.jp, align 8, !alias.scope !19868, !noalias !19840
  %i.kc = zext nneg i8 %.val2.i.i to i128
  br label %_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.ag:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19873)
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !alias.scope !19875, !noalias !19876, !nonnull !3, !noundef !3
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kg = load i64, ptr %i.kf, align 8, !alias.scope !19875, !noalias !19876, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19883)
  br i1 %i.ee, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kh = zext i64 %i.kg to i128
  %i.ki = shl nuw i128 %i.kh, 64
  %i.kj = or i128 %i.ki, %i.ey
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i4.i

bb.ai:                                            ; preds = %bb.ag
  %i.kk = trunc i128 %i.ey to i64
  %i.kl = lshr i128 %i.ey, 64
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.kn = load i64, ptr %i.km, align 8, !alias.scope !19886, !noalias !19875, !noundef !3
  %i.ko = xor i64 %i.kn, %i.kk
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kq = load ptr, ptr %i.kp, align 16, !alias.scope !19886, !noalias !19875, !nonnull !3, !align !65, !noundef !3
  %i.kr = load i64, ptr %i.kq, align 8, !noalias !19887, !noundef !3
  %i.ks = zext i64 %i.ko to i128
  %i.kt = zext i64 %i.kr to i128
  %i.ku = xor i128 %i.kl, %i.kt
  %i.kv = mul nuw i128 %i.ku, %i.ks               ; 2 uses
  %i.kw = lshr i128 %i.kv, 64
  %i.kx = xor i128 %i.kw, %i.kv
  %i.ky = trunc i128 %i.kx to i64
  store i64 %i.ky, ptr %i.km, align 8, !alias.scope !19886, !noalias !19875
  %i.kz = zext i64 %i.kg to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i4.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i4.i: ; preds = %bb.ai, %bb.ah
  %.sink.i.i5.i = phi i128 [ %i.kz, %bb.ai ], [ %i.kj, %bb.ah ]
  %storemerge.i.i.i.i6.i = phi i8 [ 64, %bb.ai ], [ -128, %bb.ah ]
  store i128 %.sink.i.i5.i, ptr %1, align 16, !alias.scope !19886, !noalias !19875
  store i8 %storemerge.i.i.i.i6.i, ptr %i.f, align 16, !alias.scope !19886, !noalias !19875
  tail call void @_RINvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ke, i64 noundef %i.kg, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !19875
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lb = load i8, ptr %i.la, align 8, !range !135, !alias.scope !19875, !noalias !19876, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19891)
  %i.lc = load i8, ptr %i.f, align 16, !alias.scope !19894, !noalias !19875, !noundef !3 ; 3 uses
  %i.ld = icmp ugt i8 %i.lc, 64
  br i1 %i.ld, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i4.i
  %i.le = zext nneg i8 %i.lb to i128
  %i.lf = zext nneg i8 %i.lc to i128
  %i.lg = shl nuw nsw i128 %i.le, %i.lf
  %i.lh = load i128, ptr %1, align 16, !alias.scope !19894, !noalias !19875, !noundef !3
  %i.li = or i128 %i.lh, %i.lg
  %i.lj = add nuw i8 %i.lc, 64
  br label %_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.ak:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i4.i
  %i.lk = load i128, ptr %1, align 16, !alias.scope !19894, !noalias !19875, !noundef !3 ; 2 uses
  %i.ll = trunc i128 %i.lk to i64
  %i.lm = lshr i128 %i.lk, 64
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.lo = load i64, ptr %i.ln, align 8, !alias.scope !19894, !noalias !19875, !noundef !3
  %i.lp = xor i64 %i.lo, %i.ll
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lr = load ptr, ptr %i.lq, align 16, !alias.scope !19894, !noalias !19875, !nonnull !3, !align !65, !noundef !3
  %i.ls = load i64, ptr %i.lr, align 8, !noalias !19895, !noundef !3
  %i.lt = zext i64 %i.lp to i128
  %i.lu = zext i64 %i.ls to i128
  %i.lv = xor i128 %i.lm, %i.lu
  %i.lw = mul nuw i128 %i.lv, %i.lt               ; 2 uses
  %i.lx = lshr i128 %i.lw, 64
  %i.ly = xor i128 %i.lx, %i.lw
  %i.lz = trunc i128 %i.ly to i64
  store i64 %i.lz, ptr %i.ln, align 8, !alias.scope !19894, !noalias !19875
  %i.ma = zext nneg i8 %i.lb to i128
  br label %_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.al:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load i8, ptr %i.mb, align 8, !alias.scope !19774, !noalias !19777 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 17
  %.val1.i = load i8, ptr %i.mc, align 1, !range !864, !alias.scope !19774, !noalias !19777, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19902)
  br i1 %i.ee, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.md = trunc i128 %i.ey to i64
  %i.me = lshr i128 %i.ey, 64
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.mg = load i64, ptr %i.mf, align 8, !alias.scope !19905, !noalias !19774, !noundef !3
  %i.mh = xor i64 %i.mg, %i.md
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mj = load ptr, ptr %i.mi, align 16, !alias.scope !19905, !noalias !19774, !nonnull !3, !align !65, !noundef !3
  %i.mk = load i64, ptr %i.mj, align 8, !noalias !19906, !noundef !3
  %i.ml = zext i64 %i.mh to i128
  %i.mm = zext i64 %i.mk to i128
  %i.mn = xor i128 %i.me, %i.mm
  %i.mo = mul nuw i128 %i.mn, %i.ml               ; 2 uses
  %i.mp = lshr i128 %i.mo, 64
  %i.mq = xor i128 %i.mp, %i.mo
  %i.mr = trunc i128 %i.mq to i64
  store i64 %i.mr, ptr %i.mf, align 8, !alias.scope !19905, !noalias !19774
  %i.ms = zext nneg i8 %.val1.i to i128
  %i.mt = zext i8 %.val.i to i128
  %i.mu = shl nuw nsw i128 %i.mt, 64
  %i.mv = or disjoint i128 %i.mu, %i.ms
  br label %_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.an:                                            ; preds = %bb.al
  %i.mw = zext nneg i8 %.val1.i to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19910)
  %i.mx = trunc i128 %i.ey to i64
  %i.my = lshr i128 %i.ey, 64
  %i.mz = or i128 %i.my, %i.mw
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.nb = load i64, ptr %i.na, align 8, !alias.scope !19913, !noalias !19774, !noundef !3
  %i.nc = xor i64 %i.nb, %i.mx
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ne = load ptr, ptr %i.nd, align 16, !alias.scope !19913, !noalias !19774, !nonnull !3, !align !65, !noundef !3
  %i.nf = load i64, ptr %i.ne, align 8, !noalias !19914, !noundef !3
  %i.ng = zext i64 %i.nc to i128
  %i.nh = zext i64 %i.nf to i128
  %i.ni = xor i128 %i.mz, %i.nh
  %i.nj = mul nuw i128 %i.ni, %i.ng               ; 2 uses
  %i.nk = lshr i128 %i.nj, 64
  %i.nl = xor i128 %i.nk, %i.nj
  %i.nm = trunc i128 %i.nl to i64
  store i64 %i.nm, ptr %i.na, align 8, !alias.scope !19913, !noalias !19774
  %i.nn = zext i8 %.val.i to i128
  br label %_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.z, %bb.aa, %bb.ae, %bb.af, %bb.aj, %bb.ak, %bb.am, %bb.an
  %storemerge.i.sink.i = phi i128 [ %i.li, %bb.aj ], [ %i.jk, %bb.ae ], [ %i.hu, %bb.z ], [ 255, %bb.aa ], [ %i.kc, %bb.af ], [ %i.ma, %bb.ak ], [ %i.nn, %bb.an ], [ %i.mv, %bb.am ]
  %storemerge.i.i.i8.sink.i = phi i8 [ %i.lj, %bb.aj ], [ %i.jl, %bb.ae ], [ %i.hv, %bb.z ], [ 8, %bb.aa ], [ 64, %bb.af ], [ 64, %bb.ak ], [ 64, %bb.an ], [ -128, %bb.am ]
  store i128 %storemerge.i.sink.i, ptr %1, align 16, !alias.scope !19777, !noalias !19774
  store i8 %storemerge.i.i.i8.sink.i, ptr %i.f, align 16, !alias.scope !19777, !noalias !19774
  br label %bb.ba

bb.ao:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.np = load i8, ptr %i.no, align 8, !range !864, !noundef !3 ; 3 uses
  %i.nq = icmp ne i8 %i.np, 3                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19918)
  %i.nr = icmp ugt i8 %storemerge.i.i9, 64
  br i1 %i.nr, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %bb.ao
  %i.ns = select i1 %i.nq, i128 18446744073709551616, i128 0
  %i.nt = or i128 %i.af, %i.ns                    ; 3 uses
  store i128 %i.nt, ptr %1, align 16, !alias.scope !19921
  store i8 -128, ptr %i.f, align 16, !alias.scope !19921
  br i1 %i.nq, label %bb.be, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !19922
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre79 = load ptr, ptr %.phi.trans.insert78, align 16, !alias.scope !19922
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread: ; preds = %bb.ao
  %i.nu = trunc i128 %i.af to i64
  %i.nv = lshr i128 %i.af, 64
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 8, !alias.scope !19921, !noundef !3
  %i.ny = xor i64 %i.nx, %i.nu
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.oa = load ptr, ptr %i.nz, align 16, !alias.scope !19921, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.ob = load i64, ptr %i.oa, align 8, !noalias !19921, !noundef !3
  %i.oc = zext i64 %i.ny to i128
  %i.od = zext i64 %i.ob to i128
  %i.oe = xor i128 %i.nv, %i.od
  %i.of = mul nuw i128 %i.oe, %i.oc               ; 2 uses
  %i.og = lshr i128 %i.of, 64
  %i.oh = xor i128 %i.og, %i.of
  %i.oi = trunc i128 %i.oh to i64                 ; 2 uses
  store i64 %i.oi, ptr %i.nw, align 8, !alias.scope !19921
  %i.oj = zext i1 %i.nq to i128
  store i128 %i.oj, ptr %1, align 16, !alias.scope !19921
  store i8 64, ptr %i.f, align 16, !alias.scope !19921
  br i1 %i.nq, label %.thread67, label %.thread66

bb.ap:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ol = load i8, ptr %i.ok, align 8, !range !135, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19930)
  %i.om = icmp ugt i8 %storemerge.i.i9, 120
  br i1 %i.om, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.on = zext nneg i8 %i.ol to i128
  %i.oo = zext nneg i8 %storemerge.i.i9 to i128
  %i.op = shl nuw nsw i128 %i.on, %i.oo
  %i.oq = or i128 %i.af, %i.op
  %i.or = add nuw i8 %storemerge.i.i9, 8
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit15

bb.ar:                                            ; preds = %bb.ap
  %i.os = trunc i128 %i.af to i64
  %i.ot = lshr i128 %i.af, 64
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ov = load i64, ptr %i.ou, align 8, !alias.scope !19933, !noundef !3
  %i.ow = xor i64 %i.ov, %i.os
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.oy = load ptr, ptr %i.ox, align 16, !alias.scope !19933, !nonnull !3, !align !65, !noundef !3
  %i.oz = load i64, ptr %i.oy, align 8, !noalias !19933, !noundef !3
  %i.pa = zext i64 %i.ow to i128
  %i.pb = zext i64 %i.oz to i128
  %i.pc = xor i128 %i.ot, %i.pb
  %i.pd = mul nuw i128 %i.pc, %i.pa               ; 2 uses
  %i.pe = lshr i128 %i.pd, 64
  %i.pf = xor i128 %i.pe, %i.pd
  %i.pg = trunc i128 %i.pf to i64
  store i64 %i.pg, ptr %i.ou, align 8, !alias.scope !19933
  %i.ph = zext nneg i8 %i.ol to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit15

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit15: ; preds = %bb.aq, %bb.ar
  %.sink74 = phi i128 [ %i.ph, %bb.ar ], [ %i.oq, %bb.aq ]
  %storemerge.i.i14 = phi i8 [ 8, %bb.ar ], [ %i.or, %bb.aq ]
  store i128 %.sink74, ptr %1, align 16, !alias.scope !19933
  store i8 %storemerge.i.i14, ptr %i.f, align 16, !alias.scope !19933
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  br label %bb.ba

bb.as:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.pi, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.pk = load i64, ptr %i.pj, align 8, !range !4, !noundef !3
  %i.pl = icmp ne i64 %i.pk, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19937)
  %i.pm = load i8, ptr %i.f, align 16, !alias.scope !19940, !noundef !3 ; 3 uses
  %i.pn = icmp ugt i8 %i.pm, 64
  br i1 %i.pn, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.po = zext i1 %i.pl to i128
  %i.pp = zext nneg i8 %i.pm to i128
  %i.pq = shl nuw nsw i128 %i.po, %i.pp
  %i.pr = load i128, ptr %1, align 16, !alias.scope !19940, !noundef !3
  %i.ps = or i128 %i.pr, %i.pq
  %i.pt = add nuw i8 %i.pm, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

bb.au:                                            ; preds = %bb.as
  %i.pu = load i128, ptr %1, align 16, !alias.scope !19940, !noundef !3 ; 2 uses
  %i.pv = trunc i128 %i.pu to i64
  %i.pw = lshr i128 %i.pu, 64
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.py = load i64, ptr %i.px, align 8, !alias.scope !19940, !noundef !3
  %i.pz = xor i64 %i.py, %i.pv
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qb = load ptr, ptr %i.qa, align 16, !alias.scope !19940, !nonnull !3, !align !65, !noundef !3
  %i.qc = load i64, ptr %i.qb, align 8, !noalias !19940, !noundef !3
  %i.qd = zext i64 %i.pz to i128
  %i.qe = zext i64 %i.qc to i128
  %i.qf = xor i128 %i.pw, %i.qe
  %i.qg = mul nuw i128 %i.qf, %i.qd               ; 2 uses
  %i.qh = lshr i128 %i.qg, 64
  %i.qi = xor i128 %i.qh, %i.qg
  %i.qj = trunc i128 %i.qi to i64
  store i64 %i.qj, ptr %i.px, align 8, !alias.scope !19940
  %i.qk = zext i1 %i.pl to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %bb.at, %bb.au
  %.sink75 = phi i128 [ %i.qk, %bb.au ], [ %i.ps, %bb.at ]
  %storemerge.i.i3 = phi i8 [ 64, %bb.au ], [ %i.pt, %bb.at ] ; 4 uses
  store i128 %.sink75, ptr %1, align 16, !alias.scope !19940
  store i8 %storemerge.i.i3, ptr %i.f, align 16, !alias.scope !19940
  br i1 %i.pl, label %bb.bg, label %bb.ba

bb.av:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qm = load ptr, ptr %i.ql, align 8, !nonnull !3, !noundef !3
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qo = load i64, ptr %i.qn, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19947)
  %i.qp = icmp ugt i8 %storemerge.i.i9, 64
  br i1 %i.qp, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.qq = zext i64 %i.qo to i128
  %i.qr = shl nuw i128 %i.qq, 64
  %i.qs = or i128 %i.af, %i.qr
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit28

bb.ax:                                            ; preds = %bb.av
  %i.qt = trunc i128 %i.af to i64
  %i.qu = lshr i128 %i.af, 64
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.qw = load i64, ptr %i.qv, align 8, !alias.scope !19950, !noundef !3
  %i.qx = xor i64 %i.qw, %i.qt
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qz = load ptr, ptr %i.qy, align 16, !alias.scope !19950, !nonnull !3, !align !65, !noundef !3
  %i.ra = load i64, ptr %i.qz, align 8, !noalias !19950, !noundef !3
  %i.rb = zext i64 %i.qx to i128
  %i.rc = zext i64 %i.ra to i128
  %i.rd = xor i128 %i.qu, %i.rc
  %i.re = mul nuw i128 %i.rd, %i.rb               ; 2 uses
  %i.rf = lshr i128 %i.re, 64
  %i.rg = xor i128 %i.rf, %i.re
  %i.rh = trunc i128 %i.rg to i64
  store i64 %i.rh, ptr %i.qv, align 8, !alias.scope !19950
  %i.ri = zext i64 %i.qo to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit28

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit28: ; preds = %bb.aw, %bb.ax
  %.sink.i26 = phi i128 [ %i.ri, %bb.ax ], [ %i.qs, %bb.aw ]
  %storemerge.i.i.i27 = phi i8 [ 64, %bb.ax ], [ -128, %bb.aw ]
  store i128 %.sink.i26, ptr %1, align 16, !alias.scope !19950
  store i8 %storemerge.i.i.i27, ptr %i.f, align 16, !alias.scope !19950
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast15TransactionModeNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.qm, i64 noundef %i.qo, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.rk = load i64, ptr %i.rj, align 8, !range !409, !noundef !3
  %i.rl = icmp ne i64 %i.rk, -9223372036854775787 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19954)
  %i.rm = load i8, ptr %i.f, align 16, !alias.scope !19957, !noundef !3 ; 3 uses
  %i.rn = icmp ugt i8 %i.rm, 64
  br i1 %i.rn, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit28
  %i.ro = zext i1 %i.rl to i128
  %i.rp = zext nneg i8 %i.rm to i128
  %i.rq = shl nuw nsw i128 %i.ro, %i.rp
  %i.rr = load i128, ptr %1, align 16, !alias.scope !19957, !noundef !3
  %i.rs = or i128 %i.rr, %i.rq
  %i.rt = add nuw i8 %i.rm, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

bb.az:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit28
  %i.ru = load i128, ptr %1, align 16, !alias.scope !19957, !noundef !3 ; 2 uses
  %i.rv = trunc i128 %i.ru to i64
  %i.rw = lshr i128 %i.ru, 64
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ry = load i64, ptr %i.rx, align 8, !alias.scope !19957, !noundef !3
  %i.rz = xor i64 %i.ry, %i.rv
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sb = load ptr, ptr %i.sa, align 16, !alias.scope !19957, !nonnull !3, !align !65, !noundef !3
  %i.sc = load i64, ptr %i.sb, align 8, !noalias !19957, !noundef !3
  %i.sd = zext i64 %i.rz to i128
  %i.se = zext i64 %i.sc to i128
  %i.sf = xor i128 %i.rw, %i.se
  %i.sg = mul nuw i128 %i.sf, %i.sd               ; 2 uses
  %i.sh = lshr i128 %i.sg, 64
  %i.si = xor i128 %i.sh, %i.sg
  %i.sj = trunc i128 %i.si to i64
  store i64 %i.sj, ptr %i.rx, align 8, !alias.scope !19957
  %i.sk = zext i1 %i.rl to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %bb.ay, %bb.az
  %.sink76 = phi i128 [ %i.sk, %bb.az ], [ %i.rs, %bb.ay ]
  %storemerge.i.i1 = phi i8 [ 64, %bb.az ], [ %i.rt, %bb.ay ] ; 2 uses
  store i128 %.sink76, ptr %1, align 16, !alias.scope !19957
  store i8 %storemerge.i.i1, ptr %i.f, align 16, !alias.scope !19957
  br i1 %i.rl, label %bb.bo, label %bb.bp

bb.ba:                                            ; preds = %.thread66, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, %bb.bf, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit36, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit15, %_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit24, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit21, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  ret void

.thread50:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread
  %i.sl = zext nneg i8 %i.ah to i128
  %i.sm = shl nuw nsw i128 %i.sl, 64
  %i.sn = or disjoint i128 %i.sm, 1               ; 2 uses
  store i128 %i.sn, ptr %1, align 16, !alias.scope !19958
  store i8 -128, ptr %i.f, align 16, !alias.scope !19958
  br label %.thread48

bb.bb:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19967)
  %i.so = trunc i128 %i.af to i64
  %i.sp = lshr i128 %i.ak, 64
  %i.sq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.sr = load i64, ptr %i.sq, align 8, !alias.scope !19958, !noundef !3
  %i.ss = xor i64 %i.sr, %i.so
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.su = load ptr, ptr %i.st, align 16, !alias.scope !19958, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.sv = load i64, ptr %i.su, align 8, !noalias !19958, !noundef !3
  %i.sw = zext i64 %i.ss to i128
  %i.sx = zext i64 %i.sv to i128
  %i.sy = xor i128 %i.sp, %i.sx
  %i.sz = mul nuw i128 %i.sy, %i.sw               ; 2 uses
  %i.ta = lshr i128 %i.sz, 64
  %i.tb = xor i128 %i.ta, %i.sz
  %i.tc = trunc i128 %i.tb to i64                 ; 2 uses
  store i64 %i.tc, ptr %i.sq, align 8, !alias.scope !19958
  %i.td = zext nneg i8 %i.ah to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19969)
  br label %.thread49

.thread48:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8..thread48_crit_edge, %.thread50
  %i.te = phi ptr [ %.pre83, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8..thread48_crit_edge ], [ %i.ar, %.thread50 ]
  %i.tf = phi i64 [ %.pre81, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8..thread48_crit_edge ], [ %i.az, %.thread50 ]
  %i.tg = phi i128 [ %i.ak, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8..thread48_crit_edge ], [ %i.sn, %.thread50 ] ; 2 uses
  %.in73 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.th = load i8, ptr %.in73, align 8, !range !135, !noundef !3
  %i.ti = trunc i128 %i.tg to i64
  %i.tj = lshr i128 %i.tg, 64
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.tl = xor i64 %i.tf, %i.ti
  %i.tm = load i64, ptr %i.te, align 8, !noalias !19739, !noundef !3
  %i.tn = zext i64 %i.tl to i128
  %i.to = zext i64 %i.tm to i128
  %i.tp = xor i128 %i.tj, %i.to
  %i.tq = mul nuw i128 %i.tp, %i.tn               ; 2 uses
  %i.tr = lshr i128 %i.tq, 64
  %i.ts = xor i128 %i.tr, %i.tq
  %i.tt = trunc i128 %i.ts to i64
  store i64 %i.tt, ptr %i.tk, align 8, !alias.scope !19739
  %i.tu = zext nneg i8 %i.th to i128
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.tv, align 8, !nonnull !3, !noundef !3
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val16 = load i64, ptr %i.tw, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19982)
  %i.tx = zext i64 %.val16 to i128
  %i.ty = shl nuw nsw i128 %i.tx, 8
  %i.tz = or disjoint i128 %i.ty, %i.tu
  br label %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

.thread49:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread, %bb.bb
  %i.ua = phi ptr [ %i.ar, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread ], [ %i.su, %bb.bb ]
  %i.ub = phi i64 [ %i.az, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread ], [ %i.tc, %bb.bb ]
  %i.uc = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread ], [ %i.td, %bb.bb ] ; 2 uses
  %.in72 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ud = load i8, ptr %.in72, align 8, !range !135, !noundef !3
  %i.ue = zext nneg i8 %i.ud to i128              ; 2 uses
  %i.uf = shl nuw nsw i128 %i.ue, 64
  %i.ug = or disjoint i128 %i.uf, %i.uc
  store i128 %i.ug, ptr %1, align 16, !alias.scope !19739
  store i8 72, ptr %i.f, align 16, !alias.scope !19739
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val54 = load ptr, ptr %i.uh, align 8, !nonnull !3, !noundef !3
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1655 = load i64, ptr %i.ui, align 8, !noundef !3 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.uk = load i64, ptr %i.ua, align 8, !noalias !19985, !noundef !3
  %i.ul = zext i64 %i.ub to i128
  %i.um = xor i128 %i.uc, %i.ul
  %i.un = zext i64 %i.uk to i128
  %i.uo = xor i128 %i.ue, %i.un
  %i.up = mul nuw i128 %i.uo, %i.um               ; 2 uses
  %i.uq = lshr i128 %i.up, 64
  %i.ur = xor i128 %i.uq, %i.up
  %i.us = trunc i128 %i.ur to i64
  store i64 %i.us, ptr %i.uj, align 8, !alias.scope !19985
  %i.ut = zext i64 %.val1655 to i128
  br label %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.thread48, %.thread49
  %.val1658 = phi i64 [ %.val1655, %.thread49 ], [ %.val16, %.thread48 ]
  %.val56 = phi ptr [ %.val54, %.thread49 ], [ %.val, %.thread48 ]
  %.sink.i.i.i32 = phi i128 [ %i.ut, %.thread49 ], [ %i.tz, %.thread48 ]
  %storemerge.i.i.i.i.i33 = phi i8 [ 64, %.thread49 ], [ 72, %.thread48 ]
  store i128 %.sink.i.i.i32, ptr %1, align 16, !alias.scope !19985
  store i8 %storemerge.i.i.i.i.i33, ptr %i.f, align 16, !alias.scope !19985
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val56, i64 noundef %.val1658, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.uv = load ptr, ptr %i.uu, align 8, !nonnull !3, !noundef !3
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ux = load i64, ptr %i.uw, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19992)
  %i.uy = load i8, ptr %i.f, align 16, !alias.scope !19995, !noundef !3 ; 3 uses
  %i.uz = icmp ugt i8 %i.uy, 64
  br i1 %i.uz, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.va = zext i64 %i.ux to i128
  %i.vb = zext nneg i8 %i.uy to i128
  %i.vc = shl nuw i128 %i.va, %i.vb
  %i.vd = load i128, ptr %1, align 16, !alias.scope !19995, !noundef !3
  %i.ve = or i128 %i.vd, %i.vc
  %i.vf = add nuw i8 %i.uy, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit36

bb.bd:                                            ; preds = %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.vg = load i128, ptr %1, align 16, !alias.scope !19995, !noundef !3 ; 2 uses
  %i.vh = trunc i128 %i.vg to i64
  %i.vi = lshr i128 %i.vg, 64
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.vk = load i64, ptr %i.vj, align 8, !alias.scope !19995, !noundef !3
  %i.vl = xor i64 %i.vk, %i.vh
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.vn = load ptr, ptr %i.vm, align 16, !alias.scope !19995, !nonnull !3, !align !65, !noundef !3
  %i.vo = load i64, ptr %i.vn, align 8, !noalias !19995, !noundef !3
  %i.vp = zext i64 %i.vl to i128
  %i.vq = zext i64 %i.vo to i128
  %i.vr = xor i128 %i.vi, %i.vq
  %i.vs = mul nuw i128 %i.vr, %i.vp               ; 2 uses
  %i.vt = lshr i128 %i.vs, 64
  %i.vu = xor i128 %i.vt, %i.vs
  %i.vv = trunc i128 %i.vu to i64
  store i64 %i.vv, ptr %i.vj, align 8, !alias.scope !19995
  %i.vw = zext i64 %i.ux to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit36

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit36: ; preds = %bb.bc, %bb.bd
  %.sink.i34 = phi i128 [ %i.vw, %bb.bd ], [ %i.ve, %bb.bc ]
  %storemerge.i.i.i35 = phi i8 [ 64, %bb.bd ], [ %i.vf, %bb.bc ]
  store i128 %.sink.i34, ptr %1, align 16, !alias.scope !19995
  store i8 %storemerge.i.i.i35, ptr %i.f, align 16, !alias.scope !19995
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.uv, i64 noundef %i.ux, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %bb.ba

.thread67:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread
  %i.vx = zext nneg i8 %i.np to i128
  %i.vy = shl nuw nsw i128 %i.vx, 64
  %i.vz = or disjoint i128 %i.vy, 1               ; 2 uses
  store i128 %i.vz, ptr %1, align 16, !alias.scope !19996
  store i8 -128, ptr %i.f, align 16, !alias.scope !19996
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

bb.be:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20005)
  %i.wa = trunc i128 %i.af to i64
  %i.wb = lshr i128 %i.nt, 64
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.wd = load i64, ptr %i.wc, align 8, !alias.scope !19996, !noundef !3
  %i.we = xor i64 %i.wd, %i.wa
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.wg = load ptr, ptr %i.wf, align 16, !alias.scope !19996, !nonnull !3, !align !65, !noundef !3
  %i.wh = load i64, ptr %i.wg, align 8, !noalias !19996, !noundef !3
  %i.wi = zext i64 %i.we to i128
  %i.wj = zext i64 %i.wh to i128
  %i.wk = xor i128 %i.wb, %i.wj
  %i.wl = mul nuw i128 %i.wk, %i.wi               ; 2 uses
  %i.wm = lshr i128 %i.wl, 64
  %i.wn = xor i128 %i.wm, %i.wl
  %i.wo = trunc i128 %i.wn to i64
  store i64 %i.wo, ptr %i.wc, align 8, !alias.scope !19996
  %i.wp = zext nneg i8 %i.np to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20007)
  br label %.thread66

.thread66:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread, %bb.be
  %i.wq = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread ], [ %i.wp, %bb.be ]
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.in = load i64, ptr %i.wr, align 8, !range !4, !noundef !3
  %.not = icmp eq i64 %.in, -9223372036854775808  ; 2 uses
  %i.ws = select i1 %.not, i128 0, i128 18446744073709551616
  %i.wt = or disjoint i128 %i.ws, %i.wq
  store i128 %i.wt, ptr %1, align 16, !alias.scope !19922
  store i8 -128, ptr %i.f, align 16, !alias.scope !19922
  br i1 %.not, label %bb.ba, label %bb.bf

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge, %.thread67
  %i.wu = phi ptr [ %.pre79, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge ], [ %i.oa, %.thread67 ]
  %i.wv = phi i64 [ %.pre, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge ], [ %i.oi, %.thread67 ]
  %i.ww = phi i128 [ %i.nt, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge ], [ %i.vz, %.thread67 ] ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.in71 = load i64, ptr %i.wx, align 8, !range !4, !noundef !3
  %i.wy = icmp ne i64 %.in71, -9223372036854775808 ; 2 uses
  %i.wz = trunc i128 %i.ww to i64
  %i.xa = lshr i128 %i.ww, 64
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.xc = xor i64 %i.wv, %i.wz
  %i.xd = load i64, ptr %i.wu, align 8, !noalias !19922, !noundef !3
  %i.xe = zext i64 %i.xc to i128
  %i.xf = zext i64 %i.xd to i128
  %i.xg = xor i128 %i.xa, %i.xf
  %i.xh = mul nuw i128 %i.xg, %i.xe               ; 2 uses
  %i.xi = lshr i128 %i.xh, 64
  %i.xj = xor i128 %i.xi, %i.xh
  %i.xk = trunc i128 %i.xj to i64
  store i64 %i.xk, ptr %i.xb, align 8, !alias.scope !19922
  %i.xl = zext i1 %i.wy to i128
  store i128 %i.xl, ptr %1, align 16, !alias.scope !19922
  store i8 64, ptr %i.f, align 16, !alias.scope !19922
  br i1 %i.wy, label %bb.bf, label %bb.ba

bb.bf:                                            ; preds = %.thread66, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.xm = phi ptr [ %i.wr, %.thread66 ], [ %i.wx, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit ]
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.xm, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %bb.ba

bb.bg:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.xo = load ptr, ptr %i.xn, align 8, !nonnull !3, !noundef !3 ; 8 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.xq = load i64, ptr %i.xp, align 8, !noundef !3 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20016)
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.xs = load i64, ptr %i.xr, align 8, !alias.scope !20018, !noalias !20019, !noundef !3 ; 2 uses
  %i.xt = tail call noundef i64 @llvm.fshr.i64(i64 %i.xs, i64 %i.xs, i64 %i.xq) ; 6 uses
  store i64 %i.xt, ptr %i.xr, align 8, !alias.scope !20018, !noalias !20019
  %i.xu = icmp samesign ult i64 %i.xq, 17
  %i.xv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xw = load ptr, ptr %i.xv, align 16, !alias.scope !20018, !noalias !20019, !nonnull !3, !align !65, !noundef !3 ; 3 uses
  br i1 %i.xu, label %bb.bi, label %bb.bh, !prof !708

bb.bh:                                            ; preds = %bb.bg
  %i.xx = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.xo, i64 noundef range(i64 0, -9223372036854775808) %i.xq, i64 noundef %i.xt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.xw) #58, !noalias !20018
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i

bb.bi:                                            ; preds = %bb.bg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20023)
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  %i.xz = load i64, ptr %i.xy, align 8, !alias.scope !20023, !noalias !20025, !noundef !3 ; 4 uses
  %i.ya = icmp samesign ugt i64 %i.xq, 7
  br i1 %i.ya, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.yb = icmp samesign ugt i64 %i.xq, 3
  br i1 %i.yb, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.bk

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.bi
  %.sroa.014.0.copyload.i.i.i = load i64, ptr %i.xo, align 1, !alias.scope !20026, !noalias !20027
  %i.yc = xor i64 %.sroa.014.0.copyload.i.i.i, %i.xt
  %i.yd = getelementptr i8, ptr %i.xo, i64 %i.xq
  %i.ye = getelementptr i8, ptr %i.yd, i64 -8
  %.sroa.016.0.copyload.i.i.i = load i64, ptr %i.ye, align 1, !alias.scope !20026, !noalias !20027
  %i.yf = xor i64 %.sroa.016.0.copyload.i.i.i, %i.xz
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i

bb.bk:                                            ; preds = %bb.bj
  %.not.i.i.i = icmp eq i64 %i.xq, 0
  br i1 %.not.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i, label %bb.bl

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.bj
  %i.yg = getelementptr i8, ptr %i.xo, i64 %i.xq
  %i.yh = getelementptr i8, ptr %i.yg, i64 -4
  %.sroa.019.0.copyload.i.i.i = load i32, ptr %i.yh, align 1, !alias.scope !20026, !noalias !20027
  %.sroa.018.0.copyload.i.i.i = load i32, ptr %i.xo, align 1, !alias.scope !20026, !noalias !20027
  %i.yi = zext i32 %.sroa.018.0.copyload.i.i.i to i64
  %i.yj = xor i64 %i.xt, %i.yi
  %i.yk = zext i32 %.sroa.019.0.copyload.i.i.i to i64
  %i.yl = xor i64 %i.xz, %i.yk
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.ym = load i8, ptr %i.xo, align 1, !alias.scope !20026, !noalias !20027, !noundef !3
  %i.yn = lshr i64 %i.xq, 1
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xo, i64 %i.yn
  %i.yp = load i8, ptr %i.yo, align 1, !alias.scope !20026, !noalias !20027, !noundef !3
  %i.yq = getelementptr i8, ptr %i.xo, i64 %i.xq
  %i.yr = getelementptr i8, ptr %i.yq, i64 -1
  %i.ys = load i8, ptr %i.yr, align 1, !alias.scope !20026, !noalias !20027, !noundef !3
  %i.yt = zext i8 %i.ym to i64
  %i.yu = xor i64 %i.xt, %i.yt
  %i.yv = zext i8 %i.ys to i64
  %i.yw = shl nuw nsw i64 %i.yv, 8
  %i.yx = zext i8 %i.yp to i64
  %i.yy = or disjoint i64 %i.yw, %i.yx
  %i.yz = xor i64 %i.yy, %i.xz
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i: ; preds = %bb.bl, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.bk, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.yf, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.yl, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.yz, %bb.bl ], [ %i.xz, %bb.bk ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.yc, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.yj, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.yu, %bb.bl ], [ %i.xt, %bb.bk ]
  %i.za = zext i64 %.sroa.0.0.i.i.i to i128
  %i.zb = zext i64 %.sroa.04.0.i.i.i to i128
  %i.zc = mul nuw i128 %i.za, %i.zb               ; 2 uses
  %i.zd = lshr i128 %i.zc, 64
  %i.ze = xor i128 %i.zd, %i.zc
  %i.zf = trunc i128 %i.ze to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i, %bb.bh
  %storemerge.i.i41 = phi i64 [ %i.xx, %bb.bh ], [ %i.zf, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i ] ; 2 uses
  store i64 %storemerge.i.i41, ptr %i.xr, align 8, !alias.scope !20018, !noalias !20019
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20031)
  %i.zg = icmp ugt i8 %storemerge.i.i3, 120
  br i1 %i.zg, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i
  %i.zh = zext nneg i8 %storemerge.i.i3 to i128
  %i.zi = shl nuw i128 255, %i.zh
  %i.zj = load i128, ptr %1, align 16, !alias.scope !20034, !noalias !20011, !noundef !3
  %i.zk = or i128 %i.zj, %i.zi
  %i.zl = add nuw i8 %storemerge.i.i3, 8
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit

bb.bn:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i
  %i.zm = load i128, ptr %1, align 16, !alias.scope !20034, !noalias !20011, !noundef !3 ; 2 uses
  %i.zn = trunc i128 %i.zm to i64
  %i.zo = lshr i128 %i.zm, 64
  %i.zp = xor i64 %storemerge.i.i41, %i.zn
  %i.zq = load i64, ptr %i.xw, align 8, !noalias !20034, !noundef !3
  %i.zr = zext i64 %i.zp to i128
  %i.zs = zext i64 %i.zq to i128
  %i.zt = xor i128 %i.zo, %i.zs
  %i.zu = mul nuw i128 %i.zt, %i.zr               ; 2 uses
  %i.zv = lshr i128 %i.zu, 64
  %i.zw = xor i128 %i.zv, %i.zu
  %i.zx = trunc i128 %i.zw to i64
  store i64 %i.zx, ptr %i.xr, align 8, !alias.scope !20034, !noalias !20011
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.bm, %bb.bn
  %.sink.i42 = phi i128 [ 255, %bb.bn ], [ %i.zk, %bb.bm ]
  %storemerge.i.i.i43 = phi i8 [ 8, %bb.bn ], [ %i.zl, %bb.bm ]
  store i128 %.sink.i42, ptr %1, align 16, !alias.scope !20034, !noalias !20011
  store i8 %storemerge.i.i.i43, ptr %i.f, align 16, !alias.scope !20034, !noalias !20011
  br label %bb.ba

bb.bo:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.rj, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  %.pr = load i8, ptr %i.f, align 16, !alias.scope !20035
  br label %bb.bp

end_hunk_10
begin_hunk_11_@_RINvXsit_NtCs4lawaffTVVK_9sqlparser3astNtB7_8FunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  ]

bb.k:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i8
  unreachable

bb.l:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !24942, !noalias !24945, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs1z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5QueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.dv, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !noalias !24942, !inline_history !24941
  br label %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit10thread-pre-split

bb.m:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i8
  tail call fastcc void @_RINvXsiN_NtCs4lawaffTVVK_9sqlparser3astNtB7_20FunctionArgumentListNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cq, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #57, !inline_history !24941
  br label %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit10thread-pre-split

_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit10thread-pre-split: ; preds = %bb.m, %bb.l
  %.pr = load i8, ptr %i.c, align 16, !alias.scope !24955
  br label %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit10

_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit10: ; preds = %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit10thread-pre-split, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i8
  %i.dw = phi i8 [ %.pr, %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit10thread-pre-split ], [ %storemerge.i.i.i9, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i8 ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dy = load ptr, ptr %i.dx, align 8, !align !65, !noundef !3 ; 2 uses
  %i.dz = icmp ne ptr %i.dy, null                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24961)
  %i.ea = icmp ugt i8 %i.dw, 64
  br i1 %i.ea, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit10
  %i.eb = zext i1 %i.dz to i128
  %i.ec = zext nneg i8 %i.dw to i128
  %i.ed = shl nuw nsw i128 %i.eb, %i.ec
  %i.ee = load i128, ptr %1, align 16, !alias.scope !24955, !noundef !3
  %i.ef = or i128 %i.ee, %i.ed
  %i.eg = add nuw i8 %i.dw, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

bb.o:                                             ; preds = %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit10
  %i.eh = load i128, ptr %1, align 16, !alias.scope !24955, !noundef !3 ; 2 uses
  %i.ei = trunc i128 %i.eh to i64
  %i.ej = lshr i128 %i.eh, 64
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !24955, !noundef !3
  %i.em = xor i64 %i.el, %i.ei
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eo = load ptr, ptr %i.en, align 16, !alias.scope !24955, !nonnull !3, !align !65, !noundef !3
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !24955, !noundef !3
  %i.eq = zext i64 %i.em to i128
  %i.er = zext i64 %i.ep to i128
  %i.es = xor i128 %i.ej, %i.er
  %i.et = mul nuw i128 %i.es, %i.eq               ; 2 uses
  %i.eu = lshr i128 %i.et, 64
  %i.ev = xor i128 %i.eu, %i.et
  %i.ew = trunc i128 %i.ev to i64
  store i64 %i.ew, ptr %i.ek, align 8, !alias.scope !24955
  %i.ex = zext i1 %i.dz to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %bb.n, %bb.o
  %.sink45 = phi i128 [ %i.ex, %bb.o ], [ %i.ef, %bb.n ]
  %storemerge.i.i3 = phi i8 [ 64, %bb.o ], [ %i.eg, %bb.n ] ; 2 uses
  store i128 %.sink45, ptr %1, align 16, !alias.scope !24955
  store i8 %storemerge.i.i3, ptr %i.c, align 16, !alias.scope !24955
  br i1 %i.dz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.dy, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  %.pr24 = load i8, ptr %i.c, align 16, !alias.scope !24962
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.ey = phi i8 [ %.pr24, %bb.p ], [ %storemerge.i.i3, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ] ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.fa = load i8, ptr %i.ez, align 1, !range !120, !noundef !3 ; 3 uses
  %i.fb = icmp ne i8 %i.fa, 2                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24968)
  %i.fc = icmp ugt i8 %i.ey, 64
  br i1 %i.fc, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %bb.q
  %i.fd = zext i1 %i.fb to i128
  %i.fe = zext nneg i8 %i.ey to i128
  %i.ff = shl nuw nsw i128 %i.fd, %i.fe
  %i.fg = load i128, ptr %1, align 16, !alias.scope !24962, !noundef !3
  %i.fh = or i128 %i.fg, %i.ff                    ; 5 uses
  store i128 %i.fh, ptr %1, align 16, !alias.scope !24962
  %i.fi = add nuw i8 %i.ey, 64                    ; 2 uses
  store i8 %i.fi, ptr %i.c, align 16, !alias.scope !24962
  br i1 %i.fb, label %bb.r, label %bb.t

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread: ; preds = %bb.q
  %i.fj = load i128, ptr %1, align 16, !alias.scope !24962, !noundef !3 ; 2 uses
  %i.fk = trunc i128 %i.fj to i64
  %i.fl = lshr i128 %i.fj, 64
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !24962, !noundef !3
  %i.fo = xor i64 %i.fn, %i.fk
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fq = load ptr, ptr %i.fp, align 16, !alias.scope !24962, !nonnull !3, !align !65, !noundef !3
  %i.fr = load i64, ptr %i.fq, align 8, !noalias !24962, !noundef !3
  %i.fs = zext i64 %i.fo to i128
  %i.ft = zext i64 %i.fr to i128
  %i.fu = xor i128 %i.fl, %i.ft
  %i.fv = mul nuw i128 %i.fu, %i.fs               ; 2 uses
  %i.fw = lshr i128 %i.fv, 64
  %i.fx = xor i128 %i.fw, %i.fv
  %i.fy = trunc i128 %i.fx to i64
  store i64 %i.fy, ptr %i.fm, align 8, !alias.scope !24962
  %i.fz = zext i1 %i.fb to i128                   ; 2 uses
  store i128 %i.fz, ptr %1, align 16, !alias.scope !24962
  store i8 64, ptr %i.c, align 16, !alias.scope !24962
  br i1 %i.fb, label %.thread, label %.thread29

.thread29:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread
  %i.ga = load i64, ptr %0, align 8, !range !1175, !noundef !3 ; 2 uses
  %.not62 = icmp eq i64 %i.ga, 5                  ; 2 uses
  %i.gb = select i1 %.not62, i128 0, i128 18446744073709551616
  %i.gc = or disjoint i128 %i.gb, %i.fz           ; 2 uses
  store i128 %i.gc, ptr %1, align 16, !alias.scope !24969
  store i8 -128, ptr %i.c, align 16, !alias.scope !24969
  br i1 %.not62, label %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i13

bb.r:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24980)
  %.not = icmp eq i8 %i.ey, 0
  br i1 %.not, label %.thread, label %bb.s

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread, %bb.r
  %i.gd = phi i128 [ 1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread ], [ %i.fh, %bb.r ]
  %i.ge = zext nneg i8 %i.fa to i128
  %i.gf = shl nuw nsw i128 %i.ge, 64
  %i.gg = or i128 %i.gd, %i.gf
  br label %_RINvXs8n_NtCs4lawaffTVVK_9sqlparser3astNtB7_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  %i.gh = trunc i128 %i.fh to i64
  %i.gi = lshr i128 %i.fh, 64
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !24983, !noundef !3
  %i.gl = xor i64 %i.gk, %i.gh
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gn = load ptr, ptr %i.gm, align 16, !alias.scope !24983, !nonnull !3, !align !65, !noundef !3
  %i.go = load i64, ptr %i.gn, align 8, !noalias !24983, !noundef !3
  %i.gp = zext i64 %i.gl to i128
  %i.gq = zext i64 %i.go to i128
  %i.gr = xor i128 %i.gi, %i.gq
  %i.gs = mul nuw i128 %i.gr, %i.gp               ; 2 uses
  %i.gt = lshr i128 %i.gs, 64
  %i.gu = xor i128 %i.gt, %i.gs
  %i.gv = trunc i128 %i.gu to i64
  store i64 %i.gv, ptr %i.gj, align 8, !alias.scope !24983
  %i.gw = zext nneg i8 %i.fa to i128
  br label %_RINvXs8n_NtCs4lawaffTVVK_9sqlparser3astNtB7_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs8n_NtCs4lawaffTVVK_9sqlparser3astNtB7_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.thread, %bb.s
  %.sink.i = phi i128 [ %i.gw, %bb.s ], [ %i.gg, %.thread ] ; 2 uses
  %storemerge.i.i.i12 = phi i8 [ 64, %bb.s ], [ -128, %.thread ] ; 2 uses
  store i128 %.sink.i, ptr %1, align 16, !alias.scope !24983
  store i8 %storemerge.i.i.i12, ptr %i.c, align 16, !alias.scope !24983
  br label %bb.t

bb.t:                                             ; preds = %_RINvXs8n_NtCs4lawaffTVVK_9sqlparser3astNtB7_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.gx = phi i128 [ %i.fh, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2 ], [ %.sink.i, %_RINvXs8n_NtCs4lawaffTVVK_9sqlparser3astNtB7_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 4 uses
  %i.gy = phi i8 [ %i.fi, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2 ], [ %storemerge.i.i.i12, %_RINvXs8n_NtCs4lawaffTVVK_9sqlparser3astNtB7_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.gz = load i64, ptr %0, align 8, !range !1175, !noundef !3 ; 5 uses
  %i.ha = icmp ne i64 %i.gz, 5                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24985)
  %i.hb = icmp ugt i8 %i.gy, 64
  br i1 %i.hb, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hc = select i1 %i.ha, i128 18446744073709551616, i128 0
  %i.hd = or i128 %i.gx, %i.hc                    ; 2 uses
  store i128 %i.hd, ptr %1, align 16, !alias.scope !24969
  store i8 -128, ptr %i.c, align 16, !alias.scope !24969
  %extract.t = trunc i128 %i.gx to i64
  br i1 %i.ha, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i13, label %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.t
  %i.he = trunc i128 %i.gx to i64
  %i.hf = lshr i128 %i.gx, 64
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !24969, !noundef !3
  %i.hi = xor i64 %i.hh, %i.he
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hk = load ptr, ptr %i.hj, align 16, !alias.scope !24969, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !noalias !24969, !noundef !3
  %i.hm = zext i64 %i.hi to i128
  %i.hn = zext i64 %i.hl to i128
  %i.ho = xor i128 %i.hf, %i.hn
  %i.hp = mul nuw i128 %i.ho, %i.hm               ; 2 uses
  %i.hq = lshr i128 %i.hp, 64
  %i.hr = xor i128 %i.hq, %i.hp
  %i.hs = trunc i128 %i.hr to i64                 ; 2 uses
  store i64 %i.hs, ptr %i.hg, align 8, !alias.scope !24969
  %i.ht = zext i1 %i.ha to i128
  store i128 %i.ht, ptr %1, align 16, !alias.scope !24969
  store i8 64, ptr %i.c, align 16, !alias.scope !24969
  br i1 %i.ha, label %bb.v, label %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.v:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24986)
  %i.hu = icmp eq i64 %i.gz, 4                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24992)
  %i.hv = select i1 %i.hu, i128 18446744073709551617, i128 1
  store i128 %i.hv, ptr %1, align 16, !alias.scope !24995, !noalias !24996
  store i8 -128, ptr %i.c, align 16, !alias.scope !24995, !noalias !24996
  br i1 %i.hu, label %bb.w, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i13: ; preds = %.thread29, %bb.u
  %i.hw = phi i128 [ %i.gc, %.thread29 ], [ %i.hd, %bb.u ]
  %i.hx = phi i64 [ %i.ga, %.thread29 ], [ %i.gz, %bb.u ] ; 3 uses
  %.off0 = phi i64 [ 0, %.thread29 ], [ %extract.t, %bb.u ]
  %i.hy = icmp eq i64 %i.hx, 4                    ; 2 uses
  %i.hz = lshr i128 %i.hw, 64
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !24995, !noalias !24996, !noundef !3
  %i.ic = xor i64 %i.ib, %.off0
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ie = load ptr, ptr %i.id, align 16, !alias.scope !24995, !noalias !24996, !nonnull !3, !align !65, !noundef !3
  %i.if = load i64, ptr %i.ie, align 8, !noalias !24998, !noundef !3
  %i.ig = zext i64 %i.ic to i128
  %i.ih = zext i64 %i.if to i128
  %i.ii = xor i128 %i.hz, %i.ih
  %i.ij = mul nuw i128 %i.ii, %i.ig               ; 2 uses
  %i.ik = lshr i128 %i.ij, 64
  %i.il = xor i128 %i.ik, %i.ij
  %i.im = trunc i128 %i.il to i64
  store i64 %i.im, ptr %i.ia, align 8, !alias.scope !24995, !noalias !24996
  %i.in = zext i1 %i.hy to i128
  store i128 %i.in, ptr %1, align 16, !alias.scope !24995, !noalias !24996
  store i8 64, ptr %i.c, align 16, !alias.scope !24995, !noalias !24996
  br i1 %i.hy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i13
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.io, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !inline_history !24999
  br label %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25003)
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !range !4, !alias.scope !25000, !noalias !25003, !noundef !3
  %.not43 = icmp eq i64 %i.iq, -9223372036854775808 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25008)
  %i.ir = select i1 %.not43, i128 0, i128 18446744073709551616
  store i128 %i.ir, ptr %1, align 16, !alias.scope !25011, !noalias !25000
  store i8 -128, ptr %i.c, align 16, !alias.scope !25011, !noalias !25000
  br i1 %.not43, label %.thread60, label %bb.y

.thread60:                                        ; preds = %bb.x
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.it = load ptr, ptr %i.is, align 8, !alias.scope !25000, !noalias !25003, !nonnull !3, !noundef !3
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.iv = load i64, ptr %i.iu, align 8, !alias.scope !25000, !noalias !25003, !noundef !3
  br label %bb.aa

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i: ; preds = %bb.v
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !range !4, !alias.scope !25012, !noalias !25014, !noundef !3
  %i.iy = icmp ne i64 %i.ix, -9223372036854775808 ; 2 uses
  %i.iz = xor i64 %i.hs, 1
  %i.ja = load i64, ptr %i.hk, align 8, !noalias !25016, !noundef !3
  %i.jb = zext i64 %i.iz to i128
  %i.jc = zext i64 %i.ja to i128
  %i.jd = mul nuw i128 %i.jc, %i.jb               ; 2 uses
  %i.je = lshr i128 %i.jd, 64
  %i.jf = xor i128 %i.je, %i.jd
  %i.jg = trunc i128 %i.jf to i64
  store i64 %i.jg, ptr %i.hg, align 8, !alias.scope !25011, !noalias !25000
  %i.jh = zext i1 %i.iy to i128
  store i128 %i.jh, ptr %1, align 16, !alias.scope !25011, !noalias !25000
  store i8 64, ptr %i.c, align 16, !alias.scope !25011, !noalias !25000
  br i1 %i.iy, label %bb.y, label %.thread61

.thread61:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jj = load ptr, ptr %i.ji, align 8, !alias.scope !25000, !noalias !25003, !nonnull !3, !noundef !3
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jl = load i64, ptr %i.jk, align 8, !alias.scope !25000, !noalias !25003, !noundef !3
  br label %bb.z

bb.y:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i, %bb.x
  %i.jm = phi i64 [ %i.hx, %bb.x ], [ %i.gz, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i ] ; 2 uses
  %i.jn = phi ptr [ %i.ip, %bb.x ], [ %i.iw, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i ]
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.jn, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !inline_history !25017
  %.pre = load i8, ptr %i.c, align 16, !alias.scope !25018, !noalias !25000 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jp = load ptr, ptr %i.jo, align 8, !alias.scope !25000, !noalias !25003, !nonnull !3, !noundef !3 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jr = load i64, ptr %i.jq, align 8, !alias.scope !25000, !noalias !25003, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25027)
  %i.js = icmp ugt i8 %.pre, 64
  br i1 %i.js, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.thread61, %bb.y
  %i.jt = phi i64 [ %i.jl, %.thread61 ], [ %i.jr, %bb.y ] ; 2 uses
  %i.ju = phi ptr [ %i.jj, %.thread61 ], [ %i.jp, %bb.y ]
  %i.jv = phi i64 [ %i.gz, %.thread61 ], [ %i.jm, %bb.y ]
  %i.jw = phi i8 [ 64, %.thread61 ], [ %.pre, %bb.y ] ; 2 uses
  %i.jx = zext i64 %i.jt to i128
  %i.jy = zext nneg i8 %i.jw to i128
  %i.jz = shl nuw i128 %i.jx, %i.jy
  %i.ka = load i128, ptr %1, align 16, !alias.scope !25018, !noalias !25000, !noundef !3
  %i.kb = or i128 %i.ka, %i.jz
  %i.kc = add nuw i8 %i.jw, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i

bb.aa:                                            ; preds = %.thread60, %bb.y
  %i.kd = phi i64 [ %i.iv, %.thread60 ], [ %i.jr, %bb.y ] ; 2 uses
  %i.ke = phi ptr [ %i.it, %.thread60 ], [ %i.jp, %bb.y ]
  %i.kf = phi i64 [ %i.hx, %.thread60 ], [ %i.jm, %bb.y ]
  %i.kg = load i128, ptr %1, align 16, !alias.scope !25018, !noalias !25000, !noundef !3 ; 2 uses
  %i.kh = trunc i128 %i.kg to i64
  %i.ki = lshr i128 %i.kg, 64
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.kk = load i64, ptr %i.kj, align 8, !alias.scope !25018, !noalias !25000, !noundef !3
  %i.kl = xor i64 %i.kk, %i.kh
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kn = load ptr, ptr %i.km, align 16, !alias.scope !25018, !noalias !25000, !nonnull !3, !align !65, !noundef !3
  %i.ko = load i64, ptr %i.kn, align 8, !noalias !25028, !noundef !3
  %i.kp = zext i64 %i.kl to i128
  %i.kq = zext i64 %i.ko to i128
  %i.kr = xor i128 %i.ki, %i.kq
  %i.ks = mul nuw i128 %i.kr, %i.kp               ; 2 uses
  %i.kt = lshr i128 %i.ks, 64
  %i.ku = xor i128 %i.kt, %i.ks
  %i.kv = trunc i128 %i.ku to i64
  store i64 %i.kv, ptr %i.kj, align 8, !alias.scope !25018, !noalias !25000
  %i.kw = zext i64 %i.kd to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.aa, %bb.z
  %i.kx = phi i64 [ %i.kd, %bb.aa ], [ %i.jt, %bb.z ]
  %i.ky = phi ptr [ %i.ke, %bb.aa ], [ %i.ju, %bb.z ]
  %i.kz = phi i64 [ %i.kf, %bb.aa ], [ %i.jv, %bb.z ]
  %.sink.i.i = phi i128 [ %i.kw, %bb.aa ], [ %i.kb, %bb.z ]
  %storemerge.i.i.i.i = phi i8 [ 64, %bb.aa ], [ %i.kc, %bb.z ]
  store i128 %.sink.i.i, ptr %1, align 16, !alias.scope !25018, !noalias !25000
  store i8 %storemerge.i.i.i.i, ptr %i.c, align 16, !alias.scope !25018, !noalias !25000
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ky, i64 noundef %i.kx, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !inline_history !25017
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.lb = load ptr, ptr %i.la, align 8, !alias.scope !25000, !noalias !25003, !nonnull !3, !noundef !3
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ld = load i64, ptr %i.lc, align 8, !alias.scope !25000, !noalias !25003, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25035)
  %i.le = load i8, ptr %i.c, align 16, !alias.scope !25038, !noalias !25000, !noundef !3 ; 3 uses
  %i.lf = icmp ugt i8 %i.le, 64
  br i1 %i.lf, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.lg = zext i64 %i.ld to i128
  %i.lh = zext nneg i8 %i.le to i128
  %i.li = shl nuw i128 %i.lg, %i.lh
  %i.lj = load i128, ptr %1, align 16, !alias.scope !25038, !noalias !25000, !noundef !3
  %i.lk = or i128 %i.lj, %i.li
  %i.ll = add nuw i8 %i.le, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit5.i

bb.ac:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.lm = load i128, ptr %1, align 16, !alias.scope !25038, !noalias !25000, !noundef !3 ; 2 uses
  %i.ln = trunc i128 %i.lm to i64
  %i.lo = lshr i128 %i.lm, 64
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.lq = load i64, ptr %i.lp, align 8, !alias.scope !25038, !noalias !25000, !noundef !3
  %i.lr = xor i64 %i.lq, %i.ln
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lt = load ptr, ptr %i.ls, align 16, !alias.scope !25038, !noalias !25000, !nonnull !3, !align !65, !noundef !3
  %i.lu = load i64, ptr %i.lt, align 8, !noalias !25039, !noundef !3
  %i.lv = zext i64 %i.lr to i128
  %i.lw = zext i64 %i.lu to i128
  %i.lx = xor i128 %i.lo, %i.lw
  %i.ly = mul nuw i128 %i.lx, %i.lv               ; 2 uses
  %i.lz = lshr i128 %i.ly, 64
  %i.ma = xor i128 %i.lz, %i.ly
  %i.mb = trunc i128 %i.ma to i64
  store i64 %i.mb, ptr %i.lp, align 8, !alias.scope !25038, !noalias !25000
  %i.mc = zext i64 %i.ld to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit5.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit5.i: ; preds = %bb.ac, %bb.ab
  %.sink.i3.i = phi i128 [ %i.mc, %bb.ac ], [ %i.lk, %bb.ab ]
  %storemerge.i.i.i4.i = phi i8 [ 64, %bb.ac ], [ %i.ll, %bb.ab ]
  store i128 %.sink.i3.i, ptr %1, align 16, !alias.scope !25038, !noalias !25000
  store i8 %storemerge.i.i.i4.i, ptr %i.c, align 16, !alias.scope !25038, !noalias !25000
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.lb, i64 noundef %i.ld, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !inline_history !25017
  %i.md = icmp ne i64 %i.kz, 3                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25043)
  %i.me = load i8, ptr %i.c, align 16, !alias.scope !25046, !noalias !25000, !noundef !3 ; 4 uses
  %i.mf = icmp ugt i8 %i.me, 64
  br i1 %i.mf, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i17.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i17

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i17: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit5.i
  %i.mg = zext i1 %i.md to i128
  %i.mh = zext nneg i8 %i.me to i128
  %i.mi = shl nuw nsw i128 %i.mg, %i.mh
  %i.mj = load i128, ptr %1, align 16, !alias.scope !25046, !noalias !25000, !noundef !3
  %i.mk = or i128 %i.mj, %i.mi                    ; 4 uses
  store i128 %i.mk, ptr %1, align 16, !alias.scope !25046, !noalias !25000
  %i.ml = add nuw i8 %i.me, 64
  store i8 %i.ml, ptr %i.c, align 16, !alias.scope !25046, !noalias !25000
  br i1 %i.md, label %bb.ad, label %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i17.thread: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit5.i
  %i.mm = load i128, ptr %1, align 16, !alias.scope !25046, !noalias !25000, !noundef !3 ; 2 uses
  %i.mn = trunc i128 %i.mm to i64
  %i.mo = lshr i128 %i.mm, 64
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.mq = load i64, ptr %i.mp, align 8, !alias.scope !25046, !noalias !25000, !noundef !3
  %i.mr = xor i64 %i.mq, %i.mn
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mt = load ptr, ptr %i.ms, align 16, !alias.scope !25046, !noalias !25000, !nonnull !3, !align !65, !noundef !3
  %i.mu = load i64, ptr %i.mt, align 8, !noalias !25047, !noundef !3
  %i.mv = zext i64 %i.mr to i128
  %i.mw = zext i64 %i.mu to i128
  %i.mx = xor i128 %i.mo, %i.mw
  %i.my = mul nuw i128 %i.mx, %i.mv               ; 2 uses
  %i.mz = lshr i128 %i.my, 64
  %i.na = xor i128 %i.mz, %i.my
  %i.nb = trunc i128 %i.na to i64
  store i64 %i.nb, ptr %i.mp, align 8, !alias.scope !25046, !noalias !25000
  %i.nc = zext i1 %i.md to i128
  store i128 %i.nc, ptr %1, align 16, !alias.scope !25046, !noalias !25000
  store i8 64, ptr %i.c, align 16, !alias.scope !25046, !noalias !25000
  br i1 %i.md, label %.thread38, label %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

.thread38:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i17.thread
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i40 = load i8, ptr %i.nd, align 8, !range !120, !alias.scope !25048, !noalias !25051, !noundef !3
  br label %bb.ae

bb.ad:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25055)
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i = load i8, ptr %i.ne, align 8, !range !120, !alias.scope !25057, !noalias !25058, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25062), !noalias !25053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25065), !noalias !25053
  %.not44 = icmp eq i8 %i.me, 0
  br i1 %.not44, label %bb.ae, label %bb.af

end_hunk_11
