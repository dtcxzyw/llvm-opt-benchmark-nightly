inline.NumInlined: 8498
inline.NumDeleted: 3151
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

bb.de:                                            ; preds = %bb.dd
  %i.aqy = zext i1 %i.aqw to i128
  %i.aqz = zext nneg i8 %i.aqs to i128
  %i.ara = shl nuw nsw i128 %i.aqy, %i.aqz
  %i.arb = load i128, ptr %1, align 16, !alias.scope !8223, !noalias !8230, !noundef !27
  %i.arc = or i128 %i.arb, %i.ara
  %i.ard = add nuw i8 %i.aqs, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i

bb.df:                                            ; preds = %bb.dd
  %i.are = load i128, ptr %1, align 16, !alias.scope !8223, !noalias !8230, !noundef !27 ; 2 uses
  %i.arf = trunc i128 %i.are to i64
  %i.arg = lshr i128 %i.are, 64
  %i.arh = load i64, ptr %i.b, align 8, !alias.scope !8223, !noalias !8230, !noundef !27
  %i.ari = xor i64 %i.arh, %i.arf
  %i.arj = load ptr, ptr %i.c, align 16, !alias.scope !8223, !noalias !8230, !nonnull !27, !align !108, !noundef !27
  %i.ark = load i64, ptr %i.arj, align 8, !noalias !8235, !noundef !27
  %i.arl = zext i64 %i.ari to i128
  %i.arm = zext i64 %i.ark to i128
  %i.arn = xor i128 %i.arg, %i.arm
  %i.aro = mul nuw i128 %i.arn, %i.arl            ; 2 uses
  %i.arp = lshr i128 %i.aro, 64
  %i.arq = xor i128 %i.arp, %i.aro
  %i.arr = trunc i128 %i.arq to i64
  store i64 %i.arr, ptr %i.b, align 8, !alias.scope !8223, !noalias !8230
  %i.ars = zext i1 %i.aqw to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i: ; preds = %bb.df, %bb.de
  %.sink.i18 = phi i128 [ %i.ars, %bb.df ], [ %i.arc, %bb.de ] ; 5 uses
  %storemerge.i.i7.i = phi i8 [ 64, %bb.df ], [ %i.ard, %bb.de ] ; 5 uses
  store i128 %.sink.i18, ptr %1, align 16, !alias.scope !8223, !noalias !8230
  store i8 %storemerge.i.i7.i, ptr %i.a, align 16, !alias.scope !8223, !noalias !8230
  br i1 %i.aqw, label %bb.dg, label %bb.do

bb.dg:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i
  %i.art = getelementptr inbounds nuw i8, ptr %i.aqu, i64 8
  %i.aru = load ptr, ptr %i.art, align 8, !alias.scope !8230, !noalias !8232, !nonnull !27, !noundef !27 ; 8 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 16
  %i.arw = load i64, ptr %i.arv, align 8, !alias.scope !8230, !noalias !8232, !noundef !27 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8244)
  %i.arx = load i64, ptr %i.b, align 8, !alias.scope !8246, !noalias !8247, !noundef !27 ; 2 uses
  %i.ary = tail call noundef i64 @llvm.fshr.i64(i64 %i.arx, i64 %i.arx, i64 %i.arw) ; 6 uses
  store i64 %i.ary, ptr %i.b, align 8, !alias.scope !8246, !noalias !8247
  %i.arz = icmp samesign ult i64 %i.arw, 17
  %i.asa = load ptr, ptr %i.c, align 16, !alias.scope !8246, !noalias !8247, !nonnull !27, !align !108, !noundef !27 ; 3 uses
  br i1 %i.arz, label %bb.di, label %bb.dh, !prof !121

bb.dh:                                            ; preds = %bb.dg
  %i.asb = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aru, i64 noundef range(i64 0, -9223372036854775808) %i.arw, i64 noundef %i.ary, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.asa) #57, !noalias !8248
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i21

bb.di:                                            ; preds = %bb.dg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8252)
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asa, i64 8
  %i.asd = load i64, ptr %i.asc, align 8, !alias.scope !8252, !noalias !8254, !noundef !27 ; 4 uses
  %i.ase = icmp samesign ugt i64 %i.arw, 7
  br i1 %i.ase, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i32, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.asf = icmp samesign ugt i64 %i.arw, 3
  br i1 %i.asf, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i29, label %bb.dk

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i32: ; preds = %bb.di
  %.sroa.014.0.copyload.i.i.i.i33 = load i64, ptr %i.aru, align 1, !alias.scope !8255, !noalias !8256
  %i.asg = xor i64 %.sroa.014.0.copyload.i.i.i.i33, %i.ary
  %i.ash = getelementptr i8, ptr %i.aru, i64 %i.arw
  %i.asi = getelementptr i8, ptr %i.ash, i64 -8
  %.sroa.016.0.copyload.i.i.i.i34 = load i64, ptr %i.asi, align 1, !alias.scope !8255, !noalias !8256
  %i.asj = xor i64 %.sroa.016.0.copyload.i.i.i.i34, %i.asd
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i26

bb.dk:                                            ; preds = %bb.dj
  %.not.i.i.i.i25 = icmp eq i64 %i.arw, 0
  br i1 %.not.i.i.i.i25, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i26, label %bb.dl

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i29: ; preds = %bb.dj
  %i.ask = getelementptr i8, ptr %i.aru, i64 %i.arw
  %i.asl = getelementptr i8, ptr %i.ask, i64 -4
  %.sroa.019.0.copyload.i.i.i.i30 = load i32, ptr %i.asl, align 1, !alias.scope !8255, !noalias !8256
  %.sroa.018.0.copyload.i.i.i.i31 = load i32, ptr %i.aru, align 1, !alias.scope !8255, !noalias !8256
  %i.asm = zext i32 %.sroa.018.0.copyload.i.i.i.i31 to i64
  %i.asn = xor i64 %i.ary, %i.asm
  %i.aso = zext i32 %.sroa.019.0.copyload.i.i.i.i30 to i64
  %i.asp = xor i64 %i.asd, %i.aso
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i26

bb.dl:                                            ; preds = %bb.dk
  %i.asq = load i8, ptr %i.aru, align 1, !alias.scope !8255, !noalias !8256, !noundef !27
  %i.asr = lshr i64 %i.arw, 1
  %i.ass = getelementptr inbounds nuw i8, ptr %i.aru, i64 %i.asr
  %i.ast = load i8, ptr %i.ass, align 1, !alias.scope !8255, !noalias !8256, !noundef !27
  %i.asu = getelementptr i8, ptr %i.aru, i64 %i.arw
  %i.asv = getelementptr i8, ptr %i.asu, i64 -1
  %i.asw = load i8, ptr %i.asv, align 1, !alias.scope !8255, !noalias !8256, !noundef !27
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
  store i64 %storemerge.i.i9.i, ptr %i.b, align 8, !alias.scope !8246, !noalias !8247
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8260)
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
  %i.ats = load i64, ptr %i.asa, align 8, !noalias !8263, !noundef !27
  %i.att = zext i64 %i.atr to i128
  %i.atu = zext i64 %i.ats to i128
  %i.atv = xor i128 %i.atq, %i.atu
  %i.atw = mul nuw i128 %i.atv, %i.att            ; 2 uses
  %i.atx = lshr i128 %i.atw, 64
  %i.aty = xor i128 %i.atx, %i.atw
  %i.atz = trunc i128 %i.aty to i64
  store i64 %i.atz, ptr %i.b, align 8, !alias.scope !8264, !noalias !8265
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i22

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i22: ; preds = %bb.dn, %bb.dm
  %.sink.i.i23 = phi i128 [ 255, %bb.dn ], [ %i.atn, %bb.dm ] ; 2 uses
  %storemerge.i.i.i.i24 = phi i8 [ 8, %bb.dn ], [ %i.ato, %bb.dm ] ; 2 uses
  store i128 %.sink.i.i23, ptr %1, align 16, !alias.scope !8264, !noalias !8265
  store i8 %storemerge.i.i.i.i24, ptr %i.a, align 16, !alias.scope !8264, !noalias !8265
  br label %bb.do

bb.do:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i22, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i
  %i.aua = phi i128 [ %.sink.i.i23, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i22 ], [ %.sink.i18, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i ] ; 3 uses
  %i.aub = phi i8 [ %storemerge.i.i.i.i24, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i22 ], [ %storemerge.i.i7.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.i ] ; 3 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aqu, i64 160 ; 2 uses
  %i.aud = load i64, ptr %i.auc, align 8, !range !1923, !alias.scope !8230, !noalias !8232, !noundef !27 ; 3 uses
  %i.aue = icmp ne i64 %i.aud, -9223372036854775807 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8269)
  %i.auf = icmp ugt i8 %i.aub, 64
  br i1 %i.auf, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i: ; preds = %bb.do
  %i.aug = zext i1 %i.aue to i128
  %i.auh = zext nneg i8 %i.aub to i128
  %i.aui = shl nuw nsw i128 %i.aug, %i.auh
  %i.auj = or i128 %i.aui, %i.aua                 ; 4 uses
  store i128 %i.auj, ptr %1, align 16, !alias.scope !8272, !noalias !8230
  %i.auk = add nuw i8 %i.aub, 64
  store i8 %i.auk, ptr %i.a, align 16, !alias.scope !8272, !noalias !8230
  br i1 %i.aue, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i.i, label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i

_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i
  %i.aul = getelementptr inbounds nuw i8, ptr %i.aqu, i64 24 ; 2 uses
  %i.aum = load i64, ptr %i.aul, align 8, !range !68, !alias.scope !8230, !noalias !8232, !noundef !27
  %i.aun = icmp ne i64 %i.aum, -9223372036854775808 ; 2 uses
  %i.auo = zext i1 %i.aun to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i: ; preds = %bb.do
  %i.aup = trunc i128 %i.aua to i64
  %i.auq = lshr i128 %i.aua, 64
  %i.aur = load i64, ptr %i.b, align 8, !alias.scope !8272, !noalias !8230, !noundef !27
  %i.aus = xor i64 %i.aur, %i.aup
  %i.aut = load ptr, ptr %i.c, align 16, !alias.scope !8272, !noalias !8230, !nonnull !27, !align !108, !noundef !27 ; 2 uses
  %i.auu = load i64, ptr %i.aut, align 8, !noalias !8273, !noundef !27
  %i.auv = zext i64 %i.aus to i128
  %i.auw = zext i64 %i.auu to i128
  %i.aux = xor i128 %i.auq, %i.auw
  %i.auy = mul nuw i128 %i.aux, %i.auv            ; 2 uses
  %i.auz = lshr i128 %i.auy, 64
  %i.ava = xor i128 %i.auz, %i.auy
  %i.avb = trunc i128 %i.ava to i64               ; 2 uses
  store i64 %i.avb, ptr %i.b, align 8, !alias.scope !8272, !noalias !8230
  %i.avc = zext i1 %i.aue to i128                 ; 2 uses
  store i128 %i.avc, ptr %1, align 16, !alias.scope !8272, !noalias !8230
  store i8 64, ptr %i.a, align 16, !alias.scope !8272, !noalias !8230
  br i1 %i.aue, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i, label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread27.i

_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread27.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i
  %i.avd = getelementptr inbounds nuw i8, ptr %i.aqu, i64 24 ; 2 uses
  %i.ave = load i64, ptr %i.avd, align 8, !range !68, !alias.scope !8230, !noalias !8232, !noundef !27
  %i.avf = icmp ne i64 %i.ave, -9223372036854775808 ; 2 uses
  %i.avg = zext i1 %i.avf to i64
  br label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i
  %i.avh = icmp eq i64 %i.aud, -9223372036854775808 ; 2 uses
  %i.avi = select i1 %i.avh, i128 18446744073709551616, i128 0
  %2 = or disjoint i128 %i.avi, %i.avc
  store i128 %2, ptr %1, align 16, !alias.scope !8274, !noalias !8281
  store i8 -128, ptr %i.a, align 16, !alias.scope !8274, !noalias !8281
  br i1 %i.avh, label %bb.dq, label %bb.dr

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8284)
  %i.avj = icmp eq i64 %i.aud, -9223372036854775808 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8286)
  %i.avk = trunc i128 %i.auj to i64
  %i.avl = lshr i128 %i.auj, 64
  %i.avm = load i64, ptr %i.b, align 8, !alias.scope !8274, !noalias !8281, !noundef !27
  %i.avn = xor i64 %i.avm, %i.avk
  %i.avo = load ptr, ptr %i.c, align 16, !alias.scope !8274, !noalias !8281, !nonnull !27, !align !108, !noundef !27
  %i.avp = load i64, ptr %i.avo, align 8, !noalias !8287, !noundef !27
  %i.avq = zext i64 %i.avn to i128
  %i.avr = zext i64 %i.avp to i128
  %i.avs = xor i128 %i.avl, %i.avr
  %i.avt = mul nuw i128 %i.avs, %i.avq            ; 2 uses
  %i.avu = lshr i128 %i.avt, 64
  %i.avv = xor i128 %i.avu, %i.avt
  %i.avw = trunc i128 %i.avv to i64
  store i64 %i.avw, ptr %i.b, align 8, !alias.scope !8274, !noalias !8281
  %i.avx = zext i1 %i.avj to i128
  store i128 %i.avx, ptr %1, align 16, !alias.scope !8274, !noalias !8281
  store i8 64, ptr %i.a, align 16, !alias.scope !8274, !noalias !8281
  br i1 %i.avj, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i.i
  %i.avy = getelementptr inbounds nuw i8, ptr %i.aqu, i64 176
  %i.avz = load ptr, ptr %i.avy, align 8, !alias.scope !8281, !noalias !8288, !nonnull !27, !noundef !27
  %i.awa = getelementptr inbounds nuw i8, ptr %i.aqu, i64 184
  %i.awb = load i64, ptr %i.awa, align 8, !alias.scope !8281, !noalias !8288, !noundef !27 ; 2 uses
  %i.awc = zext i64 %i.awb to i128
  %i.awd = shl nuw i128 %i.awc, 64
  %i.awe = or disjoint i128 %i.awd, 1
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.dq:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i
  %i.awf = getelementptr inbounds nuw i8, ptr %i.aqu, i64 176
  %i.awg = load ptr, ptr %i.awf, align 8, !alias.scope !8281, !noalias !8288, !nonnull !27, !noundef !27
  %i.awh = getelementptr inbounds nuw i8, ptr %i.aqu, i64 184
  %i.awi = load i64, ptr %i.awh, align 8, !alias.scope !8281, !noalias !8288, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8295)
  %i.awj = xor i64 %i.avb, 1
  %i.awk = load i64, ptr %i.aut, align 8, !noalias !8298, !noundef !27
  %i.awl = zext i64 %i.awj to i128
  %i.awm = xor i64 %i.awk, 1
  %i.awn = zext i64 %i.awm to i128
  %i.awo = mul nuw i128 %i.awn, %i.awl            ; 2 uses
  %i.awp = lshr i128 %i.awo, 64
  %i.awq = xor i128 %i.awp, %i.awo
  %i.awr = trunc i128 %i.awq to i64
  store i64 %i.awr, ptr %i.b, align 8, !alias.scope !8299, !noalias !8281
  %i.aws = zext i64 %i.awi to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.dq, %bb.dp
  %i.awt = phi i64 [ %i.awi, %bb.dq ], [ %i.awb, %bb.dp ]
  %i.awu = phi ptr [ %i.awg, %bb.dq ], [ %i.avz, %bb.dp ]
  %.sink.i.i.i = phi i128 [ %i.aws, %bb.dq ], [ %i.awe, %bb.dp ]
  %storemerge.i.i.i.i.i = phi i8 [ 64, %bb.dq ], [ -128, %bb.dp ]
  store i128 %.sink.i.i.i, ptr %1, align 16, !alias.scope !8299, !noalias !8281
  store i8 %storemerge.i.i.i.i.i, ptr %i.a, align 16, !alias.scope !8299, !noalias !8281
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.awu, i64 noundef %i.awt, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !8283
  br label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

bb.dr:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.auc, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.dr, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.pr.i = load i8, ptr %i.a, align 16, !alias.scope !8300, !noalias !8230 ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 24 ; 3 uses
  %i.aww = load i64, ptr %i.awv, align 8, !range !68, !alias.scope !8230, !noalias !8232, !noundef !27
  %i.awx = icmp ne i64 %i.aww, -9223372036854775808 ; 3 uses
  %i.awy = zext i1 %i.awx to i64                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8306)
  %i.awz = icmp ugt i8 %.pr.i, 64
  %.pre41.i = load i128, ptr %1, align 16, !alias.scope !8300, !noalias !8230 ; 2 uses
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
  store i128 %i.axi, ptr %1, align 16, !alias.scope !8300, !noalias !8230
  %i.axj = add nuw i8 %i.axe, 64                  ; 2 uses
  store i8 %i.axj, ptr %i.a, align 16, !alias.scope !8300, !noalias !8230
  br i1 %i.axc, label %bb.ds, label %bb.dv

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i: ; preds = %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.axk = phi i128 [ %i.auj, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %.pre41.i, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.axl = phi i64 [ %i.auo, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.awy, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.axm = phi i1 [ %i.aun, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.awx, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.axn = phi ptr [ %i.aul, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.awv, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.axo = trunc i128 %i.axk to i64
  %i.axp = lshr i128 %i.axk, 64
  %i.axq = load i64, ptr %i.b, align 8, !alias.scope !8300, !noalias !8230, !noundef !27
  %i.axr = xor i64 %i.axq, %i.axo
  %i.axs = load ptr, ptr %i.c, align 16, !alias.scope !8300, !noalias !8230, !nonnull !27, !align !108, !noundef !27
  %i.axt = load i64, ptr %i.axs, align 8, !noalias !8307, !noundef !27
  %i.axu = zext i64 %i.axr to i128
  %i.axv = zext i64 %i.axt to i128
  %i.axw = xor i128 %i.axp, %i.axv
  %i.axx = mul nuw i128 %i.axw, %i.axu            ; 2 uses
  %i.axy = lshr i128 %i.axx, 64
  %i.axz = xor i128 %i.axy, %i.axx
  %i.aya = trunc i128 %i.axz to i64
  store i64 %i.aya, ptr %i.b, align 8, !alias.scope !8300, !noalias !8230
  %i.ayb = zext nneg i64 %i.axl to i128           ; 2 uses
  store i128 %i.ayb, ptr %1, align 16, !alias.scope !8300, !noalias !8230
  store i8 64, ptr %i.a, align 16, !alias.scope !8300, !noalias !8230
  br i1 %i.axm, label %bb.ds, label %.thread29.i

.thread29.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.aqu, i64 112 ; 2 uses
  %i.ayd = load i64, ptr %i.ayc, align 8, !range !68, !alias.scope !8230, !noalias !8232, !noundef !27
  %i.aye = icmp ne i64 %i.ayd, -9223372036854775808
  br label %bb.dw

bb.ds:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i
  %i.ayf = phi ptr [ %i.axd, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i ], [ %i.axn, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8311)
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ayf, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 72
  %i.ayh = load ptr, ptr %i.ayg, align 8, !alias.scope !8313, !noalias !8314, !nonnull !27, !noundef !27
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayf, i64 80
  %i.ayj = load i64, ptr %i.ayi, align 8, !alias.scope !8313, !noalias !8314, !noundef !27 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8321)
  %i.ayk = load i8, ptr %i.a, align 16, !alias.scope !8324, !noalias !8313, !noundef !27 ; 3 uses
  %i.ayl = icmp ugt i8 %i.ayk, 64
  br i1 %i.ayl, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aym = zext i64 %i.ayj to i128
  %i.ayn = zext nneg i8 %i.ayk to i128
  %i.ayo = shl nuw i128 %i.aym, %i.ayn
  %i.ayp = load i128, ptr %1, align 16, !alias.scope !8324, !noalias !8313, !noundef !27
  %i.ayq = or i128 %i.ayp, %i.ayo
  %i.ayr = add nuw i8 %i.ayk, 64
  br label %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

bb.du:                                            ; preds = %bb.ds
  %i.ays = load i128, ptr %1, align 16, !alias.scope !8324, !noalias !8313, !noundef !27 ; 2 uses
  %i.ayt = trunc i128 %i.ays to i64
  %i.ayu = lshr i128 %i.ays, 64
  %i.ayv = load i64, ptr %i.b, align 8, !alias.scope !8324, !noalias !8313, !noundef !27
  %i.ayw = xor i64 %i.ayv, %i.ayt
  %i.ayx = load ptr, ptr %i.c, align 16, !alias.scope !8324, !noalias !8313, !nonnull !27, !align !108, !noundef !27
  %i.ayy = load i64, ptr %i.ayx, align 8, !noalias !8325, !noundef !27
  %i.ayz = zext i64 %i.ayw to i128
  %i.aza = zext i64 %i.ayy to i128
  %i.azb = xor i128 %i.ayu, %i.aza
  %i.azc = mul nuw i128 %i.azb, %i.ayz            ; 2 uses
  %i.azd = lshr i128 %i.azc, 64
  %i.aze = xor i128 %i.azd, %i.azc
  %i.azf = trunc i128 %i.aze to i64
  store i64 %i.azf, ptr %i.b, align 8, !alias.scope !8324, !noalias !8313
  %i.azg = zext i64 %i.ayj to i128
  br label %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.du, %bb.dt
  %.sink.i.i11.i = phi i128 [ %i.azg, %bb.du ], [ %i.ayq, %bb.dt ]
  %storemerge.i.i.i.i12.i = phi i8 [ 64, %bb.du ], [ %i.ayr, %bb.dt ]
  store i128 %.sink.i.i11.i, ptr %1, align 16, !alias.scope !8324, !noalias !8313
  store i8 %storemerge.i.i.i.i12.i, ptr %i.a, align 16, !alias.scope !8324, !noalias !8313
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ayh, i64 noundef %i.ayj, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %.pr28.i = load i8, ptr %i.a, align 16, !alias.scope !8326, !noalias !8230
  %.pre.pre.i = load i128, ptr %1, align 16, !alias.scope !8326, !noalias !8230
  br label %bb.dv

bb.dv:                                            ; preds = %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i
  %.pre.i = phi i128 [ %i.axi, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i ], [ %.pre.pre.i, %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %i.azh = phi i8 [ %i.axj, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i ], [ %.pr28.i, %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %i.aqu, i64 112 ; 3 uses
  %i.azj = load i64, ptr %i.azi, align 8, !range !68, !alias.scope !8230, !noalias !8232, !noundef !27
  %i.azk = icmp ne i64 %i.azj, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8332)
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
  store i128 %i.azt, ptr %1, align 16, !alias.scope !8326, !noalias !8230
  %i.azu = add nuw i8 %i.azp, 64                  ; 2 uses
  store i8 %i.azu, ptr %i.a, align 16, !alias.scope !8326, !noalias !8230
  br i1 %i.azn, label %bb.dx, label %bb.ec

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i20: ; preds = %bb.dv
  %i.azv = trunc i128 %.pre.i to i64
  %i.azw = lshr i128 %.pre.i, 64
  %i.azx = load i64, ptr %i.b, align 8, !alias.scope !8326, !noalias !8230, !noundef !27
  %i.azy = xor i64 %i.azx, %i.azv
  %i.azz = load ptr, ptr %i.c, align 16, !alias.scope !8326, !noalias !8230, !nonnull !27, !align !108, !noundef !27
  %i.baa = load i64, ptr %i.azz, align 8, !noalias !8333, !noundef !27
  %i.bab = zext i64 %i.azy to i128
  %i.bac = zext i64 %i.baa to i128
  %i.bad = xor i128 %i.azw, %i.bac
  %i.bae = mul nuw i128 %i.bad, %i.bab            ; 2 uses
  %i.baf = lshr i128 %i.bae, 64
  %i.bag = xor i128 %i.baf, %i.bae
  %i.bah = trunc i128 %i.bag to i64
  store i64 %i.bah, ptr %i.b, align 8, !alias.scope !8326, !noalias !8230
  %i.bai = zext i1 %i.azk to i128
  store i128 %i.bai, ptr %1, align 16, !alias.scope !8326, !noalias !8230
  store i8 64, ptr %i.a, align 16, !alias.scope !8326, !noalias !8230
  br i1 %i.azk, label %.thread31.i, label %.thread35.i

.thread35.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i20
  %i.baj = getelementptr inbounds nuw i8, ptr %i.aqu, i64 224 ; 2 uses
  %i.bak = load i64, ptr %i.baj, align 8, !range !1923, !alias.scope !8230, !noalias !8232, !noundef !27 ; 2 uses
  %i.bal = icmp ne i64 %i.bak, -9223372036854775807
  br label %bb.ed

.thread31.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i20
  %i.bam = getelementptr inbounds nuw i8, ptr %i.aqu, i64 120
  %i.ban = load ptr, ptr %i.bam, align 8, !alias.scope !8334, !noalias !8337, !nonnull !27, !noundef !27
  %i.bao = getelementptr inbounds nuw i8, ptr %i.aqu, i64 128
  %i.bap = load i64, ptr %i.bao, align 8, !alias.scope !8334, !noalias !8337, !noundef !27
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8341)
  %i.baq = getelementptr inbounds nuw i8, ptr %i.aqu, i64 120
  %i.bar = load ptr, ptr %i.baq, align 8, !alias.scope !8343, !noalias !8344, !nonnull !27, !noundef !27 ; 2 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %i.aqu, i64 128
  %i.bat = load i64, ptr %i.bas, align 8, !alias.scope !8343, !noalias !8344, !noundef !27 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8351)
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
  %i.bbd = load i64, ptr %i.b, align 8, !alias.scope !8354, !noalias !8343, !noundef !27
  %i.bbe = xor i64 %i.bbd, %i.bbb
  %i.bbf = load ptr, ptr %i.c, align 16, !alias.scope !8354, !noalias !8343, !nonnull !27, !align !108, !noundef !27
  %i.bbg = load i64, ptr %i.bbf, align 8, !noalias !8355, !noundef !27
  %i.bbh = zext i64 %i.bbe to i128
  %i.bbi = zext i64 %i.bbg to i128
  %i.bbj = xor i128 %i.bbc, %i.bbi
  %i.bbk = mul nuw i128 %i.bbj, %i.bbh            ; 2 uses
  %i.bbl = lshr i128 %i.bbk, 64
  %i.bbm = xor i128 %i.bbl, %i.bbk
  %i.bbn = trunc i128 %i.bbm to i64
  store i64 %i.bbn, ptr %i.b, align 8, !alias.scope !8354, !noalias !8343
  %i.bbo = zext i64 %i.bat to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i13.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i13.i: ; preds = %bb.dz, %bb.dy
  %i.bbp = phi i64 [ %i.bat, %bb.dz ], [ %i.bav, %bb.dy ]
  %i.bbq = phi ptr [ %i.bar, %bb.dz ], [ %i.baw, %bb.dy ]
  %i.bbr = phi ptr [ %i.azo, %bb.dz ], [ %i.bax, %bb.dy ] ; 2 uses
  %.sink.i.i14.i = phi i128 [ %i.bbo, %bb.dz ], [ %i.bba, %bb.dy ]
  %storemerge.i.i.i.i15.i = phi i8 [ 64, %bb.dz ], [ -128, %bb.dy ]
  store i128 %.sink.i.i14.i, ptr %1, align 16, !alias.scope !8354, !noalias !8343
  store i8 %storemerge.i.i.i.i15.i, ptr %i.a, align 16, !alias.scope !8354, !noalias !8343
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bbq, i64 noundef %i.bbp, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !8339
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbr, i64 32
  %i.bbt = load ptr, ptr %i.bbs, align 8, !alias.scope !8343, !noalias !8344, !nonnull !27, !noundef !27
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbr, i64 40
  %i.bbv = load i64, ptr %i.bbu, align 8, !alias.scope !8343, !noalias !8344, !noundef !27 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8362)
  %i.bbw = load i8, ptr %i.a, align 16, !alias.scope !8365, !noalias !8343, !noundef !27 ; 3 uses
  %i.bbx = icmp ugt i8 %i.bbw, 64
  br i1 %i.bbx, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i13.i
  %i.bby = zext i64 %i.bbv to i128
  %i.bbz = zext nneg i8 %i.bbw to i128
  %i.bca = shl nuw i128 %i.bby, %i.bbz
  %i.bcb = load i128, ptr %1, align 16, !alias.scope !8365, !noalias !8343, !noundef !27
  %i.bcc = or i128 %i.bcb, %i.bca
  %i.bcd = add nuw i8 %i.bbw, 64
  br label %_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

bb.eb:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i13.i
  %i.bce = load i128, ptr %1, align 16, !alias.scope !8365, !noalias !8343, !noundef !27 ; 2 uses
  %i.bcf = trunc i128 %i.bce to i64
  %i.bcg = lshr i128 %i.bce, 64
  %i.bch = load i64, ptr %i.b, align 8, !alias.scope !8365, !noalias !8343, !noundef !27
  %i.bci = xor i64 %i.bch, %i.bcf
  %i.bcj = load ptr, ptr %i.c, align 16, !alias.scope !8365, !noalias !8343, !nonnull !27, !align !108, !noundef !27
  %i.bck = load i64, ptr %i.bcj, align 8, !noalias !8366, !noundef !27
  %i.bcl = zext i64 %i.bci to i128
  %i.bcm = zext i64 %i.bck to i128
  %i.bcn = xor i128 %i.bcg, %i.bcm
  %i.bco = mul nuw i128 %i.bcn, %i.bcl            ; 2 uses
  %i.bcp = lshr i128 %i.bco, 64
  %i.bcq = xor i128 %i.bcp, %i.bco
  %i.bcr = trunc i128 %i.bcq to i64
  store i64 %i.bcr, ptr %i.b, align 8, !alias.scope !8365, !noalias !8343
  %i.bcs = zext i64 %i.bbv to i128
  br label %_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.eb, %bb.ea
  %.sink.i1.i.i = phi i128 [ %i.bcs, %bb.eb ], [ %i.bcc, %bb.ea ]
  %storemerge.i.i.i2.i.i = phi i8 [ 64, %bb.eb ], [ %i.bcd, %bb.ea ]
  store i128 %.sink.i1.i.i, ptr %1, align 16, !alias.scope !8365, !noalias !8343
  store i8 %storemerge.i.i.i2.i.i, ptr %i.a, align 16, !alias.scope !8365, !noalias !8343
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.bbt, i64 noundef %i.bbv, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !8339
  %.pr34.i = load i8, ptr %i.a, align 16, !alias.scope !8367, !noalias !8230
  %.pre42.pre.i = load i128, ptr %1, align 16, !alias.scope !8367, !noalias !8230
  br label %bb.ec

bb.ec:                                            ; preds = %_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.dw
  %.pre42.i = phi i128 [ %i.azt, %bb.dw ], [ %.pre42.pre.i, %_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %i.bct = phi i8 [ %i.azu, %bb.dw ], [ %.pr34.i, %_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.aqu, i64 224 ; 4 uses
  %i.bcv = load i64, ptr %i.bcu, align 8, !range !1923, !alias.scope !8230, !noalias !8232, !noundef !27 ; 3 uses
  %i.bcw = icmp ne i64 %i.bcv, -9223372036854775807 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8373)
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
  store i128 %i.bdg, ptr %1, align 16, !alias.scope !8367, !noalias !8230
  %i.bdh = add nuw i8 %i.bdc, 64
  store i8 %i.bdh, ptr %i.a, align 16, !alias.scope !8367, !noalias !8230
  br i1 %i.bcz, label %bb.ee, label %common.ret509

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i19: ; preds = %bb.ec
  %i.bdi = trunc i128 %.pre42.i to i64
  %i.bdj = lshr i128 %.pre42.i, 64
  %i.bdk = load i64, ptr %i.b, align 8, !alias.scope !8367, !noalias !8230, !noundef !27
  %i.bdl = xor i64 %i.bdk, %i.bdi
  %i.bdm = load ptr, ptr %i.c, align 16, !alias.scope !8367, !noalias !8230, !nonnull !27, !align !108, !noundef !27 ; 2 uses
  %i.bdn = load i64, ptr %i.bdm, align 8, !noalias !8374, !noundef !27
  %i.bdo = zext i64 %i.bdl to i128
  %i.bdp = zext i64 %i.bdn to i128
  %i.bdq = xor i128 %i.bdj, %i.bdp
  %i.bdr = mul nuw i128 %i.bdq, %i.bdo            ; 2 uses
  %i.bds = lshr i128 %i.bdr, 64
  %i.bdt = xor i128 %i.bds, %i.bdr
  %i.bdu = trunc i128 %i.bdt to i64               ; 2 uses
  store i64 %i.bdu, ptr %i.b, align 8, !alias.scope !8367, !noalias !8230
  %i.bdv = zext i1 %i.bcw to i128                 ; 2 uses
  store i128 %i.bdv, ptr %1, align 16, !alias.scope !8367, !noalias !8230
  store i8 64, ptr %i.a, align 16, !alias.scope !8367, !noalias !8230
  br i1 %i.bcw, label %.thread37.i, label %common.ret509

.thread37.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i19
  %i.bdw = icmp eq i64 %i.bcv, -9223372036854775808 ; 2 uses
  %i.bdx = select i1 %i.bdw, i128 18446744073709551616, i128 0
  %3 = or disjoint i128 %i.bdx, %i.bdv            ; 2 uses
  store i128 %3, ptr %1, align 16, !alias.scope !8375, !noalias !8382
  store i8 -128, ptr %i.a, align 16, !alias.scope !8375, !noalias !8382
  br i1 %i.bdw, label %bb.eg, label %bb.eh

bb.ee:                                            ; preds = %bb.ed
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8385)
  %i.bdy = icmp eq i64 %i.bda, -9223372036854775808 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8387)
  %.not40.i = icmp eq i8 %i.bdc, 0
  br i1 %.not40.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i21.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i: ; preds = %bb.ee
  %i.bdz = select i1 %i.bdy, i128 18446744073709551616, i128 0
  %i.bea = or i128 %i.bdg, %i.bdz                 ; 2 uses
  store i128 %i.bea, ptr %1, align 16, !alias.scope !8375, !noalias !8382
  store i8 -128, ptr %i.a, align 16, !alias.scope !8375, !noalias !8382
  br i1 %i.bdy, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge, label %bb.eh

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i
  %extract.t.i = trunc i128 %i.bdg to i64
  %.pre215 = load i64, ptr %i.b, align 8, !alias.scope !8388, !noalias !8382
  %.pre216 = load ptr, ptr %i.c, align 16, !alias.scope !8388, !noalias !8382
  br label %bb.eg

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i21.i: ; preds = %bb.ee
  %i.beb = trunc i128 %i.bdg to i64
  %i.bec = lshr i128 %i.bdg, 64
  %i.bed = load i64, ptr %i.b, align 8, !alias.scope !8375, !noalias !8382, !noundef !27
  %i.bee = xor i64 %i.bed, %i.beb
  %i.bef = load ptr, ptr %i.c, align 16, !alias.scope !8375, !noalias !8382, !nonnull !27, !align !108, !noundef !27
  %i.beg = load i64, ptr %i.bef, align 8, !noalias !8395, !noundef !27
  %i.beh = zext i64 %i.bee to i128
  %i.bei = zext i64 %i.beg to i128
  %i.bej = xor i128 %i.bec, %i.bei
  %i.bek = mul nuw i128 %i.bej, %i.beh            ; 2 uses
  %i.bel = lshr i128 %i.bek, 64
  %i.bem = xor i128 %i.bel, %i.bek
  %i.ben = trunc i128 %i.bem to i64
  store i64 %i.ben, ptr %i.b, align 8, !alias.scope !8375, !noalias !8382
  %i.beo = zext i1 %i.bdy to i128
  store i128 %i.beo, ptr %1, align 16, !alias.scope !8375, !noalias !8382
  store i8 64, ptr %i.a, align 16, !alias.scope !8375, !noalias !8382
  br i1 %i.bdy, label %bb.ef, label %bb.eh

bb.ef:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i21.i
  %i.bep = getelementptr inbounds nuw i8, ptr %i.aqu, i64 240
  %i.beq = load ptr, ptr %i.bep, align 8, !alias.scope !8382, !noalias !8396, !nonnull !27, !noundef !27
  %i.ber = getelementptr inbounds nuw i8, ptr %i.aqu, i64 248
  %i.bes = load i64, ptr %i.ber, align 8, !alias.scope !8382, !noalias !8396, !noundef !27 ; 2 uses
  %i.bet = zext i64 %i.bes to i128
  %i.beu = shl nuw i128 %i.bet, 64
  %i.bev = or disjoint i128 %i.beu, 1
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i18.i

bb.eg:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge, %.thread37.i
  %i.bew = phi ptr [ %i.bdm, %.thread37.i ], [ %.pre216, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %i.bex = phi i64 [ %i.bdu, %.thread37.i ], [ %.pre215, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %i.bey = phi i128 [ %3, %.thread37.i ], [ %i.bea, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %i.bez = phi ptr [ %i.bcu, %.thread37.i ], [ %i.bdb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ] ; 2 uses
  %.off0.i = phi i64 [ 1, %.thread37.i ], [ %extract.t.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bez, i64 16
  %i.bfb = load ptr, ptr %i.bfa, align 8, !alias.scope !8382, !noalias !8396, !nonnull !27, !noundef !27
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bez, i64 24
  %i.bfd = load i64, ptr %i.bfc, align 8, !alias.scope !8382, !noalias !8396, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8399)
  %4 = lshr i128 %i.bey, 64
  %i.bfe = xor i64 %i.bex, %.off0.i
  %i.bff = load i64, ptr %i.bew, align 8, !noalias !8400, !noundef !27
  %i.bfg = zext i64 %i.bfe to i128
  %i.bfh = zext i64 %i.bff to i128
  %i.bfi = xor i128 %4, %i.bfh
  %i.bfj = mul nuw i128 %i.bfi, %i.bfg            ; 2 uses
  %i.bfk = lshr i128 %i.bfj, 64
  %i.bfl = xor i128 %i.bfk, %i.bfj
  %i.bfm = trunc i128 %i.bfl to i64
  store i64 %i.bfm, ptr %i.b, align 8, !alias.scope !8388, !noalias !8382
  %i.bfn = zext i64 %i.bfd to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i18.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i18.i: ; preds = %bb.eg, %bb.ef
  %i.bfo = phi i64 [ %i.bfd, %bb.eg ], [ %i.bes, %bb.ef ]
  %i.bfp = phi ptr [ %i.bfb, %bb.eg ], [ %i.beq, %bb.ef ]
  %.sink.i.i19.i = phi i128 [ %i.bfn, %bb.eg ], [ %i.bev, %bb.ef ]
  %storemerge.i.i.i.i20.i = phi i8 [ 64, %bb.eg ], [ -128, %bb.ef ]
  store i128 %.sink.i.i19.i, ptr %1, align 16, !alias.scope !8388, !noalias !8382
  store i8 %storemerge.i.i.i.i20.i, ptr %i.a, align 16, !alias.scope !8388, !noalias !8382
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bfp, i64 noundef %i.bfo, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !8384
  br label %common.ret509

bb.eh:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i21.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i, %.thread37.i
  %i.bfq = phi ptr [ %i.bdb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i21.i ], [ %i.bdb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i ], [ %i.bcu, %.thread37.i ] ; 2 uses
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bfq, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfq, i64 64
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bfr, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %common.ret509
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 {
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
  %i.bk = alloca [1 x i8], align 1                ; 4 uses
  %i.bl = alloca [8 x i8], align 8                ; 4 uses
  %i.bm = alloca [1 x i8], align 1                ; 4 uses
  %i.bn = alloca [8 x i8], align 8                ; 4 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 74 uses
  %i.bp = load i64, ptr %.tr, align 16, !range !1015, !noundef !27 ; 4 uses
  %i.bq = icmp ne i64 %i.bp, 35
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = add nsw i64 %i.bp, -4
  %i.bs = icmp samesign ugt i64 %i.bp, 3
  %i.bt = select i1 %i.bs, i64 %i.br, i64 31      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !8401
  store i64 %i.bt, ptr %i.bo, align 8, !noalias !8401
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef 8) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !8401
  switch i64 %i.bt, label %bb.b [
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
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @_RINvXs8_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5AliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret261

bb.d:                                             ; preds = %tailrecurse
  %i.bv = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8406)
  %i.bw = load i64, ptr %i.bv, align 8, !range !1938, !alias.scope !8406, !noalias !8409, !noundef !27
  %i.bx = icmp ne i64 %i.bw, 3                    ; 2 uses
  %i.by = zext i1 %i.bx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !8411
  store i64 %i.by, ptr %i.bn, align 8, !noalias !8411
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef 8) #62, !noalias !8406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !8411
  br i1 %i.bx, label %bb.e, label %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bv, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #62
  br label %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !8406, !noalias !8409, !nonnull !27, !noundef !27
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !8406, !noalias !8409, !noundef !27
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef %i.cc) #62, !noalias !8406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !8416
  store i8 -1, ptr %i.bm, align 1, !noalias !8416
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef 1) #62, !noalias !8423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !8416
  br label %common.ret261

bb.f:                                             ; preds = %tailrecurse
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ce = load ptr, ptr %i.cd, align 16, !nonnull !27, !noundef !27
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  tail call void @_RINvXs3_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5FieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cf, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ch = load ptr, ptr %i.cg, align 16, !nonnull !27, !noundef !27 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !8424
  store i64 %i.cj, ptr %i.bl, align 8, !noalias !8424
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef 8) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !8424
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8429)
  %.idx.i = mul nuw nsw i64 %i.cj, 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i
  %i.cl = icmp eq i64 %i.cj, 0
  br i1 %i.cl, label %common.ret261, label %.lr.ph.i
end_hunk_0
begin_hunk_1_@_RNvXsiq_NtCs4lawaffTVVK_9sqlparser3astNtB6_8FunctionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a
  %i.r = select i1 %i.q, i64 %i.p, i64 2          ; 2 uses
  %i.s = load i64, ptr %i.n, align 8, !range !1923, !alias.scope !23946, !noalias !23943, !noundef !27 ; 2 uses
  %i.t = xor i64 %i.s, -9223372036854775808
  %i.u = icmp slt i64 %i.s, 0
  %i.v = select i1 %i.u, i64 %i.t, i64 2          ; 3 uses
  switch i64 %i.r, label %bb.d [
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 0, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.x = icmp eq i64 %i.v, 2
  br i1 %i.x, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.y = tail call i8 @llvm.scmp.i8.i64(i64 %i.r, i64 %i.v)
  br label %_RNvXsiA_NtCs4lawaffTVVK_9sqlparser3astNtB6_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.h:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !23943, !noalias !23946, !nonnull !27, !noundef !27
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !23946, !noalias !23943, !nonnull !27, !noundef !27
  %i.ad = tail call fastcc noundef i8 @_RNvXs1w_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.ac) #62, !noalias !23948, !inline_history !23949
  br label %_RNvXsiA_NtCs4lawaffTVVK_9sqlparser3astNtB6_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = tail call fastcc noundef i8 @_RNvXsiK_NtCs4lawaffTVVK_9sqlparser3astNtB6_20FunctionArgumentListNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n) #62, !inline_history !23949
  br label %_RNvXsiA_NtCs4lawaffTVVK_9sqlparser3astNtB6_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXsiA_NtCs4lawaffTVVK_9sqlparser3astNtB6_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i = phi i8 [ %i.ad, %bb.h ], [ %i.y, %bb.g ], [ %i.ae, %bb.i ] ; 2 uses
  %i.af = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.af, label %bb.j, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2P_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %_RNvXsiA_NtCs4lawaffTVVK_9sqlparser3astNtB6_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23953)
  %i.ai = load i64, ptr %i.ag, align 8, !range !1923, !alias.scope !23950, !noalias !23953, !noundef !27 ; 2 uses
  %i.aj = xor i64 %i.ai, -9223372036854775808
  %i.ak = icmp slt i64 %i.ai, 0
  %i.al = select i1 %i.ak, i64 %i.aj, i64 2       ; 2 uses
  %i.am = load i64, ptr %i.ah, align 8, !range !1923, !alias.scope !23953, !noalias !23950, !noundef !27 ; 2 uses
  %i.an = xor i64 %i.am, -9223372036854775808
  %i.ao = icmp slt i64 %i.am, 0
  %i.ap = select i1 %i.ao, i64 %i.an, i64 2       ; 3 uses
  switch i64 %i.al, label %bb.k [
    i64 1, label %bb.l
    i64 2, label %bb.m
    i64 0, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ar = icmp eq i64 %i.ap, 2
  br i1 %i.ar, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %i.as = tail call i8 @llvm.scmp.i8.i64(i64 %i.al, i64 %i.ap)
  br label %_RNvXsiA_NtCs4lawaffTVVK_9sqlparser3astNtB6_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit40

bb.o:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !23950, !noalias !23953, !nonnull !27, !noundef !27
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !23953, !noalias !23950, !nonnull !27, !noundef !27
  %i.ax = tail call fastcc noundef i8 @_RNvXs1w_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.aw) #62, !noalias !23955, !inline_history !23949
  br label %_RNvXsiA_NtCs4lawaffTVVK_9sqlparser3astNtB6_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit40

bb.p:                                             ; preds = %bb.m
  %i.ay = tail call fastcc noundef i8 @_RNvXsiK_NtCs4lawaffTVVK_9sqlparser3astNtB6_20FunctionArgumentListNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ah) #62, !inline_history !23949
  br label %_RNvXsiA_NtCs4lawaffTVVK_9sqlparser3astNtB6_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit40

_RNvXsiA_NtCs4lawaffTVVK_9sqlparser3astNtB6_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit40: ; preds = %bb.n, %bb.o, %bb.p
  %.sroa.0.0.i39 = phi i8 [ %i.ax, %bb.o ], [ %i.as, %bb.n ], [ %i.ay, %bb.p ] ; 2 uses
  %i.az = icmp eq i8 %.sroa.0.0.i39, 0
  br i1 %i.az, label %bb.q, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2P_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.q:                                             ; preds = %_RNvXsiA_NtCs4lawaffTVVK_9sqlparser3astNtB6_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit40
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bb = load ptr, ptr %i.ba, align 8, !align !108, !noundef !27 ; 2 uses
  %.not = icmp eq ptr %i.bb, null
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.bd = load ptr, ptr %i.bc, align 8, !align !108, !noundef !27 ; 2 uses
  %.not26 = icmp eq ptr %i.bd, null               ; 2 uses
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.not26, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2P_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.u

bb.s:                                             ; preds = %bb.q
  br i1 %.not26, label %bb.t, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2P_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.bf = load i8, ptr %i.be, align 1, !range !2104, !noundef !27 ; 2 uses
  %.not28 = icmp eq i8 %i.bf, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 321
  %i.bh = load i8, ptr %i.bg, align 1, !range !2104, !noundef !27 ; 2 uses
  %.not29 = icmp eq i8 %i.bh, 2                   ; 2 uses
  br i1 %.not28, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.bi = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.bd) #62 ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.t, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2P_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.v:                                             ; preds = %bb.t
  br i1 %.not29, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2P_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.y

bb.w:                                             ; preds = %bb.t
  br i1 %.not29, label %bb.x, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2P_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %bb.y, %bb.w
  %i.bk = load i64, ptr %0, align 8, !range !24, !noundef !27
  %.not31 = icmp eq i64 %i.bk, 5
  %i.bl = load i64, ptr %1, align 8, !range !24, !noundef !27
  %.not32 = icmp eq i64 %i.bl, 5                  ; 2 uses
  br i1 %.not31, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.bm = sub nsw i8 %i.bf, %i.bh                 ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.x, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2P_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.z:                                             ; preds = %bb.x
  br i1 %.not32, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2P_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ad

bb.aa:                                            ; preds = %bb.x
  br i1 %.not32, label %bb.ab, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2P_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !27, !noundef !27
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.br = load i64, ptr %i.bq, align 8, !noundef !27 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !27, !noundef !27
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !27 ; 2 uses
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 6987403058223316) %i.bv, i64 range(i64 0, 6987403058223316) %i.br) ; 2 uses
  %exitcond.not.i59 = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %exitcond.not.i59, label %._crit_edge, label %.lr.ph

bb.ac:                                            ; preds = %.lr.ph
  %i.bw = add nuw nsw i64 %.sroa.01.0.i60, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bw, %.sroa.0.0.i.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ac, %bb.ab
  %i.bx = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 6987403058223316) %i.br, i64 range(i64 0, 6987403058223316) %i.bv)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2P_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph:                                           ; preds = %bb.ab, %bb.ac
  %.sroa.01.0.i60 = phi i64 [ %i.bw, %bb.ac ], [ 0, %bb.ab ] ; 3 uses
  %i.by = getelementptr inbounds nuw [1320 x i8], ptr %i.bp, i64 %.sroa.01.0.i60
  %i.bz = getelementptr inbounds nuw [1320 x i8], ptr %i.bt, i64 %.sroa.01.0.i60
  %i.ca = tail call fastcc noundef i8 @_RNvXsbq_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11OrderByExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1320) %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1320) %i.bz) #62, !inline_history !18878 ; 2 uses
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.ac, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2P_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.ad:                                            ; preds = %bb.z
  %i.cc = tail call fastcc noundef i8 @_RNvXs7C_NtCs4lawaffTVVK_9sqlparser3astNtB6_10WindowTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1) #62 ; 2 uses
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.ab, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2P_s_0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2P_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %._crit_edge, %bb.z, %bb.aa, %bb.v, %bb.w, %bb.r, %bb.s, %bb.b, %bb.u, %bb.ad, %bb.y, %_RNvXsiA_NtCs4lawaffTVVK_9sqlparser3astNtB6_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit40, %_RNvXsiA_NtCs4lawaffTVVK_9sqlparser3astNtB6_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %bb.a
  %.sroa.0.0 = phi i8 [ %i.e, %bb.a ], [ 1, %bb.z ], [ %i.cc, %bb.ad ], [ -1, %bb.aa ], [ 1, %bb.v ], [ %i.bm, %bb.y ], [ -1, %bb.w ], [ 1, %bb.r ], [ %i.bi, %bb.u ], [ -1, %bb.s ], [ %i.k, %bb.b ], [ %.sroa.0.0.i39, %_RNvXsiA_NtCs4lawaffTVVK_9sqlparser3astNtB6_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit40 ], [ %.sroa.0.0.i, %_RNvXsiA_NtCs4lawaffTVVK_9sqlparser3astNtB6_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ], [ %i.bx, %._crit_edge ], [ %i.ca, %.lr.ph ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsj_NtCs2pqxYH9ZEk8_3std2ioINtB5_5BytesRShENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23964)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23966
  store i8 0, ptr %i.a, align 1, !noalias !23966
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23967)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !23970, !noalias !23971, !noundef !27 ; 2 uses
  %2 = icmp ne i64 %i.c, 0                        ; 2 uses
  %.sroa.0.0.i.i.i.i = zext i1 %2 to i64          ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !23970, !noalias !23971, !nonnull !27, !noundef !27 ; 3 uses
  br i1 %2, label %bb.c, label %bb.b, !prof !23973

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implhECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull %i.a, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %.sroa.0.0.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @752), !noalias !23974
  br label %_RNvXsk_NtCs2pqxYH9ZEk8_3std2ioRShNtB5_12SpecReadByte14spec_read_byteCs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 1, !noalias !23975, !noundef !27
  %3 = sub nuw nsw i64 %i.c, %.sroa.0.0.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.e, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !23976, !noalias !23977
  br label %_RNvXsk_NtCs2pqxYH9ZEk8_3std2ioRShNtB5_12SpecReadByte14spec_read_byteCs14kWLkQVSKO_14deltalake_core.exit

_RNvXsk_NtCs2pqxYH9ZEk8_3std2ioRShNtB5_12SpecReadByte14spec_read_byteCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.c
  %.sink7.i.i = phi i64 [ %3, %bb.c ], [ 0, %bb.b ]
  %.sink.i.i = phi i8 [ 0, %bb.c ], [ 2, %bb.b ]
  %.sink8.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.i.i.i.i
  store ptr %.sink8.i.i, ptr %1, align 8, !alias.scope !23970, !noalias !23971
  store i64 %.sink7.i.i, ptr %i.b, align 8, !alias.scope !23970, !noalias !23971
  store i8 %.sink.i.i, ptr %0, align 8, !alias.scope !23976, !noalias !23977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23966
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_NtCs5wg436RVUAP_24datafusion_physical_plan14execution_planNtB5_14SchedulingTypeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !1800, !noundef !27
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 11, i64 14
  %.1 = select i1 %i.b, ptr @1074, ptr @1073
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RNvXsj_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #28 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !588, !noundef !27 ; 3 uses
  %i.b = load i64, ptr %1, align 8, !range !588, !noundef !27 ; 2 uses
  %.not = icmp eq i64 %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !27, !noundef !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !27 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !27, !noundef !27
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !27 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.k)
  %i.m = tail call i32 @memcmp(ptr nonnull %i.g, ptr nonnull %i.l, i64 %spec.store.select) ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp eq i32 %i.m, 0
  %i.p = sub i64 %i.f, %i.k
  %spec.select = select i1 %i.o, i64 %i.p, i64 %i.n ; 3 uses
  %i.q = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select, i64 0) ; 3 uses
  switch i64 %i.a, label %default.unreachable58 [
    i64 0, label %bb.f
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.r = tail call i8 @llvm.scmp.i8.i64(i64 %i.a, i64 %i.b)
  br label %bb.f

default.unreachable58:                            ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = icmp eq i64 %spec.select, 0
  br i1 %i.s, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.t = icmp eq i64 %spec.select, 0
  br i1 %i.t, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.h, %bb.e, %bb.d, %bb.i, %bb.g, %bb.c
  %.sroa.0.0 = phi i8 [ %i.r, %bb.c ], [ %i.q, %bb.e ], [ %i.ai, %bb.g ], [ %i.q, %bb.d ], [ %i.bn, %bb.i ], [ %i.ax, %bb.h ], [ %i.q, %bb.b ]
  ret i8 %.sroa.0.0

bb.g:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !27, !noundef !27
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i64, ptr %i.w, align 8, !noundef !27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !27, !noundef !27
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !27 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %spec.store.select3 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.ac)
  %i.ae = tail call i32 @memcmp(ptr nonnull %i.y, ptr nonnull %i.ad, i64 %spec.store.select3) ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp eq i32 %i.ae, 0
  %i.ah = sub i64 %i.x, %i.ac
  %spec.select54 = select i1 %i.ag, i64 %i.ah, i64 %i.af
  %i.ai = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select54, i64 0)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !27, !noundef !27
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i64, ptr %i.al, align 8, !noundef !27 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !27, !noundef !27
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !27 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %spec.store.select4 = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.ar)
  %i.at = tail call i32 @memcmp(ptr nonnull %i.an, ptr nonnull %i.as, i64 %spec.store.select4) ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = icmp eq i32 %i.at, 0
  %i.aw = sub i64 %i.am, %i.ar
  %spec.select55 = select i1 %i.av, i64 %i.aw, i64 %i.au ; 2 uses
  %i.ax = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select55, i64 0)
  %i.ay = icmp eq i64 %spec.select55, 0
  br i1 %i.ay, label %bb.i, label %bb.f

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !27, !noundef !27
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !27 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !27, !noundef !27
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !27 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %spec.store.select5 = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.bh)
  %i.bj = tail call i32 @memcmp(ptr nonnull %i.bd, ptr nonnull %i.bi, i64 %spec.store.select5) ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp eq i32 %i.bj, 0
  %i.bm = sub i64 %i.bc, %i.bh
  %spec.select56 = select i1 %i.bl, i64 %i.bm, i64 %i.bk
  %i.bn = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select56, i64 0)
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsj_NtCsjhHCjzi9uUI_17datafusion_common5statsNtB5_16ColumnStatisticsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(288) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 6 uses
  %i.b = alloca [80 x i8], align 16               ; 7 uses
  %i.c = alloca [80 x i8], align 16               ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.val6 = load i64, ptr %i.d, align 16, !range !588, !noundef !27 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.val7 = load i64, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23981)
  %i.f = load i128, ptr %1, align 16, !range !3705, !alias.scope !23981, !noalias !23978, !noundef !27
  %i.g = trunc nuw nsw i128 %i.f to i64
  switch i64 %i.g, label %default.unreachable [
    i64 0, label %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.sink.split
    i64 1, label %bb.b
    i64 2, label %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  ]

default.unreachable:                              ; preds = %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit10, %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.sink.split

_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink.ph = phi i128 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.i, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.h) #62
  br label %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.sink.split, %bb.a
  %.sink = phi i128 [ 2, %bb.a ], [ %.sink.ph, %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.sink.split ]
  %switch.i = phi i1 [ false, %bb.a ], [ true, %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.sink.split ]
  store i128 %.sink, ptr %i.c, align 16, !alias.scope !23978, !noalias !23981
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23986)
  %i.k = load i128, ptr %i.j, align 16, !range !3705, !alias.scope !23986, !noalias !23983, !noundef !27
  %i.l = trunc nuw nsw i128 %i.k to i64
  switch i64 %i.l, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit10
  ]

bb.c:                                             ; preds = %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.n, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.m) #62
          to label %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit10 unwind label %bb.e

bb.d:                                             ; preds = %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.p, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.o) #62
          to label %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit10 unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit19: ; preds = %bb.h, %.sink.split.i17, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.aa, %.sink.split.i17 ], [ %i.aa, %bb.h ]
  br i1 %switch.i, label %.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit

.sink.split.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit19
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.i

end_hunk_1
