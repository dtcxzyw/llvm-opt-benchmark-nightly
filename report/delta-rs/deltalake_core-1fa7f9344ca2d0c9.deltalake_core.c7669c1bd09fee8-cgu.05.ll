inline.NumInlined: 6802
inline.NumDeleted: 1969
begin_hunk_0_@_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.cdt = phi i128 [ 1, %.thread294 ], [ %i.aaz, %bb.fd ]
  %i.cdu = phi i64 [ %i.abw, %.thread294 ], [ %i.cds, %bb.fd ]
  %i.cdv = zext i64 %i.cdu to i128
  %i.cdw = shl nuw i128 %i.cdv, 64
  %i.cdx = or i128 %i.cdw, %i.cdt
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit154

bb.ff:                                            ; preds = %bb.fd
  %i.cdy = trunc i128 %i.aaz to i64
  %i.cdz = lshr i128 %i.aaz, 64
  %i.cea = trunc nuw i128 %i.cdz to i64
  %i.ceb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cec = load i64, ptr %i.ceb, align 8, !alias.scope !10595, !noundef !9
  %i.ced = xor i64 %i.cec, %i.cdy
  %i.cee = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cef = load ptr, ptr %i.cee, align 16, !alias.scope !10595, !nonnull !9, !align !12, !noundef !9
  %i.ceg = load i64, ptr %i.cef, align 8, !noalias !10595, !noundef !9
  %i.ceh = xor i64 %i.ceg, %i.cea
  %i.cei = zext i64 %i.ced to i128
  %i.cej = zext i64 %i.ceh to i128
  %i.cek = mul nuw i128 %i.cej, %i.cei            ; 2 uses
  %i.cel = lshr i128 %i.cek, 64
  %i.cem = xor i128 %i.cel, %i.cek
  %i.cen = trunc i128 %i.cem to i64
  store i64 %i.cen, ptr %i.ceb, align 8, !alias.scope !10595
  %i.ceo = zext i64 %i.cds to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit154

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit154: ; preds = %bb.fe, %bb.ff
  %storemerge364 = phi i128 [ %i.ceo, %bb.ff ], [ %i.cdx, %bb.fe ]
  %storemerge.i.i153 = phi i8 [ 64, %bb.ff ], [ -128, %bb.fe ]
  store i128 %storemerge364, ptr %1, align 16, !alias.scope !10595
  store i8 %storemerge.i.i153, ptr %i.aas, align 16, !alias.scope !10595
  br label %bb.ax

bb.fg:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit53
  %i.cep = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ceq = load i64, ptr %i.cep, align 8, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10599)
  %.not361 = icmp eq i8 %i.aca, 0
  br i1 %.not361, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %.thread299, %bb.fg
  %i.cer = phi i128 [ 1, %.thread299 ], [ %i.acg, %bb.fg ]
  %i.ces = phi i64 [ %i.add, %.thread299 ], [ %i.ceq, %bb.fg ]
  %i.cet = zext i64 %i.ces to i128
  %i.ceu = shl nuw i128 %i.cet, 64
  %i.cev = or i128 %i.ceu, %i.cer
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit152

bb.fi:                                            ; preds = %bb.fg
  %i.cew = trunc i128 %i.acg to i64
  %i.cex = lshr i128 %i.acg, 64
  %i.cey = trunc nuw i128 %i.cex to i64
  %i.cez = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cfa = load i64, ptr %i.cez, align 8, !alias.scope !10602, !noundef !9
  %i.cfb = xor i64 %i.cfa, %i.cew
  %i.cfc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cfd = load ptr, ptr %i.cfc, align 16, !alias.scope !10602, !nonnull !9, !align !12, !noundef !9
  %i.cfe = load i64, ptr %i.cfd, align 8, !noalias !10602, !noundef !9
  %i.cff = xor i64 %i.cfe, %i.cey
  %i.cfg = zext i64 %i.cfb to i128
  %i.cfh = zext i64 %i.cff to i128
  %i.cfi = mul nuw i128 %i.cfh, %i.cfg            ; 2 uses
  %i.cfj = lshr i128 %i.cfi, 64
  %i.cfk = xor i128 %i.cfj, %i.cfi
  %i.cfl = trunc i128 %i.cfk to i64
  store i64 %i.cfl, ptr %i.cez, align 8, !alias.scope !10602
  %i.cfm = zext i64 %i.ceq to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit152

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit152: ; preds = %bb.fh, %bb.fi
  %storemerge362 = phi i128 [ %i.cfm, %bb.fi ], [ %i.cev, %bb.fh ]
  %storemerge.i.i151 = phi i8 [ 64, %bb.fi ], [ -128, %bb.fh ]
  store i128 %storemerge362, ptr %1, align 16, !alias.scope !10602
  store i8 %storemerge.i.i151, ptr %i.abz, align 16, !alias.scope !10602
  br label %bb.ax

bb.fj:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit51
  %i.cfn = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.cfo = load i64, ptr %i.cfn, align 8, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10606)
  %.not359 = icmp eq i8 %i.adh, 0
  br i1 %.not359, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %.thread304, %bb.fj
  %i.cfp = phi i128 [ 1, %.thread304 ], [ %i.adn, %bb.fj ]
  %i.cfq = phi i64 [ %i.aek, %.thread304 ], [ %i.cfo, %bb.fj ]
  %i.cfr = zext i64 %i.cfq to i128
  %i.cfs = shl nuw i128 %i.cfr, 64
  %i.cft = or i128 %i.cfs, %i.cfp
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit150

bb.fl:                                            ; preds = %bb.fj
  %i.cfu = trunc i128 %i.adn to i64
  %i.cfv = lshr i128 %i.adn, 64
  %i.cfw = trunc nuw i128 %i.cfv to i64
  %i.cfx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cfy = load i64, ptr %i.cfx, align 8, !alias.scope !10609, !noundef !9
  %i.cfz = xor i64 %i.cfy, %i.cfu
  %i.cga = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cgb = load ptr, ptr %i.cga, align 16, !alias.scope !10609, !nonnull !9, !align !12, !noundef !9
  %i.cgc = load i64, ptr %i.cgb, align 8, !noalias !10609, !noundef !9
  %i.cgd = xor i64 %i.cgc, %i.cfw
  %i.cge = zext i64 %i.cfz to i128
  %i.cgf = zext i64 %i.cgd to i128
  %i.cgg = mul nuw i128 %i.cgf, %i.cge            ; 2 uses
  %i.cgh = lshr i128 %i.cgg, 64
  %i.cgi = xor i128 %i.cgh, %i.cgg
  %i.cgj = trunc i128 %i.cgi to i64
  store i64 %i.cgj, ptr %i.cfx, align 8, !alias.scope !10609
  %i.cgk = zext i64 %i.cfo to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit150

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit150: ; preds = %bb.fk, %bb.fl
  %storemerge360 = phi i128 [ %i.cgk, %bb.fl ], [ %i.cft, %bb.fk ]
  %storemerge.i.i149 = phi i8 [ 64, %bb.fl ], [ -128, %bb.fk ]
  store i128 %storemerge360, ptr %1, align 16, !alias.scope !10609
  store i8 %storemerge.i.i149, ptr %i.adg, align 16, !alias.scope !10609
  br label %bb.ax

bb.fm:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit49
  %i.cgl = getelementptr inbounds nuw i8, ptr %.tr, i64 20
  %i.cgm = load i32, ptr %i.cgl, align 4, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10613)
  %i.cgn = icmp samesign ugt i8 %i.aeo, 32
  br i1 %i.cgn, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %.thread309, %bb.fm
  %i.cgo = phi i128 [ 1, %.thread309 ], [ %i.aeu, %bb.fm ]
  %i.cgp = phi i32 [ %i.afr, %.thread309 ], [ %i.cgm, %bb.fm ]
  %storemerge.i.i48308311 = phi i8 [ 64, %.thread309 ], [ %i.aev, %bb.fm ] ; 2 uses
  %i.cgq = zext i32 %i.cgp to i128
  %i.cgr = zext nneg i8 %storemerge.i.i48308311 to i128
  %i.cgs = shl nuw i128 %i.cgq, %i.cgr
  %i.cgt = or i128 %i.cgs, %i.cgo
  store i128 %i.cgt, ptr %1, align 16, !alias.scope !10616
  %i.cgu = add nuw i8 %storemerge.i.i48308311, 32
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit127

bb.fo:                                            ; preds = %bb.fm
  %i.cgv = trunc i128 %i.aeu to i64
  %i.cgw = lshr i128 %i.aeu, 64
  %i.cgx = trunc nuw i128 %i.cgw to i64
  %i.cgy = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cgz = load i64, ptr %i.cgy, align 8, !alias.scope !10616, !noundef !9
  %i.cha = xor i64 %i.cgz, %i.cgv
  %i.chb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.chc = load ptr, ptr %i.chb, align 16, !alias.scope !10616, !nonnull !9, !align !12, !noundef !9
  %i.chd = load i64, ptr %i.chc, align 8, !noalias !10616, !noundef !9
  %i.che = xor i64 %i.chd, %i.cgx
  %i.chf = zext i64 %i.cha to i128
  %i.chg = zext i64 %i.che to i128
  %i.chh = mul nuw i128 %i.chg, %i.chf            ; 2 uses
  %i.chi = lshr i128 %i.chh, 64
  %i.chj = xor i128 %i.chi, %i.chh
  %i.chk = trunc i128 %i.chj to i64
  store i64 %i.chk, ptr %i.cgy, align 8, !alias.scope !10616
  %i.chl = zext i32 %i.cgm to i128
  store i128 %i.chl, ptr %1, align 16, !alias.scope !10616
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit127

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit127: ; preds = %bb.fn, %bb.fo
  %storemerge.i.i126 = phi i8 [ %i.cgu, %bb.fn ], [ 32, %bb.fo ]
  store i8 %storemerge.i.i126, ptr %i.aen, align 16, !alias.scope !10616
  br label %bb.ax

bb.fp:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit47
  %i.chm = getelementptr inbounds nuw i8, ptr %.tr, i64 20
  %i.chn = load i32, ptr %i.chm, align 4, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10620)
  %i.cho = icmp samesign ugt i8 %i.afv, 32
  br i1 %i.cho, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit125.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit125

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit125.thread: ; preds = %bb.fp
  %i.chp = trunc i128 %i.agb to i64
  %i.chq = lshr i128 %i.agb, 64
  %i.chr = trunc nuw i128 %i.chq to i64
  %i.chs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cht = load i64, ptr %i.chs, align 8, !alias.scope !10623, !noundef !9
  %i.chu = xor i64 %i.cht, %i.chp
  %i.chv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.chw = load ptr, ptr %i.chv, align 16, !alias.scope !10623, !nonnull !9, !align !12, !noundef !9
  %i.chx = load i64, ptr %i.chw, align 8, !noalias !10623, !noundef !9
  %i.chy = xor i64 %i.chx, %i.chr
  %i.chz = zext i64 %i.chu to i128
  %i.cia = zext i64 %i.chy to i128
  %i.cib = mul nuw i128 %i.cia, %i.chz            ; 2 uses
  %i.cic = lshr i128 %i.cib, 64
  %i.cid = xor i128 %i.cic, %i.cib
  %i.cie = trunc i128 %i.cid to i64
  store i64 %i.cie, ptr %i.chs, align 8, !alias.scope !10623
  %i.cif = zext i32 %i.chn to i128                ; 2 uses
  store i128 %i.cif, ptr %1, align 16, !alias.scope !10623
  store i8 32, ptr %i.afu, align 16, !alias.scope !10623
  %i.cig = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.cih = load i32, ptr %i.cig, align 4, !noundef !9
  br label %bb.fq

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit125: ; preds = %bb.fp, %.thread314
  %i.cii = phi i128 [ 1, %.thread314 ], [ %i.agb, %bb.fp ]
  %i.cij = phi i32 [ %i.agy, %.thread314 ], [ %i.chn, %bb.fp ]
  %storemerge.i.i46313316 = phi i8 [ 64, %.thread314 ], [ %i.agc, %bb.fp ] ; 3 uses
  %i.cik = zext i32 %i.cij to i128
  %i.cil = zext nneg i8 %storemerge.i.i46313316 to i128
  %i.cim = shl nuw i128 %i.cik, %i.cil
  %i.cin = or i128 %i.cim, %i.cii                 ; 4 uses
  store i128 %i.cin, ptr %1, align 16, !alias.scope !10623
  %i.cio = add nuw i8 %storemerge.i.i46313316, 32
  store i8 %i.cio, ptr %i.afu, align 16, !alias.scope !10623
  %i.cip = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ciq = load i32, ptr %i.cip, align 4, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10627)
  %i.cir = icmp samesign ugt i8 %storemerge.i.i46313316, 64
  br i1 %i.cir, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit125.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit125
  %i.cis = phi i128 [ %i.cif, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit125.thread ], [ %i.cin, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit125 ]
  %i.cit = phi i32 [ %i.cih, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit125.thread ], [ %i.ciq, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit125 ]
  %storemerge.i.i124318 = phi i8 [ 32, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit125.thread ], [ 96, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit125 ] ; 2 uses
  %i.ciu = zext i32 %i.cit to i128
  %i.civ = zext nneg i8 %storemerge.i.i124318 to i128
  %i.ciw = shl nuw i128 %i.ciu, %i.civ
  %i.cix = or i128 %i.ciw, %i.cis
  store i128 %i.cix, ptr %1, align 16, !alias.scope !10630
  %i.ciy = add nuw i8 %storemerge.i.i124318, 32
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit123

bb.fr:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit125
  %i.ciz = trunc i128 %i.cin to i64
  %i.cja = lshr i128 %i.cin, 64
  %i.cjb = trunc nuw i128 %i.cja to i64
  %i.cjc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cjd = load i64, ptr %i.cjc, align 8, !alias.scope !10630, !noundef !9
  %i.cje = xor i64 %i.cjd, %i.ciz
  %i.cjf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cjg = load ptr, ptr %i.cjf, align 16, !alias.scope !10630, !nonnull !9, !align !12, !noundef !9
  %i.cjh = load i64, ptr %i.cjg, align 8, !noalias !10630, !noundef !9
  %i.cji = xor i64 %i.cjh, %i.cjb
  %i.cjj = zext i64 %i.cje to i128
  %i.cjk = zext i64 %i.cji to i128
  %i.cjl = mul nuw i128 %i.cjk, %i.cjj            ; 2 uses
  %i.cjm = lshr i128 %i.cjl, 64
  %i.cjn = xor i128 %i.cjm, %i.cjl
  %i.cjo = trunc i128 %i.cjn to i64
  store i64 %i.cjo, ptr %i.cjc, align 8, !alias.scope !10630
  %i.cjp = zext i32 %i.ciq to i128
  store i128 %i.cjp, ptr %1, align 16, !alias.scope !10630
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit123

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit123: ; preds = %bb.fq, %bb.fr
  %storemerge.i.i122 = phi i8 [ %i.ciy, %bb.fq ], [ 32, %bb.fr ]
  store i8 %storemerge.i.i122, ptr %i.afu, align 16, !alias.scope !10630
  br label %bb.ax

bb.fs:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit45
  %i.cjq = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.cjr = load i32, ptr %i.cjq, align 8, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10634)
  %i.cjs = icmp samesign ugt i8 %i.ahc, 32
  br i1 %i.cjs, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit121.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit121

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit121.thread: ; preds = %bb.fs
  %i.cjt = trunc i128 %i.ahi to i64
  %i.cju = lshr i128 %i.ahi, 64
  %i.cjv = trunc nuw i128 %i.cju to i64
  %i.cjw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cjx = load i64, ptr %i.cjw, align 8, !alias.scope !10637, !noundef !9
  %i.cjy = xor i64 %i.cjx, %i.cjt
  %i.cjz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cka = load ptr, ptr %i.cjz, align 16, !alias.scope !10637, !nonnull !9, !align !12, !noundef !9
  %i.ckb = load i64, ptr %i.cka, align 8, !noalias !10637, !noundef !9
  %i.ckc = xor i64 %i.ckb, %i.cjv
  %i.ckd = zext i64 %i.cjy to i128
  %i.cke = zext i64 %i.ckc to i128
  %i.ckf = mul nuw i128 %i.cke, %i.ckd            ; 2 uses
  %i.ckg = lshr i128 %i.ckf, 64
  %i.ckh = xor i128 %i.ckg, %i.ckf
  %i.cki = trunc i128 %i.ckh to i64
  store i64 %i.cki, ptr %i.cjw, align 8, !alias.scope !10637
  %i.ckj = zext i32 %i.cjr to i128                ; 2 uses
  store i128 %i.ckj, ptr %1, align 16, !alias.scope !10637
  store i8 32, ptr %i.ahb, align 16, !alias.scope !10637
  %i.ckk = getelementptr inbounds nuw i8, ptr %.tr, i64 28
  %i.ckl = load i32, ptr %i.ckk, align 4, !noundef !9
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit121: ; preds = %bb.fs, %.thread321
  %i.ckm = phi i128 [ 1, %.thread321 ], [ %i.ahi, %bb.fs ]
  %i.ckn = phi i32 [ %i.aif, %.thread321 ], [ %i.cjr, %bb.fs ]
  %storemerge.i.i44320323 = phi i8 [ 64, %.thread321 ], [ %i.ahj, %bb.fs ] ; 3 uses
  %i.cko = zext i32 %i.ckn to i128
  %i.ckp = zext nneg i8 %storemerge.i.i44320323 to i128
  %i.ckq = shl nuw i128 %i.cko, %i.ckp
  %i.ckr = or i128 %i.ckq, %i.ckm                 ; 4 uses
  store i128 %i.ckr, ptr %1, align 16, !alias.scope !10637
  %i.cks = add nuw i8 %storemerge.i.i44320323, 32
  store i8 %i.cks, ptr %i.ahb, align 16, !alias.scope !10637
  %i.ckt = getelementptr inbounds nuw i8, ptr %.tr, i64 28
  %i.cku = load i32, ptr %i.ckt, align 4, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10641)
  %i.ckv = icmp samesign ugt i8 %storemerge.i.i44320323, 64
  br i1 %i.ckv, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit.thread: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit121
  %i.ckw = trunc i128 %i.ckr to i64
  %i.ckx = lshr i128 %i.ckr, 64
  %i.cky = trunc nuw i128 %i.ckx to i64
  %i.ckz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cla = load i64, ptr %i.ckz, align 8, !alias.scope !10644, !noundef !9
  %i.clb = xor i64 %i.cla, %i.ckw
  %i.clc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cld = load ptr, ptr %i.clc, align 16, !alias.scope !10644, !nonnull !9, !align !12, !noundef !9
  %i.cle = load i64, ptr %i.cld, align 8, !noalias !10644, !noundef !9
  %i.clf = xor i64 %i.cle, %i.cky
  %i.clg = zext i64 %i.clb to i128
  %i.clh = zext i64 %i.clf to i128
  %i.cli = mul nuw i128 %i.clh, %i.clg            ; 2 uses
  %i.clj = lshr i128 %i.cli, 64
  %i.clk = xor i128 %i.clj, %i.cli
  %i.cll = trunc i128 %i.clk to i64
  store i64 %i.cll, ptr %i.ckz, align 8, !alias.scope !10644
  %i.clm = zext i32 %i.cku to i128                ; 2 uses
  store i128 %i.clm, ptr %1, align 16, !alias.scope !10644
  store i8 32, ptr %i.ahb, align 16, !alias.scope !10644
  %i.cln = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.clo = load i64, ptr %i.cln, align 8, !noundef !9
  br label %bb.ft

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit121, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit121.thread
  %i.clp = phi i128 [ %i.ckj, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit121.thread ], [ %i.ckr, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit121 ]
  %i.clq = phi i32 [ %i.ckl, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit121.thread ], [ %i.cku, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit121 ]
  %i.clr = phi i1 [ false, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit121.thread ], [ true, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit121 ]
  %storemerge.i.i120325 = phi i8 [ 32, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit121.thread ], [ 96, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit121 ] ; 2 uses
  %i.cls = zext i32 %i.clq to i128
  %i.clt = zext nneg i8 %storemerge.i.i120325 to i128
  %i.clu = shl nuw i128 %i.cls, %i.clt
  %i.clv = or i128 %i.clu, %i.clp                 ; 4 uses
  store i128 %i.clv, ptr %1, align 16, !alias.scope !10644
  %i.clw = add nuw i8 %storemerge.i.i120325, 32
  store i8 %i.clw, ptr %i.ahb, align 16, !alias.scope !10644
  %i.clx = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.cly = load i64, ptr %i.clx, align 8, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10648)
  br i1 %i.clr, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit
  %i.clz = phi i128 [ %i.clm, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit.thread ], [ %i.clv, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit ]
  %i.cma = phi i64 [ %i.clo, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit.thread ], [ %i.cly, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit ]
  %storemerge.i.i119327 = phi i8 [ 32, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit.thread ], [ 64, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit ] ; 2 uses
  %i.cmb = zext i64 %i.cma to i128
  %i.cmc = zext nneg i8 %storemerge.i.i119327 to i128
  %i.cmd = shl nuw i128 %i.cmb, %i.cmc
  %i.cme = or i128 %i.cmd, %i.clz
  store i128 %i.cme, ptr %1, align 16, !alias.scope !10651
  %i.cmf = add nuw i8 %storemerge.i.i119327, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit148

bb.fu:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32.exit
  %i.cmg = trunc i128 %i.clv to i64
  %i.cmh = lshr i128 %i.clv, 64
  %i.cmi = trunc nuw i128 %i.cmh to i64
  %i.cmj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cmk = load i64, ptr %i.cmj, align 8, !alias.scope !10651, !noundef !9
  %i.cml = xor i64 %i.cmk, %i.cmg
  %i.cmm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cmn = load ptr, ptr %i.cmm, align 16, !alias.scope !10651, !nonnull !9, !align !12, !noundef !9
  %i.cmo = load i64, ptr %i.cmn, align 8, !noalias !10651, !noundef !9
  %i.cmp = xor i64 %i.cmo, %i.cmi
  %i.cmq = zext i64 %i.cml to i128
  %i.cmr = zext i64 %i.cmp to i128
  %i.cms = mul nuw i128 %i.cmr, %i.cmq            ; 2 uses
  %i.cmt = lshr i128 %i.cms, 64
  %i.cmu = xor i128 %i.cmt, %i.cms
  %i.cmv = trunc i128 %i.cmu to i64
  store i64 %i.cmv, ptr %i.cmj, align 8, !alias.scope !10651
  %i.cmw = zext i64 %i.cly to i128
  store i128 %i.cmw, ptr %1, align 16, !alias.scope !10651
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit148

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit148: ; preds = %bb.ft, %bb.fu
  %storemerge.i.i147 = phi i8 [ %i.cmf, %bb.ft ], [ 64, %bb.fu ]
  store i8 %storemerge.i.i147, ptr %i.ahb, align 16, !alias.scope !10651
  br label %bb.ax

bb.fv:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit43
  %i.cmx = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.cmy = load i64, ptr %i.cmx, align 8, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10655)
  %.not357 = icmp eq i8 %i.aij, 0
  br i1 %.not357, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %.thread330, %bb.fv
  %i.cmz = phi i128 [ 1, %.thread330 ], [ %i.aip, %bb.fv ]
  %i.cna = phi i64 [ %i.ajm, %.thread330 ], [ %i.cmy, %bb.fv ]
  %i.cnb = zext i64 %i.cna to i128
  %i.cnc = shl nuw i128 %i.cnb, 64
  %i.cnd = or i128 %i.cnc, %i.cmz
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit146

bb.fx:                                            ; preds = %bb.fv
  %i.cne = trunc i128 %i.aip to i64
  %i.cnf = lshr i128 %i.aip, 64
  %i.cng = trunc nuw i128 %i.cnf to i64
  %i.cnh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cni = load i64, ptr %i.cnh, align 8, !alias.scope !10658, !noundef !9
  %i.cnj = xor i64 %i.cni, %i.cne
  %i.cnk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cnl = load ptr, ptr %i.cnk, align 16, !alias.scope !10658, !nonnull !9, !align !12, !noundef !9
  %i.cnm = load i64, ptr %i.cnl, align 8, !noalias !10658, !noundef !9
  %i.cnn = xor i64 %i.cnm, %i.cng
  %i.cno = zext i64 %i.cnj to i128
  %i.cnp = zext i64 %i.cnn to i128
  %i.cnq = mul nuw i128 %i.cnp, %i.cno            ; 2 uses
  %i.cnr = lshr i128 %i.cnq, 64
  %i.cns = xor i128 %i.cnr, %i.cnq
  %i.cnt = trunc i128 %i.cns to i64
  store i64 %i.cnt, ptr %i.cnh, align 8, !alias.scope !10658
  %i.cnu = zext i64 %i.cmy to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit146

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit146: ; preds = %bb.fw, %bb.fx
  %storemerge358 = phi i128 [ %i.cnu, %bb.fx ], [ %i.cnd, %bb.fw ]
  %storemerge.i.i145 = phi i8 [ 64, %bb.fx ], [ -128, %bb.fw ]
  store i128 %storemerge358, ptr %1, align 16, !alias.scope !10658
  store i8 %storemerge.i.i145, ptr %i.aii, align 16, !alias.scope !10658
  br label %bb.ax

bb.fy:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit41
  %i.cnv = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.cnw = load i64, ptr %i.cnv, align 8, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10662)
  %.not355 = icmp eq i8 %i.ajq, 0
  br i1 %.not355, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %.thread335, %bb.fy
  %i.cnx = phi i128 [ 1, %.thread335 ], [ %i.ajw, %bb.fy ]
  %i.cny = phi i64 [ %i.akt, %.thread335 ], [ %i.cnw, %bb.fy ]
  %i.cnz = zext i64 %i.cny to i128
  %i.coa = shl nuw i128 %i.cnz, 64
  %i.cob = or i128 %i.coa, %i.cnx
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit144

bb.ga:                                            ; preds = %bb.fy
  %i.coc = trunc i128 %i.ajw to i64
  %i.cod = lshr i128 %i.ajw, 64
  %i.coe = trunc nuw i128 %i.cod to i64
  %i.cof = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cog = load i64, ptr %i.cof, align 8, !alias.scope !10665, !noundef !9
  %i.coh = xor i64 %i.cog, %i.coc
  %i.coi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.coj = load ptr, ptr %i.coi, align 16, !alias.scope !10665, !nonnull !9, !align !12, !noundef !9
  %i.cok = load i64, ptr %i.coj, align 8, !noalias !10665, !noundef !9
  %i.col = xor i64 %i.cok, %i.coe
  %i.com = zext i64 %i.coh to i128
  %i.con = zext i64 %i.col to i128
  %i.coo = mul nuw i128 %i.con, %i.com            ; 2 uses
  %i.cop = lshr i128 %i.coo, 64
  %i.coq = xor i128 %i.cop, %i.coo
  %i.cor = trunc i128 %i.coq to i64
  store i64 %i.cor, ptr %i.cof, align 8, !alias.scope !10665
  %i.cos = zext i64 %i.cnw to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit144

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit144: ; preds = %bb.fz, %bb.ga
  %storemerge356 = phi i128 [ %i.cos, %bb.ga ], [ %i.cob, %bb.fz ]
  %storemerge.i.i143 = phi i8 [ 64, %bb.ga ], [ -128, %bb.fz ]
  store i128 %storemerge356, ptr %1, align 16, !alias.scope !10665
  store i8 %storemerge.i.i143, ptr %i.ajp, align 16, !alias.scope !10665
  br label %bb.ax

bb.gb:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit39
  %i.cot = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.cou = load i64, ptr %i.cot, align 8, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10669)
  %.not353 = icmp eq i8 %i.akx, 0
  br i1 %.not353, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %.thread340, %bb.gb
  %i.cov = phi i128 [ 1, %.thread340 ], [ %i.ald, %bb.gb ]
  %i.cow = phi i64 [ %i.ama, %.thread340 ], [ %i.cou, %bb.gb ]
  %i.cox = zext i64 %i.cow to i128
  %i.coy = shl nuw i128 %i.cox, 64
  %i.coz = or i128 %i.coy, %i.cov
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit142

bb.gd:                                            ; preds = %bb.gb
  %i.cpa = trunc i128 %i.ald to i64
  %i.cpb = lshr i128 %i.ald, 64
  %i.cpc = trunc nuw i128 %i.cpb to i64
  %i.cpd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cpe = load i64, ptr %i.cpd, align 8, !alias.scope !10672, !noundef !9
  %i.cpf = xor i64 %i.cpe, %i.cpa
  %i.cpg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cph = load ptr, ptr %i.cpg, align 16, !alias.scope !10672, !nonnull !9, !align !12, !noundef !9
  %i.cpi = load i64, ptr %i.cph, align 8, !noalias !10672, !noundef !9
  %i.cpj = xor i64 %i.cpi, %i.cpc
  %i.cpk = zext i64 %i.cpf to i128
  %i.cpl = zext i64 %i.cpj to i128
  %i.cpm = mul nuw i128 %i.cpl, %i.cpk            ; 2 uses
  %i.cpn = lshr i128 %i.cpm, 64
  %i.cpo = xor i128 %i.cpn, %i.cpm
  %i.cpp = trunc i128 %i.cpo to i64
  store i64 %i.cpp, ptr %i.cpd, align 8, !alias.scope !10672
  %i.cpq = zext i64 %i.cou to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit142

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit142: ; preds = %bb.gc, %bb.gd
  %storemerge354 = phi i128 [ %i.cpq, %bb.gd ], [ %i.coz, %bb.gc ]
  %storemerge.i.i141 = phi i8 [ 64, %bb.gd ], [ -128, %bb.gc ]
  store i128 %storemerge354, ptr %1, align 16, !alias.scope !10672
  store i8 %storemerge.i.i141, ptr %i.akw, align 16, !alias.scope !10672
  br label %bb.ax

bb.ge:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit37
  %i.cpr = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.cps = load i64, ptr %i.cpr, align 8, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10676)
  %.not = icmp eq i8 %i.ame, 0
  br i1 %.not, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %.thread345, %bb.ge
  %i.cpt = phi i128 [ 1, %.thread345 ], [ %i.amk, %bb.ge ]
  %i.cpu = phi i64 [ %i.anh, %.thread345 ], [ %i.cps, %bb.ge ]
  %i.cpv = zext i64 %i.cpu to i128
  %i.cpw = shl nuw i128 %i.cpv, 64
  %i.cpx = or i128 %i.cpw, %i.cpt
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64.exit

bb.gg:                                            ; preds = %bb.ge
  %i.cpy = trunc i128 %i.amk to i64
  %i.cpz = lshr i128 %i.amk, 64
  %i.cqa = trunc nuw i128 %i.cpz to i64
  %i.cqb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cqc = load i64, ptr %i.cqb, align 8, !alias.scope !10679, !noundef !9
  %i.cqd = xor i64 %i.cqc, %i.cpy
  %i.cqe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cqf = load ptr, ptr %i.cqe, align 16, !alias.scope !10679, !nonnull !9, !align !12, !noundef !9
end_hunk_0
begin_hunk_1_@_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ju = load i64, ptr %i.jt, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !10986
  store i64 %i.ju, ptr %i.ab, align 8, !noalias !10986
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10986
  br label %bb.ar

bb.bp:                                            ; preds = %tailrecurse, %tailrecurse, %tailrecurse
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.jv = load i64, ptr %.sroa.08.0, align 8, !range !123, !noundef !9
  %i.jw = icmp ne i64 %i.jv, -9223372036854775808 ; 2 uses
  %i.jx = zext i1 %i.jw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !10989
  store i64 %i.jx, ptr %i.aa, align 8, !noalias !10989
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10989
  br i1 %i.jw, label %bb.bq, label %bb.ar

bb.bq:                                            ; preds = %bb.bp
  %i.jy = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8, !nonnull !9, !noundef !9
  %i.ka = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.kb = load i64, ptr %i.ka, align 8, !noundef !9
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.jz, i64 noundef %i.kb) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !10994
  store i8 -1, ptr %i.z, align 1, !noalias !10994
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 1) #44, !noalias !11001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10994
  br label %bb.ar

bb.br:                                            ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  %.sroa.011.0 = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.kc = load i64, ptr %.sroa.011.0, align 8, !range !123, !noundef !9
  %i.kd = icmp ne i64 %i.kc, -9223372036854775808 ; 2 uses
  %i.ke = zext i1 %i.kd to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !11002
  store i64 %i.ke, ptr %i.y, align 8, !noalias !11002
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !11002
  br i1 %i.kd, label %bb.bs, label %bb.ar

bb.bs:                                            ; preds = %bb.br
  %i.kf = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !nonnull !9, !noundef !9
  %i.kh = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ki = load i64, ptr %i.kh, align 8, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !11007
  store i64 %i.ki, ptr %i.x, align 8, !noalias !11007
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !11007
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kg, i64 noundef range(i64 0, -9223372036854775808) %i.ki) #44
  br label %bb.ar

bb.bt:                                            ; preds = %bb.t
  tail call fastcc void @_RINvNtCsjhHCjzi9uUI_17datafusion_common6scalar17hash_nested_arrayNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.eu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @44, ptr noalias noundef align 8 dereferenceable(72) %1)
  br label %bb.ar

bb.bu:                                            ; preds = %bb.t
  tail call void @llvm.trap()
  unreachable

bb.bv:                                            ; preds = %bb.u
  tail call fastcc void @_RINvNtCsjhHCjzi9uUI_17datafusion_common6scalar17hash_nested_arrayNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ey, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @84, ptr noalias noundef align 8 dereferenceable(72) %1)
  br label %bb.ar

bb.bw:                                            ; preds = %bb.u
  tail call void @llvm.trap()
  unreachable

bb.bx:                                            ; preds = %bb.v
  tail call fastcc void @_RINvNtCsjhHCjzi9uUI_17datafusion_common6scalar17hash_nested_arrayNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.fc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @85, ptr noalias noundef align 8 dereferenceable(72) %1)
  br label %bb.ar

bb.by:                                            ; preds = %bb.v
  tail call void @llvm.trap()
  unreachable

bb.bz:                                            ; preds = %bb.w
  tail call fastcc void @_RINvNtCsjhHCjzi9uUI_17datafusion_common6scalar17hash_nested_arrayNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.fg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @86, ptr noalias noundef align 8 dereferenceable(72) %1)
  br label %bb.ar

bb.ca:                                            ; preds = %bb.w
  tail call void @llvm.trap()
  unreachable

bb.cb:                                            ; preds = %bb.x
  tail call fastcc void @_RINvNtCsjhHCjzi9uUI_17datafusion_common6scalar17hash_nested_arrayNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.fk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @87, ptr noalias noundef align 8 dereferenceable(72) %1)
  br label %bb.ar

bb.cc:                                            ; preds = %bb.x
  tail call void @llvm.trap()
  unreachable

bb.cd:                                            ; preds = %bb.y
  %i.kj = getelementptr inbounds nuw i8, ptr %.tr, i64 20
  %i.kk = load i32, ptr %i.kj, align 4, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !11012
  store i32 %i.kk, ptr %i.w, align 4, !noalias !11012
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !11012
  br label %bb.ar

bb.ce:                                            ; preds = %bb.z
  %i.kl = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.km = load i64, ptr %i.kl, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !11017
  store i64 %i.km, ptr %i.v, align 8, !noalias !11017
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !11017
  br label %bb.ar

bb.cf:                                            ; preds = %bb.aa
  %i.kn = getelementptr inbounds nuw i8, ptr %.tr, i64 20
  %i.ko = load i32, ptr %i.kn, align 4, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !11022
  store i32 %i.ko, ptr %i.u, align 4, !noalias !11022
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11022
  br label %bb.ar

bb.cg:                                            ; preds = %bb.ab
  %i.kp = getelementptr inbounds nuw i8, ptr %.tr, i64 20
  %i.kq = load i32, ptr %i.kp, align 4, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !11027
  store i32 %i.kq, ptr %i.t, align 4, !noalias !11027
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !11027
  br label %bb.ar

bb.ch:                                            ; preds = %bb.ac
  %i.kr = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ks = load i64, ptr %i.kr, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !11032
  store i64 %i.ks, ptr %i.s, align 8, !noalias !11032
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef 8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !11032
  br label %bb.ar

bb.ci:                                            ; preds = %bb.ad
  %i.kt = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ku = load i64, ptr %i.kt, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !11037
  store i64 %i.ku, ptr %i.r, align 8, !noalias !11037
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef 8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11037
  br label %bb.ar

bb.cj:                                            ; preds = %bb.ae
  %i.kv = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.kw = load i64, ptr %i.kv, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !11042
  store i64 %i.kw, ptr %i.q, align 8, !noalias !11042
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11042
  br label %bb.ar

bb.ck:                                            ; preds = %bb.af
  %i.kx = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ky = load i64, ptr %i.kx, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !11047
  store i64 %i.ky, ptr %i.p, align 8, !noalias !11047
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11047
  br label %bb.ar

bb.cl:                                            ; preds = %bb.ag
  %i.kz = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.la = load i64, ptr %i.kz, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11052
  store i64 %i.la, ptr %i.o, align 8, !noalias !11052
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11052
  br label %bb.ar

bb.cm:                                            ; preds = %bb.ah
  %i.lb = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.lc = load i64, ptr %i.lb, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11057
  store i64 %i.lc, ptr %i.n, align 8, !noalias !11057
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef 8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11057
  br label %bb.ar

bb.cn:                                            ; preds = %bb.ai
  %i.ld = getelementptr inbounds nuw i8, ptr %.tr, i64 20
  %i.le = load i32, ptr %i.ld, align 4, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11062
  store i32 %i.le, ptr %i.m, align 4, !noalias !11062
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef 4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11062
  br label %bb.ar

bb.co:                                            ; preds = %bb.aj
  %i.lf = getelementptr inbounds nuw i8, ptr %.tr, i64 20
  %i.lg = load i32, ptr %i.lf, align 4, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11067
  store i32 %i.lg, ptr %i.l, align 4, !noalias !11067
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11067
  %i.lh = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.li = load i32, ptr %i.lh, align 4, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !11072
  store i32 %i.li, ptr %i.k, align 4, !noalias !11072
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11072
  br label %bb.ar

bb.cp:                                            ; preds = %bb.ak
  %i.lj = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.lk = load i32, ptr %i.lj, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11077
  store i32 %i.lk, ptr %i.j, align 4, !noalias !11077
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11077
  %i.ll = getelementptr inbounds nuw i8, ptr %.tr, i64 28
  %i.lm = load i32, ptr %i.ll, align 4, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11082
  store i32 %i.lm, ptr %i.i, align 4, !noalias !11082
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 4) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11082
  %i.ln = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.lo = load i64, ptr %i.ln, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11087
  store i64 %i.lo, ptr %i.h, align 8, !noalias !11087
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11087
  br label %bb.ar

bb.cq:                                            ; preds = %bb.al
  %i.lp = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.lq = load i64, ptr %i.lp, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11092
  store i64 %i.lq, ptr %i.g, align 8, !noalias !11092
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11092
  br label %bb.ar

bb.cr:                                            ; preds = %bb.am
  %i.lr = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ls = load i64, ptr %i.lr, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11097
  store i64 %i.ls, ptr %i.f, align 8, !noalias !11097
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11097
  br label %bb.ar

bb.cs:                                            ; preds = %bb.an
  %i.lt = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.lu = load i64, ptr %i.lt, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11102
  store i64 %i.lu, ptr %i.e, align 8, !noalias !11102
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11102
  br label %bb.ar

bb.ct:                                            ; preds = %bb.ao
  %i.lv = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.lw = load i64, ptr %i.lv, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11107
  store i64 %i.lw, ptr %i.d, align 8, !noalias !11107
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11107
  br label %bb.ar

bb.cu:                                            ; preds = %bb.ap
  %i.lx = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ly = load i8, ptr %i.lx, align 16, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11112
  store i8 %i.ly, ptr %i.c, align 1, !noalias !11112
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11112
  tail call void @_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.hs, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ap
  %i.lz = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ma = load ptr, ptr %i.lz, align 16, !nonnull !9, !noundef !9
  %i.mb = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.mc = load i64, ptr %i.mb, align 8, !noundef !9 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11117
  store i64 %i.mc, ptr %i.b, align 8, !noalias !11117
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11117
  tail call void @_RINvYTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.md, i64 noundef %i.mc, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.me = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.mf = load i8, ptr %i.me, align 16, !range !71, !noundef !9
  %i.mg = zext nneg i8 %i.mf to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11122
  store i64 %i.mg, ptr %i.a, align 8, !noalias !11122
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11122
  br label %bb.ar
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB16_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.aq, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.eq, %bb.aq ] ; 95 uses
  %i.c = load i128, ptr %.tr, align 16, !range !7753, !noundef !9 ; 4 uses
  %i.d = icmp ne i128 %i.c, 10
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw nsw i128 %i.c to i64           ; 2 uses
  %i.f = add nsw i64 %i.e, -2
  %i.g = icmp samesign ugt i128 %i.c, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 8
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.bp
    i64 18, label %bb.bp
    i64 19, label %bb.bp
    i64 20, label %bb.br
    i64 21, label %bb.br
    i64 22, label %bb.br
    i64 23, label %bb.br
    i64 24, label %bb.t
    i64 25, label %bb.u
    i64 26, label %bb.v
    i64 27, label %bb.w
    i64 28, label %bb.x
    i64 29, label %bb.y
    i64 30, label %bb.z
    i64 31, label %bb.aa
    i64 32, label %bb.ab
    i64 33, label %bb.ac
    i64 34, label %bb.ad
    i64 35, label %bb.ae
    i64 36, label %bb.af
    i64 37, label %bb.ag
    i64 38, label %bb.ah
    i64 39, label %bb.ai
    i64 40, label %bb.aj
    i64 41, label %bb.ak
    i64 42, label %bb.al
    i64 43, label %bb.am
    i64 44, label %bb.an
    i64 45, label %bb.ao
    i64 46, label %bb.ap
    i64 47, label %bb.aq
  ]

bb.b:                                             ; preds = %tailrecurse
  unreachable

bb.c:                                             ; preds = %tailrecurse
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i32Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1)
  br label %bb.ar

bb.d:                                             ; preds = %tailrecurse
  %i.i = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.j = load i8, ptr %i.i, align 16, !range !414, !noundef !9 ; 2 uses
  %i.k = icmp ne i8 %i.j, 2                       ; 2 uses
  %i.l = zext i1 %i.k to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.l)
  br i1 %i.k, label %bb.as, label %bb.ar

bb.e:                                             ; preds = %tailrecurse
  %i.m = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.n = load i16, ptr %i.m, align 16, !range !10065, !noundef !9
  %i.o = trunc nuw i16 %i.n to i1
  br i1 %i.o, label %bb.au, label %bb.at

bb.f:                                             ; preds = %tailrecurse
  %i.p = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.q = load i32, ptr %i.p, align 16, !range !10073, !noundef !9
  %i.r = trunc nuw i32 %i.q to i1
  br i1 %i.r, label %bb.aw, label %bb.av

bb.g:                                             ; preds = %tailrecurse
  %i.s = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.t = load i64, ptr %i.s, align 16, !range !48, !noundef !9
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.ay, label %bb.ax

bb.h:                                             ; preds = %tailrecurse
  %i.v = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.w = load i32, ptr %i.v, align 16, !range !10073, !noundef !9 ; 2 uses
  %i.x = zext nneg i32 %i.w to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.x)
  %i.y = trunc nuw i32 %i.w to i1
  br i1 %i.y, label %bb.az, label %bb.ba

bb.i:                                             ; preds = %tailrecurse
  %i.z = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.aa = load i64, ptr %i.z, align 16, !range !48, !noundef !9 ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.aa)
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.bb, label %bb.bc

bb.j:                                             ; preds = %tailrecurse
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ad = load i128, ptr %i.ac, align 16, !range !10095, !noundef !9 ; 2 uses
  %i.ae = trunc nuw nsw i128 %i.ad to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ae)
  %i.af = trunc nuw i128 %i.ad to i1
  br i1 %i.af, label %bb.bd, label %bb.be

bb.k:                                             ; preds = %tailrecurse
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.e)
  %i.ag = trunc i128 %i.c to i1
  br i1 %i.ag, label %bb.bf, label %bb.bg
end_hunk_1
begin_hunk_2_@_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB16_6HasherEL_ECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ft = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.fu = load i8, ptr %i.ft, align 16, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.fu)
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr, i64 49
  %i.fw = load i8, ptr %i.fv, align 1, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_i8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.fw)
  br label %bb.ar

bb.bh:                                            ; preds = %bb.l
  %i.fx = getelementptr inbounds nuw i8, ptr %.tr, i64 17
  %i.fy = load i8, ptr %i.fx, align 1, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_i8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.fy)
  br label %bb.ar

bb.bi:                                            ; preds = %bb.m
  %i.fz = getelementptr inbounds nuw i8, ptr %.tr, i64 18
  %i.ga = load i16, ptr %i.fz, align 2, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i16Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i16 noundef %i.ga)
  br label %bb.ar

bb.bj:                                            ; preds = %bb.n
  %i.gb = getelementptr inbounds nuw i8, ptr %.tr, i64 20
  %i.gc = load i32, ptr %i.gb, align 4, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i32Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.gc)
  br label %bb.ar

bb.bk:                                            ; preds = %bb.o
  %i.gd = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ge = load i64, ptr %i.gd, align 8, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i64Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ge)
  br label %bb.ar

bb.bl:                                            ; preds = %bb.p
  %i.gf = getelementptr inbounds nuw i8, ptr %.tr, i64 17
  %i.gg = load i8, ptr %i.gf, align 1, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.gg)
  br label %bb.ar

bb.bm:                                            ; preds = %bb.q
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr, i64 18
  %i.gi = load i16, ptr %i.gh, align 2, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_u16Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i16 noundef %i.gi)
  br label %bb.ar

bb.bn:                                            ; preds = %bb.r
  %i.gj = getelementptr inbounds nuw i8, ptr %.tr, i64 20
  %i.gk = load i32, ptr %i.gj, align 4, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_u32Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.gk)
  br label %bb.ar

bb.bo:                                            ; preds = %bb.s
  %i.gl = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.gm = load i64, ptr %i.gl, align 8, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_u64Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.gm)
  br label %bb.ar

bb.bp:                                            ; preds = %tailrecurse, %tailrecurse, %tailrecurse
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.gn = load i64, ptr %.sroa.08.0, align 8, !range !123, !noundef !9
  %i.go = icmp ne i64 %i.gn, -9223372036854775808 ; 2 uses
  %i.gp = zext i1 %i.go to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.gp)
  br i1 %i.go, label %bb.bq, label %bb.ar

bb.bq:                                            ; preds = %bb.bp
  %i.gq = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !nonnull !9, !noundef !9
  %i.gs = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.gt = load i64, ptr %i.gs, align 8, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_strCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gr, i64 noundef %i.gt)
  br label %bb.ar

bb.br:                                            ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  %.sroa.011.0 = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.gu = load i64, ptr %.sroa.011.0, align 8, !range !123, !noundef !9
  %i.gv = icmp ne i64 %i.gu, -9223372036854775808 ; 2 uses
  %i.gw = zext i1 %i.gv to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.gw)
  br i1 %i.gv, label %bb.bs, label %bb.ar

bb.bs:                                            ; preds = %bb.br
  %i.gx = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !nonnull !9, !noundef !9
  %i.gz = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ha = load i64, ptr %i.gz, align 8, !noundef !9 ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ha)
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gy, i64 noundef %i.ha)
  br label %bb.ar

bb.bt:                                            ; preds = %bb.t
  tail call fastcc void @_RINvNtCsjhHCjzi9uUI_17datafusion_common6scalar17hash_nested_arrayQDNtNtCsbvkFyIu7lgC_4core4hash6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @44, ptr noalias noundef align 8 dereferenceable(16) %1)
  br label %bb.ar

bb.bu:                                            ; preds = %bb.t
  tail call void @llvm.trap()
  unreachable

bb.bv:                                            ; preds = %bb.u
  tail call fastcc void @_RINvNtCsjhHCjzi9uUI_17datafusion_common6scalar17hash_nested_arrayQDNtNtCsbvkFyIu7lgC_4core4hash6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @84, ptr noalias noundef align 8 dereferenceable(16) %1)
  br label %bb.ar

bb.bw:                                            ; preds = %bb.u
  tail call void @llvm.trap()
  unreachable

bb.bx:                                            ; preds = %bb.v
  tail call fastcc void @_RINvNtCsjhHCjzi9uUI_17datafusion_common6scalar17hash_nested_arrayQDNtNtCsbvkFyIu7lgC_4core4hash6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @85, ptr noalias noundef align 8 dereferenceable(16) %1)
  br label %bb.ar

bb.by:                                            ; preds = %bb.v
  tail call void @llvm.trap()
  unreachable

bb.bz:                                            ; preds = %bb.w
  tail call fastcc void @_RINvNtCsjhHCjzi9uUI_17datafusion_common6scalar17hash_nested_arrayQDNtNtCsbvkFyIu7lgC_4core4hash6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @86, ptr noalias noundef align 8 dereferenceable(16) %1)
  br label %bb.ar

bb.ca:                                            ; preds = %bb.w
  tail call void @llvm.trap()
  unreachable

bb.cb:                                            ; preds = %bb.x
  tail call fastcc void @_RINvNtCsjhHCjzi9uUI_17datafusion_common6scalar17hash_nested_arrayQDNtNtCsbvkFyIu7lgC_4core4hash6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @87, ptr noalias noundef align 8 dereferenceable(16) %1)
  br label %bb.ar

bb.cc:                                            ; preds = %bb.x
  tail call void @llvm.trap()
  unreachable

bb.cd:                                            ; preds = %bb.y
  %i.hb = getelementptr inbounds nuw i8, ptr %.tr, i64 20
  %i.hc = load i32, ptr %i.hb, align 4, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i32Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.hc)
  br label %bb.ar

bb.ce:                                            ; preds = %bb.z
  %i.hd = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.he = load i64, ptr %i.hd, align 8, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i64Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.he)
  br label %bb.ar

bb.cf:                                            ; preds = %bb.aa
  %i.hf = getelementptr inbounds nuw i8, ptr %.tr, i64 20
  %i.hg = load i32, ptr %i.hf, align 4, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i32Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.hg)
  br label %bb.ar

bb.cg:                                            ; preds = %bb.ab
  %i.hh = getelementptr inbounds nuw i8, ptr %.tr, i64 20
  %i.hi = load i32, ptr %i.hh, align 4, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i32Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.hi)
  br label %bb.ar

bb.ch:                                            ; preds = %bb.ac
  %i.hj = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hk = load i64, ptr %i.hj, align 8, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i64Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.hk)
  br label %bb.ar

bb.ci:                                            ; preds = %bb.ad
  %i.hl = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hm = load i64, ptr %i.hl, align 8, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i64Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.hm)
  br label %bb.ar

bb.cj:                                            ; preds = %bb.ae
  %i.hn = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ho = load i64, ptr %i.hn, align 8, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i64Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ho)
  br label %bb.ar

bb.ck:                                            ; preds = %bb.af
  %i.hp = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hq = load i64, ptr %i.hp, align 8, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i64Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.hq)
  br label %bb.ar

bb.cl:                                            ; preds = %bb.ag
  %i.hr = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hs = load i64, ptr %i.hr, align 8, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i64Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.hs)
  br label %bb.ar

bb.cm:                                            ; preds = %bb.ah
  %i.ht = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hu = load i64, ptr %i.ht, align 8, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i64Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.hu)
  br label %bb.ar

bb.cn:                                            ; preds = %bb.ai
  %i.hv = getelementptr inbounds nuw i8, ptr %.tr, i64 20
  %i.hw = load i32, ptr %i.hv, align 4, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i32Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.hw)
  br label %bb.ar

bb.co:                                            ; preds = %bb.aj
  %i.hx = getelementptr inbounds nuw i8, ptr %.tr, i64 20
  %i.hy = load i32, ptr %i.hx, align 4, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i32Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.hy)
  %i.hz = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ia = load i32, ptr %i.hz, align 4, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i32Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ia)
  br label %bb.ar

bb.cp:                                            ; preds = %bb.ak
  %i.ib = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ic = load i32, ptr %i.ib, align 8, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i32Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ic)
  %i.id = getelementptr inbounds nuw i8, ptr %.tr, i64 28
  %i.ie = load i32, ptr %i.id, align 4, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i32Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ie)
  %i.if = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ig = load i64, ptr %i.if, align 8, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i64Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ig)
  br label %bb.ar

bb.cq:                                            ; preds = %bb.al
  %i.ih = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ii = load i64, ptr %i.ih, align 8, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i64Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ii)
  br label %bb.ar

bb.cr:                                            ; preds = %bb.am
  %i.ij = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ik = load i64, ptr %i.ij, align 8, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i64Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ik)
  br label %bb.ar

bb.cs:                                            ; preds = %bb.an
  %i.il = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.im = load i64, ptr %i.il, align 8, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i64Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.im)
  br label %bb.ar

bb.ct:                                            ; preds = %bb.ao
  %i.in = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.io = load i64, ptr %i.in, align 8, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_i64Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.io)
  br label %bb.ar

bb.cu:                                            ; preds = %bb.ap
  %i.ip = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.iq = load i8, ptr %i.ip, align 16, !noundef !9
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_i8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.iq)
  tail call void @_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB16_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ek, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ap
  %i.ir = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.is = load ptr, ptr %i.ir, align 16, !nonnull !9, !noundef !9
  %i.it = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.iu = load i64, ptr %i.it, align 8, !noundef !9 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.iu)
  tail call void @_RINvYTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtB1p_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.iv, i64 noundef %i.iu, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  %i.iw = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.ix = load i8, ptr %i.iw, align 16, !range !71, !noundef !9
  %i.iy = zext nneg i8 %i.ix to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.iy)
  br label %bb.ar
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2b_NtCs4tdlwR1I4n2_7parquet5basicNtB7_8EncodingNtNtB9_14parquet_thrift11WriteThrift12write_thriftQQINtNtNtB9_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !range !11133, !noundef !9
  %i.b = shl nuw nsw i8 %i.a, 1
  %i.c = zext nneg i8 %i.b to i64
  tail call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE9write_vlqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2b_NtCs4tdlwR1I4n2_7parquet5basicNtB7_8EncodingNtNtB9_14parquet_thrift11WriteThrift12write_thriftQQINtNtNtB9_4file6writer12TrackedWriteNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEEB2l_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !range !11133, !noundef !9
  %i.b = shl nuw nsw i8 %i.a, 1
  %i.c = zext nneg i8 %i.b to i64
  tail call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEE9write_vlqB20_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2b_NtCs4tdlwR1I4n2_7parquet5basicNtB7_8EncodingNtNtB9_14parquet_thrift11WriteThrift12write_thriftQQINtNtNtB9_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !range !11133, !noundef !9
  %i.b = shl nuw nsw i8 %i.a, 1
  %i.c = zext nneg i8 %i.b to i64
  tail call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE9write_vlqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2c_NtCs4tdlwR1I4n2_7parquet5basicNtB7_8EncodingNtNtB9_14parquet_thrift16WriteThriftField18write_thrift_fieldQQINtNtNtB9_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 10)) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1, ptr noalias noundef align 8 dereferenceable(8) %2, i16 noundef %3, i16 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE17write_field_beginCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 5, i16 noundef %3, i16 noundef %4)
  %i.c = load i64, ptr %i.b, align 8, !range !9702, !noundef !9
  %.not = icmp eq i64 %i.c, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = load i8, ptr %1, align 1, !range !11133, !noundef !9
  %i.e = shl nuw nsw i8 %i.d, 1
  %i.f = zext nneg i8 %i.e to i64
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE9write_vlqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.f)
  %i.g = load i64, ptr %i.a, align 8, !range !9702, !noundef !9
  %.not1 = icmp eq i64 %i.g, 8
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %3, ptr %i.h, align 8
  store i64 8, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2c_NtCs4tdlwR1I4n2_7parquet5basicNtB7_8EncodingNtNtB9_14parquet_thrift16WriteThriftField18write_thrift_fieldQQINtNtNtB9_4file6writer12TrackedWriteNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEEB2w_(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 10)) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1, ptr noalias noundef align 8 dereferenceable(8) %2, i16 noundef %3, i16 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEE17write_field_beginB20_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 5, i16 noundef %3, i16 noundef %4)
  %i.c = load i64, ptr %i.b, align 8, !range !9702, !noundef !9
  %.not = icmp eq i64 %i.c, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = load i8, ptr %1, align 1, !range !11133, !noundef !9
  %i.e = shl nuw nsw i8 %i.d, 1
  %i.f = zext nneg i8 %i.e to i64
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEE9write_vlqB20_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.f)
  %i.g = load i64, ptr %i.a, align 8, !range !9702, !noundef !9
  %.not1 = icmp eq i64 %i.g, 8
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %3, ptr %i.h, align 8
  store i64 8, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2c_NtCs4tdlwR1I4n2_7parquet5basicNtB7_8EncodingNtNtB9_14parquet_thrift16WriteThriftField18write_thrift_fieldQQINtNtNtB9_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 10)) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1, ptr noalias noundef align 8 dereferenceable(8) %2, i16 noundef %3, i16 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE17write_field_beginCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 5, i16 noundef %3, i16 noundef %4)
  %i.c = load i64, ptr %i.b, align 8, !range !9702, !noundef !9
  %.not = icmp eq i64 %i.c, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = load i8, ptr %1, align 1, !range !11133, !noundef !9
  %i.e = shl nuw nsw i8 %i.d, 1
  %i.f = zext nneg i8 %i.e to i64
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE9write_vlqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.f)
  %i.g = load i64, ptr %i.a, align 8, !range !9702, !noundef !9
  %.not1 = icmp eq i64 %i.g, 8
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_2
