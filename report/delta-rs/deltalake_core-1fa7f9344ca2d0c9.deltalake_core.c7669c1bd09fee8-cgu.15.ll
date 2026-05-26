inline.NumInlined: 12000
inline.NumDeleted: 3498
begin_hunk_0_@_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.hei = load ptr, ptr %i.c, align 16, !alias.scope !24005, !nonnull !3, !align !42, !noundef !3
  %i.hej = load i64, ptr %i.hei, align 8, !noalias !24005, !noundef !3
  %i.hek = xor i64 %i.hej, %i.hef
  %i.hel = zext i64 %i.heh to i128
  %i.hem = zext i64 %i.hek to i128
  %i.hen = mul nuw i128 %i.hem, %i.hel            ; 2 uses
  %i.heo = lshr i128 %i.hen, 64
  %i.hep = xor i128 %i.heo, %i.hen
  %i.heq = trunc i128 %i.hep to i64
  store i64 %i.heq, ptr %i.b, align 8, !alias.scope !24005
  %i.her = zext nneg i8 %i.heb to i128            ; 2 uses
  store i128 %i.her, ptr %1, align 16, !alias.scope !24005
  store i8 8, ptr %i.a, align 16, !alias.scope !24005
  %i.hes = getelementptr inbounds nuw i8, ptr %.tr, i64 112 ; 2 uses
  %i.het = load i64, ptr %i.hes, align 8, !range !140, !noundef !3
  %i.heu = icmp ne i64 %i.het, -9223372036854775808
  br label %bb.qr

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269.thread
  %i.hev = phi i128 [ %i.hdp, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269.thread ], [ %i.hdy, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269 ]
  %i.hew = phi i8 [ %i.hdr, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269.thread ], [ %i.heb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269 ]
  %storemerge.i.i268786 = phi i8 [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269.thread ], [ %i.hdz, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269 ] ; 3 uses
  %i.hex = zext nneg i8 %i.hew to i128
  %i.hey = zext nneg i8 %storemerge.i.i268786 to i128
  %i.hez = shl nuw nsw i128 %i.hex, %i.hey
  %i.hfa = or i128 %i.hez, %i.hev                 ; 4 uses
  store i128 %i.hfa, ptr %1, align 16, !alias.scope !24005
  %i.hfb = add nuw i8 %storemerge.i.i268786, 8    ; 2 uses
  store i8 %i.hfb, ptr %i.a, align 16, !alias.scope !24005
  %i.hfc = getelementptr inbounds nuw i8, ptr %.tr, i64 112 ; 3 uses
  %i.hfd = load i64, ptr %i.hfc, align 8, !range !140, !noundef !3
  %i.hfe = icmp ne i64 %i.hfd, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24009)
  %i.hff = icmp samesign ugt i8 %storemerge.i.i268786, 56
  br i1 %i.hff, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit54, label %bb.qr

bb.qr:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267
  %i.hfg = phi i128 [ %i.her, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267.thread ], [ %i.hfa, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267 ]
  %i.hfh = phi i1 [ %i.heu, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267.thread ], [ %i.hfe, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267 ] ; 2 uses
  %i.hfi = phi ptr [ %i.hes, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267.thread ], [ %i.hfc, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267 ]
  %storemerge.i.i266788 = phi i8 [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267.thread ], [ %i.hfb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267 ] ; 2 uses
  %i.hfj = zext i1 %i.hfh to i128
  %i.hfk = zext nneg i8 %storemerge.i.i266788 to i128
  %i.hfl = shl nuw nsw i128 %i.hfj, %i.hfk
  %i.hfm = or i128 %i.hfl, %i.hfg                 ; 3 uses
  store i128 %i.hfm, ptr %1, align 16, !alias.scope !24012
  %i.hfn = add nuw i8 %storemerge.i.i266788, 64
  store i8 %i.hfn, ptr %i.a, align 16, !alias.scope !24012
  br i1 %i.hfh, label %bb.qs, label %.thread790

.thread790:                                       ; preds = %bb.qr
  %i.hfo = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.hfp = load i64, ptr %i.hfo, align 8, !range !5, !noundef !3
  %extract.t1947 = trunc i128 %i.hfm to i64
  %extract1950 = lshr i128 %i.hfm, 64
  %extract.t1951 = trunc nuw i128 %extract1950 to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit54: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267
  %i.hfq = trunc i128 %i.hfa to i64
  %i.hfr = lshr i128 %i.hfa, 64
  %i.hfs = trunc nuw i128 %i.hfr to i64
  %i.hft = load i64, ptr %i.b, align 8, !alias.scope !24012, !noundef !3
  %i.hfu = xor i64 %i.hft, %i.hfq
  %i.hfv = load ptr, ptr %i.c, align 16, !alias.scope !24012, !nonnull !3, !align !42, !noundef !3
  %i.hfw = load i64, ptr %i.hfv, align 8, !noalias !24012, !noundef !3
  %i.hfx = xor i64 %i.hfw, %i.hfs
  %i.hfy = zext i64 %i.hfu to i128
  %i.hfz = zext i64 %i.hfx to i128
  %i.hga = mul nuw i128 %i.hfz, %i.hfy            ; 2 uses
  %i.hgb = lshr i128 %i.hga, 64
  %i.hgc = xor i128 %i.hgb, %i.hga
  %i.hgd = trunc i128 %i.hgc to i64
  store i64 %i.hgd, ptr %i.b, align 8, !alias.scope !24012
  %i.hge = zext i1 %i.hfe to i128
  store i128 %i.hge, ptr %1, align 16, !alias.scope !24012
  store i8 64, ptr %i.a, align 16, !alias.scope !24012
  br i1 %i.hfe, label %bb.qs, label %.thread791

.thread791:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit54
  %i.hgf = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.hgg = load i64, ptr %i.hgf, align 8, !range !5, !noundef !3
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52

bb.qs:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit54, %bb.qr
  %i.hgh = phi ptr [ %i.hfi, %bb.qr ], [ %i.hfc, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit54 ] ; 2 uses
  %i.hgi = getelementptr i8, ptr %i.hgh, i64 8
  %.val478 = load ptr, ptr %i.hgi, align 8, !nonnull !3, !noundef !3
  %i.hgj = getelementptr i8, ptr %i.hgh, i64 16
  %.val479 = load i64, ptr %i.hgj, align 8, !noundef !3
  tail call fastcc void @_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val478, i64 %.val479, ptr noalias noundef align 16 dereferenceable(48) %1) #55
  %.pr789 = load i8, ptr %i.a, align 16, !alias.scope !24013 ; 2 uses
  %i.hgk = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.hgl = load i64, ptr %i.hgk, align 8, !range !5, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24019)
  %i.hgm = icmp ugt i8 %.pr789, 64
  %.pre1722 = load i128, ptr %1, align 16, !alias.scope !24013 ; 3 uses
  %extract.t1948 = trunc i128 %.pre1722 to i64
  %extract1952 = lshr i128 %.pre1722, 64
  %extract.t1953 = trunc nuw i128 %extract1952 to i64
  br i1 %i.hgm, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52: ; preds = %bb.qs, %.thread791
  %i.hgn = phi i128 [ 0, %.thread791 ], [ %.pre1722, %bb.qs ]
  %i.hgo = phi i64 [ %i.hgg, %.thread791 ], [ %i.hgl, %bb.qs ] ; 2 uses
  %i.hgp = phi i8 [ 64, %.thread791 ], [ %.pr789, %bb.qs ] ; 3 uses
  %i.hgq = zext nneg i64 %i.hgo to i128
  %i.hgr = zext nneg i8 %i.hgp to i128
  %i.hgs = shl nuw nsw i128 %i.hgq, %i.hgr
  %i.hgt = or i128 %i.hgs, %i.hgn                 ; 5 uses
  store i128 %i.hgt, ptr %1, align 16, !alias.scope !24013
  %i.hgu = add nuw i8 %i.hgp, 64                  ; 2 uses
  store i8 %i.hgu, ptr %i.a, align 16, !alias.scope !24013
  %i.hgv = trunc nuw i64 %i.hgo to i1
  br i1 %i.hgv, label %bb.qt, label %bb.qw

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread: ; preds = %bb.qs, %.thread790
  %.off01946 = phi i64 [ %extract.t1947, %.thread790 ], [ %extract.t1948, %bb.qs ]
  %.off641949 = phi i64 [ %extract.t1951, %.thread790 ], [ %extract.t1953, %bb.qs ]
  %i.hgw = phi i64 [ %i.hfp, %.thread790 ], [ %i.hgl, %bb.qs ] ; 2 uses
  %i.hgx = load i64, ptr %i.b, align 8, !alias.scope !24013, !noundef !3
  %i.hgy = xor i64 %i.hgx, %.off01946
  %i.hgz = load ptr, ptr %i.c, align 16, !alias.scope !24013, !nonnull !3, !align !42, !noundef !3 ; 2 uses
  %i.hha = load i64, ptr %i.hgz, align 8, !noalias !24013, !noundef !3
  %i.hhb = xor i64 %i.hha, %.off641949
  %i.hhc = zext i64 %i.hgy to i128
  %i.hhd = zext i64 %i.hhb to i128
  %i.hhe = mul nuw i128 %i.hhd, %i.hhc            ; 2 uses
  %i.hhf = lshr i128 %i.hhe, 64
  %i.hhg = xor i128 %i.hhf, %i.hhe
  %i.hhh = trunc i128 %i.hhg to i64               ; 2 uses
  store i64 %i.hhh, ptr %i.b, align 8, !alias.scope !24013
  %i.hhi = zext nneg i64 %i.hgw to i128
  store i128 %i.hhi, ptr %1, align 16, !alias.scope !24013
  store i8 64, ptr %i.a, align 16, !alias.scope !24013
  %i.hhj = trunc nuw i64 %i.hgw to i1
  br i1 %i.hhj, label %.thread794, label %.thread797

.thread797:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread
  %i.hhk = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hhl = load i64, ptr %i.hhk, align 8, !range !5, !noundef !3
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50

.thread794:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread
  %i.hhm = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.hhn = load i64, ptr %i.hhm, align 8, !noundef !3
  br label %bb.qu

bb.qt:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52
  %i.hho = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.hhp = load i64, ptr %i.hho, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24023)
  %.not = icmp eq i8 %i.hgp, 0
  br i1 %.not, label %bb.qu, label %bb.qv

bb.qu:                                            ; preds = %.thread794, %bb.qt
  %i.hhq = phi i128 [ 1, %.thread794 ], [ %i.hgt, %bb.qt ]
  %i.hhr = phi i64 [ %i.hhn, %.thread794 ], [ %i.hhp, %bb.qt ]
  %i.hhs = zext i64 %i.hhr to i128
  %i.hht = shl nuw i128 %i.hhs, 64
  %i.hhu = or i128 %i.hht, %i.hhq
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468

bb.qv:                                            ; preds = %bb.qt
  %i.hhv = trunc i128 %i.hgt to i64
  %i.hhw = lshr i128 %i.hgt, 64
  %i.hhx = trunc nuw i128 %i.hhw to i64
  %i.hhy = load i64, ptr %i.b, align 8, !alias.scope !24026, !noundef !3
  %i.hhz = xor i64 %i.hhy, %i.hhv
  %i.hia = load ptr, ptr %i.c, align 16, !alias.scope !24026, !nonnull !3, !align !42, !noundef !3
  %i.hib = load i64, ptr %i.hia, align 8, !noalias !24026, !noundef !3
  %i.hic = xor i64 %i.hib, %i.hhx
  %i.hid = zext i64 %i.hhz to i128
  %i.hie = zext i64 %i.hic to i128
  %i.hif = mul nuw i128 %i.hie, %i.hid            ; 2 uses
  %i.hig = lshr i128 %i.hif, 64
  %i.hih = xor i128 %i.hig, %i.hif
  %i.hii = trunc i128 %i.hih to i64
  store i64 %i.hii, ptr %i.b, align 8, !alias.scope !24026
  %i.hij = zext i64 %i.hhp to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468: ; preds = %bb.qu, %bb.qv
  %storemerge858 = phi i128 [ %i.hij, %bb.qv ], [ %i.hhu, %bb.qu ] ; 2 uses
  %storemerge.i.i467 = phi i8 [ 64, %bb.qv ], [ -128, %bb.qu ] ; 2 uses
  store i128 %storemerge858, ptr %1, align 16, !alias.scope !24026
  store i8 %storemerge.i.i467, ptr %i.a, align 16, !alias.scope !24026
  br label %bb.qw

bb.qw:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52
  %i.hik = phi i128 [ %i.hgt, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52 ], [ %storemerge858, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468 ] ; 3 uses
  %i.hil = phi i8 [ %i.hgu, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52 ], [ %storemerge.i.i467, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468 ]
  %i.him = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hin = load i64, ptr %i.him, align 8, !range !5, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24030)
  %i.hio = icmp ugt i8 %i.hil, 64
  %.pre1723.pre = load i64, ptr %i.b, align 8     ; 2 uses
  %.pre1724.pre = load ptr, ptr %i.c, align 16    ; 4 uses
  br i1 %i.hio, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50: ; preds = %bb.qw, %.thread797
  %.pre1724 = phi ptr [ %i.hgz, %.thread797 ], [ %.pre1724.pre, %bb.qw ] ; 3 uses
  %.pre1723 = phi i64 [ %i.hhh, %.thread797 ], [ %.pre1723.pre, %bb.qw ] ; 2 uses
  %i.hip = phi i128 [ 0, %.thread797 ], [ %i.hik, %bb.qw ] ; 2 uses
  %i.hiq = phi i64 [ %i.hhl, %.thread797 ], [ %i.hin, %bb.qw ] ; 2 uses
  %i.hir = zext nneg i64 %i.hiq to i128
  %i.his = shl nuw nsw i128 %i.hir, 64
  %i.hit = or i128 %i.his, %i.hip                 ; 2 uses
  store i128 %i.hit, ptr %1, align 16, !alias.scope !24033
  store i8 -128, ptr %i.a, align 16, !alias.scope !24033
  %i.hiu = trunc nuw i64 %i.hiq to i1
  %extract.t1955 = trunc i128 %i.hip to i64       ; 2 uses
  %extract1958 = lshr i128 %i.hit, 64
  %extract.t1959 = trunc nuw i128 %extract1958 to i64 ; 2 uses
  br i1 %i.hiu, label %bb.qx, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread: ; preds = %bb.qw
  %i.hiv = trunc i128 %i.hik to i64
  %i.hiw = lshr i128 %i.hik, 64
  %i.hix = trunc nuw i128 %i.hiw to i64
  %i.hiy = xor i64 %.pre1723.pre, %i.hiv
  %i.hiz = load i64, ptr %.pre1724.pre, align 8, !noalias !24033, !noundef !3
  %i.hja = xor i64 %i.hiz, %i.hix
  %i.hjb = zext i64 %i.hiy to i128
  %i.hjc = zext i64 %i.hja to i128
  %i.hjd = mul nuw i128 %i.hjc, %i.hjb            ; 2 uses
  %i.hje = lshr i128 %i.hjd, 64
  %i.hjf = xor i128 %i.hje, %i.hjd
  %i.hjg = trunc i128 %i.hjf to i64               ; 3 uses
  store i64 %i.hjg, ptr %i.b, align 8, !alias.scope !24033
  %i.hjh = zext nneg i64 %i.hin to i128
  store i128 %i.hjh, ptr %1, align 16, !alias.scope !24033
  store i8 64, ptr %i.a, align 16, !alias.scope !24033
  %i.hji = trunc nuw i64 %i.hin to i1
  br i1 %i.hji, label %.thread805, label %.thread804

.thread805:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread
  %i.hjj = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.hjk = load i64, ptr %i.hjj, align 8, !noundef !3 ; 2 uses
  %i.hjl = zext i64 %i.hjk to i128
  %i.hjm = shl nuw i128 %i.hjl, 64
  %i.hjn = or disjoint i128 %i.hjm, 1
  store i128 %i.hjn, ptr %1, align 16, !alias.scope !24034
  store i8 -128, ptr %i.a, align 16, !alias.scope !24034
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48

bb.qx:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50
  %i.hjo = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.hjp = load i64, ptr %i.hjo, align 8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24040)
  %i.hjq = xor i64 %.pre1723, %extract.t1955
  %i.hjr = load i64, ptr %.pre1724, align 8, !noalias !24034, !noundef !3
  %i.hjs = xor i64 %i.hjr, %extract.t1959
  %i.hjt = zext i64 %i.hjq to i128
  %i.hju = zext i64 %i.hjs to i128
  %i.hjv = mul nuw i128 %i.hju, %i.hjt            ; 2 uses
  %i.hjw = lshr i128 %i.hjv, 64
  %i.hjx = xor i128 %i.hjw, %i.hjv
  %i.hjy = trunc i128 %i.hjx to i64               ; 2 uses
  store i64 %i.hjy, ptr %i.b, align 8, !alias.scope !24034
  %i.hjz = zext i64 %i.hjp to i128                ; 2 uses
  store i128 %i.hjz, ptr %1, align 16, !alias.scope !24034
  store i8 64, ptr %i.a, align 16, !alias.scope !24034
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24044)
  br label %.thread804

.thread804:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread, %bb.qx
  %i.hka = phi ptr [ %.pre1724.pre, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread ], [ %.pre1724, %bb.qx ]
  %i.hkb = phi i64 [ %i.hjg, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread ], [ %i.hjy, %bb.qx ]
  %i.hkc = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread ], [ %i.hjz, %bb.qx ] ; 2 uses
  %.in.in = getelementptr inbounds nuw i8, ptr %.tr, i64 136
  %.in = load i64, ptr %.in.in, align 8, !range !140, !noundef !3
  %.not859 = icmp eq i64 %.in, -9223372036854775808 ; 2 uses
  %i.hkd = select i1 %.not859, i128 0, i128 18446744073709551616
  %i.hke = or disjoint i128 %i.hkd, %i.hkc
  store i128 %i.hke, ptr %1, align 16, !alias.scope !24047
  store i8 -128, ptr %i.a, align 16, !alias.scope !24047
  br i1 %.not859, label %.thread808, label %bb.qy

.thread808:                                       ; preds = %.thread804
  %i.hkf = getelementptr inbounds nuw i8, ptr %.tr, i64 160
  %i.hkg = load i64, ptr %i.hkf, align 8, !range !140, !noundef !3
  %i.hkh = icmp ne i64 %i.hkg, -9223372036854775808 ; 2 uses
  %i.hki = zext i1 %i.hkh to i64
  %extract.t2431 = trunc nuw i128 %i.hkc to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50, %.thread805
  %i.hkj = phi ptr [ %.pre1724, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50 ], [ %.pre1724.pre, %.thread805 ]
  %i.hkk = phi i64 [ %.pre1723, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50 ], [ %i.hjg, %.thread805 ]
  %.off01954 = phi i64 [ %extract.t1955, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50 ], [ 1, %.thread805 ]
  %.off641957 = phi i64 [ %extract.t1959, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50 ], [ %i.hjk, %.thread805 ]
  %.in861.in = getelementptr inbounds nuw i8, ptr %.tr, i64 136
  %.in861 = load i64, ptr %.in861.in, align 8, !range !140, !noundef !3
  %i.hkl = icmp ne i64 %.in861, -9223372036854775808 ; 2 uses
  %i.hkm = xor i64 %.off01954, %i.hkk
  %i.hkn = load i64, ptr %i.hkj, align 8, !noalias !24047, !noundef !3
  %i.hko = xor i64 %i.hkn, %.off641957
  %i.hkp = zext i64 %i.hkm to i128
  %i.hkq = zext i64 %i.hko to i128
  %i.hkr = mul nuw i128 %i.hkq, %i.hkp            ; 2 uses
  %i.hks = lshr i128 %i.hkr, 64
  %i.hkt = xor i128 %i.hks, %i.hkr
  %i.hku = trunc i128 %i.hkt to i64
  store i64 %i.hku, ptr %i.b, align 8, !alias.scope !24047
  %i.hkv = zext i1 %i.hkl to i128
  store i128 %i.hkv, ptr %1, align 16, !alias.scope !24047
  store i8 64, ptr %i.a, align 16, !alias.scope !24047
  br i1 %i.hkl, label %bb.qy, label %.thread809

.thread809:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48
  %i.hkw = getelementptr inbounds nuw i8, ptr %.tr, i64 160
  %i.hkx = load i64, ptr %i.hkw, align 8, !range !140, !noundef !3
  %i.hky = icmp ne i64 %i.hkx, -9223372036854775808 ; 2 uses
  %i.hkz = zext i1 %i.hky to i64
  br label %._crit_edge1725

bb.qy:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48, %.thread804
  %i.hla = getelementptr inbounds nuw i8, ptr %.tr, i64 144
  %i.hlb = load ptr, ptr %i.hla, align 8, !nonnull !3, !noundef !3
  %i.hlc = getelementptr inbounds nuw i8, ptr %.tr, i64 152
  %i.hld = load i64, ptr %i.hlc, align 8, !noundef !3
  tail call fastcc void @_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hlb, i64 noundef %i.hld) #55
  %.pr807 = load i8, ptr %i.a, align 16, !alias.scope !24048 ; 2 uses
  %i.hle = getelementptr inbounds nuw i8, ptr %.tr, i64 160
  %i.hlf = load i64, ptr %i.hle, align 8, !range !140, !noundef !3
  %i.hlg = icmp ne i64 %i.hlf, -9223372036854775808 ; 3 uses
  %i.hlh = zext i1 %i.hlg to i64                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24054)
  %i.hli = icmp ugt i8 %.pr807, 64
  %.pre1727 = load i128, ptr %1, align 16, !alias.scope !24048 ; 3 uses
  br i1 %i.hli, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge, label %._crit_edge1725

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge: ; preds = %bb.qy
  %.pre1728 = load i64, ptr %i.b, align 8, !alias.scope !24048
  %.pre1729 = load ptr, ptr %i.c, align 16, !alias.scope !24048
  %extract.t2430 = trunc i128 %.pre1727 to i64
  %extract2432 = lshr i128 %.pre1727, 64
  %extract.t2433 = trunc nuw i128 %extract2432 to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46

._crit_edge1725:                                  ; preds = %bb.qy, %.thread809
  %i.hlj = phi i128 [ 0, %.thread809 ], [ %.pre1727, %bb.qy ]
  %i.hlk = phi i64 [ %i.hkz, %.thread809 ], [ %i.hlh, %bb.qy ]
  %i.hll = phi i1 [ %i.hky, %.thread809 ], [ %i.hlg, %bb.qy ]
  %i.hlm = phi i8 [ 64, %.thread809 ], [ %.pr807, %bb.qy ] ; 2 uses
  %i.hln = zext nneg i64 %i.hlk to i128
  %i.hlo = zext nneg i8 %i.hlm to i128
  %i.hlp = shl nuw nsw i128 %i.hln, %i.hlo
  %i.hlq = or i128 %i.hlp, %i.hlj                 ; 2 uses
  store i128 %i.hlq, ptr %1, align 16, !alias.scope !24048
  %i.hlr = add nuw i8 %i.hlm, 64                  ; 2 uses
  store i8 %i.hlr, ptr %i.a, align 16, !alias.scope !24048
  br i1 %i.hll, label %bb.qz, label %bb.ra

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge, %.thread808
  %.pre1727.sink2429.off0 = phi i64 [ %extract.t2430, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %extract.t2431, %.thread808 ]
  %.pre1727.sink.off64 = phi i64 [ %extract.t2433, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ 0, %.thread808 ]
  %i.hls = phi ptr [ %.pre1729, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %i.hka, %.thread808 ]
  %i.hlt = phi i64 [ %.pre1728, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %i.hkb, %.thread808 ]
  %i.hlu = phi i64 [ %i.hlh, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %i.hki, %.thread808 ]
  %i.hlv = phi i1 [ %i.hlg, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %i.hkh, %.thread808 ]
  %i.hlw = xor i64 %i.hlt, %.pre1727.sink2429.off0
  %i.hlx = load i64, ptr %i.hls, align 8, !noalias !24048, !noundef !3
  %i.hly = xor i64 %i.hlx, %.pre1727.sink.off64
  %i.hlz = zext i64 %i.hlw to i128
  %i.hma = zext i64 %i.hly to i128
  %i.hmb = mul nuw i128 %i.hma, %i.hlz            ; 2 uses
  %i.hmc = lshr i128 %i.hmb, 64
  %i.hmd = xor i128 %i.hmc, %i.hmb
  %i.hme = trunc i128 %i.hmd to i64
  store i64 %i.hme, ptr %i.b, align 8, !alias.scope !24048
  %i.hmf = zext nneg i64 %i.hlu to i128           ; 2 uses
  store i128 %i.hmf, ptr %1, align 16, !alias.scope !24048
  store i8 64, ptr %i.a, align 16, !alias.scope !24048
  br i1 %i.hlv, label %bb.qz, label %.thread811

.thread811:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46
  %i.hmg = getelementptr inbounds nuw i8, ptr %.tr, i64 331
  %i.hmh = load i8, ptr %i.hmg, align 1, !range !158, !noundef !3 ; 2 uses
  %i.hmi = icmp ne i8 %i.hmh, 2
  br label %bb.rb

bb.qz:                                            ; preds = %._crit_edge1725, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46
  %i.hmj = getelementptr inbounds nuw i8, ptr %.tr, i64 168
  %i.hmk = load ptr, ptr %i.hmj, align 8, !nonnull !3, !noundef !3
  %i.hml = getelementptr inbounds nuw i8, ptr %.tr, i64 176
  %i.hmm = load i64, ptr %i.hml, align 8, !noundef !3
  tail call fastcc void @_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hmk, i64 noundef %i.hmm) #55
  %.pr810 = load i8, ptr %i.a, align 16, !alias.scope !24055
  %.pre1730.pre = load i128, ptr %1, align 16, !alias.scope !24055
  br label %bb.ra

bb.ra:                                            ; preds = %._crit_edge1725, %bb.qz
  %.pre1730 = phi i128 [ %i.hlq, %._crit_edge1725 ], [ %.pre1730.pre, %bb.qz ] ; 3 uses
  %i.hmn = phi i8 [ %i.hlr, %._crit_edge1725 ], [ %.pr810, %bb.qz ] ; 2 uses
  %i.hmo = getelementptr inbounds nuw i8, ptr %.tr, i64 331
  %i.hmp = load i8, ptr %i.hmo, align 1, !range !158, !noundef !3 ; 3 uses
  %i.hmq = icmp ne i8 %i.hmp, 2                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24061)
  %i.hmr = icmp ugt i8 %i.hmn, 64
  br i1 %i.hmr, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44, label %bb.rb

bb.rb:                                            ; preds = %.thread811, %bb.ra
  %i.hms = phi i128 [ %i.hmf, %.thread811 ], [ %.pre1730, %bb.ra ]
  %i.hmt = phi i1 [ %i.hmi, %.thread811 ], [ %i.hmq, %bb.ra ] ; 2 uses
  %i.hmu = phi i8 [ %i.hmh, %.thread811 ], [ %i.hmp, %bb.ra ] ; 2 uses
  %i.hmv = phi i8 [ 64, %.thread811 ], [ %i.hmn, %bb.ra ] ; 3 uses
  %i.hmw = zext i1 %i.hmt to i128
  %i.hmx = zext nneg i8 %i.hmv to i128
  %i.hmy = shl nuw nsw i128 %i.hmw, %i.hmx
  %i.hmz = or i128 %i.hmy, %i.hms                 ; 5 uses
  store i128 %i.hmz, ptr %1, align 16, !alias.scope !24055
  %i.hna = add nuw i8 %i.hmv, 64                  ; 3 uses
  store i8 %i.hna, ptr %i.a, align 16, !alias.scope !24055
  br i1 %i.hmt, label %bb.rc, label %bb.re

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44: ; preds = %bb.ra
  %i.hnb = trunc i128 %.pre1730 to i64
  %i.hnc = lshr i128 %.pre1730, 64
  %i.hnd = trunc nuw i128 %i.hnc to i64
  %i.hne = load i64, ptr %i.b, align 8, !alias.scope !24055, !noundef !3
  %i.hnf = xor i64 %i.hne, %i.hnb
  %i.hng = load ptr, ptr %i.c, align 16, !alias.scope !24055, !nonnull !3, !align !42, !noundef !3
  %i.hnh = load i64, ptr %i.hng, align 8, !noalias !24055, !noundef !3
  %i.hni = xor i64 %i.hnh, %i.hnd
  %i.hnj = zext i64 %i.hnf to i128
  %i.hnk = zext i64 %i.hni to i128
  %i.hnl = mul nuw i128 %i.hnk, %i.hnj            ; 2 uses
  %i.hnm = lshr i128 %i.hnl, 64
  %i.hnn = xor i128 %i.hnm, %i.hnl
  %i.hno = trunc i128 %i.hnn to i64
  store i64 %i.hno, ptr %i.b, align 8, !alias.scope !24055
  %i.hnp = zext i1 %i.hmq to i128
  store i128 %i.hnp, ptr %1, align 16, !alias.scope !24055
  store i8 64, ptr %i.a, align 16, !alias.scope !24055
  br i1 %i.hmq, label %.thread813, label %.thread816

.thread816:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44
  %i.hnq = getelementptr inbounds nuw i8, ptr %.tr, i64 184
  %i.hnr = load i64, ptr %i.hnq, align 8, !range !140, !noundef !3
  %i.hns = icmp ne i64 %i.hnr, -9223372036854775808
  br label %bb.rf

bb.rc:                                            ; preds = %bb.rb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24065)
  %i.hnt = icmp samesign ugt i8 %i.hmv, 56
  br i1 %i.hnt, label %bb.rd, label %.thread813

.thread813:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44, %bb.rc
  %i.hnu = phi i128 [ %i.hmz, %bb.rc ], [ 1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44 ]
  %i.hnv = phi i8 [ %i.hmu, %bb.rc ], [ %i.hmp, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44 ]
  %storemerge.i.i43812815 = phi i8 [ %i.hna, %bb.rc ], [ 64, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44 ] ; 2 uses
  %i.hnw = zext nneg i8 %i.hnv to i128
  %i.hnx = zext nneg i8 %storemerge.i.i43812815 to i128
  %i.hny = shl nuw nsw i128 %i.hnw, %i.hnx
  %i.hnz = or i128 %i.hny, %i.hnu                 ; 2 uses
  store i128 %i.hnz, ptr %1, align 16, !alias.scope !24068
  %i.hoa = add nuw i8 %storemerge.i.i43812815, 8
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265

bb.rd:                                            ; preds = %bb.rc
  %i.hob = trunc i128 %i.hmz to i64
  %i.hoc = lshr i128 %i.hmz, 64
  %i.hod = trunc nuw i128 %i.hoc to i64
  %i.hoe = load i64, ptr %i.b, align 8, !alias.scope !24068, !noundef !3
  %i.hof = xor i64 %i.hoe, %i.hob
  %i.hog = load ptr, ptr %i.c, align 16, !alias.scope !24068, !nonnull !3, !align !42, !noundef !3
  %i.hoh = load i64, ptr %i.hog, align 8, !noalias !24068, !noundef !3
  %i.hoi = xor i64 %i.hoh, %i.hod
  %i.hoj = zext i64 %i.hof to i128
  %i.hok = zext i64 %i.hoi to i128
  %i.hol = mul nuw i128 %i.hok, %i.hoj            ; 2 uses
  %i.hom = lshr i128 %i.hol, 64
  %i.hon = xor i128 %i.hom, %i.hol
  %i.hoo = trunc i128 %i.hon to i64
  store i64 %i.hoo, ptr %i.b, align 8, !alias.scope !24068
  %i.hop = zext nneg i8 %i.hmu to i128            ; 2 uses
  store i128 %i.hop, ptr %1, align 16, !alias.scope !24068
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265: ; preds = %.thread813, %bb.rd
  %i.hoq = phi i128 [ %i.hnz, %.thread813 ], [ %i.hop, %bb.rd ]
  %storemerge.i.i264 = phi i8 [ %i.hoa, %.thread813 ], [ 8, %bb.rd ] ; 2 uses
  store i8 %storemerge.i.i264, ptr %i.a, align 16, !alias.scope !24068
  br label %bb.re

bb.re:                                            ; preds = %bb.rb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265
  %i.hor = phi i128 [ %i.hmz, %bb.rb ], [ %i.hoq, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265 ] ; 3 uses
  %i.hos = phi i8 [ %i.hna, %bb.rb ], [ %storemerge.i.i264, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265 ] ; 2 uses
  %i.hot = getelementptr inbounds nuw i8, ptr %.tr, i64 184
  %i.hou = load i64, ptr %i.hot, align 8, !range !140, !noundef !3
  %i.hov = icmp ne i64 %i.hou, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24072)
  %i.how = icmp ugt i8 %i.hos, 64
  br i1 %i.how, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit42, label %bb.rf

bb.rf:                                            ; preds = %.thread816, %bb.re
  %i.hox = phi i128 [ 0, %.thread816 ], [ %i.hor, %bb.re ]
  %i.hoy = phi i1 [ %i.hns, %.thread816 ], [ %i.hov, %bb.re ] ; 2 uses
  %i.hoz = phi i8 [ 64, %.thread816 ], [ %i.hos, %bb.re ] ; 2 uses
  %i.hpa = zext i1 %i.hoy to i128
  %i.hpb = zext nneg i8 %i.hoz to i128
  %i.hpc = shl nuw nsw i128 %i.hpa, %i.hpb
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!23833 = !{!23834, !23836}
!23834 = distinct !{!23834, !23835, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23835 = distinct !{!23835, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!23836 = distinct !{!23836, !23837, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!23837 = distinct !{!23837, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!23838 = !{!23836}
!23839 = !{!23834}
!23840 = !{!23841, !23843}
!23841 = distinct !{!23841, !23842, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23842 = distinct !{!23842, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!23843 = distinct !{!23843, !23844, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!23844 = distinct !{!23844, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!23845 = !{!23843}
!23846 = !{!23841}
!23847 = !{!23848, !23850}
!23848 = distinct !{!23848, !23849, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23849 = distinct !{!23849, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!23850 = distinct !{!23850, !23851, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!23851 = distinct !{!23851, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!23852 = !{!23850}
!23853 = !{!23848}
!23854 = !{!23855, !23857}
!23855 = distinct !{!23855, !23856, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23856 = distinct !{!23856, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!23857 = distinct !{!23857, !23858, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!23858 = distinct !{!23858, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!23859 = !{!23857}
!23860 = !{!23855}
!23861 = !{!23862, !23864}
!23862 = distinct !{!23862, !23863, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23863 = distinct !{!23863, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!23864 = distinct !{!23864, !23865, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!23865 = distinct !{!23865, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!23866 = !{!23864}
!23867 = !{!23862}
!23868 = !{!23869, !23871}
!23869 = distinct !{!23869, !23870, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23870 = distinct !{!23870, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!23871 = distinct !{!23871, !23872, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!23872 = distinct !{!23872, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!23873 = !{!23874}
!23874 = distinct !{!23874, !23875, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!23875 = distinct !{!23875, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!23876 = !{!23877}
!23877 = distinct !{!23877, !23878, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23878 = distinct !{!23878, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!23879 = !{!23877, !23874}
!23880 = !{!23881, !23883}
!23881 = distinct !{!23881, !23882, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23882 = distinct !{!23882, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!23883 = distinct !{!23883, !23884, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!23884 = distinct !{!23884, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!23885 = !{!23883}
!23886 = !{!23881}
!23887 = !{!23888, !23890}
!23888 = distinct !{!23888, !23889, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23889 = distinct !{!23889, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!23890 = distinct !{!23890, !23891, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!23891 = distinct !{!23891, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!23892 = !{!23890}
!23893 = !{!23888}
!23894 = !{!23895, !23897}
!23895 = distinct !{!23895, !23896, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23896 = distinct !{!23896, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!23897 = distinct !{!23897, !23898, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!23898 = distinct !{!23898, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!23899 = !{!23897}
!23900 = !{!23895}
!23901 = !{!23902}
!23902 = distinct !{!23902, !23903, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!23903 = distinct !{!23903, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!23904 = !{!23905}
!23905 = distinct !{!23905, !23906, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23906 = distinct !{!23906, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!23907 = !{!23905, !23902}
!23908 = !{!23909, !23911}
!23909 = distinct !{!23909, !23910, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23910 = distinct !{!23910, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!23911 = distinct !{!23911, !23912, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!23912 = distinct !{!23912, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!23913 = !{!23911}
!23914 = !{!23909}
!23915 = !{!23916}
!23916 = distinct !{!23916, !23917, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!23917 = distinct !{!23917, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!23918 = !{!23919}
!23919 = distinct !{!23919, !23920, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23920 = distinct !{!23920, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!23921 = !{!23919, !23916}
!23922 = !{!23923, !23925}
!23923 = distinct !{!23923, !23924, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23924 = distinct !{!23924, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!23925 = distinct !{!23925, !23926, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!23926 = distinct !{!23926, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!23927 = !{!23925}
!23928 = !{!23923}
!23929 = !{!23930}
!23930 = distinct !{!23930, !23931, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!23931 = distinct !{!23931, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!23932 = !{!23933}
!23933 = distinct !{!23933, !23934, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23934 = distinct !{!23934, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!23935 = !{!23933, !23930}
!23936 = !{!23937, !23939}
!23937 = distinct !{!23937, !23938, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23938 = distinct !{!23938, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!23939 = distinct !{!23939, !23940, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!23940 = distinct !{!23940, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!23941 = !{!23939}
!23942 = !{!23937}
!23943 = !{!23944}
!23944 = distinct !{!23944, !23945, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!23945 = distinct !{!23945, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!23946 = !{!23947}
!23947 = distinct !{!23947, !23948, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23948 = distinct !{!23948, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!23949 = !{!23947, !23944}
!23950 = !{!23951, !23953}
!23951 = distinct !{!23951, !23952, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23952 = distinct !{!23952, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!23953 = distinct !{!23953, !23954, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!23954 = distinct !{!23954, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!23955 = !{!23953}
!23956 = !{!23951}
!23957 = !{!23958, !23960}
!23958 = distinct !{!23958, !23959, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23959 = distinct !{!23959, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!23960 = distinct !{!23960, !23961, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!23961 = distinct !{!23961, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!23962 = !{!23960}
!23963 = !{!23958}
!23964 = !{!23965, !23967}
!23965 = distinct !{!23965, !23966, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23966 = distinct !{!23966, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!23967 = distinct !{!23967, !23968, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!23968 = distinct !{!23968, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!23969 = !{!23967}
!23970 = !{!23965}
!23971 = !{!23972, !23974}
!23972 = distinct !{!23972, !23973, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23973 = distinct !{!23973, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!23974 = distinct !{!23974, !23975, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!23975 = distinct !{!23975, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!23976 = !{!23974}
!23977 = !{!23972}
!23978 = !{!23979, !23981}
!23979 = distinct !{!23979, !23980, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23980 = distinct !{!23980, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!23981 = distinct !{!23981, !23982, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!23982 = distinct !{!23982, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!23983 = !{!23981}
!23984 = !{!23979}
!23985 = !{!23986, !23988}
!23986 = distinct !{!23986, !23987, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23987 = distinct !{!23987, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!23988 = distinct !{!23988, !23989, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!23989 = distinct !{!23989, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!23990 = !{!23988}
!23991 = !{!23986}
!23992 = !{!23993, !23995}
!23993 = distinct !{!23993, !23994, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!23994 = distinct !{!23994, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!23995 = distinct !{!23995, !23996, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!23996 = distinct !{!23996, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!23997 = !{!23995}
!23998 = !{!23993}
!23999 = !{!24000}
!24000 = distinct !{!24000, !24001, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!24001 = distinct !{!24001, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!24002 = !{!24003}
!24003 = distinct !{!24003, !24004, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24004 = distinct !{!24004, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!24005 = !{!24003, !24000}
!24006 = !{!24007}
!24007 = distinct !{!24007, !24008, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24008 = distinct !{!24008, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24009 = !{!24010}
!24010 = distinct !{!24010, !24011, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24011 = distinct !{!24011, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24012 = !{!24010, !24007}
!24013 = !{!24014, !24016}
!24014 = distinct !{!24014, !24015, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24015 = distinct !{!24015, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24016 = distinct !{!24016, !24017, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24017 = distinct !{!24017, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24018 = !{!24016}
!24019 = !{!24014}
!24020 = !{!24021}
!24021 = distinct !{!24021, !24022, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64: argument 0"}
!24022 = distinct !{!24022, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64"}
!24023 = !{!24024}
!24024 = distinct !{!24024, !24025, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24025 = distinct !{!24025, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24026 = !{!24024, !24021}
!24027 = !{!24028}
!24028 = distinct !{!24028, !24029, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24029 = distinct !{!24029, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24030 = !{!24031}
!24031 = distinct !{!24031, !24032, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24032 = distinct !{!24032, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24033 = !{!24031, !24028}
!24034 = !{!24035, !24037}
!24035 = distinct !{!24035, !24036, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24036 = distinct !{!24036, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24037 = distinct !{!24037, !24038, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64: argument 0"}
!24038 = distinct !{!24038, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64"}
!24039 = !{!24037}
!24040 = !{!24035}
!24041 = !{!24042}
!24042 = distinct !{!24042, !24043, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24043 = distinct !{!24043, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24044 = !{!24045}
!24045 = distinct !{!24045, !24046, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24046 = distinct !{!24046, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24047 = !{!24045, !24042}
!24048 = !{!24049, !24051}
!24049 = distinct !{!24049, !24050, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24050 = distinct !{!24050, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24051 = distinct !{!24051, !24052, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24052 = distinct !{!24052, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24053 = !{!24051}
!24054 = !{!24049}
!24055 = !{!24056, !24058}
!24056 = distinct !{!24056, !24057, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24057 = distinct !{!24057, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24058 = distinct !{!24058, !24059, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24059 = distinct !{!24059, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24060 = !{!24058}
!24061 = !{!24056}
!24062 = !{!24063}
!24063 = distinct !{!24063, !24064, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!24064 = distinct !{!24064, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!24065 = !{!24066}
!24066 = distinct !{!24066, !24067, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24067 = distinct !{!24067, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!24068 = !{!24066, !24063}
!24069 = !{!24070}
!24070 = distinct !{!24070, !24071, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24071 = distinct !{!24071, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24072 = !{!24073}
!24073 = distinct !{!24073, !24074, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24074 = distinct !{!24074, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24075 = !{!24073, !24070}
!24076 = !{!24077, !24079}
!24077 = distinct !{!24077, !24078, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24078 = distinct !{!24078, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24079 = distinct !{!24079, !24080, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24080 = distinct !{!24080, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24081 = !{!24079}
!24082 = !{!24077}
!24083 = !{!24084, !24086}
!24084 = distinct !{!24084, !24085, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24085 = distinct !{!24085, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24086 = distinct !{!24086, !24087, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24087 = distinct !{!24087, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24088 = !{!24086}
!24089 = !{!24084}
!24090 = !{!24091, !24093}
!24091 = distinct !{!24091, !24092, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24092 = distinct !{!24092, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24093 = distinct !{!24093, !24094, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24094 = distinct !{!24094, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24095 = !{!24093}
!24096 = !{!24091}
!24097 = !{!24098, !24100}
!24098 = distinct !{!24098, !24099, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24099 = distinct !{!24099, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24100 = distinct !{!24100, !24101, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24101 = distinct !{!24101, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24102 = !{!24100}
!24103 = !{!24098}
!24104 = !{!24105, !24107}
!24105 = distinct !{!24105, !24106, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24106 = distinct !{!24106, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24107 = distinct !{!24107, !24108, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24108 = distinct !{!24108, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24109 = !{!24107}
!24110 = !{!24105}
!24111 = !{!24112, !24114}
!24112 = distinct !{!24112, !24113, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24113 = distinct !{!24113, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24114 = distinct !{!24114, !24115, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24115 = distinct !{!24115, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24116 = !{!24114}
!24117 = !{!24112}
!24118 = !{!24119, !24121}
!24119 = distinct !{!24119, !24120, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24120 = distinct !{!24120, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24121 = distinct !{!24121, !24122, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24122 = distinct !{!24122, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24123 = !{!24121}
!24124 = !{!24119}
!24125 = !{!24126, !24128}
!24126 = distinct !{!24126, !24127, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24127 = distinct !{!24127, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24128 = distinct !{!24128, !24129, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24129 = distinct !{!24129, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24130 = !{!24131}
!24131 = distinct !{!24131, !24132, !"_RINvXs4h_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14ProcedureParamNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24132 = distinct !{!24132, !"_RINvXs4h_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14ProcedureParamNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core"}
!24133 = !{!24134}
!24134 = distinct !{!24134, !24132, !"_RINvXs4h_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14ProcedureParamNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 1"}
!24135 = distinct !{null, ptr @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl14ProcedureParamNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core}
!24136 = !{!24137}
!24137 = distinct !{!24137, !24138, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24138 = distinct !{!24138, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24139 = !{!24140}
!24140 = distinct !{!24140, !24141, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24141 = distinct !{!24141, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24142 = !{!24140, !24137, !24134}
!24143 = !{!24140, !24137}
!24144 = !{!24145}
!24145 = distinct !{!24145, !24146, !"_RINvXsts_NtCs4lawaffTVVK_9sqlparser3astNtB7_7ArgModeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24146 = distinct !{!24146, !"_RINvXsts_NtCs4lawaffTVVK_9sqlparser3astNtB7_7ArgModeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core"}
!24147 = !{!24148}
!24148 = distinct !{!24148, !24149, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24149 = distinct !{!24149, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24150 = !{!24151}
!24151 = distinct !{!24151, !24152, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24152 = distinct !{!24152, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24153 = !{!24151, !24148, !24145, !24134}
!24154 = !{!24151, !24148, !24145}
!24155 = !{!24128}
!24156 = !{!24126}
!24157 = !{!24158}
!24158 = distinct !{!24158, !24159, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!24159 = distinct !{!24159, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!24160 = !{!24161}
!24161 = distinct !{!24161, !24162, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24162 = distinct !{!24162, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!24163 = !{!24161, !24158}
!24164 = !{!24165}
!24165 = distinct !{!24165, !24166, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24166 = distinct !{!24166, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24167 = !{!24168}
!24168 = distinct !{!24168, !24169, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24169 = distinct !{!24169, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24170 = !{!24168, !24165}
!24171 = !{!24172, !24174}
!24172 = distinct !{!24172, !24173, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24173 = distinct !{!24173, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24174 = distinct !{!24174, !24175, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24175 = distinct !{!24175, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24176 = !{!24174}
!24177 = !{!24172}
!24178 = !{!24179, !24181}
!24179 = distinct !{!24179, !24180, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24180 = distinct !{!24180, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24181 = distinct !{!24181, !24182, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24182 = distinct !{!24182, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24183 = !{!24181}
!24184 = !{!24179}
!24185 = !{!24186}
!24186 = distinct !{!24186, !24187, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24187 = distinct !{!24187, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24188 = !{!24189}
!24189 = distinct !{!24189, !24190, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24190 = distinct !{!24190, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24191 = !{!24189, !24186}
!24192 = !{!24193, !24195}
!24193 = distinct !{!24193, !24194, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24194 = distinct !{!24194, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24195 = distinct !{!24195, !24196, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24196 = distinct !{!24196, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24197 = !{!24195}
!24198 = !{!24193}
!24199 = !{!24200}
!24200 = distinct !{!24200, !24201, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!24201 = distinct !{!24201, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!24202 = !{!24203}
!24203 = distinct !{!24203, !24204, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24204 = distinct !{!24204, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!24205 = !{!24203, !24200}
!24206 = !{!24207}
!24207 = distinct !{!24207, !24208, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!24208 = distinct !{!24208, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!24209 = !{!24210}
!24210 = distinct !{!24210, !24211, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24211 = distinct !{!24211, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!24212 = !{!24210, !24207}
!24213 = !{!24214}
!24214 = distinct !{!24214, !24215, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!24215 = distinct !{!24215, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!24216 = !{!24217}
!24217 = distinct !{!24217, !24218, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24218 = distinct !{!24218, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!24219 = !{!24217, !24214}
!24220 = !{!24221}
!24221 = distinct !{!24221, !24222, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!24222 = distinct !{!24222, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!24223 = !{!24224}
!24224 = distinct !{!24224, !24225, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24225 = distinct !{!24225, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!24226 = !{!24224, !24221}
!24227 = !{!24228, !24230}
!24228 = distinct !{!24228, !24229, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24229 = distinct !{!24229, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24230 = distinct !{!24230, !24231, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64: argument 0"}
!24231 = distinct !{!24231, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64"}
!24232 = !{!24230}
!24233 = !{!24228}
!24234 = !{!24235, !24237}
!24235 = distinct !{!24235, !24236, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24236 = distinct !{!24236, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!24237 = distinct !{!24237, !24238, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!24238 = distinct !{!24238, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!24239 = !{!24237}
!24240 = !{!24235}
!24241 = !{!24242, !24244}
!24242 = distinct !{!24242, !24243, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24243 = distinct !{!24243, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!24244 = distinct !{!24244, !24245, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!24245 = distinct !{!24245, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!24246 = !{!24244}
!24247 = !{!24242}
end_hunk_1
