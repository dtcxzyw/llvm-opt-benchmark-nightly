inline.NumInlined: 12053
inline.NumDeleted: 5555
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

bb.de:                                            ; preds = %bb.dd
  %i.aqy = zext i1 %i.aqw to i128
  %i.aqz = zext nneg i8 %i.aqs to i128
  %i.ara = shl nuw nsw i128 %i.aqy, %i.aqz
  %i.arb = load i128, ptr %1, align 16, !alias.scope !17129, !noalias !17136, !noundef !4
  %i.arc = or i128 %i.arb, %i.ara
  %i.ard = add nuw i8 %i.aqs, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i

bb.df:                                            ; preds = %bb.dd
  %i.are = load i128, ptr %1, align 16, !alias.scope !17129, !noalias !17136, !noundef !4 ; 2 uses
  %i.arf = trunc i128 %i.are to i64
  %i.arg = lshr i128 %i.are, 64
  %i.arh = load i64, ptr %i.b, align 8, !alias.scope !17129, !noalias !17136, !noundef !4
  %i.ari = xor i64 %i.arh, %i.arf
  %i.arj = load ptr, ptr %i.c, align 16, !alias.scope !17129, !noalias !17136, !nonnull !4, !align !8, !noundef !4
  %i.ark = load i64, ptr %i.arj, align 8, !noalias !17141, !noundef !4
  %i.arl = zext i64 %i.ari to i128
  %i.arm = zext i64 %i.ark to i128
  %i.arn = xor i128 %i.arg, %i.arm
  %i.aro = mul nuw i128 %i.arn, %i.arl            ; 2 uses
  %i.arp = lshr i128 %i.aro, 64
  %i.arq = xor i128 %i.arp, %i.aro
  %i.arr = trunc i128 %i.arq to i64
  store i64 %i.arr, ptr %i.b, align 8, !alias.scope !17129, !noalias !17136
  %i.ars = zext i1 %i.aqw to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i: ; preds = %bb.df, %bb.de
  %.sink.i18 = phi i128 [ %i.ars, %bb.df ], [ %i.arc, %bb.de ] ; 5 uses
  %storemerge.i.i7.i = phi i8 [ 64, %bb.df ], [ %i.ard, %bb.de ] ; 5 uses
  store i128 %.sink.i18, ptr %1, align 16, !alias.scope !17129, !noalias !17136
  store i8 %storemerge.i.i7.i, ptr %i.a, align 16, !alias.scope !17129, !noalias !17136
  br i1 %i.aqw, label %bb.dg, label %bb.do

bb.dg:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i
  %i.art = getelementptr inbounds nuw i8, ptr %i.aqu, i64 8
  %i.aru = load ptr, ptr %i.art, align 8, !alias.scope !17136, !noalias !17138, !nonnull !4, !noundef !4 ; 8 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 16
  %i.arw = load i64, ptr %i.arv, align 8, !alias.scope !17136, !noalias !17138, !noundef !4 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17150)
  %i.arx = load i64, ptr %i.b, align 8, !alias.scope !17152, !noalias !17153, !noundef !4 ; 2 uses
  %i.ary = tail call noundef i64 @llvm.fshr.i64(i64 %i.arx, i64 %i.arx, i64 %i.arw) ; 6 uses
  store i64 %i.ary, ptr %i.b, align 8, !alias.scope !17152, !noalias !17153
  %i.arz = icmp samesign ult i64 %i.arw, 17
  %i.asa = load ptr, ptr %i.c, align 16, !alias.scope !17152, !noalias !17153, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  br i1 %i.arz, label %bb.di, label %bb.dh, !prof !1200

bb.dh:                                            ; preds = %bb.dg
  %i.asb = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aru, i64 noundef range(i64 0, -9223372036854775808) %i.arw, i64 noundef %i.ary, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.asa) #45, !noalias !17154
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i21

bb.di:                                            ; preds = %bb.dg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17158)
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asa, i64 8
  %i.asd = load i64, ptr %i.asc, align 8, !alias.scope !17158, !noalias !17160, !noundef !4 ; 4 uses
  %i.ase = icmp samesign ugt i64 %i.arw, 7
  br i1 %i.ase, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i32, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.asf = icmp samesign ugt i64 %i.arw, 3
  br i1 %i.asf, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i29, label %bb.dk

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i32: ; preds = %bb.di
  %.sroa.014.0.copyload.i.i.i.i33 = load i64, ptr %i.aru, align 1, !alias.scope !17161, !noalias !17162
  %i.asg = xor i64 %.sroa.014.0.copyload.i.i.i.i33, %i.ary
  %i.ash = getelementptr i8, ptr %i.aru, i64 %i.arw
  %i.asi = getelementptr i8, ptr %i.ash, i64 -8
  %.sroa.016.0.copyload.i.i.i.i34 = load i64, ptr %i.asi, align 1, !alias.scope !17161, !noalias !17162
  %i.asj = xor i64 %.sroa.016.0.copyload.i.i.i.i34, %i.asd
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i26

bb.dk:                                            ; preds = %bb.dj
  %.not.i.i.i.i25 = icmp eq i64 %i.arw, 0
  br i1 %.not.i.i.i.i25, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i26, label %bb.dl

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i29: ; preds = %bb.dj
  %i.ask = getelementptr i8, ptr %i.aru, i64 %i.arw
  %i.asl = getelementptr i8, ptr %i.ask, i64 -4
  %.sroa.019.0.copyload.i.i.i.i30 = load i32, ptr %i.asl, align 1, !alias.scope !17161, !noalias !17162
  %.sroa.018.0.copyload.i.i.i.i31 = load i32, ptr %i.aru, align 1, !alias.scope !17161, !noalias !17162
  %i.asm = zext i32 %.sroa.018.0.copyload.i.i.i.i31 to i64
  %i.asn = xor i64 %i.ary, %i.asm
  %i.aso = zext i32 %.sroa.019.0.copyload.i.i.i.i30 to i64
  %i.asp = xor i64 %i.asd, %i.aso
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i26

bb.dl:                                            ; preds = %bb.dk
  %i.asq = load i8, ptr %i.aru, align 1, !alias.scope !17161, !noalias !17162, !noundef !4
  %i.asr = lshr i64 %i.arw, 1
  %i.ass = getelementptr inbounds nuw i8, ptr %i.aru, i64 %i.asr
  %i.ast = load i8, ptr %i.ass, align 1, !alias.scope !17161, !noalias !17162, !noundef !4
  %i.asu = getelementptr i8, ptr %i.aru, i64 %i.arw
  %i.asv = getelementptr i8, ptr %i.asu, i64 -1
  %i.asw = load i8, ptr %i.asv, align 1, !alias.scope !17161, !noalias !17162, !noundef !4
  %i.asx = zext i8 %i.asq to i64
  %i.asy = xor i64 %i.ary, %i.asx
  %i.asz = zext i8 %i.asw to i64
  %i.ata = shl nuw nsw i64 %i.asz, 8
  %i.atb = zext i8 %i.ast to i64
  %i.atc = or disjoint i64 %i.ata, %i.atb
  %i.atd = xor i64 %i.atc, %i.asd
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i26

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i26: ; preds = %bb.dl, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i29, %bb.dk, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i32
  %.sroa.04.0.i.i.i.i27 = phi i64 [ %i.asj, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i32 ], [ %i.asp, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i29 ], [ %i.atd, %bb.dl ], [ %i.asd, %bb.dk ]
  %.sroa.0.0.i.i.i.i28 = phi i64 [ %i.asg, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i32 ], [ %i.asn, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i29 ], [ %i.asy, %bb.dl ], [ %i.ary, %bb.dk ]
  %i.ate = zext i64 %.sroa.0.0.i.i.i.i28 to i128
  %i.atf = zext i64 %.sroa.04.0.i.i.i.i27 to i128
  %i.atg = mul nuw i128 %i.ate, %i.atf            ; 2 uses
  %i.ath = lshr i128 %i.atg, 64
  %i.ati = xor i128 %i.ath, %i.atg
  %i.atj = trunc i128 %i.ati to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i21

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i21: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i26, %bb.dh
  %storemerge.i.i9.i = phi i64 [ %i.asb, %bb.dh ], [ %i.atj, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i26 ] ; 2 uses
  store i64 %storemerge.i.i9.i, ptr %i.b, align 8, !alias.scope !17152, !noalias !17153
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17166)
  %i.atk = icmp ugt i8 %storemerge.i.i7.i, 120
  br i1 %i.atk, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i21
  %i.atl = zext nneg i8 %storemerge.i.i7.i to i128
  %i.atm = shl nuw i128 255, %i.atl
  %i.atn = or i128 %i.atm, %.sink.i18
  %i.ato = add nuw i8 %storemerge.i.i7.i, 8
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i22

bb.dn:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i21
  %i.atp = trunc i128 %.sink.i18 to i64
  %i.atq = lshr i128 %.sink.i18, 64
  %i.atr = xor i64 %storemerge.i.i9.i, %i.atp
  %i.ats = load i64, ptr %i.asa, align 8, !noalias !17169, !noundef !4
  %i.att = zext i64 %i.atr to i128
  %i.atu = zext i64 %i.ats to i128
  %i.atv = xor i128 %i.atq, %i.atu
  %i.atw = mul nuw i128 %i.atv, %i.att            ; 2 uses
  %i.atx = lshr i128 %i.atw, 64
  %i.aty = xor i128 %i.atx, %i.atw
  %i.atz = trunc i128 %i.aty to i64
  store i64 %i.atz, ptr %i.b, align 8, !alias.scope !17170, !noalias !17171
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i22

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i22: ; preds = %bb.dn, %bb.dm
  %.sink.i.i23 = phi i128 [ 255, %bb.dn ], [ %i.atn, %bb.dm ] ; 2 uses
  %storemerge.i.i.i.i24 = phi i8 [ 8, %bb.dn ], [ %i.ato, %bb.dm ] ; 2 uses
  store i128 %.sink.i.i23, ptr %1, align 16, !alias.scope !17170, !noalias !17171
  store i8 %storemerge.i.i.i.i24, ptr %i.a, align 16, !alias.scope !17170, !noalias !17171
  br label %bb.do

bb.do:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i22, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i
  %i.aua = phi i128 [ %.sink.i.i23, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i22 ], [ %.sink.i18, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i ] ; 3 uses
  %i.aub = phi i8 [ %storemerge.i.i.i.i24, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i22 ], [ %storemerge.i.i7.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i ] ; 3 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aqu, i64 160 ; 2 uses
  %i.aud = load i64, ptr %i.auc, align 8, !range !73, !alias.scope !17136, !noalias !17138, !noundef !4 ; 3 uses
  %i.aue = icmp ne i64 %i.aud, -9223372036854775807 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17175)
  %i.auf = icmp ugt i8 %i.aub, 64
  br i1 %i.auf, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i: ; preds = %bb.do
  %i.aug = zext i1 %i.aue to i128
  %i.auh = zext nneg i8 %i.aub to i128
  %i.aui = shl nuw nsw i128 %i.aug, %i.auh
  %i.auj = or i128 %i.aui, %i.aua                 ; 4 uses
  store i128 %i.auj, ptr %1, align 16, !alias.scope !17178, !noalias !17136
  %i.auk = add nuw i8 %i.aub, 64
  store i8 %i.auk, ptr %i.a, align 16, !alias.scope !17178, !noalias !17136
  br i1 %i.aue, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i.i, label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i

_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i
  %i.aul = getelementptr inbounds nuw i8, ptr %i.aqu, i64 24 ; 2 uses
  %i.aum = load i64, ptr %i.aul, align 8, !range !56, !alias.scope !17136, !noalias !17138, !noundef !4
  %i.aun = icmp ne i64 %i.aum, -9223372036854775808 ; 2 uses
  %i.auo = zext i1 %i.aun to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i: ; preds = %bb.do
  %i.aup = trunc i128 %i.aua to i64
  %i.auq = lshr i128 %i.aua, 64
  %i.aur = load i64, ptr %i.b, align 8, !alias.scope !17178, !noalias !17136, !noundef !4
  %i.aus = xor i64 %i.aur, %i.aup
  %i.aut = load ptr, ptr %i.c, align 16, !alias.scope !17178, !noalias !17136, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.auu = load i64, ptr %i.aut, align 8, !noalias !17179, !noundef !4
  %i.auv = zext i64 %i.aus to i128
  %i.auw = zext i64 %i.auu to i128
  %i.aux = xor i128 %i.auq, %i.auw
  %i.auy = mul nuw i128 %i.aux, %i.auv            ; 2 uses
  %i.auz = lshr i128 %i.auy, 64
  %i.ava = xor i128 %i.auz, %i.auy
  %i.avb = trunc i128 %i.ava to i64               ; 2 uses
  store i64 %i.avb, ptr %i.b, align 8, !alias.scope !17178, !noalias !17136
  %i.avc = zext i1 %i.aue to i128
  store i128 %i.avc, ptr %1, align 16, !alias.scope !17178, !noalias !17136
  store i8 64, ptr %i.a, align 16, !alias.scope !17178, !noalias !17136
  br i1 %i.aue, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i, label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread27.i

_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread27.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i
  %i.avd = getelementptr inbounds nuw i8, ptr %i.aqu, i64 24 ; 2 uses
  %i.ave = load i64, ptr %i.avd, align 8, !range !56, !alias.scope !17136, !noalias !17138, !noundef !4
  %i.avf = icmp ne i64 %i.ave, -9223372036854775808 ; 2 uses
  %i.avg = zext i1 %i.avf to i64
  br label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i
  %i.avh = icmp eq i64 %i.aud, -9223372036854775808 ; 2 uses
  %i.avi = select i1 %i.avh, i128 18446744073709551617, i128 1
  store i128 %i.avi, ptr %1, align 16, !alias.scope !17180, !noalias !17187
  store i8 -128, ptr %i.a, align 16, !alias.scope !17180, !noalias !17187
  br i1 %i.avh, label %bb.dq, label %bb.dr

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17190)
  %i.avj = icmp eq i64 %i.aud, -9223372036854775808 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17192)
  %i.avk = trunc i128 %i.auj to i64
  %i.avl = lshr i128 %i.auj, 64
  %i.avm = load i64, ptr %i.b, align 8, !alias.scope !17180, !noalias !17187, !noundef !4
  %i.avn = xor i64 %i.avm, %i.avk
  %i.avo = load ptr, ptr %i.c, align 16, !alias.scope !17180, !noalias !17187, !nonnull !4, !align !8, !noundef !4
  %i.avp = load i64, ptr %i.avo, align 8, !noalias !17193, !noundef !4
  %i.avq = zext i64 %i.avn to i128
  %i.avr = zext i64 %i.avp to i128
  %i.avs = xor i128 %i.avl, %i.avr
  %i.avt = mul nuw i128 %i.avs, %i.avq            ; 2 uses
  %i.avu = lshr i128 %i.avt, 64
  %i.avv = xor i128 %i.avu, %i.avt
  %i.avw = trunc i128 %i.avv to i64
  store i64 %i.avw, ptr %i.b, align 8, !alias.scope !17180, !noalias !17187
  %i.avx = zext i1 %i.avj to i128
  store i128 %i.avx, ptr %1, align 16, !alias.scope !17180, !noalias !17187
  store i8 64, ptr %i.a, align 16, !alias.scope !17180, !noalias !17187
  br i1 %i.avj, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i.i
  %i.avy = getelementptr inbounds nuw i8, ptr %i.aqu, i64 176
  %i.avz = load ptr, ptr %i.avy, align 8, !alias.scope !17187, !noalias !17194, !nonnull !4, !noundef !4
  %i.awa = getelementptr inbounds nuw i8, ptr %i.aqu, i64 184
  %i.awb = load i64, ptr %i.awa, align 8, !alias.scope !17187, !noalias !17194, !noundef !4 ; 2 uses
  %i.awc = zext i64 %i.awb to i128
  %i.awd = shl nuw i128 %i.awc, 64
  %i.awe = or disjoint i128 %i.awd, 1
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.dq:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i
  %i.awf = getelementptr inbounds nuw i8, ptr %i.aqu, i64 176
  %i.awg = load ptr, ptr %i.awf, align 8, !alias.scope !17187, !noalias !17194, !nonnull !4, !noundef !4
  %i.awh = getelementptr inbounds nuw i8, ptr %i.aqu, i64 184
  %i.awi = load i64, ptr %i.awh, align 8, !alias.scope !17187, !noalias !17194, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17201)
  %i.awj = xor i64 %i.avb, 1
  %i.awk = load i64, ptr %i.aut, align 8, !noalias !17204, !noundef !4
  %i.awl = zext i64 %i.awj to i128
  %i.awm = xor i64 %i.awk, 1
  %i.awn = zext i64 %i.awm to i128
  %i.awo = mul nuw i128 %i.awn, %i.awl            ; 2 uses
  %i.awp = lshr i128 %i.awo, 64
  %i.awq = xor i128 %i.awp, %i.awo
  %i.awr = trunc i128 %i.awq to i64
  store i64 %i.awr, ptr %i.b, align 8, !alias.scope !17205, !noalias !17187
  %i.aws = zext i64 %i.awi to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.dq, %bb.dp
  %i.awt = phi i64 [ %i.awi, %bb.dq ], [ %i.awb, %bb.dp ]
  %i.awu = phi ptr [ %i.awg, %bb.dq ], [ %i.avz, %bb.dp ]
  %.sink.i.i.i = phi i128 [ %i.aws, %bb.dq ], [ %i.awe, %bb.dp ]
  %storemerge.i.i.i.i.i = phi i8 [ 64, %bb.dq ], [ -128, %bb.dp ]
  store i128 %.sink.i.i.i, ptr %1, align 16, !alias.scope !17205, !noalias !17187
  store i8 %storemerge.i.i.i.i.i, ptr %i.a, align 16, !alias.scope !17205, !noalias !17187
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.awu, i64 noundef %i.awt, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !17189
  br label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

bb.dr:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.auc, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.dr, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.pr.i = load i8, ptr %i.a, align 16, !alias.scope !17206, !noalias !17136 ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 24 ; 3 uses
  %i.aww = load i64, ptr %i.awv, align 8, !range !56, !alias.scope !17136, !noalias !17138, !noundef !4
  %i.awx = icmp ne i64 %i.aww, -9223372036854775808 ; 3 uses
  %i.awy = zext i1 %i.awx to i64                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17212)
  %i.awz = icmp ugt i8 %.pr.i, 64
  %.pre41.i = load i128, ptr %1, align 16, !alias.scope !17206, !noalias !17136 ; 2 uses
  br i1 %i.awz, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i, label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i

_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i: ; preds = %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread27.i
  %i.axa = phi i128 [ 0, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread27.i ], [ %.pre41.i, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.axb = phi i64 [ %i.avg, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread27.i ], [ %i.awy, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.axc = phi i1 [ %i.avf, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread27.i ], [ %i.awx, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.axd = phi ptr [ %i.avd, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread27.i ], [ %i.awv, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.axe = phi i8 [ 64, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread27.i ], [ %.pr.i, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.axf = zext nneg i64 %i.axb to i128
  %i.axg = zext nneg i8 %i.axe to i128
  %i.axh = shl nuw nsw i128 %i.axf, %i.axg
  %i.axi = or i128 %i.axh, %i.axa                 ; 2 uses
  store i128 %i.axi, ptr %1, align 16, !alias.scope !17206, !noalias !17136
  %i.axj = add nuw i8 %i.axe, 64                  ; 2 uses
  store i8 %i.axj, ptr %i.a, align 16, !alias.scope !17206, !noalias !17136
  br i1 %i.axc, label %bb.ds, label %bb.dv

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i: ; preds = %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.axk = phi i128 [ %i.auj, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %.pre41.i, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.axl = phi i64 [ %i.auo, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.awy, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.axm = phi i1 [ %i.aun, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.awx, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.axn = phi ptr [ %i.aul, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.awv, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.axo = trunc i128 %i.axk to i64
  %i.axp = lshr i128 %i.axk, 64
  %i.axq = load i64, ptr %i.b, align 8, !alias.scope !17206, !noalias !17136, !noundef !4
  %i.axr = xor i64 %i.axq, %i.axo
  %i.axs = load ptr, ptr %i.c, align 16, !alias.scope !17206, !noalias !17136, !nonnull !4, !align !8, !noundef !4
  %i.axt = load i64, ptr %i.axs, align 8, !noalias !17213, !noundef !4
  %i.axu = zext i64 %i.axr to i128
  %i.axv = zext i64 %i.axt to i128
  %i.axw = xor i128 %i.axp, %i.axv
  %i.axx = mul nuw i128 %i.axw, %i.axu            ; 2 uses
  %i.axy = lshr i128 %i.axx, 64
  %i.axz = xor i128 %i.axy, %i.axx
  %i.aya = trunc i128 %i.axz to i64
  store i64 %i.aya, ptr %i.b, align 8, !alias.scope !17206, !noalias !17136
  %i.ayb = zext nneg i64 %i.axl to i128           ; 2 uses
  store i128 %i.ayb, ptr %1, align 16, !alias.scope !17206, !noalias !17136
  store i8 64, ptr %i.a, align 16, !alias.scope !17206, !noalias !17136
  br i1 %i.axm, label %bb.ds, label %.thread29.i

.thread29.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.aqu, i64 112 ; 2 uses
  %i.ayd = load i64, ptr %i.ayc, align 8, !range !56, !alias.scope !17136, !noalias !17138, !noundef !4
  %i.aye = icmp ne i64 %i.ayd, -9223372036854775808
  br label %bb.dw

bb.ds:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i
  %i.ayf = phi ptr [ %i.axd, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i ], [ %i.axn, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17217)
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ayf, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 72
  %i.ayh = load ptr, ptr %i.ayg, align 8, !alias.scope !17219, !noalias !17220, !nonnull !4, !noundef !4
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayf, i64 80
  %i.ayj = load i64, ptr %i.ayi, align 8, !alias.scope !17219, !noalias !17220, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17227)
  %i.ayk = load i8, ptr %i.a, align 16, !alias.scope !17230, !noalias !17219, !noundef !4 ; 3 uses
  %i.ayl = icmp ugt i8 %i.ayk, 64
  br i1 %i.ayl, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aym = zext i64 %i.ayj to i128
  %i.ayn = zext nneg i8 %i.ayk to i128
  %i.ayo = shl nuw i128 %i.aym, %i.ayn
  %i.ayp = load i128, ptr %1, align 16, !alias.scope !17230, !noalias !17219, !noundef !4
  %i.ayq = or i128 %i.ayp, %i.ayo
  %i.ayr = add nuw i8 %i.ayk, 64
  br label %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

bb.du:                                            ; preds = %bb.ds
  %i.ays = load i128, ptr %1, align 16, !alias.scope !17230, !noalias !17219, !noundef !4 ; 2 uses
  %i.ayt = trunc i128 %i.ays to i64
  %i.ayu = lshr i128 %i.ays, 64
  %i.ayv = load i64, ptr %i.b, align 8, !alias.scope !17230, !noalias !17219, !noundef !4
  %i.ayw = xor i64 %i.ayv, %i.ayt
  %i.ayx = load ptr, ptr %i.c, align 16, !alias.scope !17230, !noalias !17219, !nonnull !4, !align !8, !noundef !4
  %i.ayy = load i64, ptr %i.ayx, align 8, !noalias !17231, !noundef !4
  %i.ayz = zext i64 %i.ayw to i128
  %i.aza = zext i64 %i.ayy to i128
  %i.azb = xor i128 %i.ayu, %i.aza
  %i.azc = mul nuw i128 %i.azb, %i.ayz            ; 2 uses
  %i.azd = lshr i128 %i.azc, 64
  %i.aze = xor i128 %i.azd, %i.azc
  %i.azf = trunc i128 %i.aze to i64
  store i64 %i.azf, ptr %i.b, align 8, !alias.scope !17230, !noalias !17219
  %i.azg = zext i64 %i.ayj to i128
  br label %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.du, %bb.dt
  %.sink.i.i11.i = phi i128 [ %i.azg, %bb.du ], [ %i.ayq, %bb.dt ]
  %storemerge.i.i.i.i12.i = phi i8 [ 64, %bb.du ], [ %i.ayr, %bb.dt ]
  store i128 %.sink.i.i11.i, ptr %1, align 16, !alias.scope !17230, !noalias !17219
  store i8 %storemerge.i.i.i.i12.i, ptr %i.a, align 16, !alias.scope !17230, !noalias !17219
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ayh, i64 noundef %i.ayj, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %.pr28.i = load i8, ptr %i.a, align 16, !alias.scope !17232, !noalias !17136
  %.pre.pre.i = load i128, ptr %1, align 16, !alias.scope !17232, !noalias !17136
  br label %bb.dv

bb.dv:                                            ; preds = %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i
  %.pre.i = phi i128 [ %i.axi, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i ], [ %.pre.pre.i, %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %i.azh = phi i8 [ %i.axj, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i ], [ %.pr28.i, %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %i.aqu, i64 112 ; 3 uses
  %i.azj = load i64, ptr %i.azi, align 8, !range !56, !alias.scope !17136, !noalias !17138, !noundef !4
  %i.azk = icmp ne i64 %i.azj, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17238)
  %i.azl = icmp ugt i8 %i.azh, 64
  br i1 %i.azl, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i20, label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %.thread29.i
  %i.azm = phi i128 [ %i.ayb, %.thread29.i ], [ %.pre.i, %bb.dv ]
  %i.azn = phi i1 [ %i.aye, %.thread29.i ], [ %i.azk, %bb.dv ] ; 2 uses
  %i.azo = phi ptr [ %i.ayc, %.thread29.i ], [ %i.azi, %bb.dv ] ; 2 uses
  %i.azp = phi i8 [ 64, %.thread29.i ], [ %i.azh, %bb.dv ] ; 3 uses
  %i.azq = zext i1 %i.azn to i128
  %i.azr = zext nneg i8 %i.azp to i128
  %i.azs = shl nuw nsw i128 %i.azq, %i.azr
  %i.azt = or i128 %i.azs, %i.azm                 ; 5 uses
  store i128 %i.azt, ptr %1, align 16, !alias.scope !17232, !noalias !17136
  %i.azu = add nuw i8 %i.azp, 64                  ; 2 uses
  store i8 %i.azu, ptr %i.a, align 16, !alias.scope !17232, !noalias !17136
  br i1 %i.azn, label %bb.dx, label %bb.ec

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i20: ; preds = %bb.dv
  %i.azv = trunc i128 %.pre.i to i64
  %i.azw = lshr i128 %.pre.i, 64
  %i.azx = load i64, ptr %i.b, align 8, !alias.scope !17232, !noalias !17136, !noundef !4
  %i.azy = xor i64 %i.azx, %i.azv
  %i.azz = load ptr, ptr %i.c, align 16, !alias.scope !17232, !noalias !17136, !nonnull !4, !align !8, !noundef !4
  %i.baa = load i64, ptr %i.azz, align 8, !noalias !17239, !noundef !4
  %i.bab = zext i64 %i.azy to i128
  %i.bac = zext i64 %i.baa to i128
  %i.bad = xor i128 %i.azw, %i.bac
  %i.bae = mul nuw i128 %i.bad, %i.bab            ; 2 uses
  %i.baf = lshr i128 %i.bae, 64
  %i.bag = xor i128 %i.baf, %i.bae
  %i.bah = trunc i128 %i.bag to i64
  store i64 %i.bah, ptr %i.b, align 8, !alias.scope !17232, !noalias !17136
  %i.bai = zext i1 %i.azk to i128
  store i128 %i.bai, ptr %1, align 16, !alias.scope !17232, !noalias !17136
  store i8 64, ptr %i.a, align 16, !alias.scope !17232, !noalias !17136
  br i1 %i.azk, label %.thread31.i, label %.thread35.i

.thread35.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i20
  %i.baj = getelementptr inbounds nuw i8, ptr %i.aqu, i64 224 ; 2 uses
  %i.bak = load i64, ptr %i.baj, align 8, !range !73, !alias.scope !17136, !noalias !17138, !noundef !4 ; 2 uses
  %i.bal = icmp ne i64 %i.bak, -9223372036854775807
  br label %bb.ed

.thread31.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i20
  %i.bam = getelementptr inbounds nuw i8, ptr %i.aqu, i64 120
  %i.ban = load ptr, ptr %i.bam, align 8, !alias.scope !17240, !noalias !17243, !nonnull !4, !noundef !4
  %i.bao = getelementptr inbounds nuw i8, ptr %i.aqu, i64 128
  %i.bap = load i64, ptr %i.bao, align 8, !alias.scope !17240, !noalias !17243, !noundef !4
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17247)
  %i.baq = getelementptr inbounds nuw i8, ptr %i.aqu, i64 120
  %i.bar = load ptr, ptr %i.baq, align 8, !alias.scope !17249, !noalias !17250, !nonnull !4, !noundef !4 ; 2 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %i.aqu, i64 128
  %i.bat = load i64, ptr %i.bas, align 8, !alias.scope !17249, !noalias !17250, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17257)
  %.not.i = icmp eq i8 %i.azp, 0
  br i1 %.not.i, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx, %.thread31.i
  %i.bau = phi i128 [ 1, %.thread31.i ], [ %i.azt, %bb.dx ]
  %i.bav = phi i64 [ %i.bap, %.thread31.i ], [ %i.bat, %bb.dx ] ; 2 uses
  %i.baw = phi ptr [ %i.ban, %.thread31.i ], [ %i.bar, %bb.dx ]
  %i.bax = phi ptr [ %i.azi, %.thread31.i ], [ %i.azo, %bb.dx ]
  %i.bay = zext i64 %i.bav to i128
  %i.baz = shl nuw i128 %i.bay, 64
  %i.bba = or i128 %i.baz, %i.bau
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i13.i

bb.dz:                                            ; preds = %bb.dx
  %i.bbb = trunc i128 %i.azt to i64
  %i.bbc = lshr i128 %i.azt, 64
  %i.bbd = load i64, ptr %i.b, align 8, !alias.scope !17260, !noalias !17249, !noundef !4
  %i.bbe = xor i64 %i.bbd, %i.bbb
  %i.bbf = load ptr, ptr %i.c, align 16, !alias.scope !17260, !noalias !17249, !nonnull !4, !align !8, !noundef !4
  %i.bbg = load i64, ptr %i.bbf, align 8, !noalias !17261, !noundef !4
  %i.bbh = zext i64 %i.bbe to i128
  %i.bbi = zext i64 %i.bbg to i128
  %i.bbj = xor i128 %i.bbc, %i.bbi
  %i.bbk = mul nuw i128 %i.bbj, %i.bbh            ; 2 uses
  %i.bbl = lshr i128 %i.bbk, 64
  %i.bbm = xor i128 %i.bbl, %i.bbk
  %i.bbn = trunc i128 %i.bbm to i64
  store i64 %i.bbn, ptr %i.b, align 8, !alias.scope !17260, !noalias !17249
  %i.bbo = zext i64 %i.bat to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i13.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i13.i: ; preds = %bb.dz, %bb.dy
  %i.bbp = phi i64 [ %i.bat, %bb.dz ], [ %i.bav, %bb.dy ]
  %i.bbq = phi ptr [ %i.bar, %bb.dz ], [ %i.baw, %bb.dy ]
  %i.bbr = phi ptr [ %i.azo, %bb.dz ], [ %i.bax, %bb.dy ] ; 2 uses
  %.sink.i.i14.i = phi i128 [ %i.bbo, %bb.dz ], [ %i.bba, %bb.dy ]
  %storemerge.i.i.i.i15.i = phi i8 [ 64, %bb.dz ], [ -128, %bb.dy ]
  store i128 %.sink.i.i14.i, ptr %1, align 16, !alias.scope !17260, !noalias !17249
  store i8 %storemerge.i.i.i.i15.i, ptr %i.a, align 16, !alias.scope !17260, !noalias !17249
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bbq, i64 noundef %i.bbp, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !17245
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbr, i64 32
  %i.bbt = load ptr, ptr %i.bbs, align 8, !alias.scope !17249, !noalias !17250, !nonnull !4, !noundef !4
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbr, i64 40
  %i.bbv = load i64, ptr %i.bbu, align 8, !alias.scope !17249, !noalias !17250, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17268)
  %i.bbw = load i8, ptr %i.a, align 16, !alias.scope !17271, !noalias !17249, !noundef !4 ; 3 uses
  %i.bbx = icmp ugt i8 %i.bbw, 64
  br i1 %i.bbx, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i13.i
  %i.bby = zext i64 %i.bbv to i128
  %i.bbz = zext nneg i8 %i.bbw to i128
  %i.bca = shl nuw i128 %i.bby, %i.bbz
  %i.bcb = load i128, ptr %1, align 16, !alias.scope !17271, !noalias !17249, !noundef !4
  %i.bcc = or i128 %i.bcb, %i.bca
  %i.bcd = add nuw i8 %i.bbw, 64
  br label %_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

bb.eb:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i13.i
  %i.bce = load i128, ptr %1, align 16, !alias.scope !17271, !noalias !17249, !noundef !4 ; 2 uses
  %i.bcf = trunc i128 %i.bce to i64
  %i.bcg = lshr i128 %i.bce, 64
  %i.bch = load i64, ptr %i.b, align 8, !alias.scope !17271, !noalias !17249, !noundef !4
  %i.bci = xor i64 %i.bch, %i.bcf
  %i.bcj = load ptr, ptr %i.c, align 16, !alias.scope !17271, !noalias !17249, !nonnull !4, !align !8, !noundef !4
  %i.bck = load i64, ptr %i.bcj, align 8, !noalias !17272, !noundef !4
  %i.bcl = zext i64 %i.bci to i128
  %i.bcm = zext i64 %i.bck to i128
  %i.bcn = xor i128 %i.bcg, %i.bcm
  %i.bco = mul nuw i128 %i.bcn, %i.bcl            ; 2 uses
  %i.bcp = lshr i128 %i.bco, 64
  %i.bcq = xor i128 %i.bcp, %i.bco
  %i.bcr = trunc i128 %i.bcq to i64
  store i64 %i.bcr, ptr %i.b, align 8, !alias.scope !17271, !noalias !17249
  %i.bcs = zext i64 %i.bbv to i128
  br label %_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.eb, %bb.ea
  %.sink.i1.i.i = phi i128 [ %i.bcs, %bb.eb ], [ %i.bcc, %bb.ea ]
  %storemerge.i.i.i2.i.i = phi i8 [ 64, %bb.eb ], [ %i.bcd, %bb.ea ]
  store i128 %.sink.i1.i.i, ptr %1, align 16, !alias.scope !17271, !noalias !17249
  store i8 %storemerge.i.i.i2.i.i, ptr %i.a, align 16, !alias.scope !17271, !noalias !17249
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.bbt, i64 noundef %i.bbv, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !17245
  %.pr34.i = load i8, ptr %i.a, align 16, !alias.scope !17273, !noalias !17136
  %.pre42.pre.i = load i128, ptr %1, align 16, !alias.scope !17273, !noalias !17136
  br label %bb.ec

bb.ec:                                            ; preds = %_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.dw
  %.pre42.i = phi i128 [ %i.azt, %bb.dw ], [ %.pre42.pre.i, %_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %i.bct = phi i8 [ %i.azu, %bb.dw ], [ %.pr34.i, %_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.aqu, i64 224 ; 4 uses
  %i.bcv = load i64, ptr %i.bcu, align 8, !range !73, !alias.scope !17136, !noalias !17138, !noundef !4 ; 3 uses
  %i.bcw = icmp ne i64 %i.bcv, -9223372036854775807 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17279)
  %i.bcx = icmp ugt i8 %i.bct, 64
  br i1 %i.bcx, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i19, label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %.thread35.i
  %i.bcy = phi i128 [ 0, %.thread35.i ], [ %.pre42.i, %bb.ec ]
  %i.bcz = phi i1 [ %i.bal, %.thread35.i ], [ %i.bcw, %bb.ec ] ; 2 uses
  %i.bda = phi i64 [ %i.bak, %.thread35.i ], [ %i.bcv, %bb.ec ]
  %i.bdb = phi ptr [ %i.baj, %.thread35.i ], [ %i.bcu, %bb.ec ] ; 3 uses
  %i.bdc = phi i8 [ 64, %.thread35.i ], [ %i.bct, %bb.ec ] ; 3 uses
  %i.bdd = zext i1 %i.bcz to i128
  %i.bde = zext nneg i8 %i.bdc to i128
  %i.bdf = shl nuw nsw i128 %i.bdd, %i.bde
  %i.bdg = or i128 %i.bdf, %i.bcy                 ; 5 uses
  store i128 %i.bdg, ptr %1, align 16, !alias.scope !17273, !noalias !17136
  %i.bdh = add nuw i8 %i.bdc, 64
  store i8 %i.bdh, ptr %i.a, align 16, !alias.scope !17273, !noalias !17136
  br i1 %i.bcz, label %bb.ee, label %common.ret509

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i19: ; preds = %bb.ec
  %i.bdi = trunc i128 %.pre42.i to i64
  %i.bdj = lshr i128 %.pre42.i, 64
  %i.bdk = load i64, ptr %i.b, align 8, !alias.scope !17273, !noalias !17136, !noundef !4
  %i.bdl = xor i64 %i.bdk, %i.bdi
  %i.bdm = load ptr, ptr %i.c, align 16, !alias.scope !17273, !noalias !17136, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.bdn = load i64, ptr %i.bdm, align 8, !noalias !17280, !noundef !4
  %i.bdo = zext i64 %i.bdl to i128
  %i.bdp = zext i64 %i.bdn to i128
  %i.bdq = xor i128 %i.bdj, %i.bdp
  %i.bdr = mul nuw i128 %i.bdq, %i.bdo            ; 2 uses
  %i.bds = lshr i128 %i.bdr, 64
  %i.bdt = xor i128 %i.bds, %i.bdr
  %i.bdu = trunc i128 %i.bdt to i64               ; 2 uses
  store i64 %i.bdu, ptr %i.b, align 8, !alias.scope !17273, !noalias !17136
  %i.bdv = zext i1 %i.bcw to i128
  store i128 %i.bdv, ptr %1, align 16, !alias.scope !17273, !noalias !17136
  store i8 64, ptr %i.a, align 16, !alias.scope !17273, !noalias !17136
  br i1 %i.bcw, label %.thread37.i, label %common.ret509

.thread37.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i19
  %i.bdw = icmp eq i64 %i.bcv, -9223372036854775808 ; 2 uses
  %i.bdx = select i1 %i.bdw, i128 18446744073709551617, i128 1
  store i128 %i.bdx, ptr %1, align 16, !alias.scope !17281, !noalias !17288
  store i8 -128, ptr %i.a, align 16, !alias.scope !17281, !noalias !17288
  br i1 %i.bdw, label %bb.eg, label %bb.eh

bb.ee:                                            ; preds = %bb.ed
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17291)
  %i.bdy = icmp eq i64 %i.bda, -9223372036854775808 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17293)
  %.not40.i = icmp eq i8 %i.bdc, 0
  br i1 %.not40.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i21.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i: ; preds = %bb.ee
  %i.bdz = select i1 %i.bdy, i128 18446744073709551616, i128 0
  %i.bea = or i128 %i.bdg, %i.bdz                 ; 2 uses
  store i128 %i.bea, ptr %1, align 16, !alias.scope !17281, !noalias !17288
  store i8 -128, ptr %i.a, align 16, !alias.scope !17281, !noalias !17288
  br i1 %i.bdy, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge, label %bb.eh

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i
  %extract.t.i = trunc i128 %i.bdg to i64
  %.pre215 = load i64, ptr %i.b, align 8, !alias.scope !17294, !noalias !17288
  %.pre216 = load ptr, ptr %i.c, align 16, !alias.scope !17294, !noalias !17288
  %2 = lshr i128 %i.bea, 64
  br label %bb.eg

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i21.i: ; preds = %bb.ee
  %i.beb = trunc i128 %i.bdg to i64
  %i.bec = lshr i128 %i.bdg, 64
  %i.bed = load i64, ptr %i.b, align 8, !alias.scope !17281, !noalias !17288, !noundef !4
  %i.bee = xor i64 %i.bed, %i.beb
  %i.bef = load ptr, ptr %i.c, align 16, !alias.scope !17281, !noalias !17288, !nonnull !4, !align !8, !noundef !4
  %i.beg = load i64, ptr %i.bef, align 8, !noalias !17301, !noundef !4
  %i.beh = zext i64 %i.bee to i128
  %i.bei = zext i64 %i.beg to i128
  %i.bej = xor i128 %i.bec, %i.bei
  %i.bek = mul nuw i128 %i.bej, %i.beh            ; 2 uses
  %i.bel = lshr i128 %i.bek, 64
  %i.bem = xor i128 %i.bel, %i.bek
  %i.ben = trunc i128 %i.bem to i64
  store i64 %i.ben, ptr %i.b, align 8, !alias.scope !17281, !noalias !17288
  %i.beo = zext i1 %i.bdy to i128
  store i128 %i.beo, ptr %1, align 16, !alias.scope !17281, !noalias !17288
  store i8 64, ptr %i.a, align 16, !alias.scope !17281, !noalias !17288
  br i1 %i.bdy, label %bb.ef, label %bb.eh

bb.ef:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i21.i
  %i.bep = getelementptr inbounds nuw i8, ptr %i.aqu, i64 240
  %i.beq = load ptr, ptr %i.bep, align 8, !alias.scope !17288, !noalias !17302, !nonnull !4, !noundef !4
  %i.ber = getelementptr inbounds nuw i8, ptr %i.aqu, i64 248
  %i.bes = load i64, ptr %i.ber, align 8, !alias.scope !17288, !noalias !17302, !noundef !4 ; 2 uses
  %i.bet = zext i64 %i.bes to i128
  %i.beu = shl nuw i128 %i.bet, 64
  %i.bev = or disjoint i128 %i.beu, 1
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i18.i

bb.eg:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge, %.thread37.i
  %i.bew = phi ptr [ %i.bdm, %.thread37.i ], [ %.pre216, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %i.bex = phi i64 [ %i.bdu, %.thread37.i ], [ %.pre215, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %i.bey = phi i128 [ 1, %.thread37.i ], [ %2, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %i.bez = phi ptr [ %i.bcu, %.thread37.i ], [ %i.bdb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ] ; 2 uses
  %.off0.i = phi i64 [ 1, %.thread37.i ], [ %extract.t.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bez, i64 16
  %i.bfb = load ptr, ptr %i.bfa, align 8, !alias.scope !17288, !noalias !17302, !nonnull !4, !noundef !4
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bez, i64 24
  %i.bfd = load i64, ptr %i.bfc, align 8, !alias.scope !17288, !noalias !17302, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17305)
  %i.bfe = xor i64 %i.bex, %.off0.i
  %i.bff = load i64, ptr %i.bew, align 8, !noalias !17306, !noundef !4
  %i.bfg = zext i64 %i.bfe to i128
  %i.bfh = zext i64 %i.bff to i128
  %i.bfi = xor i128 %i.bey, %i.bfh
  %i.bfj = mul nuw i128 %i.bfi, %i.bfg            ; 2 uses
  %i.bfk = lshr i128 %i.bfj, 64
  %i.bfl = xor i128 %i.bfk, %i.bfj
  %i.bfm = trunc i128 %i.bfl to i64
  store i64 %i.bfm, ptr %i.b, align 8, !alias.scope !17294, !noalias !17288
  %i.bfn = zext i64 %i.bfd to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i18.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i18.i: ; preds = %bb.eg, %bb.ef
  %i.bfo = phi i64 [ %i.bfd, %bb.eg ], [ %i.bes, %bb.ef ]
  %i.bfp = phi ptr [ %i.bfb, %bb.eg ], [ %i.beq, %bb.ef ]
  %.sink.i.i19.i = phi i128 [ %i.bfn, %bb.eg ], [ %i.bev, %bb.ef ]
  %storemerge.i.i.i.i20.i = phi i8 [ 64, %bb.eg ], [ -128, %bb.ef ]
  store i128 %.sink.i.i19.i, ptr %1, align 16, !alias.scope !17294, !noalias !17288
  store i8 %storemerge.i.i.i.i20.i, ptr %i.a, align 16, !alias.scope !17294, !noalias !17288
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bfp, i64 noundef %i.bfo, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !17290
  br label %common.ret509

bb.eh:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i21.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i, %.thread37.i
  %i.bfq = phi ptr [ %i.bdb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i21.i ], [ %i.bdb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i ], [ %i.bcu, %.thread37.i ] ; 2 uses
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bfq, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfq, i64 64
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bfr, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %common.ret509
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB7_8DropViewNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 16 dereferenceable(48) %1) #46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !range !3, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17310)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load i8, ptr %i.c, align 16, !alias.scope !17313, !noundef !4 ; 3 uses
  %i.e = icmp ugt i8 %i.d, 120
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i8 %i.b to i128
  %i.g = zext nneg i8 %i.d to i128
  %i.h = shl nuw nsw i128 %i.f, %i.g
  %i.i = load i128, ptr %1, align 16, !alias.scope !17313, !noundef !4
  %i.j = or i128 %i.i, %i.h
  %i.k = add nuw i8 %i.d, 8
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load i128, ptr %1, align 16, !alias.scope !17313, !noundef !4 ; 2 uses
  %i.m = trunc i128 %i.l to i64
  %i.n = lshr i128 %i.l, 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !17313, !noundef !4
  %i.q = xor i64 %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 16, !alias.scope !17313, !nonnull !4, !align !8, !noundef !4
  %i.t = load i64, ptr %i.s, align 8, !noalias !17313, !noundef !4
  %i.u = zext i64 %i.q to i128
  %i.v = zext i64 %i.t to i128
  %i.w = xor i128 %i.n, %i.v
  %i.x = mul nuw i128 %i.w, %i.u                  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = xor i128 %i.y, %i.x
  %i.aa = trunc i128 %i.z to i64
  store i64 %i.aa, ptr %i.o, align 8, !alias.scope !17313
  %i.ab = zext nneg i8 %i.b to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit: ; preds = %bb.b, %bb.c
  %.sink = phi i128 [ %i.ab, %bb.c ], [ %i.j, %bb.b ]
  %storemerge.i.i = phi i8 [ 8, %bb.c ], [ %i.k, %bb.b ]
  store i128 %.sink, ptr %1, align 16, !alias.scope !17313
  store i8 %storemerge.i.i, ptr %i.c, align 16, !alias.scope !17313
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ae, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs16_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB7_7ExecuteNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17322)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !17324, !noalias !17325, !noundef !4 ; 2 uses
  %i.g = tail call noundef i64 @llvm.fshr.i64(i64 %i.f, i64 %i.f, i64 %i.d) ; 6 uses
  store i64 %i.g, ptr %i.e, align 8, !alias.scope !17324, !noalias !17325
  %i.h = icmp samesign ult i64 %i.d, 17
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 16, !alias.scope !17324, !noalias !17325, !nonnull !4, !align !8, !noundef !4 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.b, !prof !1200

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j) #45, !noalias !17324
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17329)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !17329, !noalias !17331, !noundef !4 ; 4 uses
  %i.n = icmp samesign ugt i64 %i.d, 7
  br i1 %i.n, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp samesign ugt i64 %i.d, 3
  br i1 %i.o, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.e

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.c
  %.sroa.014.0.copyload.i.i.i = load i64, ptr %i.b, align 1, !alias.scope !17332, !noalias !17333
  %i.p = xor i64 %.sroa.014.0.copyload.i.i.i, %i.g
  %i.q = getelementptr i8, ptr %i.b, i64 %i.d
  %i.r = getelementptr i8, ptr %i.q, i64 -8
  %.sroa.016.0.copyload.i.i.i = load i64, ptr %i.r, align 1, !alias.scope !17332, !noalias !17333
  %i.s = xor i64 %.sroa.016.0.copyload.i.i.i, %i.m
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i, label %bb.f

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.b, i64 %i.d
  %i.u = getelementptr i8, ptr %i.t, i64 -4
  %.sroa.019.0.copyload.i.i.i = load i32, ptr %i.u, align 1, !alias.scope !17332, !noalias !17333
  %.sroa.018.0.copyload.i.i.i = load i32, ptr %i.b, align 1, !alias.scope !17332, !noalias !17333
  %i.v = zext i32 %.sroa.018.0.copyload.i.i.i to i64
  %i.w = xor i64 %i.g, %i.v
  %i.x = zext i32 %.sroa.019.0.copyload.i.i.i to i64
  %i.y = xor i64 %i.m, %i.x
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = load i8, ptr %i.b, align 1, !alias.scope !17332, !noalias !17333, !noundef !4
  %i.aa = lshr i64 %i.d, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !17332, !noalias !17333, !noundef !4
  %i.ad = getelementptr i8, ptr %i.b, i64 %i.d
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !17332, !noalias !17333, !noundef !4
  %i.ag = zext i8 %i.z to i64
  %i.ah = xor i64 %i.g, %i.ag
  %i.ai = zext i8 %i.af to i64
  %i.aj = shl nuw nsw i64 %i.ai, 8
  %i.ak = zext i8 %i.ac to i64
  %i.al = or disjoint i64 %i.aj, %i.ak
  %i.am = xor i64 %i.al, %i.m
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i: ; preds = %bb.f, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.e, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.s, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.y, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.am, %bb.f ], [ %i.m, %bb.e ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.p, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.w, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ah, %bb.f ], [ %i.g, %bb.e ]
  %i.an = zext i64 %.sroa.0.0.i.i.i to i128
  %i.ao = zext i64 %.sroa.04.0.i.i.i to i128
  %i.ap = mul nuw i128 %i.an, %i.ao               ; 2 uses
  %i.aq = lshr i128 %i.ap, 64
  %i.ar = xor i128 %i.aq, %i.ap
  %i.as = trunc i128 %i.ar to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i, %bb.b
  %i.at = phi i64 [ %i.k, %bb.b ], [ %i.as, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i ] ; 3 uses
  store i64 %i.at, ptr %i.e, align 8, !alias.scope !17324, !noalias !17325
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17337)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.av = load i8, ptr %i.au, align 16, !alias.scope !17340, !noalias !17317, !noundef !4 ; 4 uses
  %i.aw = icmp ugt i8 %i.av, 120
  br i1 %i.aw, label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i
  %i.ax = load i128, ptr %1, align 16, !alias.scope !17340, !noalias !17317, !noundef !4 ; 2 uses
  %i.ay = trunc i128 %i.ax to i64
  %i.az = lshr i128 %i.ax, 64
  %i.ba = xor i64 %i.at, %i.ay
  %i.bb = load i64, ptr %i.j, align 8, !noalias !17340, !noundef !4
  %i.bc = zext i64 %i.ba to i128
  %i.bd = zext i64 %i.bb to i128
  %i.be = xor i128 %i.az, %i.bd
  %i.bf = mul nuw i128 %i.be, %i.bc               ; 2 uses
  %i.bg = lshr i128 %i.bf, 64
  %i.bh = xor i128 %i.bg, %i.bf
  %i.bi = trunc i128 %i.bh to i64
  store i64 %i.bi, ptr %i.e, align 8, !alias.scope !17340, !noalias !17317
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !4, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !4
  br label %bb.g

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i
end_hunk_0
