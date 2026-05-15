inline.NumInlined: 10475
inline.NumDeleted: 2844
begin_hunk_0_@_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.hds = load ptr, ptr %i.c, align 16, !alias.scope !21836, !nonnull !3, !align !65, !noundef !3
  %i.hdt = load i64, ptr %i.hds, align 8, !noalias !21836, !noundef !3
  %i.hdu = xor i64 %i.hdt, %i.hdp
  %i.hdv = zext i64 %i.hdr to i128
  %i.hdw = zext i64 %i.hdu to i128
  %i.hdx = mul nuw i128 %i.hdw, %i.hdv            ; 2 uses
  %i.hdy = lshr i128 %i.hdx, 64
  %i.hdz = xor i128 %i.hdy, %i.hdx
  %i.hea = trunc i128 %i.hdz to i64
  store i64 %i.hea, ptr %i.b, align 8, !alias.scope !21836
  %i.heb = zext nneg i8 %i.hdl to i128            ; 2 uses
  store i128 %i.heb, ptr %1, align 16, !alias.scope !21836
  store i8 8, ptr %i.a, align 16, !alias.scope !21836
  %i.hec = getelementptr inbounds nuw i8, ptr %.tr, i64 112 ; 2 uses
  %i.hed = load i64, ptr %i.hec, align 8, !range !4, !noundef !3
  %i.hee = icmp ne i64 %i.hed, -9223372036854775808
  br label %bb.qs

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269.thread
  %i.hef = phi i128 [ %i.hcz, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269.thread ], [ %i.hdi, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269 ]
  %i.heg = phi i8 [ %i.hdb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269.thread ], [ %i.hdl, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269 ]
  %storemerge.i.i268782 = phi i8 [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269.thread ], [ %i.hdj, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269 ] ; 3 uses
  %i.heh = zext nneg i8 %i.heg to i128
  %i.hei = zext nneg i8 %storemerge.i.i268782 to i128
  %i.hej = shl nuw nsw i128 %i.heh, %i.hei
  %i.hek = or i128 %i.hej, %i.hef                 ; 4 uses
  store i128 %i.hek, ptr %1, align 16, !alias.scope !21836
  %i.hel = add nuw i8 %storemerge.i.i268782, 8    ; 2 uses
  store i8 %i.hel, ptr %i.a, align 16, !alias.scope !21836
  %i.hem = getelementptr inbounds nuw i8, ptr %.tr, i64 112 ; 3 uses
  %i.hen = load i64, ptr %i.hem, align 8, !range !4, !noundef !3
  %i.heo = icmp ne i64 %i.hen, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21840)
  %i.hep = icmp samesign ugt i8 %storemerge.i.i268782, 56
  br i1 %i.hep, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit54, label %bb.qs

bb.qs:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267
  %i.heq = phi i128 [ %i.heb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267.thread ], [ %i.hek, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267 ]
  %i.her = phi i1 [ %i.hee, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267.thread ], [ %i.heo, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267 ] ; 2 uses
  %i.hes = phi ptr [ %i.hec, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267.thread ], [ %i.hem, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267 ]
  %storemerge.i.i266784 = phi i8 [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267.thread ], [ %i.hel, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267 ] ; 2 uses
  %i.het = zext i1 %i.her to i128
  %i.heu = zext nneg i8 %storemerge.i.i266784 to i128
  %i.hev = shl nuw nsw i128 %i.het, %i.heu
  %i.hew = or i128 %i.hev, %i.heq                 ; 3 uses
  store i128 %i.hew, ptr %1, align 16, !alias.scope !21843
  %i.hex = add nuw i8 %storemerge.i.i266784, 64
  store i8 %i.hex, ptr %i.a, align 16, !alias.scope !21843
  br i1 %i.her, label %bb.qt, label %.thread786

.thread786:                                       ; preds = %bb.qs
  %i.hey = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.hez = load i64, ptr %i.hey, align 8, !range !7, !noundef !3
  %extract.t1930 = trunc i128 %i.hew to i64
  %extract1933 = lshr i128 %i.hew, 64
  %extract.t1934 = trunc nuw i128 %extract1933 to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit54: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267
  %i.hfa = trunc i128 %i.hek to i64
  %i.hfb = lshr i128 %i.hek, 64
  %i.hfc = trunc nuw i128 %i.hfb to i64
  %i.hfd = load i64, ptr %i.b, align 8, !alias.scope !21843, !noundef !3
  %i.hfe = xor i64 %i.hfd, %i.hfa
  %i.hff = load ptr, ptr %i.c, align 16, !alias.scope !21843, !nonnull !3, !align !65, !noundef !3
  %i.hfg = load i64, ptr %i.hff, align 8, !noalias !21843, !noundef !3
  %i.hfh = xor i64 %i.hfg, %i.hfc
  %i.hfi = zext i64 %i.hfe to i128
  %i.hfj = zext i64 %i.hfh to i128
  %i.hfk = mul nuw i128 %i.hfj, %i.hfi            ; 2 uses
  %i.hfl = lshr i128 %i.hfk, 64
  %i.hfm = xor i128 %i.hfl, %i.hfk
  %i.hfn = trunc i128 %i.hfm to i64
  store i64 %i.hfn, ptr %i.b, align 8, !alias.scope !21843
  %i.hfo = zext i1 %i.heo to i128
  store i128 %i.hfo, ptr %1, align 16, !alias.scope !21843
  store i8 64, ptr %i.a, align 16, !alias.scope !21843
  br i1 %i.heo, label %bb.qt, label %.thread787

.thread787:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit54
  %i.hfp = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.hfq = load i64, ptr %i.hfp, align 8, !range !7, !noundef !3
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52

bb.qt:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit54, %bb.qs
  %i.hfr = phi ptr [ %i.hes, %bb.qs ], [ %i.hem, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit54 ] ; 2 uses
  %i.hfs = getelementptr i8, ptr %i.hfr, i64 8
  %.val478 = load ptr, ptr %i.hfs, align 8, !nonnull !3, !noundef !3
  %i.hft = getelementptr i8, ptr %i.hfr, i64 16
  %.val479 = load i64, ptr %i.hft, align 8, !noundef !3
  tail call fastcc void @_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val478, i64 %.val479, ptr noalias noundef align 16 dereferenceable(48) %1) #57
  %.pr785 = load i8, ptr %i.a, align 16, !alias.scope !21844 ; 2 uses
  %i.hfu = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.hfv = load i64, ptr %i.hfu, align 8, !range !7, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21850)
  %i.hfw = icmp ugt i8 %.pr785, 64
  %.pre1705 = load i128, ptr %1, align 16, !alias.scope !21844 ; 3 uses
  %extract.t1931 = trunc i128 %.pre1705 to i64
  %extract1935 = lshr i128 %.pre1705, 64
  %extract.t1936 = trunc nuw i128 %extract1935 to i64
  br i1 %i.hfw, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52: ; preds = %bb.qt, %.thread787
  %i.hfx = phi i128 [ 0, %.thread787 ], [ %.pre1705, %bb.qt ]
  %i.hfy = phi i64 [ %i.hfq, %.thread787 ], [ %i.hfv, %bb.qt ] ; 2 uses
  %i.hfz = phi i8 [ 64, %.thread787 ], [ %.pr785, %bb.qt ] ; 3 uses
  %i.hga = zext nneg i64 %i.hfy to i128
  %i.hgb = zext nneg i8 %i.hfz to i128
  %i.hgc = shl nuw nsw i128 %i.hga, %i.hgb
  %i.hgd = or i128 %i.hgc, %i.hfx                 ; 5 uses
  store i128 %i.hgd, ptr %1, align 16, !alias.scope !21844
  %i.hge = add nuw i8 %i.hfz, 64                  ; 2 uses
  store i8 %i.hge, ptr %i.a, align 16, !alias.scope !21844
  %i.hgf = trunc nuw i64 %i.hfy to i1
  br i1 %i.hgf, label %bb.qu, label %bb.qx

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread: ; preds = %bb.qt, %.thread786
  %.off01929 = phi i64 [ %extract.t1930, %.thread786 ], [ %extract.t1931, %bb.qt ]
  %.off641932 = phi i64 [ %extract.t1934, %.thread786 ], [ %extract.t1936, %bb.qt ]
  %i.hgg = phi i64 [ %i.hez, %.thread786 ], [ %i.hfv, %bb.qt ] ; 2 uses
  %i.hgh = load i64, ptr %i.b, align 8, !alias.scope !21844, !noundef !3
  %i.hgi = xor i64 %i.hgh, %.off01929
  %i.hgj = load ptr, ptr %i.c, align 16, !alias.scope !21844, !nonnull !3, !align !65, !noundef !3 ; 2 uses
  %i.hgk = load i64, ptr %i.hgj, align 8, !noalias !21844, !noundef !3
  %i.hgl = xor i64 %i.hgk, %.off641932
  %i.hgm = zext i64 %i.hgi to i128
  %i.hgn = zext i64 %i.hgl to i128
  %i.hgo = mul nuw i128 %i.hgn, %i.hgm            ; 2 uses
  %i.hgp = lshr i128 %i.hgo, 64
  %i.hgq = xor i128 %i.hgp, %i.hgo
  %i.hgr = trunc i128 %i.hgq to i64               ; 2 uses
  store i64 %i.hgr, ptr %i.b, align 8, !alias.scope !21844
  %i.hgs = zext nneg i64 %i.hgg to i128
  store i128 %i.hgs, ptr %1, align 16, !alias.scope !21844
  store i8 64, ptr %i.a, align 16, !alias.scope !21844
  %i.hgt = trunc nuw i64 %i.hgg to i1
  br i1 %i.hgt, label %.thread790, label %.thread793

.thread793:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread
  %i.hgu = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hgv = load i64, ptr %i.hgu, align 8, !range !7, !noundef !3
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50

.thread790:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread
  %i.hgw = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.hgx = load i64, ptr %i.hgw, align 8, !noundef !3
  br label %bb.qv

bb.qu:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52
  %i.hgy = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.hgz = load i64, ptr %i.hgy, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21854)
  %.not = icmp eq i8 %i.hfz, 0
  br i1 %.not, label %bb.qv, label %bb.qw

bb.qv:                                            ; preds = %.thread790, %bb.qu
  %i.hha = phi i128 [ 1, %.thread790 ], [ %i.hgd, %bb.qu ]
  %i.hhb = phi i64 [ %i.hgx, %.thread790 ], [ %i.hgz, %bb.qu ]
  %i.hhc = zext i64 %i.hhb to i128
  %i.hhd = shl nuw i128 %i.hhc, 64
  %i.hhe = or i128 %i.hhd, %i.hha
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468

bb.qw:                                            ; preds = %bb.qu
  %i.hhf = trunc i128 %i.hgd to i64
  %i.hhg = lshr i128 %i.hgd, 64
  %i.hhh = trunc nuw i128 %i.hhg to i64
  %i.hhi = load i64, ptr %i.b, align 8, !alias.scope !21857, !noundef !3
  %i.hhj = xor i64 %i.hhi, %i.hhf
  %i.hhk = load ptr, ptr %i.c, align 16, !alias.scope !21857, !nonnull !3, !align !65, !noundef !3
  %i.hhl = load i64, ptr %i.hhk, align 8, !noalias !21857, !noundef !3
  %i.hhm = xor i64 %i.hhl, %i.hhh
  %i.hhn = zext i64 %i.hhj to i128
  %i.hho = zext i64 %i.hhm to i128
  %i.hhp = mul nuw i128 %i.hho, %i.hhn            ; 2 uses
  %i.hhq = lshr i128 %i.hhp, 64
  %i.hhr = xor i128 %i.hhq, %i.hhp
  %i.hhs = trunc i128 %i.hhr to i64
  store i64 %i.hhs, ptr %i.b, align 8, !alias.scope !21857
  %i.hht = zext i64 %i.hgz to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468: ; preds = %bb.qv, %bb.qw
  %storemerge854 = phi i128 [ %i.hht, %bb.qw ], [ %i.hhe, %bb.qv ] ; 2 uses
  %storemerge.i.i467 = phi i8 [ 64, %bb.qw ], [ -128, %bb.qv ] ; 2 uses
  store i128 %storemerge854, ptr %1, align 16, !alias.scope !21857
  store i8 %storemerge.i.i467, ptr %i.a, align 16, !alias.scope !21857
  br label %bb.qx

bb.qx:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52
  %i.hhu = phi i128 [ %i.hgd, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52 ], [ %storemerge854, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468 ] ; 3 uses
  %i.hhv = phi i8 [ %i.hge, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52 ], [ %storemerge.i.i467, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468 ]
  %i.hhw = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hhx = load i64, ptr %i.hhw, align 8, !range !7, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21861)
  %i.hhy = icmp ugt i8 %i.hhv, 64
  %.pre1706.pre = load i64, ptr %i.b, align 8, !alias.scope !21864 ; 2 uses
  %.pre1707.pre = load ptr, ptr %i.c, align 16, !alias.scope !21864 ; 4 uses
  br i1 %i.hhy, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50: ; preds = %bb.qx, %.thread793
  %.pre1707 = phi ptr [ %i.hgj, %.thread793 ], [ %.pre1707.pre, %bb.qx ] ; 3 uses
  %.pre1706 = phi i64 [ %i.hgr, %.thread793 ], [ %.pre1706.pre, %bb.qx ] ; 2 uses
  %i.hhz = phi i128 [ 0, %.thread793 ], [ %i.hhu, %bb.qx ] ; 2 uses
  %i.hia = phi i64 [ %i.hgv, %.thread793 ], [ %i.hhx, %bb.qx ] ; 2 uses
  %i.hib = zext nneg i64 %i.hia to i128
  %i.hic = shl nuw nsw i128 %i.hib, 64
  %i.hid = or i128 %i.hic, %i.hhz                 ; 2 uses
  store i128 %i.hid, ptr %1, align 16, !alias.scope !21869
  store i8 -128, ptr %i.a, align 16, !alias.scope !21869
  %i.hie = trunc nuw i64 %i.hia to i1
  %extract.t1938 = trunc i128 %i.hhz to i64       ; 2 uses
  %extract1941 = lshr i128 %i.hid, 64
  %extract.t1942 = trunc nuw i128 %extract1941 to i64 ; 2 uses
  br i1 %i.hie, label %bb.qy, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread: ; preds = %bb.qx
  %i.hif = trunc i128 %i.hhu to i64
  %i.hig = lshr i128 %i.hhu, 64
  %i.hih = trunc nuw i128 %i.hig to i64
  %i.hii = xor i64 %.pre1706.pre, %i.hif
  %i.hij = load i64, ptr %.pre1707.pre, align 8, !noalias !21869, !noundef !3
  %i.hik = xor i64 %i.hij, %i.hih
  %i.hil = zext i64 %i.hii to i128
  %i.him = zext i64 %i.hik to i128
  %i.hin = mul nuw i128 %i.him, %i.hil            ; 2 uses
  %i.hio = lshr i128 %i.hin, 64
  %i.hip = xor i128 %i.hio, %i.hin
  %i.hiq = trunc i128 %i.hip to i64               ; 3 uses
  store i64 %i.hiq, ptr %i.b, align 8, !alias.scope !21869
  %i.hir = zext nneg i64 %i.hhx to i128
  store i128 %i.hir, ptr %1, align 16, !alias.scope !21869
  store i8 64, ptr %i.a, align 16, !alias.scope !21869
  %i.his = trunc nuw i64 %i.hhx to i1
  br i1 %i.his, label %.thread801, label %.thread800

.thread801:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread
  %i.hit = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.hiu = load i64, ptr %i.hit, align 8, !noundef !3 ; 2 uses
  %i.hiv = zext i64 %i.hiu to i128
  %i.hiw = shl nuw i128 %i.hiv, 64
  %i.hix = or disjoint i128 %i.hiw, 1
  store i128 %i.hix, ptr %1, align 16, !alias.scope !21870
  store i8 -128, ptr %i.a, align 16, !alias.scope !21870
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48

bb.qy:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50
  %i.hiy = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.hiz = load i64, ptr %i.hiy, align 8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21876)
  %i.hja = xor i64 %.pre1706, %extract.t1938
  %i.hjb = load i64, ptr %.pre1707, align 8, !noalias !21870, !noundef !3
  %i.hjc = xor i64 %i.hjb, %extract.t1942
  %i.hjd = zext i64 %i.hja to i128
  %i.hje = zext i64 %i.hjc to i128
  %i.hjf = mul nuw i128 %i.hje, %i.hjd            ; 2 uses
  %i.hjg = lshr i128 %i.hjf, 64
  %i.hjh = xor i128 %i.hjg, %i.hjf
  %i.hji = trunc i128 %i.hjh to i64               ; 2 uses
  store i64 %i.hji, ptr %i.b, align 8, !alias.scope !21870
  %i.hjj = zext i64 %i.hiz to i128                ; 2 uses
  store i128 %i.hjj, ptr %1, align 16, !alias.scope !21870
  store i8 64, ptr %i.a, align 16, !alias.scope !21870
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21878)
  br label %.thread800

.thread800:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread, %bb.qy
  %i.hjk = phi ptr [ %.pre1707.pre, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread ], [ %.pre1707, %bb.qy ]
  %i.hjl = phi i64 [ %i.hiq, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread ], [ %i.hji, %bb.qy ]
  %i.hjm = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread ], [ %i.hjj, %bb.qy ] ; 2 uses
  %.in.in = getelementptr inbounds nuw i8, ptr %.tr, i64 136
  %.in = load i64, ptr %.in.in, align 8, !range !4, !noundef !3
  %.not855 = icmp eq i64 %.in, -9223372036854775808 ; 2 uses
  %i.hjn = select i1 %.not855, i128 0, i128 18446744073709551616
  %i.hjo = or disjoint i128 %i.hjn, %i.hjm
  store i128 %i.hjo, ptr %1, align 16, !alias.scope !21864
  store i8 -128, ptr %i.a, align 16, !alias.scope !21864
  br i1 %.not855, label %.thread804, label %bb.qz

.thread804:                                       ; preds = %.thread800
  %i.hjp = getelementptr inbounds nuw i8, ptr %.tr, i64 160
  %i.hjq = load i64, ptr %i.hjp, align 8, !range !4, !noundef !3
  %i.hjr = icmp ne i64 %i.hjq, -9223372036854775808 ; 2 uses
  %i.hjs = zext i1 %i.hjr to i64
  %extract.t2414 = trunc nuw i128 %i.hjm to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50, %.thread801
  %i.hjt = phi ptr [ %.pre1707, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50 ], [ %.pre1707.pre, %.thread801 ]
  %i.hju = phi i64 [ %.pre1706, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50 ], [ %i.hiq, %.thread801 ]
  %.off01937 = phi i64 [ %extract.t1938, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50 ], [ 1, %.thread801 ]
  %.off641940 = phi i64 [ %extract.t1942, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50 ], [ %i.hiu, %.thread801 ]
  %.in857.in = getelementptr inbounds nuw i8, ptr %.tr, i64 136
  %.in857 = load i64, ptr %.in857.in, align 8, !range !4, !noundef !3
  %i.hjv = icmp ne i64 %.in857, -9223372036854775808 ; 2 uses
  %i.hjw = xor i64 %.off01937, %i.hju
  %i.hjx = load i64, ptr %i.hjt, align 8, !noalias !21864, !noundef !3
  %i.hjy = xor i64 %i.hjx, %.off641940
  %i.hjz = zext i64 %i.hjw to i128
  %i.hka = zext i64 %i.hjy to i128
  %i.hkb = mul nuw i128 %i.hka, %i.hjz            ; 2 uses
  %i.hkc = lshr i128 %i.hkb, 64
  %i.hkd = xor i128 %i.hkc, %i.hkb
  %i.hke = trunc i128 %i.hkd to i64
  store i64 %i.hke, ptr %i.b, align 8, !alias.scope !21864
  %i.hkf = zext i1 %i.hjv to i128
  store i128 %i.hkf, ptr %1, align 16, !alias.scope !21864
  store i8 64, ptr %i.a, align 16, !alias.scope !21864
  br i1 %i.hjv, label %bb.qz, label %.thread805

.thread805:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48
  %i.hkg = getelementptr inbounds nuw i8, ptr %.tr, i64 160
  %i.hkh = load i64, ptr %i.hkg, align 8, !range !4, !noundef !3
  %i.hki = icmp ne i64 %i.hkh, -9223372036854775808 ; 2 uses
  %i.hkj = zext i1 %i.hki to i64
  br label %._crit_edge1708

bb.qz:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48, %.thread800
  %i.hkk = getelementptr inbounds nuw i8, ptr %.tr, i64 144
  %i.hkl = load ptr, ptr %i.hkk, align 8, !nonnull !3, !noundef !3
  %i.hkm = getelementptr inbounds nuw i8, ptr %.tr, i64 152
  %i.hkn = load i64, ptr %i.hkm, align 8, !noundef !3
  tail call void @_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hkl, i64 noundef %i.hkn) #57
  %.pr803 = load i8, ptr %i.a, align 16, !alias.scope !21879 ; 2 uses
  %i.hko = getelementptr inbounds nuw i8, ptr %.tr, i64 160
  %i.hkp = load i64, ptr %i.hko, align 8, !range !4, !noundef !3
  %i.hkq = icmp ne i64 %i.hkp, -9223372036854775808 ; 3 uses
  %i.hkr = zext i1 %i.hkq to i64                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21885)
  %i.hks = icmp ugt i8 %.pr803, 64
  %.pre1710 = load i128, ptr %1, align 16, !alias.scope !21879 ; 3 uses
  br i1 %i.hks, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge, label %._crit_edge1708

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge: ; preds = %bb.qz
  %.pre1711 = load i64, ptr %i.b, align 8, !alias.scope !21879
  %.pre1712 = load ptr, ptr %i.c, align 16, !alias.scope !21879
  %extract.t2413 = trunc i128 %.pre1710 to i64
  %extract2415 = lshr i128 %.pre1710, 64
  %extract.t2416 = trunc nuw i128 %extract2415 to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46

._crit_edge1708:                                  ; preds = %bb.qz, %.thread805
  %i.hkt = phi i128 [ 0, %.thread805 ], [ %.pre1710, %bb.qz ]
  %i.hku = phi i64 [ %i.hkj, %.thread805 ], [ %i.hkr, %bb.qz ]
  %i.hkv = phi i1 [ %i.hki, %.thread805 ], [ %i.hkq, %bb.qz ]
  %i.hkw = phi i8 [ 64, %.thread805 ], [ %.pr803, %bb.qz ] ; 2 uses
  %i.hkx = zext nneg i64 %i.hku to i128
  %i.hky = zext nneg i8 %i.hkw to i128
  %i.hkz = shl nuw nsw i128 %i.hkx, %i.hky
  %i.hla = or i128 %i.hkz, %i.hkt                 ; 2 uses
  store i128 %i.hla, ptr %1, align 16, !alias.scope !21879
  %i.hlb = add nuw i8 %i.hkw, 64                  ; 2 uses
  store i8 %i.hlb, ptr %i.a, align 16, !alias.scope !21879
  br i1 %i.hkv, label %bb.ra, label %bb.rb

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge, %.thread804
  %.pre1710.sink2412.off0 = phi i64 [ %extract.t2413, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %extract.t2414, %.thread804 ]
  %.pre1710.sink.off64 = phi i64 [ %extract.t2416, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ 0, %.thread804 ]
  %i.hlc = phi ptr [ %.pre1712, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %i.hjk, %.thread804 ]
  %i.hld = phi i64 [ %.pre1711, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %i.hjl, %.thread804 ]
  %i.hle = phi i64 [ %i.hkr, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %i.hjs, %.thread804 ]
  %i.hlf = phi i1 [ %i.hkq, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %i.hjr, %.thread804 ]
  %i.hlg = xor i64 %i.hld, %.pre1710.sink2412.off0
  %i.hlh = load i64, ptr %i.hlc, align 8, !noalias !21879, !noundef !3
  %i.hli = xor i64 %i.hlh, %.pre1710.sink.off64
  %i.hlj = zext i64 %i.hlg to i128
  %i.hlk = zext i64 %i.hli to i128
  %i.hll = mul nuw i128 %i.hlk, %i.hlj            ; 2 uses
  %i.hlm = lshr i128 %i.hll, 64
  %i.hln = xor i128 %i.hlm, %i.hll
  %i.hlo = trunc i128 %i.hln to i64
  store i64 %i.hlo, ptr %i.b, align 8, !alias.scope !21879
  %i.hlp = zext nneg i64 %i.hle to i128           ; 2 uses
  store i128 %i.hlp, ptr %1, align 16, !alias.scope !21879
  store i8 64, ptr %i.a, align 16, !alias.scope !21879
  br i1 %i.hlf, label %bb.ra, label %.thread807

.thread807:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46
  %i.hlq = getelementptr inbounds nuw i8, ptr %.tr, i64 331
  %i.hlr = load i8, ptr %i.hlq, align 1, !range !120, !noundef !3 ; 2 uses
  %i.hls = icmp ne i8 %i.hlr, 2
  br label %bb.rc

bb.ra:                                            ; preds = %._crit_edge1708, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46
  %i.hlt = getelementptr inbounds nuw i8, ptr %.tr, i64 168
  %i.hlu = load ptr, ptr %i.hlt, align 8, !nonnull !3, !noundef !3
  %i.hlv = getelementptr inbounds nuw i8, ptr %.tr, i64 176
  %i.hlw = load i64, ptr %i.hlv, align 8, !noundef !3
  tail call void @_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hlu, i64 noundef %i.hlw) #57
  %.pr806 = load i8, ptr %i.a, align 16, !alias.scope !21886
  %.pre1713.pre = load i128, ptr %1, align 16, !alias.scope !21886
  br label %bb.rb

bb.rb:                                            ; preds = %._crit_edge1708, %bb.ra
  %.pre1713 = phi i128 [ %i.hla, %._crit_edge1708 ], [ %.pre1713.pre, %bb.ra ] ; 3 uses
  %i.hlx = phi i8 [ %i.hlb, %._crit_edge1708 ], [ %.pr806, %bb.ra ] ; 2 uses
  %i.hly = getelementptr inbounds nuw i8, ptr %.tr, i64 331
  %i.hlz = load i8, ptr %i.hly, align 1, !range !120, !noundef !3 ; 3 uses
  %i.hma = icmp ne i8 %i.hlz, 2                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21892)
  %i.hmb = icmp ugt i8 %i.hlx, 64
  br i1 %i.hmb, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44, label %bb.rc

bb.rc:                                            ; preds = %.thread807, %bb.rb
  %i.hmc = phi i128 [ %i.hlp, %.thread807 ], [ %.pre1713, %bb.rb ]
  %i.hmd = phi i1 [ %i.hls, %.thread807 ], [ %i.hma, %bb.rb ] ; 2 uses
  %i.hme = phi i8 [ %i.hlr, %.thread807 ], [ %i.hlz, %bb.rb ] ; 2 uses
  %i.hmf = phi i8 [ 64, %.thread807 ], [ %i.hlx, %bb.rb ] ; 3 uses
  %i.hmg = zext i1 %i.hmd to i128
  %i.hmh = zext nneg i8 %i.hmf to i128
  %i.hmi = shl nuw nsw i128 %i.hmg, %i.hmh
  %i.hmj = or i128 %i.hmi, %i.hmc                 ; 5 uses
  store i128 %i.hmj, ptr %1, align 16, !alias.scope !21886
  %i.hmk = add nuw i8 %i.hmf, 64                  ; 3 uses
  store i8 %i.hmk, ptr %i.a, align 16, !alias.scope !21886
  br i1 %i.hmd, label %bb.rd, label %bb.rf

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44: ; preds = %bb.rb
  %i.hml = trunc i128 %.pre1713 to i64
  %i.hmm = lshr i128 %.pre1713, 64
  %i.hmn = trunc nuw i128 %i.hmm to i64
  %i.hmo = load i64, ptr %i.b, align 8, !alias.scope !21886, !noundef !3
  %i.hmp = xor i64 %i.hmo, %i.hml
  %i.hmq = load ptr, ptr %i.c, align 16, !alias.scope !21886, !nonnull !3, !align !65, !noundef !3
  %i.hmr = load i64, ptr %i.hmq, align 8, !noalias !21886, !noundef !3
  %i.hms = xor i64 %i.hmr, %i.hmn
  %i.hmt = zext i64 %i.hmp to i128
  %i.hmu = zext i64 %i.hms to i128
  %i.hmv = mul nuw i128 %i.hmu, %i.hmt            ; 2 uses
  %i.hmw = lshr i128 %i.hmv, 64
  %i.hmx = xor i128 %i.hmw, %i.hmv
  %i.hmy = trunc i128 %i.hmx to i64
  store i64 %i.hmy, ptr %i.b, align 8, !alias.scope !21886
  %i.hmz = zext i1 %i.hma to i128
  store i128 %i.hmz, ptr %1, align 16, !alias.scope !21886
  store i8 64, ptr %i.a, align 16, !alias.scope !21886
  br i1 %i.hma, label %.thread809, label %.thread812

.thread812:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44
  %i.hna = getelementptr inbounds nuw i8, ptr %.tr, i64 184
  %i.hnb = load i64, ptr %i.hna, align 8, !range !4, !noundef !3
  %i.hnc = icmp ne i64 %i.hnb, -9223372036854775808
  br label %bb.rg

bb.rd:                                            ; preds = %bb.rc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21896)
  %i.hnd = icmp samesign ugt i8 %i.hmf, 56
  br i1 %i.hnd, label %bb.re, label %.thread809

.thread809:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44, %bb.rd
  %i.hne = phi i128 [ %i.hmj, %bb.rd ], [ 1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44 ]
  %i.hnf = phi i8 [ %i.hme, %bb.rd ], [ %i.hlz, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44 ]
  %storemerge.i.i43808811 = phi i8 [ %i.hmk, %bb.rd ], [ 64, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44 ] ; 2 uses
  %i.hng = zext nneg i8 %i.hnf to i128
  %i.hnh = zext nneg i8 %storemerge.i.i43808811 to i128
  %i.hni = shl nuw nsw i128 %i.hng, %i.hnh
  %i.hnj = or i128 %i.hni, %i.hne                 ; 2 uses
  store i128 %i.hnj, ptr %1, align 16, !alias.scope !21899
  %i.hnk = add nuw i8 %storemerge.i.i43808811, 8
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265

bb.re:                                            ; preds = %bb.rd
  %i.hnl = trunc i128 %i.hmj to i64
  %i.hnm = lshr i128 %i.hmj, 64
  %i.hnn = trunc nuw i128 %i.hnm to i64
  %i.hno = load i64, ptr %i.b, align 8, !alias.scope !21899, !noundef !3
  %i.hnp = xor i64 %i.hno, %i.hnl
  %i.hnq = load ptr, ptr %i.c, align 16, !alias.scope !21899, !nonnull !3, !align !65, !noundef !3
  %i.hnr = load i64, ptr %i.hnq, align 8, !noalias !21899, !noundef !3
  %i.hns = xor i64 %i.hnr, %i.hnn
  %i.hnt = zext i64 %i.hnp to i128
  %i.hnu = zext i64 %i.hns to i128
  %i.hnv = mul nuw i128 %i.hnu, %i.hnt            ; 2 uses
  %i.hnw = lshr i128 %i.hnv, 64
  %i.hnx = xor i128 %i.hnw, %i.hnv
  %i.hny = trunc i128 %i.hnx to i64
  store i64 %i.hny, ptr %i.b, align 8, !alias.scope !21899
  %i.hnz = zext nneg i8 %i.hme to i128            ; 2 uses
  store i128 %i.hnz, ptr %1, align 16, !alias.scope !21899
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265: ; preds = %.thread809, %bb.re
  %i.hoa = phi i128 [ %i.hnj, %.thread809 ], [ %i.hnz, %bb.re ]
  %storemerge.i.i264 = phi i8 [ %i.hnk, %.thread809 ], [ 8, %bb.re ] ; 2 uses
  store i8 %storemerge.i.i264, ptr %i.a, align 16, !alias.scope !21899
  br label %bb.rf

bb.rf:                                            ; preds = %bb.rc, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265
  %i.hob = phi i128 [ %i.hmj, %bb.rc ], [ %i.hoa, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265 ] ; 3 uses
  %i.hoc = phi i8 [ %i.hmk, %bb.rc ], [ %storemerge.i.i264, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265 ] ; 2 uses
  %i.hod = getelementptr inbounds nuw i8, ptr %.tr, i64 184
  %i.hoe = load i64, ptr %i.hod, align 8, !range !4, !noundef !3
  %i.hof = icmp ne i64 %i.hoe, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21903)
  %i.hog = icmp ugt i8 %i.hoc, 64
  br i1 %i.hog, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit42, label %bb.rg

bb.rg:                                            ; preds = %.thread812, %bb.rf
  %i.hoh = phi i128 [ 0, %.thread812 ], [ %i.hob, %bb.rf ]
  %i.hoi = phi i1 [ %i.hnc, %.thread812 ], [ %i.hof, %bb.rf ] ; 2 uses
  %i.hoj = phi i8 [ 64, %.thread812 ], [ %i.hoc, %bb.rf ] ; 2 uses
  %i.hok = zext i1 %i.hoi to i128
  %i.hol = zext nneg i8 %i.hoj to i128
  %i.hom = shl nuw nsw i128 %i.hok, %i.hol
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!21664 = !{!21665, !21667}
!21665 = distinct !{!21665, !21666, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21666 = distinct !{!21666, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21667 = distinct !{!21667, !21668, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21668 = distinct !{!21668, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21669 = !{!21667}
!21670 = !{!21665}
!21671 = !{!21672, !21674}
!21672 = distinct !{!21672, !21673, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21673 = distinct !{!21673, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21674 = distinct !{!21674, !21675, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21675 = distinct !{!21675, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21676 = !{!21674}
!21677 = !{!21672}
!21678 = !{!21679, !21681}
!21679 = distinct !{!21679, !21680, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21680 = distinct !{!21680, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21681 = distinct !{!21681, !21682, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21682 = distinct !{!21682, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21683 = !{!21681}
!21684 = !{!21679}
!21685 = !{!21686, !21688}
!21686 = distinct !{!21686, !21687, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21687 = distinct !{!21687, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21688 = distinct !{!21688, !21689, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21689 = distinct !{!21689, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21690 = !{!21688}
!21691 = !{!21686}
!21692 = !{!21693, !21695}
!21693 = distinct !{!21693, !21694, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21694 = distinct !{!21694, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21695 = distinct !{!21695, !21696, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21696 = distinct !{!21696, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21697 = !{!21695}
!21698 = !{!21693}
!21699 = !{!21700, !21702}
!21700 = distinct !{!21700, !21701, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21701 = distinct !{!21701, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21702 = distinct !{!21702, !21703, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21703 = distinct !{!21703, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21704 = !{!21705}
!21705 = distinct !{!21705, !21706, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21706 = distinct !{!21706, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21707 = !{!21708}
!21708 = distinct !{!21708, !21709, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21709 = distinct !{!21709, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21710 = !{!21708, !21705}
!21711 = !{!21712, !21714}
!21712 = distinct !{!21712, !21713, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21713 = distinct !{!21713, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21714 = distinct !{!21714, !21715, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21715 = distinct !{!21715, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21716 = !{!21714}
!21717 = !{!21712}
!21718 = !{!21719, !21721}
!21719 = distinct !{!21719, !21720, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21720 = distinct !{!21720, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21721 = distinct !{!21721, !21722, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21722 = distinct !{!21722, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21723 = !{!21721}
!21724 = !{!21719}
!21725 = !{!21726, !21728}
!21726 = distinct !{!21726, !21727, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21727 = distinct !{!21727, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21728 = distinct !{!21728, !21729, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21729 = distinct !{!21729, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21730 = !{!21728}
!21731 = !{!21726}
!21732 = !{!21733}
!21733 = distinct !{!21733, !21734, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21734 = distinct !{!21734, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21735 = !{!21736}
!21736 = distinct !{!21736, !21737, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21737 = distinct !{!21737, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21738 = !{!21736, !21733}
!21739 = !{!21740, !21742}
!21740 = distinct !{!21740, !21741, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21741 = distinct !{!21741, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21742 = distinct !{!21742, !21743, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21743 = distinct !{!21743, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21744 = !{!21742}
!21745 = !{!21740}
!21746 = !{!21747}
!21747 = distinct !{!21747, !21748, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21748 = distinct !{!21748, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21749 = !{!21750}
!21750 = distinct !{!21750, !21751, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21751 = distinct !{!21751, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21752 = !{!21750, !21747}
!21753 = !{!21754, !21756}
!21754 = distinct !{!21754, !21755, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21755 = distinct !{!21755, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21756 = distinct !{!21756, !21757, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21757 = distinct !{!21757, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21758 = !{!21756}
!21759 = !{!21754}
!21760 = !{!21761}
!21761 = distinct !{!21761, !21762, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21762 = distinct !{!21762, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21763 = !{!21764}
!21764 = distinct !{!21764, !21765, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21765 = distinct !{!21765, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21766 = !{!21764, !21761}
!21767 = !{!21768, !21770}
!21768 = distinct !{!21768, !21769, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21769 = distinct !{!21769, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21770 = distinct !{!21770, !21771, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21771 = distinct !{!21771, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21772 = !{!21770}
!21773 = !{!21768}
!21774 = !{!21775}
!21775 = distinct !{!21775, !21776, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21776 = distinct !{!21776, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21777 = !{!21778}
!21778 = distinct !{!21778, !21779, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21779 = distinct !{!21779, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21780 = !{!21778, !21775}
!21781 = !{!21782, !21784}
!21782 = distinct !{!21782, !21783, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21783 = distinct !{!21783, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21784 = distinct !{!21784, !21785, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21785 = distinct !{!21785, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21786 = !{!21784}
!21787 = !{!21782}
!21788 = !{!21789, !21791}
!21789 = distinct !{!21789, !21790, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21790 = distinct !{!21790, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21791 = distinct !{!21791, !21792, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21792 = distinct !{!21792, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21793 = !{!21791}
!21794 = !{!21789}
!21795 = !{!21796, !21798}
!21796 = distinct !{!21796, !21797, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21797 = distinct !{!21797, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21798 = distinct !{!21798, !21799, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21799 = distinct !{!21799, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21800 = !{!21798}
!21801 = !{!21796}
!21802 = !{!21803, !21805}
!21803 = distinct !{!21803, !21804, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21804 = distinct !{!21804, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21805 = distinct !{!21805, !21806, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21806 = distinct !{!21806, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21807 = !{!21805}
!21808 = !{!21803}
!21809 = !{!21810, !21812}
!21810 = distinct !{!21810, !21811, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21811 = distinct !{!21811, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21812 = distinct !{!21812, !21813, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21813 = distinct !{!21813, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21814 = !{!21812}
!21815 = !{!21810}
!21816 = !{!21817, !21819}
!21817 = distinct !{!21817, !21818, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21818 = distinct !{!21818, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21819 = distinct !{!21819, !21820, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21820 = distinct !{!21820, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21821 = !{!21819}
!21822 = !{!21817}
!21823 = !{!21824, !21826}
!21824 = distinct !{!21824, !21825, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21825 = distinct !{!21825, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21826 = distinct !{!21826, !21827, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21827 = distinct !{!21827, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21828 = !{!21826}
!21829 = !{!21824}
!21830 = !{!21831}
!21831 = distinct !{!21831, !21832, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21832 = distinct !{!21832, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21833 = !{!21834}
!21834 = distinct !{!21834, !21835, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21835 = distinct !{!21835, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21836 = !{!21834, !21831}
!21837 = !{!21838}
!21838 = distinct !{!21838, !21839, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21839 = distinct !{!21839, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21840 = !{!21841}
!21841 = distinct !{!21841, !21842, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21842 = distinct !{!21842, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21843 = !{!21841, !21838}
!21844 = !{!21845, !21847}
!21845 = distinct !{!21845, !21846, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21846 = distinct !{!21846, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21847 = distinct !{!21847, !21848, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21848 = distinct !{!21848, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21849 = !{!21847}
!21850 = !{!21845}
!21851 = !{!21852}
!21852 = distinct !{!21852, !21853, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64: argument 0"}
!21853 = distinct !{!21853, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64"}
!21854 = !{!21855}
!21855 = distinct !{!21855, !21856, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21856 = distinct !{!21856, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21857 = !{!21855, !21852}
!21858 = !{!21859}
!21859 = distinct !{!21859, !21860, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21860 = distinct !{!21860, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21861 = !{!21862}
!21862 = distinct !{!21862, !21863, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21863 = distinct !{!21863, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21864 = !{!21865, !21867}
!21865 = distinct !{!21865, !21866, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21866 = distinct !{!21866, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21867 = distinct !{!21867, !21868, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21868 = distinct !{!21868, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21869 = !{!21862, !21859}
!21870 = !{!21871, !21873}
!21871 = distinct !{!21871, !21872, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21872 = distinct !{!21872, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21873 = distinct !{!21873, !21874, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64: argument 0"}
!21874 = distinct !{!21874, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64"}
!21875 = !{!21873}
!21876 = !{!21871}
!21877 = !{!21867}
!21878 = !{!21865}
!21879 = !{!21880, !21882}
!21880 = distinct !{!21880, !21881, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21881 = distinct !{!21881, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21882 = distinct !{!21882, !21883, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21883 = distinct !{!21883, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21884 = !{!21882}
!21885 = !{!21880}
!21886 = !{!21887, !21889}
!21887 = distinct !{!21887, !21888, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21888 = distinct !{!21888, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21889 = distinct !{!21889, !21890, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21890 = distinct !{!21890, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21891 = !{!21889}
!21892 = !{!21887}
!21893 = !{!21894}
!21894 = distinct !{!21894, !21895, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21895 = distinct !{!21895, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21896 = !{!21897}
!21897 = distinct !{!21897, !21898, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21898 = distinct !{!21898, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21899 = !{!21897, !21894}
!21900 = !{!21901}
!21901 = distinct !{!21901, !21902, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21902 = distinct !{!21902, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21903 = !{!21904}
!21904 = distinct !{!21904, !21905, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21905 = distinct !{!21905, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21906 = !{!21904, !21901}
!21907 = !{!21908, !21910}
!21908 = distinct !{!21908, !21909, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21909 = distinct !{!21909, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21910 = distinct !{!21910, !21911, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21911 = distinct !{!21911, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21912 = !{!21910}
!21913 = !{!21908}
!21914 = !{!21915, !21917}
!21915 = distinct !{!21915, !21916, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21916 = distinct !{!21916, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21917 = distinct !{!21917, !21918, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21918 = distinct !{!21918, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21919 = !{!21917}
!21920 = !{!21915}
!21921 = !{!21922, !21924}
!21922 = distinct !{!21922, !21923, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21923 = distinct !{!21923, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21924 = distinct !{!21924, !21925, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21925 = distinct !{!21925, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21926 = !{!21924}
!21927 = !{!21922}
!21928 = !{!21929, !21931}
!21929 = distinct !{!21929, !21930, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21930 = distinct !{!21930, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21931 = distinct !{!21931, !21932, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21932 = distinct !{!21932, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21933 = !{!21931}
!21934 = !{!21929}
!21935 = !{!21936, !21938}
!21936 = distinct !{!21936, !21937, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21937 = distinct !{!21937, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21938 = distinct !{!21938, !21939, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21939 = distinct !{!21939, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21940 = !{!21938}
!21941 = !{!21936}
!21942 = !{!21943, !21945}
!21943 = distinct !{!21943, !21944, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21944 = distinct !{!21944, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21945 = distinct !{!21945, !21946, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21946 = distinct !{!21946, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21947 = !{!21945}
!21948 = !{!21943}
!21949 = !{!21950, !21952}
!21950 = distinct !{!21950, !21951, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21951 = distinct !{!21951, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21952 = distinct !{!21952, !21953, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21953 = distinct !{!21953, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21954 = !{!21952}
!21955 = !{!21950}
!21956 = !{!21957, !21959}
!21957 = distinct !{!21957, !21958, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21958 = distinct !{!21958, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21959 = distinct !{!21959, !21960, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21960 = distinct !{!21960, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21961 = !{!21959}
!21962 = !{!21957}
!21963 = !{!21964}
!21964 = distinct !{!21964, !21965, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21965 = distinct !{!21965, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21966 = !{!21967}
!21967 = distinct !{!21967, !21968, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21968 = distinct !{!21968, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21969 = !{!21967, !21964}
!21970 = !{!21971}
!21971 = distinct !{!21971, !21972, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21972 = distinct !{!21972, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21973 = !{!21974}
!21974 = distinct !{!21974, !21975, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21975 = distinct !{!21975, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21976 = !{!21974, !21971}
!21977 = !{!21978, !21980}
!21978 = distinct !{!21978, !21979, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21979 = distinct !{!21979, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21980 = distinct !{!21980, !21981, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21981 = distinct !{!21981, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21982 = !{!21980}
!21983 = !{!21978}
!21984 = !{!21985, !21987}
!21985 = distinct !{!21985, !21986, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21986 = distinct !{!21986, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21987 = distinct !{!21987, !21988, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21988 = distinct !{!21988, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21989 = !{!21987}
!21990 = !{!21985}
!21991 = !{!21992}
!21992 = distinct !{!21992, !21993, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21993 = distinct !{!21993, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21994 = !{!21995}
!21995 = distinct !{!21995, !21996, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21996 = distinct !{!21996, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21997 = !{!21995, !21992}
!21998 = !{!21999, !22001}
!21999 = distinct !{!21999, !22000, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!22000 = distinct !{!22000, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!22001 = distinct !{!22001, !22002, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!22002 = distinct !{!22002, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!22003 = !{!22001}
!22004 = !{!21999}
!22005 = !{!22006}
!22006 = distinct !{!22006, !22007, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!22007 = distinct !{!22007, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!22008 = !{!22009}
!22009 = distinct !{!22009, !22010, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!22010 = distinct !{!22010, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!22011 = !{!22009, !22006}
!22012 = !{!22013}
!22013 = distinct !{!22013, !22014, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!22014 = distinct !{!22014, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!22015 = !{!22016}
!22016 = distinct !{!22016, !22017, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!22017 = distinct !{!22017, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!22018 = !{!22016, !22013}
!22019 = !{!22020}
!22020 = distinct !{!22020, !22021, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!22021 = distinct !{!22021, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!22022 = !{!22023}
!22023 = distinct !{!22023, !22024, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!22024 = distinct !{!22024, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!22025 = !{!22023, !22020}
!22026 = !{!22027}
!22027 = distinct !{!22027, !22028, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!22028 = distinct !{!22028, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!22029 = !{!22030}
!22030 = distinct !{!22030, !22031, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!22031 = distinct !{!22031, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!22032 = !{!22030, !22027}
!22033 = !{!22034, !22036}
!22034 = distinct !{!22034, !22035, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!22035 = distinct !{!22035, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!22036 = distinct !{!22036, !22037, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64: argument 0"}
!22037 = distinct !{!22037, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64"}
!22038 = !{!22036}
!22039 = !{!22034}
!22040 = !{!22041, !22043}
!22041 = distinct !{!22041, !22042, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!22042 = distinct !{!22042, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!22043 = distinct !{!22043, !22044, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!22044 = distinct !{!22044, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!22045 = !{!22043}
!22046 = !{!22041}
!22047 = !{!22048, !22050}
!22048 = distinct !{!22048, !22049, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!22049 = distinct !{!22049, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!22050 = distinct !{!22050, !22051, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!22051 = distinct !{!22051, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!22052 = !{!22050}
!22053 = !{!22048}
!22054 = !{!22055}
!22055 = distinct !{!22055, !22056, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!22056 = distinct !{!22056, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!22057 = !{!22058}
!22058 = distinct !{!22058, !22059, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!22059 = distinct !{!22059, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!22060 = !{!22058, !22055}
!22061 = !{!22062}
!22062 = distinct !{!22062, !22063, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!22063 = distinct !{!22063, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!22064 = !{!22065}
!22065 = distinct !{!22065, !22066, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!22066 = distinct !{!22066, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!22067 = !{!22065, !22062}
!22068 = !{!22069}
!22069 = distinct !{!22069, !22070, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!22070 = distinct !{!22070, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!22071 = !{!22072}
!22072 = distinct !{!22072, !22073, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!22073 = distinct !{!22073, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!22074 = !{!22072, !22069}
!22075 = !{!22076, !22078}
!22076 = distinct !{!22076, !22077, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!22077 = distinct !{!22077, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!22078 = distinct !{!22078, !22079, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
end_hunk_1
