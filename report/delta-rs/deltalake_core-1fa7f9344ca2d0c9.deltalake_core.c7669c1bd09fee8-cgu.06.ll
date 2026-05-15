inline.NumInlined: 10989
inline.NumDeleted: 2487
begin_hunk_0_@_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.hli = lshr i128 %i.hlc, 64
  %i.hlj = trunc nuw i128 %i.hli to i64
  %i.hlk = load i64, ptr %i.b, align 8, !alias.scope !21599, !noundef !3
  %i.hll = xor i64 %i.hlk, %i.hlh
  %i.hlm = load ptr, ptr %i.c, align 16, !alias.scope !21599, !nonnull !3, !align !311, !noundef !3
  %i.hln = load i64, ptr %i.hlm, align 8, !noalias !21599, !noundef !3
  %i.hlo = xor i64 %i.hln, %i.hlj
  %i.hlp = zext i64 %i.hll to i128
  %i.hlq = zext i64 %i.hlo to i128
  %i.hlr = mul nuw i128 %i.hlq, %i.hlp            ; 2 uses
  %i.hls = lshr i128 %i.hlr, 64
  %i.hlt = xor i128 %i.hls, %i.hlr
  %i.hlu = trunc i128 %i.hlt to i64
  store i64 %i.hlu, ptr %i.b, align 8, !alias.scope !21599
  %i.hlv = zext nneg i8 %i.hlf to i128            ; 2 uses
  store i128 %i.hlv, ptr %1, align 16, !alias.scope !21599
  store i8 8, ptr %i.a, align 16, !alias.scope !21599
  %i.hlw = getelementptr inbounds nuw i8, ptr %.tr, i64 112 ; 2 uses
  %i.hlx = load i64, ptr %i.hlw, align 8, !range !4, !noundef !3
  %i.hly = icmp ne i64 %i.hlx, -9223372036854775808
  br label %bb.qu

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269.thread
  %i.hlz = phi i128 [ %i.hkt, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269.thread ], [ %i.hlc, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269 ]
  %i.hma = phi i8 [ %i.hkv, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269.thread ], [ %i.hlf, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269 ]
  %storemerge.i.i268807 = phi i8 [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269.thread ], [ %i.hld, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit269 ] ; 3 uses
  %i.hmb = zext nneg i8 %i.hma to i128
  %i.hmc = zext nneg i8 %storemerge.i.i268807 to i128
  %i.hmd = shl nuw nsw i128 %i.hmb, %i.hmc
  %i.hme = or i128 %i.hmd, %i.hlz                 ; 4 uses
  store i128 %i.hme, ptr %1, align 16, !alias.scope !21599
  %i.hmf = add nuw i8 %storemerge.i.i268807, 8    ; 2 uses
  store i8 %i.hmf, ptr %i.a, align 16, !alias.scope !21599
  %i.hmg = getelementptr inbounds nuw i8, ptr %.tr, i64 112 ; 3 uses
  %i.hmh = load i64, ptr %i.hmg, align 8, !range !4, !noundef !3
  %i.hmi = icmp ne i64 %i.hmh, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21603)
  %i.hmj = icmp samesign ugt i8 %storemerge.i.i268807, 56
  br i1 %i.hmj, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit54, label %bb.qu

bb.qu:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267
  %i.hmk = phi i128 [ %i.hlv, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267.thread ], [ %i.hme, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267 ]
  %i.hml = phi i1 [ %i.hly, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267.thread ], [ %i.hmi, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267 ] ; 2 uses
  %i.hmm = phi ptr [ %i.hlw, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267.thread ], [ %i.hmg, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267 ]
  %storemerge.i.i266809 = phi i8 [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267.thread ], [ %i.hmf, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267 ] ; 2 uses
  %i.hmn = zext i1 %i.hml to i128
  %i.hmo = zext nneg i8 %storemerge.i.i266809 to i128
  %i.hmp = shl nuw nsw i128 %i.hmn, %i.hmo
  %i.hmq = or i128 %i.hmp, %i.hmk                 ; 3 uses
  store i128 %i.hmq, ptr %1, align 16, !alias.scope !21606
  %i.hmr = add nuw i8 %storemerge.i.i266809, 64
  store i8 %i.hmr, ptr %i.a, align 16, !alias.scope !21606
  br i1 %i.hml, label %bb.qv, label %.thread811

.thread811:                                       ; preds = %bb.qu
  %i.hms = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.hmt = load i64, ptr %i.hms, align 8, !range !633, !noundef !3
  %extract.t2068 = trunc i128 %i.hmq to i64
  %extract2071 = lshr i128 %i.hmq, 64
  %extract.t2072 = trunc nuw i128 %extract2071 to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit54: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit267
  %i.hmu = trunc i128 %i.hme to i64
  %i.hmv = lshr i128 %i.hme, 64
  %i.hmw = trunc nuw i128 %i.hmv to i64
  %i.hmx = load i64, ptr %i.b, align 8, !alias.scope !21606, !noundef !3
  %i.hmy = xor i64 %i.hmx, %i.hmu
  %i.hmz = load ptr, ptr %i.c, align 16, !alias.scope !21606, !nonnull !3, !align !311, !noundef !3
  %i.hna = load i64, ptr %i.hmz, align 8, !noalias !21606, !noundef !3
  %i.hnb = xor i64 %i.hna, %i.hmw
  %i.hnc = zext i64 %i.hmy to i128
  %i.hnd = zext i64 %i.hnb to i128
  %i.hne = mul nuw i128 %i.hnd, %i.hnc            ; 2 uses
  %i.hnf = lshr i128 %i.hne, 64
  %i.hng = xor i128 %i.hnf, %i.hne
  %i.hnh = trunc i128 %i.hng to i64
  store i64 %i.hnh, ptr %i.b, align 8, !alias.scope !21606
  %i.hni = zext i1 %i.hmi to i128
  store i128 %i.hni, ptr %1, align 16, !alias.scope !21606
  store i8 64, ptr %i.a, align 16, !alias.scope !21606
  br i1 %i.hmi, label %bb.qv, label %.thread812

.thread812:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit54
  %i.hnj = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.hnk = load i64, ptr %i.hnj, align 8, !range !633, !noundef !3
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52

bb.qv:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit54, %bb.qu
  %i.hnl = phi ptr [ %i.hmm, %bb.qu ], [ %i.hmg, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit54 ]
  tail call fastcc void @_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hnl, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #60, !inline_history !7173
  %.pr810 = load i8, ptr %i.a, align 16, !alias.scope !21607 ; 2 uses
  %i.hnm = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.hnn = load i64, ptr %i.hnm, align 8, !range !633, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21613)
  %i.hno = icmp ugt i8 %.pr810, 64
  %.pre1831 = load i128, ptr %1, align 16, !alias.scope !21607 ; 3 uses
  %extract.t2069 = trunc i128 %.pre1831 to i64
  %extract2073 = lshr i128 %.pre1831, 64
  %extract.t2074 = trunc nuw i128 %extract2073 to i64
  br i1 %i.hno, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52: ; preds = %bb.qv, %.thread812
  %i.hnp = phi i128 [ 0, %.thread812 ], [ %.pre1831, %bb.qv ]
  %i.hnq = phi i64 [ %i.hnk, %.thread812 ], [ %i.hnn, %bb.qv ] ; 2 uses
  %i.hnr = phi i8 [ 64, %.thread812 ], [ %.pr810, %bb.qv ] ; 3 uses
  %i.hns = zext nneg i64 %i.hnq to i128
  %i.hnt = zext nneg i8 %i.hnr to i128
  %i.hnu = shl nuw nsw i128 %i.hns, %i.hnt
  %i.hnv = or i128 %i.hnu, %i.hnp                 ; 5 uses
  store i128 %i.hnv, ptr %1, align 16, !alias.scope !21607
  %i.hnw = add nuw i8 %i.hnr, 64                  ; 2 uses
  store i8 %i.hnw, ptr %i.a, align 16, !alias.scope !21607
  %i.hnx = trunc nuw i64 %i.hnq to i1
  br i1 %i.hnx, label %bb.qw, label %bb.qz

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread: ; preds = %bb.qv, %.thread811
  %.off02067 = phi i64 [ %extract.t2068, %.thread811 ], [ %extract.t2069, %bb.qv ]
  %.off642070 = phi i64 [ %extract.t2072, %.thread811 ], [ %extract.t2074, %bb.qv ]
  %i.hny = phi i64 [ %i.hmt, %.thread811 ], [ %i.hnn, %bb.qv ] ; 2 uses
  %i.hnz = load i64, ptr %i.b, align 8, !alias.scope !21607, !noundef !3
  %i.hoa = xor i64 %i.hnz, %.off02067
  %i.hob = load ptr, ptr %i.c, align 16, !alias.scope !21607, !nonnull !3, !align !311, !noundef !3 ; 2 uses
  %i.hoc = load i64, ptr %i.hob, align 8, !noalias !21607, !noundef !3
  %i.hod = xor i64 %i.hoc, %.off642070
  %i.hoe = zext i64 %i.hoa to i128
  %i.hof = zext i64 %i.hod to i128
  %i.hog = mul nuw i128 %i.hof, %i.hoe            ; 2 uses
  %i.hoh = lshr i128 %i.hog, 64
  %i.hoi = xor i128 %i.hoh, %i.hog
  %i.hoj = trunc i128 %i.hoi to i64               ; 2 uses
  store i64 %i.hoj, ptr %i.b, align 8, !alias.scope !21607
  %i.hok = zext nneg i64 %i.hny to i128
  store i128 %i.hok, ptr %1, align 16, !alias.scope !21607
  store i8 64, ptr %i.a, align 16, !alias.scope !21607
  %i.hol = trunc nuw i64 %i.hny to i1
  br i1 %i.hol, label %.thread815, label %.thread818

.thread818:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread
  %i.hom = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hon = load i64, ptr %i.hom, align 8, !range !633, !noundef !3
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50

.thread815:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52.thread
  %i.hoo = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.hop = load i64, ptr %i.hoo, align 8, !noundef !3
  br label %bb.qx

bb.qw:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52
  %i.hoq = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.hor = load i64, ptr %i.hoq, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21617)
  %.not = icmp eq i8 %i.hnr, 0
  br i1 %.not, label %bb.qx, label %bb.qy

bb.qx:                                            ; preds = %.thread815, %bb.qw
  %i.hos = phi i128 [ 1, %.thread815 ], [ %i.hnv, %bb.qw ]
  %i.hot = phi i64 [ %i.hop, %.thread815 ], [ %i.hor, %bb.qw ]
  %i.hou = zext i64 %i.hot to i128
  %i.hov = shl nuw i128 %i.hou, 64
  %i.how = or i128 %i.hov, %i.hos
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468

bb.qy:                                            ; preds = %bb.qw
  %i.hox = trunc i128 %i.hnv to i64
  %i.hoy = lshr i128 %i.hnv, 64
  %i.hoz = trunc nuw i128 %i.hoy to i64
  %i.hpa = load i64, ptr %i.b, align 8, !alias.scope !21620, !noundef !3
  %i.hpb = xor i64 %i.hpa, %i.hox
  %i.hpc = load ptr, ptr %i.c, align 16, !alias.scope !21620, !nonnull !3, !align !311, !noundef !3
  %i.hpd = load i64, ptr %i.hpc, align 8, !noalias !21620, !noundef !3
  %i.hpe = xor i64 %i.hpd, %i.hoz
  %i.hpf = zext i64 %i.hpb to i128
  %i.hpg = zext i64 %i.hpe to i128
  %i.hph = mul nuw i128 %i.hpg, %i.hpf            ; 2 uses
  %i.hpi = lshr i128 %i.hph, 64
  %i.hpj = xor i128 %i.hpi, %i.hph
  %i.hpk = trunc i128 %i.hpj to i64
  store i64 %i.hpk, ptr %i.b, align 8, !alias.scope !21620
  %i.hpl = zext i64 %i.hor to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468: ; preds = %bb.qx, %bb.qy
  %storemerge878 = phi i128 [ %i.hpl, %bb.qy ], [ %i.how, %bb.qx ] ; 2 uses
  %storemerge.i.i467 = phi i8 [ 64, %bb.qy ], [ -128, %bb.qx ] ; 2 uses
  store i128 %storemerge878, ptr %1, align 16, !alias.scope !21620
  store i8 %storemerge.i.i467, ptr %i.a, align 16, !alias.scope !21620
  br label %bb.qz

bb.qz:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52
  %i.hpm = phi i128 [ %i.hnv, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52 ], [ %storemerge878, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468 ] ; 3 uses
  %i.hpn = phi i8 [ %i.hnw, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit52 ], [ %storemerge.i.i467, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64.exit468 ]
  %i.hpo = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hpp = load i64, ptr %i.hpo, align 8, !range !633, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21624)
  %i.hpq = icmp ugt i8 %i.hpn, 64
  %.pre1832.pre = load i64, ptr %i.b, align 8, !alias.scope !21627 ; 2 uses
  %.pre1833.pre = load ptr, ptr %i.c, align 16, !alias.scope !21627 ; 4 uses
  br i1 %i.hpq, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50: ; preds = %bb.qz, %.thread818
  %.pre1833 = phi ptr [ %i.hob, %.thread818 ], [ %.pre1833.pre, %bb.qz ] ; 3 uses
  %.pre1832 = phi i64 [ %i.hoj, %.thread818 ], [ %.pre1832.pre, %bb.qz ] ; 2 uses
  %i.hpr = phi i128 [ 0, %.thread818 ], [ %i.hpm, %bb.qz ] ; 2 uses
  %i.hps = phi i64 [ %i.hon, %.thread818 ], [ %i.hpp, %bb.qz ] ; 2 uses
  %i.hpt = zext nneg i64 %i.hps to i128
  %i.hpu = shl nuw nsw i128 %i.hpt, 64
  %i.hpv = or i128 %i.hpu, %i.hpr                 ; 2 uses
  store i128 %i.hpv, ptr %1, align 16, !alias.scope !21632
  store i8 -128, ptr %i.a, align 16, !alias.scope !21632
  %i.hpw = trunc nuw i64 %i.hps to i1
  %extract.t2076 = trunc i128 %i.hpr to i64       ; 2 uses
  %extract2079 = lshr i128 %i.hpv, 64
  %extract.t2080 = trunc nuw i128 %extract2079 to i64 ; 2 uses
  br i1 %i.hpw, label %bb.ra, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread: ; preds = %bb.qz
  %i.hpx = trunc i128 %i.hpm to i64
  %i.hpy = lshr i128 %i.hpm, 64
  %i.hpz = trunc nuw i128 %i.hpy to i64
  %i.hqa = xor i64 %.pre1832.pre, %i.hpx
  %i.hqb = load i64, ptr %.pre1833.pre, align 8, !noalias !21632, !noundef !3
  %i.hqc = xor i64 %i.hqb, %i.hpz
  %i.hqd = zext i64 %i.hqa to i128
  %i.hqe = zext i64 %i.hqc to i128
  %i.hqf = mul nuw i128 %i.hqe, %i.hqd            ; 2 uses
  %i.hqg = lshr i128 %i.hqf, 64
  %i.hqh = xor i128 %i.hqg, %i.hqf
  %i.hqi = trunc i128 %i.hqh to i64               ; 3 uses
  store i64 %i.hqi, ptr %i.b, align 8, !alias.scope !21632
  %i.hqj = zext nneg i64 %i.hpp to i128
  store i128 %i.hqj, ptr %1, align 16, !alias.scope !21632
  store i8 64, ptr %i.a, align 16, !alias.scope !21632
  %i.hqk = trunc nuw i64 %i.hpp to i1
  br i1 %i.hqk, label %.thread826, label %.thread825

.thread826:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread
  %i.hql = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.hqm = load i64, ptr %i.hql, align 8, !noundef !3 ; 2 uses
  %i.hqn = zext i64 %i.hqm to i128
  %i.hqo = shl nuw i128 %i.hqn, 64
  %i.hqp = or disjoint i128 %i.hqo, 1
  store i128 %i.hqp, ptr %1, align 16, !alias.scope !21633
  store i8 -128, ptr %i.a, align 16, !alias.scope !21633
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48

bb.ra:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50
  %i.hqq = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.hqr = load i64, ptr %i.hqq, align 8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21639)
  %i.hqs = xor i64 %.pre1832, %extract.t2076
  %i.hqt = load i64, ptr %.pre1833, align 8, !noalias !21633, !noundef !3
  %i.hqu = xor i64 %i.hqt, %extract.t2080
  %i.hqv = zext i64 %i.hqs to i128
  %i.hqw = zext i64 %i.hqu to i128
  %i.hqx = mul nuw i128 %i.hqw, %i.hqv            ; 2 uses
  %i.hqy = lshr i128 %i.hqx, 64
  %i.hqz = xor i128 %i.hqy, %i.hqx
  %i.hra = trunc i128 %i.hqz to i64               ; 2 uses
  store i64 %i.hra, ptr %i.b, align 8, !alias.scope !21633
  %i.hrb = zext i64 %i.hqr to i128                ; 2 uses
  store i128 %i.hrb, ptr %1, align 16, !alias.scope !21633
  store i8 64, ptr %i.a, align 16, !alias.scope !21633
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21641)
  br label %.thread825

.thread825:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread, %bb.ra
  %i.hrc = phi ptr [ %.pre1833.pre, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread ], [ %.pre1833, %bb.ra ]
  %i.hrd = phi i64 [ %i.hqi, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread ], [ %i.hra, %bb.ra ]
  %i.hre = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50.thread ], [ %i.hrb, %bb.ra ] ; 2 uses
  %.in.in = getelementptr inbounds nuw i8, ptr %.tr, i64 136
  %.in = load i64, ptr %.in.in, align 8, !range !4, !noundef !3
  %.not879 = icmp eq i64 %.in, -9223372036854775808 ; 2 uses
  %i.hrf = select i1 %.not879, i128 0, i128 18446744073709551616
  %i.hrg = or disjoint i128 %i.hrf, %i.hre
  store i128 %i.hrg, ptr %1, align 16, !alias.scope !21627
  store i8 -128, ptr %i.a, align 16, !alias.scope !21627
  br i1 %.not879, label %.thread829, label %bb.rb

.thread829:                                       ; preds = %.thread825
  %i.hrh = getelementptr inbounds nuw i8, ptr %.tr, i64 160
  %i.hri = load i64, ptr %i.hrh, align 8, !range !4, !noundef !3
  %i.hrj = icmp ne i64 %i.hri, -9223372036854775808 ; 2 uses
  %i.hrk = zext i1 %i.hrj to i64
  %extract.t2559 = trunc nuw i128 %i.hre to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50, %.thread826
  %i.hrl = phi ptr [ %.pre1833, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50 ], [ %.pre1833.pre, %.thread826 ]
  %i.hrm = phi i64 [ %.pre1832, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50 ], [ %i.hqi, %.thread826 ]
  %.off02075 = phi i64 [ %extract.t2076, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50 ], [ 1, %.thread826 ]
  %.off642078 = phi i64 [ %extract.t2080, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit50 ], [ %i.hqm, %.thread826 ]
  %.in881.in = getelementptr inbounds nuw i8, ptr %.tr, i64 136
  %.in881 = load i64, ptr %.in881.in, align 8, !range !4, !noundef !3
  %i.hrn = icmp ne i64 %.in881, -9223372036854775808 ; 2 uses
  %i.hro = xor i64 %.off02075, %i.hrm
  %i.hrp = load i64, ptr %i.hrl, align 8, !noalias !21627, !noundef !3
  %i.hrq = xor i64 %i.hrp, %.off642078
  %i.hrr = zext i64 %i.hro to i128
  %i.hrs = zext i64 %i.hrq to i128
  %i.hrt = mul nuw i128 %i.hrs, %i.hrr            ; 2 uses
  %i.hru = lshr i128 %i.hrt, 64
  %i.hrv = xor i128 %i.hru, %i.hrt
  %i.hrw = trunc i128 %i.hrv to i64
  store i64 %i.hrw, ptr %i.b, align 8, !alias.scope !21627
  %i.hrx = zext i1 %i.hrn to i128
  store i128 %i.hrx, ptr %1, align 16, !alias.scope !21627
  store i8 64, ptr %i.a, align 16, !alias.scope !21627
  br i1 %i.hrn, label %bb.rb, label %.thread830

.thread830:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48
  %i.hry = getelementptr inbounds nuw i8, ptr %.tr, i64 160
  %i.hrz = load i64, ptr %i.hry, align 8, !range !4, !noundef !3
  %i.hsa = icmp ne i64 %i.hrz, -9223372036854775808 ; 2 uses
  %i.hsb = zext i1 %i.hsa to i64
  br label %._crit_edge1834

bb.rb:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48, %.thread825
  %i.hsc = getelementptr inbounds nuw i8, ptr %.tr, i64 144
  %i.hsd = load ptr, ptr %i.hsc, align 8, !nonnull !3, !noundef !3
  %i.hse = getelementptr inbounds nuw i8, ptr %.tr, i64 152
  %i.hsf = load i64, ptr %i.hse, align 8, !noundef !3
  tail call fastcc void @_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hsd, i64 noundef %i.hsf) #60
  %.pr828 = load i8, ptr %i.a, align 16, !alias.scope !21642 ; 2 uses
  %i.hsg = getelementptr inbounds nuw i8, ptr %.tr, i64 160
  %i.hsh = load i64, ptr %i.hsg, align 8, !range !4, !noundef !3
  %i.hsi = icmp ne i64 %i.hsh, -9223372036854775808 ; 3 uses
  %i.hsj = zext i1 %i.hsi to i64                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21648)
  %i.hsk = icmp ugt i8 %.pr828, 64
  %.pre1836 = load i128, ptr %1, align 16, !alias.scope !21642 ; 3 uses
  br i1 %i.hsk, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge, label %._crit_edge1834

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge: ; preds = %bb.rb
  %.pre1837 = load i64, ptr %i.b, align 8, !alias.scope !21642
  %.pre1838 = load ptr, ptr %i.c, align 16, !alias.scope !21642
  %extract.t2558 = trunc i128 %.pre1836 to i64
  %extract2560 = lshr i128 %.pre1836, 64
  %extract.t2561 = trunc nuw i128 %extract2560 to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46

._crit_edge1834:                                  ; preds = %bb.rb, %.thread830
  %i.hsl = phi i128 [ 0, %.thread830 ], [ %.pre1836, %bb.rb ]
  %i.hsm = phi i64 [ %i.hsb, %.thread830 ], [ %i.hsj, %bb.rb ]
  %i.hsn = phi i1 [ %i.hsa, %.thread830 ], [ %i.hsi, %bb.rb ]
  %i.hso = phi i8 [ 64, %.thread830 ], [ %.pr828, %bb.rb ] ; 2 uses
  %i.hsp = zext nneg i64 %i.hsm to i128
  %i.hsq = zext nneg i8 %i.hso to i128
  %i.hsr = shl nuw nsw i128 %i.hsp, %i.hsq
  %i.hss = or i128 %i.hsr, %i.hsl                 ; 2 uses
  store i128 %i.hss, ptr %1, align 16, !alias.scope !21642
  %i.hst = add nuw i8 %i.hso, 64                  ; 2 uses
  store i8 %i.hst, ptr %i.a, align 16, !alias.scope !21642
  br i1 %i.hsn, label %bb.rc, label %bb.rd

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge, %.thread829
  %.pre1836.sink2557.off0 = phi i64 [ %extract.t2558, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %extract.t2559, %.thread829 ]
  %.pre1836.sink.off64 = phi i64 [ %extract.t2561, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ 0, %.thread829 ]
  %i.hsu = phi ptr [ %.pre1838, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %i.hrc, %.thread829 ]
  %i.hsv = phi i64 [ %.pre1837, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %i.hrd, %.thread829 ]
  %i.hsw = phi i64 [ %i.hsj, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %i.hrk, %.thread829 ]
  %i.hsx = phi i1 [ %i.hsi, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ], [ %i.hrj, %.thread829 ]
  %i.hsy = xor i64 %i.hsv, %.pre1836.sink2557.off0
  %i.hsz = load i64, ptr %i.hsu, align 8, !noalias !21642, !noundef !3
  %i.hta = xor i64 %i.hsz, %.pre1836.sink.off64
  %i.htb = zext i64 %i.hsy to i128
  %i.htc = zext i64 %i.hta to i128
  %i.htd = mul nuw i128 %i.htc, %i.htb            ; 2 uses
  %i.hte = lshr i128 %i.htd, 64
  %i.htf = xor i128 %i.hte, %i.htd
  %i.htg = trunc i128 %i.htf to i64
  store i64 %i.htg, ptr %i.b, align 8, !alias.scope !21642
  %i.hth = zext nneg i64 %i.hsw to i128           ; 2 uses
  store i128 %i.hth, ptr %1, align 16, !alias.scope !21642
  store i8 64, ptr %i.a, align 16, !alias.scope !21642
  br i1 %i.hsx, label %bb.rc, label %.thread832

.thread832:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46
  %i.hti = getelementptr inbounds nuw i8, ptr %.tr, i64 331
  %i.htj = load i8, ptr %i.hti, align 1, !range !2045, !noundef !3 ; 2 uses
  %i.htk = icmp ne i8 %i.htj, 2
  br label %bb.re

bb.rc:                                            ; preds = %._crit_edge1834, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46
  %i.htl = getelementptr inbounds nuw i8, ptr %.tr, i64 168
  %i.htm = load ptr, ptr %i.htl, align 8, !nonnull !3, !noundef !3
  %i.htn = getelementptr inbounds nuw i8, ptr %.tr, i64 176
  %i.hto = load i64, ptr %i.htn, align 8, !noundef !3
  tail call fastcc void @_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(48) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.htm, i64 noundef %i.hto) #60
  %.pr831 = load i8, ptr %i.a, align 16, !alias.scope !21649
  %.pre1839.pre = load i128, ptr %1, align 16, !alias.scope !21649
  br label %bb.rd

bb.rd:                                            ; preds = %._crit_edge1834, %bb.rc
  %.pre1839 = phi i128 [ %i.hss, %._crit_edge1834 ], [ %.pre1839.pre, %bb.rc ] ; 3 uses
  %i.htp = phi i8 [ %i.hst, %._crit_edge1834 ], [ %.pr831, %bb.rc ] ; 2 uses
  %i.htq = getelementptr inbounds nuw i8, ptr %.tr, i64 331
  %i.htr = load i8, ptr %i.htq, align 1, !range !2045, !noundef !3 ; 3 uses
  %i.hts = icmp ne i8 %i.htr, 2                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21655)
  %i.htt = icmp ugt i8 %i.htp, 64
  br i1 %i.htt, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44, label %bb.re

bb.re:                                            ; preds = %.thread832, %bb.rd
  %i.htu = phi i128 [ %i.hth, %.thread832 ], [ %.pre1839, %bb.rd ]
  %i.htv = phi i1 [ %i.htk, %.thread832 ], [ %i.hts, %bb.rd ] ; 2 uses
  %i.htw = phi i8 [ %i.htj, %.thread832 ], [ %i.htr, %bb.rd ] ; 2 uses
  %i.htx = phi i8 [ 64, %.thread832 ], [ %i.htp, %bb.rd ] ; 3 uses
  %i.hty = zext i1 %i.htv to i128
  %i.htz = zext nneg i8 %i.htx to i128
  %i.hua = shl nuw nsw i128 %i.hty, %i.htz
  %i.hub = or i128 %i.hua, %i.htu                 ; 5 uses
  store i128 %i.hub, ptr %1, align 16, !alias.scope !21649
  %i.huc = add nuw i8 %i.htx, 64                  ; 3 uses
  store i8 %i.huc, ptr %i.a, align 16, !alias.scope !21649
  br i1 %i.htv, label %bb.rf, label %bb.rh

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44: ; preds = %bb.rd
  %i.hud = trunc i128 %.pre1839 to i64
  %i.hue = lshr i128 %.pre1839, 64
  %i.huf = trunc nuw i128 %i.hue to i64
  %i.hug = load i64, ptr %i.b, align 8, !alias.scope !21649, !noundef !3
  %i.huh = xor i64 %i.hug, %i.hud
  %i.hui = load ptr, ptr %i.c, align 16, !alias.scope !21649, !nonnull !3, !align !311, !noundef !3
  %i.huj = load i64, ptr %i.hui, align 8, !noalias !21649, !noundef !3
  %i.huk = xor i64 %i.huj, %i.huf
  %i.hul = zext i64 %i.huh to i128
  %i.hum = zext i64 %i.huk to i128
  %i.hun = mul nuw i128 %i.hum, %i.hul            ; 2 uses
  %i.huo = lshr i128 %i.hun, 64
  %i.hup = xor i128 %i.huo, %i.hun
  %i.huq = trunc i128 %i.hup to i64
  store i64 %i.huq, ptr %i.b, align 8, !alias.scope !21649
  %i.hur = zext i1 %i.hts to i128
  store i128 %i.hur, ptr %1, align 16, !alias.scope !21649
  store i8 64, ptr %i.a, align 16, !alias.scope !21649
  br i1 %i.hts, label %.thread834, label %.thread837

.thread837:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44
  %i.hus = getelementptr inbounds nuw i8, ptr %.tr, i64 184
  %i.hut = load i64, ptr %i.hus, align 8, !range !4, !noundef !3
  %i.huu = icmp ne i64 %i.hut, -9223372036854775808
  br label %bb.ri

bb.rf:                                            ; preds = %bb.re
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21659)
  %i.huv = icmp samesign ugt i8 %i.htx, 56
  br i1 %i.huv, label %bb.rg, label %.thread834

.thread834:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44, %bb.rf
  %i.huw = phi i128 [ %i.hub, %bb.rf ], [ 1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44 ]
  %i.hux = phi i8 [ %i.htw, %bb.rf ], [ %i.htr, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44 ]
  %storemerge.i.i43833836 = phi i8 [ %i.huc, %bb.rf ], [ 64, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit44 ] ; 2 uses
  %i.huy = zext nneg i8 %i.hux to i128
  %i.huz = zext nneg i8 %storemerge.i.i43833836 to i128
  %i.hva = shl nuw nsw i128 %i.huy, %i.huz
  %i.hvb = or i128 %i.hva, %i.huw                 ; 2 uses
  store i128 %i.hvb, ptr %1, align 16, !alias.scope !21662
  %i.hvc = add nuw i8 %storemerge.i.i43833836, 8
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265

bb.rg:                                            ; preds = %bb.rf
  %i.hvd = trunc i128 %i.hub to i64
  %i.hve = lshr i128 %i.hub, 64
  %i.hvf = trunc nuw i128 %i.hve to i64
  %i.hvg = load i64, ptr %i.b, align 8, !alias.scope !21662, !noundef !3
  %i.hvh = xor i64 %i.hvg, %i.hvd
  %i.hvi = load ptr, ptr %i.c, align 16, !alias.scope !21662, !nonnull !3, !align !311, !noundef !3
  %i.hvj = load i64, ptr %i.hvi, align 8, !noalias !21662, !noundef !3
  %i.hvk = xor i64 %i.hvj, %i.hvf
  %i.hvl = zext i64 %i.hvh to i128
  %i.hvm = zext i64 %i.hvk to i128
  %i.hvn = mul nuw i128 %i.hvm, %i.hvl            ; 2 uses
  %i.hvo = lshr i128 %i.hvn, 64
  %i.hvp = xor i128 %i.hvo, %i.hvn
  %i.hvq = trunc i128 %i.hvp to i64
  store i64 %i.hvq, ptr %i.b, align 8, !alias.scope !21662
  %i.hvr = zext nneg i8 %i.htw to i128            ; 2 uses
  store i128 %i.hvr, ptr %1, align 16, !alias.scope !21662
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265: ; preds = %.thread834, %bb.rg
  %i.hvs = phi i128 [ %i.hvb, %.thread834 ], [ %i.hvr, %bb.rg ]
  %storemerge.i.i264 = phi i8 [ %i.hvc, %.thread834 ], [ 8, %bb.rg ] ; 2 uses
  store i8 %storemerge.i.i264, ptr %i.a, align 16, !alias.scope !21662
  br label %bb.rh

bb.rh:                                            ; preds = %bb.re, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265
  %i.hvt = phi i128 [ %i.hub, %bb.re ], [ %i.hvs, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265 ] ; 3 uses
  %i.hvu = phi i8 [ %i.huc, %bb.re ], [ %storemerge.i.i264, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit265 ] ; 2 uses
  %i.hvv = getelementptr inbounds nuw i8, ptr %.tr, i64 184
  %i.hvw = load i64, ptr %i.hvv, align 8, !range !4, !noundef !3
  %i.hvx = icmp ne i64 %i.hvw, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21666)
  %i.hvy = icmp ugt i8 %i.hvu, 64
  br i1 %i.hvy, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit42, label %bb.ri

bb.ri:                                            ; preds = %.thread837, %bb.rh
  %i.hvz = phi i128 [ 0, %.thread837 ], [ %i.hvt, %bb.rh ]
  %i.hwa = phi i1 [ %i.huu, %.thread837 ], [ %i.hvx, %bb.rh ] ; 2 uses
  %i.hwb = phi i8 [ 64, %.thread837 ], [ %i.hvu, %bb.rh ] ; 2 uses
  %i.hwc = zext i1 %i.hwa to i128
  %i.hwd = zext nneg i8 %i.hwb to i128
  %i.hwe = shl nuw nsw i128 %i.hwc, %i.hwd
end_hunk_0
begin_hunk_1_@llvm.smin.i64
!21427 = distinct !{!21427, !21428, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21428 = distinct !{!21428, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21429 = distinct !{!21429, !21430, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21430 = distinct !{!21430, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21431 = !{!21429}
!21432 = !{!21427}
!21433 = !{!21434, !21436}
!21434 = distinct !{!21434, !21435, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21435 = distinct !{!21435, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21436 = distinct !{!21436, !21437, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21437 = distinct !{!21437, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21438 = !{!21436}
!21439 = !{!21434}
!21440 = !{!21441, !21443}
!21441 = distinct !{!21441, !21442, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21442 = distinct !{!21442, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21443 = distinct !{!21443, !21444, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21444 = distinct !{!21444, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21445 = !{!21446}
!21446 = distinct !{!21446, !21447, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21447 = distinct !{!21447, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21448 = !{!21449}
!21449 = distinct !{!21449, !21450, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21450 = distinct !{!21450, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21451 = !{!21449, !21446}
!21452 = !{!21453, !21455}
!21453 = distinct !{!21453, !21454, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21454 = distinct !{!21454, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21455 = distinct !{!21455, !21456, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21456 = distinct !{!21456, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21457 = !{!21455}
!21458 = !{!21453}
!21459 = !{!21460, !21462}
!21460 = distinct !{!21460, !21461, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21461 = distinct !{!21461, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21462 = distinct !{!21462, !21463, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21463 = distinct !{!21463, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21464 = !{!21462}
!21465 = !{!21460}
!21466 = !{!21467, !21469}
!21467 = distinct !{!21467, !21468, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21468 = distinct !{!21468, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21469 = distinct !{!21469, !21470, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21470 = distinct !{!21470, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21471 = !{!21469}
!21472 = !{!21467}
!21473 = !{!21474}
!21474 = distinct !{!21474, !21475, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21475 = distinct !{!21475, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21476 = !{!21477}
!21477 = distinct !{!21477, !21478, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21478 = distinct !{!21478, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21479 = !{!21477, !21474}
!21480 = !{!21481}
!21481 = distinct !{!21481, !21482, !"_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21482 = distinct !{!21482, !"_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core"}
!21483 = !{!21484}
!21484 = distinct !{!21484, !21485, !"_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21485 = distinct !{!21485, !"_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core"}
!21486 = !{!21484, !21481}
!21487 = !{!21488, !21489}
!21488 = distinct !{!21488, !21485, !"_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 1"}
!21489 = distinct !{!21489, !21482, !"_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 1"}
!21490 = !{!21491}
!21491 = distinct !{!21491, !21492, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core: argument 0"}
!21492 = distinct !{!21492, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core"}
!21493 = !{!21494}
!21494 = distinct !{!21494, !21495, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usize: argument 0"}
!21495 = distinct !{!21495, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usize"}
!21496 = !{!21497}
!21497 = distinct !{!21497, !21498, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21498 = distinct !{!21498, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21499 = !{!21497, !21494, !21491}
!21500 = !{!21497, !21494, !21491, !21484, !21481}
!21501 = !{!21502, !21504}
!21502 = distinct !{!21502, !21503, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21503 = distinct !{!21503, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21504 = distinct !{!21504, !21505, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21505 = distinct !{!21505, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21506 = !{!21504}
!21507 = !{!21502}
!21508 = !{!21509}
!21509 = distinct !{!21509, !21510, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21510 = distinct !{!21510, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21511 = !{!21512}
!21512 = distinct !{!21512, !21513, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21513 = distinct !{!21513, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21514 = !{!21512, !21509}
!21515 = !{!21516, !21518}
!21516 = distinct !{!21516, !21517, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21517 = distinct !{!21517, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21518 = distinct !{!21518, !21519, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21519 = distinct !{!21519, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21520 = !{!21518}
!21521 = !{!21516}
!21522 = !{!21523}
!21523 = distinct !{!21523, !21524, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21524 = distinct !{!21524, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21525 = !{!21526}
!21526 = distinct !{!21526, !21527, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21527 = distinct !{!21527, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21528 = !{!21526, !21523}
!21529 = !{!21530, !21532}
!21530 = distinct !{!21530, !21531, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21531 = distinct !{!21531, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21532 = distinct !{!21532, !21533, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21533 = distinct !{!21533, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21534 = !{!21532}
!21535 = !{!21530}
!21536 = !{!21537}
!21537 = distinct !{!21537, !21538, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21538 = distinct !{!21538, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21539 = !{!21540}
!21540 = distinct !{!21540, !21541, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21541 = distinct !{!21541, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21542 = !{!21540, !21537}
!21543 = !{ptr @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast13ExceptionWhenNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core}
!21544 = !{!21545, !21547}
!21545 = distinct !{!21545, !21546, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21546 = distinct !{!21546, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21547 = distinct !{!21547, !21548, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21548 = distinct !{!21548, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21549 = !{!21547}
!21550 = !{!21545}
!21551 = !{!21552, !21554}
!21552 = distinct !{!21552, !21553, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21553 = distinct !{!21553, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21554 = distinct !{!21554, !21555, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21555 = distinct !{!21555, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21556 = !{!21554}
!21557 = !{!21552}
!21558 = !{!21559, !21561}
!21559 = distinct !{!21559, !21560, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21560 = distinct !{!21560, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21561 = distinct !{!21561, !21562, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21562 = distinct !{!21562, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21563 = !{!21561}
!21564 = !{!21559}
!21565 = !{!21566, !21568}
!21566 = distinct !{!21566, !21567, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21567 = distinct !{!21567, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21568 = distinct !{!21568, !21569, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21569 = distinct !{!21569, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21570 = !{!21568}
!21571 = !{!21566}
!21572 = !{!21573, !21575}
!21573 = distinct !{!21573, !21574, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21574 = distinct !{!21574, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21575 = distinct !{!21575, !21576, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21576 = distinct !{!21576, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21577 = !{!21575}
!21578 = !{!21573}
!21579 = !{!21580, !21582}
!21580 = distinct !{!21580, !21581, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21581 = distinct !{!21581, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21582 = distinct !{!21582, !21583, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21583 = distinct !{!21583, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21584 = !{!21582}
!21585 = !{!21580}
!21586 = !{!21587, !21589}
!21587 = distinct !{!21587, !21588, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21588 = distinct !{!21588, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21589 = distinct !{!21589, !21590, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21590 = distinct !{!21590, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21591 = !{!21589}
!21592 = !{!21587}
!21593 = !{!21594}
!21594 = distinct !{!21594, !21595, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21595 = distinct !{!21595, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21596 = !{!21597}
!21597 = distinct !{!21597, !21598, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21598 = distinct !{!21598, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21599 = !{!21597, !21594}
!21600 = !{!21601}
!21601 = distinct !{!21601, !21602, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21602 = distinct !{!21602, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21603 = !{!21604}
!21604 = distinct !{!21604, !21605, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21605 = distinct !{!21605, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21606 = !{!21604, !21601}
!21607 = !{!21608, !21610}
!21608 = distinct !{!21608, !21609, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21609 = distinct !{!21609, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21610 = distinct !{!21610, !21611, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21611 = distinct !{!21611, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21612 = !{!21610}
!21613 = !{!21608}
!21614 = !{!21615}
!21615 = distinct !{!21615, !21616, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64: argument 0"}
!21616 = distinct !{!21616, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64"}
!21617 = !{!21618}
!21618 = distinct !{!21618, !21619, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21619 = distinct !{!21619, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21620 = !{!21618, !21615}
!21621 = !{!21622}
!21622 = distinct !{!21622, !21623, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21623 = distinct !{!21623, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21624 = !{!21625}
!21625 = distinct !{!21625, !21626, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21626 = distinct !{!21626, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21627 = !{!21628, !21630}
!21628 = distinct !{!21628, !21629, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21629 = distinct !{!21629, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21630 = distinct !{!21630, !21631, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21631 = distinct !{!21631, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21632 = !{!21625, !21622}
!21633 = !{!21634, !21636}
!21634 = distinct !{!21634, !21635, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21635 = distinct !{!21635, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21636 = distinct !{!21636, !21637, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64: argument 0"}
!21637 = distinct !{!21637, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64"}
!21638 = !{!21636}
!21639 = !{!21634}
!21640 = !{!21630}
!21641 = !{!21628}
!21642 = !{!21643, !21645}
!21643 = distinct !{!21643, !21644, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21644 = distinct !{!21644, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21645 = distinct !{!21645, !21646, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21646 = distinct !{!21646, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21647 = !{!21645}
!21648 = !{!21643}
!21649 = !{!21650, !21652}
!21650 = distinct !{!21650, !21651, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21651 = distinct !{!21651, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21652 = distinct !{!21652, !21653, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21653 = distinct !{!21653, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21654 = !{!21652}
!21655 = !{!21650}
!21656 = !{!21657}
!21657 = distinct !{!21657, !21658, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21658 = distinct !{!21658, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21659 = !{!21660}
!21660 = distinct !{!21660, !21661, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21661 = distinct !{!21661, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21662 = !{!21660, !21657}
!21663 = !{!21664}
!21664 = distinct !{!21664, !21665, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21665 = distinct !{!21665, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21666 = !{!21667}
!21667 = distinct !{!21667, !21668, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21668 = distinct !{!21668, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21669 = !{!21667, !21664}
!21670 = !{!21671, !21673}
!21671 = distinct !{!21671, !21672, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21672 = distinct !{!21672, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21673 = distinct !{!21673, !21674, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21674 = distinct !{!21674, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21675 = !{!21673}
!21676 = !{!21671}
!21677 = !{!21678, !21680}
!21678 = distinct !{!21678, !21679, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21679 = distinct !{!21679, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21680 = distinct !{!21680, !21681, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21681 = distinct !{!21681, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21682 = !{!21680}
!21683 = !{!21678}
!21684 = !{!21685, !21687}
!21685 = distinct !{!21685, !21686, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21686 = distinct !{!21686, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21687 = distinct !{!21687, !21688, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21688 = distinct !{!21688, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21689 = !{!21687}
!21690 = !{!21685}
!21691 = !{!21692, !21694}
!21692 = distinct !{!21692, !21693, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21693 = distinct !{!21693, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21694 = distinct !{!21694, !21695, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21695 = distinct !{!21695, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21696 = !{!21694}
!21697 = !{!21692}
!21698 = !{!21699, !21701}
!21699 = distinct !{!21699, !21700, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21700 = distinct !{!21700, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21701 = distinct !{!21701, !21702, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21702 = distinct !{!21702, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21703 = !{!21701}
!21704 = !{!21699}
!21705 = !{!21706, !21708}
!21706 = distinct !{!21706, !21707, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21707 = distinct !{!21707, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21708 = distinct !{!21708, !21709, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21709 = distinct !{!21709, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21710 = !{!21708}
!21711 = !{!21706}
!21712 = !{!21713, !21715}
!21713 = distinct !{!21713, !21714, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21714 = distinct !{!21714, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21715 = distinct !{!21715, !21716, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21716 = distinct !{!21716, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21717 = !{!21715}
!21718 = !{!21713}
!21719 = !{!21720, !21722}
!21720 = distinct !{!21720, !21721, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21721 = distinct !{!21721, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21722 = distinct !{!21722, !21723, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21723 = distinct !{!21723, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21724 = !{!21722}
!21725 = !{!21720}
!21726 = !{!21727}
!21727 = distinct !{!21727, !21728, !"_RINvXsuA_NtCs4lawaffTVVK_9sqlparser3astNtB7_8MacroArgNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21728 = distinct !{!21728, !"_RINvXsuA_NtCs4lawaffTVVK_9sqlparser3astNtB7_8MacroArgNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core"}
!21729 = !{!21730}
!21730 = distinct !{!21730, !21728, !"_RINvXsuA_NtCs4lawaffTVVK_9sqlparser3astNtB7_8MacroArgNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 1"}
!21731 = distinct !{null, ptr @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast8MacroArgNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core}
!21732 = !{!21733}
!21733 = distinct !{!21733, !21734, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21734 = distinct !{!21734, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21735 = !{!21736}
!21736 = distinct !{!21736, !21737, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21737 = distinct !{!21737, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21738 = !{!21736, !21733, !21730}
!21739 = !{!21736, !21733, !21727, !21730}
!21740 = !{ptr @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core}
!21741 = !{!21742}
!21742 = distinct !{!21742, !21743, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21743 = distinct !{!21743, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21744 = !{!21745}
!21745 = distinct !{!21745, !21746, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21746 = distinct !{!21746, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21747 = !{!21745, !21742}
!21748 = !{!21749}
!21749 = distinct !{!21749, !21750, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21750 = distinct !{!21750, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21751 = !{!21752}
!21752 = distinct !{!21752, !21753, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21753 = distinct !{!21753, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21754 = !{!21752, !21749}
!21755 = !{!21756, !21758}
!21756 = distinct !{!21756, !21757, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21757 = distinct !{!21757, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21758 = distinct !{!21758, !21759, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21759 = distinct !{!21759, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21760 = !{!21758}
!21761 = !{!21756}
!21762 = !{!21763, !21765}
!21763 = distinct !{!21763, !21764, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21764 = distinct !{!21764, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21765 = distinct !{!21765, !21766, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21766 = distinct !{!21766, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21767 = !{!21765}
!21768 = !{!21763}
!21769 = !{!21770}
!21770 = distinct !{!21770, !21771, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21771 = distinct !{!21771, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21772 = !{!21773}
!21773 = distinct !{!21773, !21774, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21774 = distinct !{!21774, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21775 = !{!21773, !21770}
!21776 = !{!21777, !21779}
!21777 = distinct !{!21777, !21778, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21778 = distinct !{!21778, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21779 = distinct !{!21779, !21780, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21780 = distinct !{!21780, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21781 = !{!21779}
!21782 = !{!21777}
!21783 = !{!21784}
!21784 = distinct !{!21784, !21785, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21785 = distinct !{!21785, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21786 = !{!21787}
!21787 = distinct !{!21787, !21788, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21788 = distinct !{!21788, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21789 = !{!21787, !21784}
!21790 = !{!21791}
!21791 = distinct !{!21791, !21792, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21792 = distinct !{!21792, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21793 = !{!21794}
!21794 = distinct !{!21794, !21795, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21795 = distinct !{!21795, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21796 = !{!21794, !21791}
!21797 = !{!21798}
!21798 = distinct !{!21798, !21799, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21799 = distinct !{!21799, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21800 = !{!21801}
!21801 = distinct !{!21801, !21802, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21802 = distinct !{!21802, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21803 = !{!21801, !21798}
!21804 = !{!21805}
!21805 = distinct !{!21805, !21806, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21806 = distinct !{!21806, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21807 = !{!21808}
!21808 = distinct !{!21808, !21809, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21809 = distinct !{!21809, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21810 = !{!21808, !21805}
!21811 = !{!21812, !21814}
!21812 = distinct !{!21812, !21813, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21813 = distinct !{!21813, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21814 = distinct !{!21814, !21815, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64: argument 0"}
!21815 = distinct !{!21815, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64"}
!21816 = !{!21814}
!21817 = !{!21812}
!21818 = !{!21819, !21821}
!21819 = distinct !{!21819, !21820, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21820 = distinct !{!21820, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!21821 = distinct !{!21821, !21822, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!21822 = distinct !{!21822, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!21823 = !{!21821}
!21824 = !{!21819}
!21825 = !{!21826, !21828}
!21826 = distinct !{!21826, !21827, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21827 = distinct !{!21827, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!21828 = distinct !{!21828, !21829, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21829 = distinct !{!21829, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21830 = !{!21828}
!21831 = !{!21826}
!21832 = !{!21833}
!21833 = distinct !{!21833, !21834, !"_RINvXsxk_NtCs4lawaffTVVK_9sqlparser3astNtB7_13UtilityOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 0"}
!21834 = distinct !{!21834, !"_RINvXsxk_NtCs4lawaffTVVK_9sqlparser3astNtB7_13UtilityOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core"}
!21835 = !{!21836}
!21836 = distinct !{!21836, !21834, !"_RINvXsxk_NtCs4lawaffTVVK_9sqlparser3astNtB7_13UtilityOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 1"}
!21837 = distinct !{null, ptr @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast13UtilityOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core}
!21838 = !{!21839}
!21839 = distinct !{!21839, !21840, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!21840 = distinct !{!21840, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!21841 = !{!21842}
end_hunk_1
