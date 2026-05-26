inline.NumInlined: 10149
inline.NumDeleted: 2791
begin_hunk_0_@_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.hds = load ptr, ptr %i.c, align 16, !alias.scope !20917, !nonnull !3, !align !100, !noundef !3
  %i.hdt = load i64, ptr %i.hds, align 8, !noalias !20917, !noundef !3
  %i.hdu = xor i64 %i.hdt, %i.hdp
  %i.hdv = zext i64 %i.hdr to i128
  %i.hdw = zext i64 %i.hdu to i128
  %i.hdx = mul nuw i128 %i.hdw, %i.hdv            ; 2 uses
  %i.hdy = lshr i128 %i.hdx, 64
  %i.hdz = xor i128 %i.hdy, %i.hdx
  %i.hea = trunc i128 %i.hdz to i64
  store i64 %i.hea, ptr %i.b, align 8, !alias.scope !20917
  %i.heb = zext nneg i8 %i.hdl to i128            ; 2 uses
  store i128 %i.heb, ptr %1, align 16, !alias.scope !20917
  store i8 8, ptr %i.a, align 16, !alias.scope !20917
  %i.hec = getelementptr inbounds nuw i8, ptr %.tr, i64 112 ; 2 uses
  %i.hed = load i64, ptr %i.hec, align 8, !range !849, !noundef !3
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
  store i128 %i.hek, ptr %1, align 16, !alias.scope !20917
  %i.hel = add nuw i8 %storemerge.i.i268782, 8    ; 2 uses
  store i8 %i.hel, ptr %i.a, align 16, !alias.scope !20917
  %i.hem = getelementptr inbounds nuw i8, ptr %.tr, i64 112 ; 3 uses
  %i.hen = load i64, ptr %i.hem, align 8, !range !849, !noundef !3
  %i.heo = icmp ne i64 %i.hen, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20921)
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
  store i128 %i.hew, ptr %1, align 16, !alias.scope !20924
  %i.hex = add nuw i8 %storemerge.i.i266784, 64
  store i8 %i.hex, ptr %i.a, align 16, !alias.scope !20924
  br i1 %i.her, label %bb.qt, label %.thread786

.thread786:                                       ; preds = %bb.qs
  %i.hey = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.hez = load i64, ptr %i.hey, align 8, !range !491, !noundef !3
  %extract.t1934 = trunc i128 %i.hew to i64
  %extract1937 = lshr i128 %i.hew, 64
  %extract.t1938 = trunc nuw i128 %extract1937 to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit54: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267
  %i.hfa = trunc i128 %i.hek to i64
  %i.hfb = lshr i128 %i.hek, 64
  %i.hfc = trunc nuw i128 %i.hfb to i64
  %i.hfd = load i64, ptr %i.b, align 8, !alias.scope !20924, !noundef !3
  %i.hfe = xor i64 %i.hfd, %i.hfa
  %i.hff = load ptr, ptr %i.c, align 16, !alias.scope !20924, !nonnull !3, !align !100, !noundef !3
  %i.hfg = load i64, ptr %i.hff, align 8, !noalias !20924, !noundef !3
  %i.hfh = xor i64 %i.hfg, %i.hfc
  %i.hfi = zext i64 %i.hfe to i128
  %i.hfj = zext i64 %i.hfh to i128
  %i.hfk = mul nuw i128 %i.hfj, %i.hfi            ; 2 uses
  %i.hfl = lshr i128 %i.hfk, 64
  %i.hfm = xor i128 %i.hfl, %i.hfk
  %i.hfn = trunc i128 %i.hfm to i64
  store i64 %i.hfn, ptr %i.b, align 8, !alias.scope !20924
  %i.hfo = zext i1 %i.heo to i128
  store i128 %i.hfo, ptr %1, align 16, !alias.scope !20924
  store i8 64, ptr %i.a, align 16, !alias.scope !20924
  br i1 %i.heo, label %bb.qt, label %.thread787

.thread787:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit54
  %i.hfp = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.hfq = load i64, ptr %i.hfp, align 8, !range !491, !noundef !3
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52

bb.qt:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit54, %bb.qs
  %i.hfr = phi ptr [ %i.hes, %bb.qs ], [ %i.hem, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit54 ] ; 2 uses
  %i.hfs = getelementptr i8, ptr %i.hfr, i64 8
  %.val478 = load ptr, ptr %i.hfs, align 8, !nonnull !3, !noundef !3
  %i.hft = getelementptr i8, ptr %i.hfr, i64 16
  %.val479 = load i64, ptr %i.hft, align 8, !noundef !3
  tail call fastcc void @_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val478, i64 %.val479, ptr noalias noundef align 16 dereferenceable(48) %1) #50
  %.pr785 = load i8, ptr %i.a, align 16, !alias.scope !20925 ; 2 uses
  %i.hfu = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.hfv = load i64, ptr %i.hfu, align 8, !range !491, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20931)
  %i.hfw = icmp ugt i8 %.pr785, 64
  %.pre1707 = load i128, ptr %1, align 16, !alias.scope !20925 ; 3 uses
  %extract.t1935 = trunc i128 %.pre1707 to i64
  %extract1939 = lshr i128 %.pre1707, 64
  %extract.t1940 = trunc nuw i128 %extract1939 to i64
  br i1 %i.hfw, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52: ; preds = %bb.qt, %.thread787
  %i.hfx = phi i128 [ 0, %.thread787 ], [ %.pre1707, %bb.qt ]
  %i.hfy = phi i64 [ %i.hfq, %.thread787 ], [ %i.hfv, %bb.qt ] ; 2 uses
  %i.hfz = phi i8 [ 64, %.thread787 ], [ %.pr785, %bb.qt ] ; 3 uses
  %i.hga = zext nneg i64 %i.hfy to i128
  %i.hgb = zext nneg i8 %i.hfz to i128
  %i.hgc = shl nuw nsw i128 %i.hga, %i.hgb
  %i.hgd = or i128 %i.hgc, %i.hfx                 ; 5 uses
  store i128 %i.hgd, ptr %1, align 16, !alias.scope !20925
  %i.hge = add nuw i8 %i.hfz, 64                  ; 2 uses
  store i8 %i.hge, ptr %i.a, align 16, !alias.scope !20925
  %i.hgf = trunc nuw i64 %i.hfy to i1
  br i1 %i.hgf, label %bb.qu, label %bb.qx

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread: ; preds = %bb.qt, %.thread786
  %.off01933 = phi i64 [ %extract.t1934, %.thread786 ], [ %extract.t1935, %bb.qt ]
  %.off641936 = phi i64 [ %extract.t1938, %.thread786 ], [ %extract.t1940, %bb.qt ]
  %i.hgg = phi i64 [ %i.hez, %.thread786 ], [ %i.hfv, %bb.qt ] ; 2 uses
  %i.hgh = load i64, ptr %i.b, align 8, !alias.scope !20925, !noundef !3
  %i.hgi = xor i64 %i.hgh, %.off01933
  %i.hgj = load ptr, ptr %i.c, align 16, !alias.scope !20925, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %i.hgk = load i64, ptr %i.hgj, align 8, !noalias !20925, !noundef !3
  %i.hgl = xor i64 %i.hgk, %.off641936
  %i.hgm = zext i64 %i.hgi to i128
  %i.hgn = zext i64 %i.hgl to i128
  %i.hgo = mul nuw i128 %i.hgn, %i.hgm            ; 2 uses
  %i.hgp = lshr i128 %i.hgo, 64
  %i.hgq = xor i128 %i.hgp, %i.hgo
  %i.hgr = trunc i128 %i.hgq to i64               ; 2 uses
  store i64 %i.hgr, ptr %i.b, align 8, !alias.scope !20925
  %i.hgs = zext nneg i64 %i.hgg to i128
  store i128 %i.hgs, ptr %1, align 16, !alias.scope !20925
  store i8 64, ptr %i.a, align 16, !alias.scope !20925
  %i.hgt = trunc nuw i64 %i.hgg to i1
  br i1 %i.hgt, label %.thread790, label %.thread793

.thread793:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread
  %i.hgu = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hgv = load i64, ptr %i.hgu, align 8, !range !491, !noundef !3
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50

.thread790:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread
  %i.hgw = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.hgx = load i64, ptr %i.hgw, align 8, !noundef !3
  br label %bb.qv

bb.qu:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52
  %i.hgy = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.hgz = load i64, ptr %i.hgy, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20935)
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
  %i.hhi = load i64, ptr %i.b, align 8, !alias.scope !20938, !noundef !3
  %i.hhj = xor i64 %i.hhi, %i.hhf
  %i.hhk = load ptr, ptr %i.c, align 16, !alias.scope !20938, !nonnull !3, !align !100, !noundef !3
  %i.hhl = load i64, ptr %i.hhk, align 8, !noalias !20938, !noundef !3
  %i.hhm = xor i64 %i.hhl, %i.hhh
  %i.hhn = zext i64 %i.hhj to i128
  %i.hho = zext i64 %i.hhm to i128
  %i.hhp = mul nuw i128 %i.hho, %i.hhn            ; 2 uses
  %i.hhq = lshr i128 %i.hhp, 64
  %i.hhr = xor i128 %i.hhq, %i.hhp
  %i.hhs = trunc i128 %i.hhr to i64
  store i64 %i.hhs, ptr %i.b, align 8, !alias.scope !20938
  %i.hht = zext i64 %i.hgz to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468: ; preds = %bb.qv, %bb.qw
  %storemerge854 = phi i128 [ %i.hht, %bb.qw ], [ %i.hhe, %bb.qv ] ; 2 uses
  %storemerge.i.i467 = phi i8 [ 64, %bb.qw ], [ -128, %bb.qv ] ; 2 uses
  store i128 %storemerge854, ptr %1, align 16, !alias.scope !20938
  store i8 %storemerge.i.i467, ptr %i.a, align 16, !alias.scope !20938
  br label %bb.qx

bb.qx:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52
  %i.hhu = phi i128 [ %i.hgd, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52 ], [ %storemerge854, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468 ] ; 3 uses
  %i.hhv = phi i8 [ %i.hge, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52 ], [ %storemerge.i.i467, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468 ]
  %i.hhw = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hhx = load i64, ptr %i.hhw, align 8, !range !491, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20942)
  %i.hhy = icmp ugt i8 %i.hhv, 64
  %.pre1708.pre = load i64, ptr %i.b, align 8, !alias.scope !20945 ; 2 uses
  %.pre1709.pre = load ptr, ptr %i.c, align 16, !alias.scope !20945 ; 4 uses
  br i1 %i.hhy, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50: ; preds = %bb.qx, %.thread793
  %.pre1709 = phi ptr [ %i.hgj, %.thread793 ], [ %.pre1709.pre, %bb.qx ] ; 3 uses
  %.pre1708 = phi i64 [ %i.hgr, %.thread793 ], [ %.pre1708.pre, %bb.qx ] ; 2 uses
  %i.hhz = phi i128 [ 0, %.thread793 ], [ %i.hhu, %bb.qx ] ; 2 uses
  %i.hia = phi i64 [ %i.hgv, %.thread793 ], [ %i.hhx, %bb.qx ] ; 2 uses
  %i.hib = zext nneg i64 %i.hia to i128
  %i.hic = shl nuw nsw i128 %i.hib, 64
  %i.hid = or i128 %i.hic, %i.hhz                 ; 2 uses
  store i128 %i.hid, ptr %1, align 16, !alias.scope !20950
  store i8 -128, ptr %i.a, align 16, !alias.scope !20950
  %i.hie = trunc nuw i64 %i.hia to i1
  %extract.t1942 = trunc i128 %i.hhz to i64       ; 2 uses
  %extract1945 = lshr i128 %i.hid, 64
  %extract.t1946 = trunc nuw i128 %extract1945 to i64 ; 2 uses
  br i1 %i.hie, label %bb.qy, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread: ; preds = %bb.qx
  %i.hif = trunc i128 %i.hhu to i64
  %i.hig = lshr i128 %i.hhu, 64
  %i.hih = trunc nuw i128 %i.hig to i64
  %i.hii = xor i64 %.pre1708.pre, %i.hif
  %i.hij = load i64, ptr %.pre1709.pre, align 8, !noalias !20950, !noundef !3
  %i.hik = xor i64 %i.hij, %i.hih
  %i.hil = zext i64 %i.hii to i128
  %i.him = zext i64 %i.hik to i128
  %i.hin = mul nuw i128 %i.him, %i.hil            ; 2 uses
  %i.hio = lshr i128 %i.hin, 64
  %i.hip = xor i128 %i.hio, %i.hin
  %i.hiq = trunc i128 %i.hip to i64               ; 3 uses
  store i64 %i.hiq, ptr %i.b, align 8, !alias.scope !20950
  %i.hir = zext nneg i64 %i.hhx to i128
  store i128 %i.hir, ptr %1, align 16, !alias.scope !20950
  store i8 64, ptr %i.a, align 16, !alias.scope !20950
  %i.his = trunc nuw i64 %i.hhx to i1
  br i1 %i.his, label %.thread801, label %.thread800

.thread801:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread
  %i.hit = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.hiu = load i64, ptr %i.hit, align 8, !noundef !3 ; 2 uses
  %i.hiv = zext i64 %i.hiu to i128
  %i.hiw = shl nuw i128 %i.hiv, 64
  %i.hix = or disjoint i128 %i.hiw, 1
  store i128 %i.hix, ptr %1, align 16, !alias.scope !20951
  store i8 -128, ptr %i.a, align 16, !alias.scope !20951
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48

bb.qy:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50
  %i.hiy = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.hiz = load i64, ptr %i.hiy, align 8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20957)
  %i.hja = xor i64 %.pre1708, %extract.t1942
  %i.hjb = load i64, ptr %.pre1709, align 8, !noalias !20951, !noundef !3
  %i.hjc = xor i64 %i.hjb, %extract.t1946
  %i.hjd = zext i64 %i.hja to i128
  %i.hje = zext i64 %i.hjc to i128
  %i.hjf = mul nuw i128 %i.hje, %i.hjd            ; 2 uses
  %i.hjg = lshr i128 %i.hjf, 64
  %i.hjh = xor i128 %i.hjg, %i.hjf
  %i.hji = trunc i128 %i.hjh to i64               ; 2 uses
  store i64 %i.hji, ptr %i.b, align 8, !alias.scope !20951
  %i.hjj = zext i64 %i.hiz to i128                ; 2 uses
  store i128 %i.hjj, ptr %1, align 16, !alias.scope !20951
  store i8 64, ptr %i.a, align 16, !alias.scope !20951
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20959)
  br label %.thread800

.thread800:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread, %bb.qy
  %i.hjk = phi ptr [ %.pre1709.pre, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread ], [ %.pre1709, %bb.qy ]
  %i.hjl = phi i64 [ %i.hiq, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread ], [ %i.hji, %bb.qy ]
  %i.hjm = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread ], [ %i.hjj, %bb.qy ] ; 2 uses
  %.in.in = getelementptr inbounds nuw i8, ptr %.tr, i64 136
  %.in = load i64, ptr %.in.in, align 8, !range !849, !noundef !3
  %.not855 = icmp eq i64 %.in, -9223372036854775808 ; 2 uses
  %i.hjn = select i1 %.not855, i128 0, i128 18446744073709551616
  %i.hjo = or disjoint i128 %i.hjn, %i.hjm
  store i128 %i.hjo, ptr %1, align 16, !alias.scope !20945
  store i8 -128, ptr %i.a, align 16, !alias.scope !20945
  br i1 %.not855, label %.thread804, label %bb.qz

.thread804:                                       ; preds = %.thread800
  %i.hjp = getelementptr inbounds nuw i8, ptr %.tr, i64 160
  %i.hjq = load i64, ptr %i.hjp, align 8, !range !849, !noundef !3
  %i.hjr = icmp ne i64 %i.hjq, -9223372036854775808 ; 2 uses
  %i.hjs = zext i1 %i.hjr to i64
  %extract.t2418 = trunc nuw i128 %i.hjm to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50, %.thread801
  %i.hjt = phi ptr [ %.pre1709, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50 ], [ %.pre1709.pre, %.thread801 ]
  %i.hju = phi i64 [ %.pre1708, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50 ], [ %i.hiq, %.thread801 ]
  %.off01941 = phi i64 [ %extract.t1942, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50 ], [ 1, %.thread801 ]
  %.off641944 = phi i64 [ %extract.t1946, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50 ], [ %i.hiu, %.thread801 ]
  %.in857.in = getelementptr inbounds nuw i8, ptr %.tr, i64 136
  %.in857 = load i64, ptr %.in857.in, align 8, !range !849, !noundef !3
  %i.hjv = icmp ne i64 %.in857, -9223372036854775808 ; 2 uses
  %i.hjw = xor i64 %.off01941, %i.hju
  %i.hjx = load i64, ptr %i.hjt, align 8, !noalias !20945, !noundef !3
  %i.hjy = xor i64 %i.hjx, %.off641944
  %i.hjz = zext i64 %i.hjw to i128
  %i.hka = zext i64 %i.hjy to i128
  %i.hkb = mul nuw i128 %i.hka, %i.hjz            ; 2 uses
  %i.hkc = lshr i128 %i.hkb, 64
  %i.hkd = xor i128 %i.hkc, %i.hkb
  %i.hke = trunc i128 %i.hkd to i64
  store i64 %i.hke, ptr %i.b, align 8, !alias.scope !20945
  %i.hkf = zext i1 %i.hjv to i128
  store i128 %i.hkf, ptr %1, align 16, !alias.scope !20945
  store i8 64, ptr %i.a, align 16, !alias.scope !20945
  br i1 %i.hjv, label %bb.qz, label %.thread805

.thread805:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48
  %i.hkg = getelementptr inbounds nuw i8, ptr %.tr, i64 160
  %i.hkh = load i64, ptr %i.hkg, align 8, !range !849, !noundef !3
  %i.hki = icmp ne i64 %i.hkh, -9223372036854775808 ; 2 uses
  %i.hkj = zext i1 %i.hki to i64
  br label %._crit_edge1710

bb.qz:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48, %.thread800
  %i.hkk = getelementptr inbounds nuw i8, ptr %.tr, i64 144
  %i.hkl = load ptr, ptr %i.hkk, align 8, !nonnull !3, !noundef !3
  %i.hkm = getelementptr inbounds nuw i8, ptr %.tr, i64 152
  %i.hkn = load i64, ptr %i.hkm, align 8, !noundef !3
  tail call void @_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hkl, i64 noundef %i.hkn) #50
  %.pr803 = load i8, ptr %i.a, align 16, !alias.scope !20960 ; 2 uses
  %i.hko = getelementptr inbounds nuw i8, ptr %.tr, i64 160
  %i.hkp = load i64, ptr %i.hko, align 8, !range !849, !noundef !3
  %i.hkq = icmp ne i64 %i.hkp, -9223372036854775808 ; 3 uses
  %i.hkr = zext i1 %i.hkq to i64                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20966)
  %i.hks = icmp ugt i8 %.pr803, 64
  %.pre1712 = load i128, ptr %1, align 16, !alias.scope !20960 ; 3 uses
  br i1 %i.hks, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge, label %._crit_edge1710

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge: ; preds = %bb.qz
  %.pre1713 = load i64, ptr %i.b, align 8, !alias.scope !20960
  %.pre1714 = load ptr, ptr %i.c, align 16, !alias.scope !20960
  %extract.t2417 = trunc i128 %.pre1712 to i64
  %extract2419 = lshr i128 %.pre1712, 64
  %extract.t2420 = trunc nuw i128 %extract2419 to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46

._crit_edge1710:                                  ; preds = %bb.qz, %.thread805
  %i.hkt = phi i128 [ 0, %.thread805 ], [ %.pre1712, %bb.qz ]
  %i.hku = phi i64 [ %i.hkj, %.thread805 ], [ %i.hkr, %bb.qz ]
  %i.hkv = phi i1 [ %i.hki, %.thread805 ], [ %i.hkq, %bb.qz ]
  %i.hkw = phi i8 [ 64, %.thread805 ], [ %.pr803, %bb.qz ] ; 2 uses
  %i.hkx = zext nneg i64 %i.hku to i128
  %i.hky = zext nneg i8 %i.hkw to i128
  %i.hkz = shl nuw nsw i128 %i.hkx, %i.hky
  %i.hla = or i128 %i.hkz, %i.hkt                 ; 2 uses
  store i128 %i.hla, ptr %1, align 16, !alias.scope !20960
  %i.hlb = add nuw i8 %i.hkw, 64                  ; 2 uses
  store i8 %i.hlb, ptr %i.a, align 16, !alias.scope !20960
  br i1 %i.hkv, label %bb.ra, label %bb.rb

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge, %.thread804
  %.pre1712.sink2416.off0 = phi i64 [ %extract.t2417, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %extract.t2418, %.thread804 ]
  %.pre1712.sink.off64 = phi i64 [ %extract.t2420, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ 0, %.thread804 ]
  %i.hlc = phi ptr [ %.pre1714, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %i.hjk, %.thread804 ]
  %i.hld = phi i64 [ %.pre1713, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %i.hjl, %.thread804 ]
  %i.hle = phi i64 [ %i.hkr, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %i.hjs, %.thread804 ]
  %i.hlf = phi i1 [ %i.hkq, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %i.hjr, %.thread804 ]
  %i.hlg = xor i64 %i.hld, %.pre1712.sink2416.off0
  %i.hlh = load i64, ptr %i.hlc, align 8, !noalias !20960, !noundef !3
  %i.hli = xor i64 %i.hlh, %.pre1712.sink.off64
  %i.hlj = zext i64 %i.hlg to i128
  %i.hlk = zext i64 %i.hli to i128
  %i.hll = mul nuw i128 %i.hlk, %i.hlj            ; 2 uses
  %i.hlm = lshr i128 %i.hll, 64
  %i.hln = xor i128 %i.hlm, %i.hll
  %i.hlo = trunc i128 %i.hln to i64
  store i64 %i.hlo, ptr %i.b, align 8, !alias.scope !20960
  %i.hlp = zext nneg i64 %i.hle to i128           ; 2 uses
  store i128 %i.hlp, ptr %1, align 16, !alias.scope !20960
  store i8 64, ptr %i.a, align 16, !alias.scope !20960
  br i1 %i.hlf, label %bb.ra, label %.thread807

.thread807:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46
  %i.hlq = getelementptr inbounds nuw i8, ptr %.tr, i64 331
  %i.hlr = load i8, ptr %i.hlq, align 1, !range !2907, !noundef !3 ; 2 uses
  %i.hls = icmp ne i8 %i.hlr, 2
  br label %bb.rc

bb.ra:                                            ; preds = %._crit_edge1710, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46
  %i.hlt = getelementptr inbounds nuw i8, ptr %.tr, i64 168
  %i.hlu = load ptr, ptr %i.hlt, align 8, !nonnull !3, !noundef !3
  %i.hlv = getelementptr inbounds nuw i8, ptr %.tr, i64 176
  %i.hlw = load i64, ptr %i.hlv, align 8, !noundef !3
  tail call void @_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hlu, i64 noundef %i.hlw) #50
  %.pr806 = load i8, ptr %i.a, align 16, !alias.scope !20967
  %.pre1715.pre = load i128, ptr %1, align 16, !alias.scope !20967
  br label %bb.rb

bb.rb:                                            ; preds = %._crit_edge1710, %bb.ra
  %.pre1715 = phi i128 [ %i.hla, %._crit_edge1710 ], [ %.pre1715.pre, %bb.ra ] ; 3 uses
  %i.hlx = phi i8 [ %i.hlb, %._crit_edge1710 ], [ %.pr806, %bb.ra ] ; 2 uses
  %i.hly = getelementptr inbounds nuw i8, ptr %.tr, i64 331
  %i.hlz = load i8, ptr %i.hly, align 1, !range !2907, !noundef !3 ; 3 uses
  %i.hma = icmp ne i8 %i.hlz, 2                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20973)
  %i.hmb = icmp ugt i8 %i.hlx, 64
  br i1 %i.hmb, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44, label %bb.rc

bb.rc:                                            ; preds = %.thread807, %bb.rb
  %i.hmc = phi i128 [ %i.hlp, %.thread807 ], [ %.pre1715, %bb.rb ]
  %i.hmd = phi i1 [ %i.hls, %.thread807 ], [ %i.hma, %bb.rb ] ; 2 uses
  %i.hme = phi i8 [ %i.hlr, %.thread807 ], [ %i.hlz, %bb.rb ] ; 2 uses
  %i.hmf = phi i8 [ 64, %.thread807 ], [ %i.hlx, %bb.rb ] ; 3 uses
  %i.hmg = zext i1 %i.hmd to i128
  %i.hmh = zext nneg i8 %i.hmf to i128
  %i.hmi = shl nuw nsw i128 %i.hmg, %i.hmh
  %i.hmj = or i128 %i.hmi, %i.hmc                 ; 5 uses
  store i128 %i.hmj, ptr %1, align 16, !alias.scope !20967
  %i.hmk = add nuw i8 %i.hmf, 64                  ; 3 uses
  store i8 %i.hmk, ptr %i.a, align 16, !alias.scope !20967
  br i1 %i.hmd, label %bb.rd, label %bb.rf

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44: ; preds = %bb.rb
  %i.hml = trunc i128 %.pre1715 to i64
  %i.hmm = lshr i128 %.pre1715, 64
  %i.hmn = trunc nuw i128 %i.hmm to i64
  %i.hmo = load i64, ptr %i.b, align 8, !alias.scope !20967, !noundef !3
  %i.hmp = xor i64 %i.hmo, %i.hml
  %i.hmq = load ptr, ptr %i.c, align 16, !alias.scope !20967, !nonnull !3, !align !100, !noundef !3
  %i.hmr = load i64, ptr %i.hmq, align 8, !noalias !20967, !noundef !3
  %i.hms = xor i64 %i.hmr, %i.hmn
  %i.hmt = zext i64 %i.hmp to i128
  %i.hmu = zext i64 %i.hms to i128
  %i.hmv = mul nuw i128 %i.hmu, %i.hmt            ; 2 uses
  %i.hmw = lshr i128 %i.hmv, 64
  %i.hmx = xor i128 %i.hmw, %i.hmv
  %i.hmy = trunc i128 %i.hmx to i64
  store i64 %i.hmy, ptr %i.b, align 8, !alias.scope !20967
  %i.hmz = zext i1 %i.hma to i128
  store i128 %i.hmz, ptr %1, align 16, !alias.scope !20967
  store i8 64, ptr %i.a, align 16, !alias.scope !20967
  br i1 %i.hma, label %.thread809, label %.thread812

.thread812:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44
  %i.hna = getelementptr inbounds nuw i8, ptr %.tr, i64 184
  %i.hnb = load i64, ptr %i.hna, align 8, !range !849, !noundef !3
  %i.hnc = icmp ne i64 %i.hnb, -9223372036854775808
  br label %bb.rg

bb.rd:                                            ; preds = %bb.rc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20977)
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
  store i128 %i.hnj, ptr %1, align 16, !alias.scope !20980
  %i.hnk = add nuw i8 %storemerge.i.i43808811, 8
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265

bb.re:                                            ; preds = %bb.rd
  %i.hnl = trunc i128 %i.hmj to i64
  %i.hnm = lshr i128 %i.hmj, 64
  %i.hnn = trunc nuw i128 %i.hnm to i64
  %i.hno = load i64, ptr %i.b, align 8, !alias.scope !20980, !noundef !3
  %i.hnp = xor i64 %i.hno, %i.hnl
  %i.hnq = load ptr, ptr %i.c, align 16, !alias.scope !20980, !nonnull !3, !align !100, !noundef !3
  %i.hnr = load i64, ptr %i.hnq, align 8, !noalias !20980, !noundef !3
  %i.hns = xor i64 %i.hnr, %i.hnn
  %i.hnt = zext i64 %i.hnp to i128
  %i.hnu = zext i64 %i.hns to i128
  %i.hnv = mul nuw i128 %i.hnu, %i.hnt            ; 2 uses
  %i.hnw = lshr i128 %i.hnv, 64
  %i.hnx = xor i128 %i.hnw, %i.hnv
  %i.hny = trunc i128 %i.hnx to i64
  store i64 %i.hny, ptr %i.b, align 8, !alias.scope !20980
  %i.hnz = zext nneg i8 %i.hme to i128            ; 2 uses
  store i128 %i.hnz, ptr %1, align 16, !alias.scope !20980
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265: ; preds = %.thread809, %bb.re
  %i.hoa = phi i128 [ %i.hnj, %.thread809 ], [ %i.hnz, %bb.re ]
  %storemerge.i.i264 = phi i8 [ %i.hnk, %.thread809 ], [ 8, %bb.re ] ; 2 uses
  store i8 %storemerge.i.i264, ptr %i.a, align 16, !alias.scope !20980
  br label %bb.rf

bb.rf:                                            ; preds = %bb.rc, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265
  %i.hob = phi i128 [ %i.hmj, %bb.rc ], [ %i.hoa, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265 ] ; 3 uses
  %i.hoc = phi i8 [ %i.hmk, %bb.rc ], [ %storemerge.i.i264, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265 ] ; 2 uses
  %i.hod = getelementptr inbounds nuw i8, ptr %.tr, i64 184
  %i.hoe = load i64, ptr %i.hod, align 8, !range !849, !noundef !3
  %i.hof = icmp ne i64 %i.hoe, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20984)
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
begin_hunk_1_@llvm.umax.i64
!20745 = !{!20746, !20748}
!20746 = distinct !{!20746, !20747, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20747 = distinct !{!20747, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20748 = distinct !{!20748, !20749, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20749 = distinct !{!20749, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20750 = !{!20748}
!20751 = !{!20746}
!20752 = !{!20753, !20755}
!20753 = distinct !{!20753, !20754, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20754 = distinct !{!20754, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20755 = distinct !{!20755, !20756, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20756 = distinct !{!20756, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20757 = !{!20755}
!20758 = !{!20753}
!20759 = !{!20760, !20762}
!20760 = distinct !{!20760, !20761, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20761 = distinct !{!20761, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!20762 = distinct !{!20762, !20763, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!20763 = distinct !{!20763, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!20764 = !{!20762}
!20765 = !{!20760}
!20766 = !{!20767, !20769}
!20767 = distinct !{!20767, !20768, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20768 = distinct !{!20768, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20769 = distinct !{!20769, !20770, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20770 = distinct !{!20770, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20771 = !{!20769}
!20772 = !{!20767}
!20773 = !{!20774, !20776}
!20774 = distinct !{!20774, !20775, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20775 = distinct !{!20775, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20776 = distinct !{!20776, !20777, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20777 = distinct !{!20777, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20778 = !{!20776}
!20779 = !{!20774}
!20780 = !{!20781, !20783}
!20781 = distinct !{!20781, !20782, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20782 = distinct !{!20782, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!20783 = distinct !{!20783, !20784, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!20784 = distinct !{!20784, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!20785 = !{!20786}
!20786 = distinct !{!20786, !20787, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20787 = distinct !{!20787, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20788 = !{!20789}
!20789 = distinct !{!20789, !20790, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20790 = distinct !{!20790, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20791 = !{!20789, !20786}
!20792 = !{!20793, !20795}
!20793 = distinct !{!20793, !20794, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20794 = distinct !{!20794, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20795 = distinct !{!20795, !20796, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20796 = distinct !{!20796, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20797 = !{!20795}
!20798 = !{!20793}
!20799 = !{!20800, !20802}
!20800 = distinct !{!20800, !20801, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20801 = distinct !{!20801, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20802 = distinct !{!20802, !20803, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20803 = distinct !{!20803, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20804 = !{!20802}
!20805 = !{!20800}
!20806 = !{!20807, !20809}
!20807 = distinct !{!20807, !20808, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20808 = distinct !{!20808, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!20809 = distinct !{!20809, !20810, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!20810 = distinct !{!20810, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!20811 = !{!20809}
!20812 = !{!20807}
!20813 = !{!20814}
!20814 = distinct !{!20814, !20815, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!20815 = distinct !{!20815, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!20816 = !{!20817}
!20817 = distinct !{!20817, !20818, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20818 = distinct !{!20818, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!20819 = !{!20817, !20814}
!20820 = !{!20821, !20823}
!20821 = distinct !{!20821, !20822, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20822 = distinct !{!20822, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!20823 = distinct !{!20823, !20824, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!20824 = distinct !{!20824, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!20825 = !{!20823}
!20826 = !{!20821}
!20827 = !{!20828}
!20828 = distinct !{!20828, !20829, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!20829 = distinct !{!20829, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!20830 = !{!20831}
!20831 = distinct !{!20831, !20832, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20832 = distinct !{!20832, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!20833 = !{!20831, !20828}
!20834 = !{!20835, !20837}
!20835 = distinct !{!20835, !20836, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20836 = distinct !{!20836, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!20837 = distinct !{!20837, !20838, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!20838 = distinct !{!20838, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!20839 = !{!20837}
!20840 = !{!20835}
!20841 = !{!20842}
!20842 = distinct !{!20842, !20843, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!20843 = distinct !{!20843, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!20844 = !{!20845}
!20845 = distinct !{!20845, !20846, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20846 = distinct !{!20846, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!20847 = !{!20845, !20842}
!20848 = !{!20849, !20851}
!20849 = distinct !{!20849, !20850, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20850 = distinct !{!20850, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20851 = distinct !{!20851, !20852, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20852 = distinct !{!20852, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20853 = !{!20851}
!20854 = !{!20849}
!20855 = !{!20856}
!20856 = distinct !{!20856, !20857, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20857 = distinct !{!20857, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20858 = !{!20859}
!20859 = distinct !{!20859, !20860, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20860 = distinct !{!20860, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20861 = !{!20859, !20856}
!20862 = !{!20863, !20865}
!20863 = distinct !{!20863, !20864, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20864 = distinct !{!20864, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!20865 = distinct !{!20865, !20866, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!20866 = distinct !{!20866, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!20867 = !{!20865}
!20868 = !{!20863}
!20869 = !{!20870, !20872}
!20870 = distinct !{!20870, !20871, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20871 = distinct !{!20871, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!20872 = distinct !{!20872, !20873, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!20873 = distinct !{!20873, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!20874 = !{!20872}
!20875 = !{!20870}
!20876 = !{!20877, !20879}
!20877 = distinct !{!20877, !20878, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20878 = distinct !{!20878, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20879 = distinct !{!20879, !20880, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20880 = distinct !{!20880, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20881 = !{!20879}
!20882 = !{!20877}
!20883 = !{!20884, !20886}
!20884 = distinct !{!20884, !20885, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20885 = distinct !{!20885, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20886 = distinct !{!20886, !20887, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20887 = distinct !{!20887, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20888 = !{!20886}
!20889 = !{!20884}
!20890 = !{!20891, !20893}
!20891 = distinct !{!20891, !20892, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20892 = distinct !{!20892, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20893 = distinct !{!20893, !20894, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20894 = distinct !{!20894, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20895 = !{!20893}
!20896 = !{!20891}
!20897 = !{!20898, !20900}
!20898 = distinct !{!20898, !20899, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20899 = distinct !{!20899, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20900 = distinct !{!20900, !20901, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20901 = distinct !{!20901, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20902 = !{!20900}
!20903 = !{!20898}
!20904 = !{!20905, !20907}
!20905 = distinct !{!20905, !20906, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20906 = distinct !{!20906, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!20907 = distinct !{!20907, !20908, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!20908 = distinct !{!20908, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!20909 = !{!20907}
!20910 = !{!20905}
!20911 = !{!20912}
!20912 = distinct !{!20912, !20913, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!20913 = distinct !{!20913, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!20914 = !{!20915}
!20915 = distinct !{!20915, !20916, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20916 = distinct !{!20916, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!20917 = !{!20915, !20912}
!20918 = !{!20919}
!20919 = distinct !{!20919, !20920, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20920 = distinct !{!20920, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20921 = !{!20922}
!20922 = distinct !{!20922, !20923, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20923 = distinct !{!20923, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20924 = !{!20922, !20919}
!20925 = !{!20926, !20928}
!20926 = distinct !{!20926, !20927, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20927 = distinct !{!20927, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20928 = distinct !{!20928, !20929, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20929 = distinct !{!20929, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20930 = !{!20928}
!20931 = !{!20926}
!20932 = !{!20933}
!20933 = distinct !{!20933, !20934, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64: argument 0"}
!20934 = distinct !{!20934, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64"}
!20935 = !{!20936}
!20936 = distinct !{!20936, !20937, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20937 = distinct !{!20937, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20938 = !{!20936, !20933}
!20939 = !{!20940}
!20940 = distinct !{!20940, !20941, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20941 = distinct !{!20941, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20942 = !{!20943}
!20943 = distinct !{!20943, !20944, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20944 = distinct !{!20944, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20945 = !{!20946, !20948}
!20946 = distinct !{!20946, !20947, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20947 = distinct !{!20947, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20948 = distinct !{!20948, !20949, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20949 = distinct !{!20949, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20950 = !{!20943, !20940}
!20951 = !{!20952, !20954}
!20952 = distinct !{!20952, !20953, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20953 = distinct !{!20953, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20954 = distinct !{!20954, !20955, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64: argument 0"}
!20955 = distinct !{!20955, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64"}
!20956 = !{!20954}
!20957 = !{!20952}
!20958 = !{!20948}
!20959 = !{!20946}
!20960 = !{!20961, !20963}
!20961 = distinct !{!20961, !20962, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20962 = distinct !{!20962, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20963 = distinct !{!20963, !20964, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20964 = distinct !{!20964, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20965 = !{!20963}
!20966 = !{!20961}
!20967 = !{!20968, !20970}
!20968 = distinct !{!20968, !20969, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20969 = distinct !{!20969, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20970 = distinct !{!20970, !20971, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20971 = distinct !{!20971, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20972 = !{!20970}
!20973 = !{!20968}
!20974 = !{!20975}
!20975 = distinct !{!20975, !20976, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!20976 = distinct !{!20976, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!20977 = !{!20978}
!20978 = distinct !{!20978, !20979, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20979 = distinct !{!20979, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!20980 = !{!20978, !20975}
!20981 = !{!20982}
!20982 = distinct !{!20982, !20983, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20983 = distinct !{!20983, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20984 = !{!20985}
!20985 = distinct !{!20985, !20986, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20986 = distinct !{!20986, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20987 = !{!20985, !20982}
!20988 = !{!20989, !20991}
!20989 = distinct !{!20989, !20990, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20990 = distinct !{!20990, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20991 = distinct !{!20991, !20992, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20992 = distinct !{!20992, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!20993 = !{!20991}
!20994 = !{!20989}
!20995 = !{!20996, !20998}
!20996 = distinct !{!20996, !20997, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!20997 = distinct !{!20997, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!20998 = distinct !{!20998, !20999, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!20999 = distinct !{!20999, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21000 = !{!20998}
!21001 = !{!20996}
!21002 = !{!21003, !21005}
!21003 = distinct !{!21003, !21004, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21004 = distinct !{!21004, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21005 = distinct !{!21005, !21006, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21006 = distinct !{!21006, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21007 = !{!21005}
!21008 = !{!21003}
!21009 = !{!21010, !21012}
!21010 = distinct !{!21010, !21011, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21011 = distinct !{!21011, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21012 = distinct !{!21012, !21013, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21013 = distinct !{!21013, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21014 = !{!21012}
!21015 = !{!21010}
!21016 = !{!21017, !21019}
!21017 = distinct !{!21017, !21018, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21018 = distinct !{!21018, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21019 = distinct !{!21019, !21020, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21020 = distinct !{!21020, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21021 = !{!21019}
!21022 = !{!21017}
!21023 = !{!21024, !21026}
!21024 = distinct !{!21024, !21025, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21025 = distinct !{!21025, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21026 = distinct !{!21026, !21027, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21027 = distinct !{!21027, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21028 = !{!21026}
!21029 = !{!21024}
!21030 = !{!21031, !21033}
!21031 = distinct !{!21031, !21032, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21032 = distinct !{!21032, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21033 = distinct !{!21033, !21034, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21034 = distinct !{!21034, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21035 = !{!21033}
!21036 = !{!21031}
!21037 = !{!21038, !21040}
!21038 = distinct !{!21038, !21039, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21039 = distinct !{!21039, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21040 = distinct !{!21040, !21041, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21041 = distinct !{!21041, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21042 = !{!21040}
!21043 = !{!21038}
!21044 = !{!21045}
!21045 = distinct !{!21045, !21046, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21046 = distinct !{!21046, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21047 = !{!21048}
!21048 = distinct !{!21048, !21049, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21049 = distinct !{!21049, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21050 = !{!21048, !21045}
!21051 = !{!21052}
!21052 = distinct !{!21052, !21053, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21053 = distinct !{!21053, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21054 = !{!21055}
!21055 = distinct !{!21055, !21056, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21056 = distinct !{!21056, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21057 = !{!21055, !21052}
!21058 = !{!21059, !21061}
!21059 = distinct !{!21059, !21060, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21060 = distinct !{!21060, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21061 = distinct !{!21061, !21062, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21062 = distinct !{!21062, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21063 = !{!21061}
!21064 = !{!21059}
!21065 = !{!21066, !21068}
!21066 = distinct !{!21066, !21067, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21067 = distinct !{!21067, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21068 = distinct !{!21068, !21069, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21069 = distinct !{!21069, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21070 = !{!21068}
!21071 = !{!21066}
!21072 = !{!21073}
!21073 = distinct !{!21073, !21074, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21074 = distinct !{!21074, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21075 = !{!21076}
!21076 = distinct !{!21076, !21077, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21077 = distinct !{!21077, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21078 = !{!21076, !21073}
!21079 = !{!21080, !21082}
!21080 = distinct !{!21080, !21081, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21081 = distinct !{!21081, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21082 = distinct !{!21082, !21083, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21083 = distinct !{!21083, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21084 = !{!21082}
!21085 = !{!21080}
!21086 = !{!21087}
!21087 = distinct !{!21087, !21088, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21088 = distinct !{!21088, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21089 = !{!21090}
!21090 = distinct !{!21090, !21091, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21091 = distinct !{!21091, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21092 = !{!21090, !21087}
!21093 = !{!21094}
!21094 = distinct !{!21094, !21095, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21095 = distinct !{!21095, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21096 = !{!21097}
!21097 = distinct !{!21097, !21098, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21098 = distinct !{!21098, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21099 = !{!21097, !21094}
!21100 = !{!21101}
!21101 = distinct !{!21101, !21102, !"_RINvXs5Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21102 = distinct !{!21102, !"_RINvXs5Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core"}
!21103 = !{!21104}
!21104 = distinct !{!21104, !21102, !"_RINvXs5Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 1"}
!21105 = !{!21106}
!21106 = distinct !{!21106, !21107, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21107 = distinct !{!21107, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21108 = !{!21109}
!21109 = distinct !{!21109, !21110, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21110 = distinct !{!21110, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21111 = !{!21109, !21106, !21104}
!21112 = !{!21109, !21106}
!21113 = !{!21114}
!21114 = distinct !{!21114, !21115, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21115 = distinct !{!21115, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21116 = !{!21117}
!21117 = distinct !{!21117, !21118, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21118 = distinct !{!21118, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21119 = !{!21117, !21114}
!21120 = !{!21121}
!21121 = distinct !{!21121, !21122, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21122 = distinct !{!21122, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21123 = !{!21124}
!21124 = distinct !{!21124, !21125, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21125 = distinct !{!21125, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21126 = !{!21124, !21121}
!21127 = !{!21128, !21130}
!21128 = distinct !{!21128, !21129, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21129 = distinct !{!21129, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21130 = distinct !{!21130, !21131, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64: argument 0"}
!21131 = distinct !{!21131, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64"}
!21132 = !{!21130}
!21133 = !{!21128}
!21134 = !{!21135, !21137}
!21135 = distinct !{!21135, !21136, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21136 = distinct !{!21136, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21137 = distinct !{!21137, !21138, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21138 = distinct !{!21138, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21139 = !{!21137}
!21140 = !{!21135}
!21141 = !{!21142, !21144}
!21142 = distinct !{!21142, !21143, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21143 = distinct !{!21143, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21144 = distinct !{!21144, !21145, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21145 = distinct !{!21145, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21146 = !{!21144}
!21147 = !{!21142}
!21148 = !{!21149}
!21149 = distinct !{!21149, !21150, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21150 = distinct !{!21150, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21151 = !{!21152}
!21152 = distinct !{!21152, !21153, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21153 = distinct !{!21153, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21154 = !{!21152, !21149}
!21155 = !{!21156}
!21156 = distinct !{!21156, !21157, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21157 = distinct !{!21157, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21158 = !{!21159}
!21159 = distinct !{!21159, !21160, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
end_hunk_1
