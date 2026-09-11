Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/objdump.objdump.5f22a4fa832dee2f-cgu.01?download=true
inline.NumInlined: 126
inline.NumDeleted: 103
begin_hunk_0_@_RNvXsh_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs8aoZCP6pRcV_7objdump:bb.a
  %i.cz = call noundef i64 @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_10CoffSymbolNtNtB9_6traits12ObjectSymbol7addressCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  store i64 %i.cz, ptr %i.k, align 8
  %i.da = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.db = call noundef i64 @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_10CoffSymbolNtNtB9_6traits12ObjectSymbol4sizeCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  store i64 %i.db, ptr %i.j, align 8
  %i.dc = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.da, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 4, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.dd = call noundef i8 @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_10CoffSymbolNtNtB9_6traits12ObjectSymbol4kindCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  store i8 %i.dd, ptr %i.i, align 1
  %i.de = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.df = call { i64, i64 } @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_10CoffSymbolNtNtB9_6traits12ObjectSymbol7sectionCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) ; 2 uses
  %i.dg = extractvalue { i64, i64 } %i.df, 0
  %i.dh = extractvalue { i64, i64 } %i.df, 1
  store i64 %i.dg, ptr %i.h, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.dh, ptr %i.di, align 8
  %i.dj = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.de, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 7, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !172, !nonnull !5, !noundef !5
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !noalias !172, !noundef !5 ; 2 uses
  %switch.selectcmp.case1.i = icmp eq i8 %i.dn, 2
  %switch.selectcmp.case2.i = icmp eq i8 %i.dn, 105
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %i.do = select i1 %switch.selectcmp.i, i8 2, i8 1
  store i8 %i.do, ptr %i.g, align 1
  %i.dp = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 5, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dq = load i8, ptr %i.dm, align 1, !noalias !173, !noundef !5
  %i.dr = icmp eq i8 %i.dq, 105
  %i.ds = zext i1 %i.dr to i8
  store i8 %i.ds, ptr %i.f, align 1
  %i.dt = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 4, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_10CoffSymbolNtNtB9_6traits12ObjectSymbol5flagsCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  br label %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol5flagsCs8aoZCP6pRcV_7objdump.exit

bb.ak:                                            ; preds = %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump.exit
  %i.du = call noundef i64 @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolINtB5_10CoffSymbolRShNtNtBb_2pe22AnonObjectHeaderBigobjENtNtB9_6traits12ObjectSymbol7addressCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  store i64 %i.du, ptr %i.k, align 8
  %i.dv = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.dw = call noundef i64 @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolINtB5_10CoffSymbolRShNtNtBb_2pe22AnonObjectHeaderBigobjENtNtB9_6traits12ObjectSymbol4sizeCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  store i64 %i.dw, ptr %i.j, align 8
  %i.dx = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 4, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.dy = call noundef i8 @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolINtB5_10CoffSymbolRShNtNtBb_2pe22AnonObjectHeaderBigobjENtNtB9_6traits12ObjectSymbol4kindCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  store i8 %i.dy, ptr %i.i, align 1
  %i.dz = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ea = call { i64, i64 } @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolINtB5_10CoffSymbolRShNtNtBb_2pe22AnonObjectHeaderBigobjENtNtB9_6traits12ObjectSymbol7sectionCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) ; 2 uses
  %i.eb = extractvalue { i64, i64 } %i.ea, 0
  %i.ec = extractvalue { i64, i64 } %i.ea, 1
  store i64 %i.eb, ptr %i.h, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ec, ptr %i.ed, align 8
  %i.ee = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 7, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !172, !nonnull !5, !noundef !5
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 18 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !noalias !172, !noundef !5 ; 2 uses
  %switch.selectcmp.case11.i = icmp eq i8 %i.ei, 2
  %switch.selectcmp.case22.i = icmp eq i8 %i.ei, 105
  %switch.selectcmp3.i = or i1 %switch.selectcmp.case11.i, %switch.selectcmp.case22.i
  %i.ej = select i1 %switch.selectcmp3.i, i8 2, i8 1
  store i8 %i.ej, ptr %i.g, align 1
  %i.ek = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 5, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.el = load i8, ptr %i.eh, align 1, !noalias !173, !noundef !5
  %i.em = icmp eq i8 %i.el, 105
  %i.en = zext i1 %i.em to i8
  store i8 %i.en, ptr %i.f, align 1
  %i.eo = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 4, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolINtB5_10CoffSymbolRShNtNtBb_2pe22AnonObjectHeaderBigobjENtNtB9_6traits12ObjectSymbol5flagsCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  br label %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol5flagsCs8aoZCP6pRcV_7objdump.exit

bb.al:                                            ; preds = %bb.m, %bb.l
  %.sroa.0.0.i.ph = phi i64 [ %i.ae, %bb.m ], [ 0, %bb.l ]
  store i64 %.sroa.0.0.i.ph, ptr %i.k, align 8
  %i.ep = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.sroa.04.0.copyload.i = load i32, ptr %i.eq, align 1, !noalias !167 ; 2 uses
  %.not6.i = icmp eq i8 %.val1.i, 0
  %i.er = call i32 @llvm.bswap.i32(i32 %.sroa.04.0.copyload.i)
  %.sroa.01.0.i = select i1 %.not6.i, i32 %.sroa.04.0.copyload.i, i32 %i.er
  %i.es = zext i32 %.sroa.01.0.i to i64
  store i64 %i.es, ptr %i.j, align 8
  %i.et = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 4, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.eu = call noundef i8 @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read3elf6symbolINtB5_9ElfSymbolINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits12ObjectSymbol4kindCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
  store i8 %i.eu, ptr %i.i, align 1
  %i.ev = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.et, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ew = call { i64, i64 } @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read3elf6symbolINtB5_9ElfSymbolINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits12ObjectSymbol7sectionCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) ; 2 uses
  %i.ex = extractvalue { i64, i64 } %i.ew, 0
  %i.ey = extractvalue { i64, i64 } %i.ew, 1
  store i64 %i.ex, ptr %i.h, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ey, ptr %i.ez, align 8
  %i.fa = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ev, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 7, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.fb = call noundef i8 @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read3elf6symbolINtB5_9ElfSymbolINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits12ObjectSymbol5scopeCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
  store i8 %i.fb, ptr %i.g, align 1
  %i.fc = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 5, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.fd = getelementptr inbounds nuw i8, ptr %.val.i, i64 12 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !noalias !173, !noundef !5
  %.mask8.i = and i8 %i.fe, -16
  %i.ff = icmp eq i8 %.mask8.i, 32
  %i.fg = zext i1 %i.ff to i8
  store i8 %i.fg, ptr %i.f, align 1
  %i.fh = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 4, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.fi = load i8, ptr %i.fd, align 1, !noalias !174, !noundef !5
  %i.fj = getelementptr inbounds nuw i8, ptr %.val.i, i64 13
  %i.fk = load i8, ptr %i.fj, align 1, !noalias !174, !noundef !5
  %i.fl = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %i.fi, ptr %i.fl, align 1, !alias.scope !175, !noalias !176
  %i.fm = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 %i.fk, ptr %i.fm, align 2, !alias.scope !175, !noalias !176
  store i8 1, ptr %i.e, align 8, !alias.scope !175, !noalias !176
  br label %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol5flagsCs8aoZCP6pRcV_7objdump.exit

bb.am:                                            ; preds = %bb.o, %bb.n
  %.sroa.0.0.i.ph27 = phi i64 [ %i.ak, %bb.o ], [ 0, %bb.n ]
  store i64 %.sroa.0.0.i.ph27, ptr %i.k, align 8
  %i.fn = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.fo = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %.sroa.02.0.copyload.i = load i64, ptr %i.fo, align 1, !noalias !167 ; 2 uses
  %.not.i = icmp eq i8 %.val3.i, 0
  %i.fp = call i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i)
  %.sroa.0.1.i = select i1 %.not.i, i64 %.sroa.02.0.copyload.i, i64 %i.fp
  store i64 %.sroa.0.1.i, ptr %i.j, align 8
  %i.fq = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 4, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.fr = call noundef i8 @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read3elf6symbolINtB5_9ElfSymbolINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits12ObjectSymbol4kindCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
  store i8 %i.fr, ptr %i.i, align 1
  %i.fs = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ft = call { i64, i64 } @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read3elf6symbolINtB5_9ElfSymbolINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits12ObjectSymbol7sectionCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) ; 2 uses
  %i.fu = extractvalue { i64, i64 } %i.ft, 0
  %i.fv = extractvalue { i64, i64 } %i.ft, 1
  store i64 %i.fu, ptr %i.h, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.fv, ptr %i.fw, align 8
  %i.fx = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 7, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.fy = call noundef i8 @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read3elf6symbolINtB5_9ElfSymbolINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits12ObjectSymbol5scopeCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
  store i8 %i.fy, ptr %i.g, align 1
  %i.fz = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 5, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ga = getelementptr inbounds nuw i8, ptr %.val2.i, i64 4 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !noalias !173, !noundef !5
  %.mask.i = and i8 %i.gb, -16
  %i.gc = icmp eq i8 %.mask.i, 32
  %i.gd = zext i1 %i.gc to i8
  store i8 %i.gd, ptr %i.f, align 1
  %i.ge = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 4, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.gf = load i8, ptr %i.ga, align 1, !noalias !174, !noundef !5
  %i.gg = getelementptr inbounds nuw i8, ptr %.val2.i, i64 5
  %i.gh = load i8, ptr %i.gg, align 1, !noalias !174, !noundef !5
  %i.gi = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %i.gf, ptr %i.gi, align 1, !alias.scope !175, !noalias !176
  %i.gj = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 %i.gh, ptr %i.gj, align 2, !alias.scope !175, !noalias !176
  store i8 1, ptr %i.e, align 8, !alias.scope !175, !noalias !176
  br label %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol5flagsCs8aoZCP6pRcV_7objdump.exit

bb.an:                                            ; preds = %bb.x, %bb.y
  %.sroa.0.0.i1.ph = phi i64 [ %i.bm, %bb.y ], [ 0, %bb.x ]
  store i64 %.sroa.0.0.i1.ph, ptr %i.j, align 8
  %i.gk = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 4, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.gl = call noundef i8 @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5macho6symbolINtB5_11MachOSymbolINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits12ObjectSymbol4kindCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  store i8 %i.gl, ptr %i.i, align 1
  %i.gm = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.gn = call { i64, i64 } @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5macho6symbolINtB5_11MachOSymbolINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits12ObjectSymbol7sectionCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) ; 2 uses
  %i.go = extractvalue { i64, i64 } %i.gn, 0
  %i.gp = extractvalue { i64, i64 } %i.gn, 1
  store i64 %i.go, ptr %i.h, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.gp, ptr %i.gq, align 8
  %i.gr = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 7, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.gs = call noundef i8 @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5macho6symbolINtB5_11MachOSymbolINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits12ObjectSymbol5scopeCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  store i8 %i.gs, ptr %i.g, align 1
  %i.gt = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 5, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.gu = getelementptr inbounds nuw i8, ptr %.val4.i, i64 144 ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 8, !range !10, !noalias !173, !noundef !5
  %i.gw = getelementptr inbounds nuw i8, ptr %.val5.i, i64 6 ; 2 uses
  %.sroa.05.0.copyload.i = load i16, ptr %i.gw, align 1, !noalias !173 ; 2 uses
  %.not7.i = icmp eq i8 %i.gv, 0
  %2 = lshr i16 %.sroa.05.0.copyload.i, 8
  %.sroa.04.0.i = select i1 %.not7.i, i16 %.sroa.05.0.copyload.i, i16 %2
  %i.gx = and i16 %.sroa.04.0.i, 192
  %i.gy = icmp ne i16 %i.gx, 0
  %i.gz = zext i1 %i.gy to i8
  store i8 %i.gz, ptr %i.f, align 1
  %i.ha = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 4, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.hb = getelementptr inbounds nuw i8, ptr %.val5.i, i64 4
  %i.hc = load i8, ptr %i.hb, align 1, !noalias !174, !noundef !5
  %i.hd = load i8, ptr %i.gu, align 8, !range !10, !noalias !174, !noundef !5
  %.sroa.04.0.copyload.i23 = load i16, ptr %i.gw, align 1, !noalias !174 ; 2 uses
  %.not6.i24 = icmp eq i8 %i.hd, 0
  %i.he = call i16 @llvm.bswap.i16(i16 %.sroa.04.0.copyload.i23)
  %.sroa.03.0.i = select i1 %.not6.i24, i16 %.sroa.04.0.copyload.i23, i16 %i.he
  %i.hf = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %i.hc, ptr %i.hf, align 1, !alias.scope !175, !noalias !176
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 %.sroa.03.0.i, ptr %i.hg, align 2, !alias.scope !175, !noalias !176
  store i8 2, ptr %i.e, align 8, !alias.scope !175, !noalias !176
  br label %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol5flagsCs8aoZCP6pRcV_7objdump.exit

bb.ao:                                            ; preds = %bb.z, %bb.aa
  %.sroa.0.0.i1.ph54 = phi i64 [ %i.bs, %bb.aa ], [ 0, %bb.z ]
  store i64 %.sroa.0.0.i1.ph54, ptr %i.j, align 8
  %i.hh = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 4, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.hi = call noundef i8 @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5macho6symbolINtB5_11MachOSymbolINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits12ObjectSymbol4kindCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  store i8 %i.hi, ptr %i.i, align 1
  %i.hj = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.hh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.hk = call { i64, i64 } @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5macho6symbolINtB5_11MachOSymbolINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits12ObjectSymbol7sectionCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) ; 2 uses
  %i.hl = extractvalue { i64, i64 } %i.hk, 0
  %i.hm = extractvalue { i64, i64 } %i.hk, 1
  store i64 %i.hl, ptr %i.h, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.hm, ptr %i.hn, align 8
  %i.ho = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.hj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 7, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.hp = call noundef i8 @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5macho6symbolINtB5_11MachOSymbolINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessEENtNtB9_6traits12ObjectSymbol5scopeCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  store i8 %i.hp, ptr %i.g, align 1
  %i.hq = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ho, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 5, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.hr = getelementptr inbounds nuw i8, ptr %.val6.i, i64 144 ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 8, !range !10, !noalias !173, !noundef !5
  %i.ht = getelementptr inbounds nuw i8, ptr %.val7.i, i64 6 ; 2 uses
  %.sroa.02.0.copyload.i12 = load i16, ptr %i.ht, align 1, !noalias !173 ; 2 uses
  %.not.i13 = icmp eq i8 %i.hs, 0
  %3 = lshr i16 %.sroa.02.0.copyload.i12, 8
  %.sroa.01.0.i14 = select i1 %.not.i13, i16 %.sroa.02.0.copyload.i12, i16 %3
  %i.hu = and i16 %.sroa.01.0.i14, 192
  %i.hv = icmp ne i16 %i.hu, 0
  %i.hw = zext i1 %i.hv to i8
  store i8 %i.hw, ptr %i.f, align 1
  %i.hx = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.hq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 4, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.hy = getelementptr inbounds nuw i8, ptr %.val7.i, i64 4
  %i.hz = load i8, ptr %i.hy, align 1, !noalias !174, !noundef !5
  %i.ia = load i8, ptr %i.hr, align 8, !range !10, !noalias !174, !noundef !5
  %.sroa.01.0.copyload.i = load i16, ptr %i.ht, align 1, !noalias !174 ; 2 uses
  %.not.i21 = icmp eq i8 %i.ia, 0
  %i.ib = call i16 @llvm.bswap.i16(i16 %.sroa.01.0.copyload.i)
  %.sroa.0.0.i22 = select i1 %.not.i21, i16 %.sroa.01.0.copyload.i, i16 %i.ib
  %i.ic = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %i.hz, ptr %i.ic, align 1, !alias.scope !175, !noalias !176
  %i.id = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 %.sroa.0.0.i22, ptr %i.id, align 2, !alias.scope !175, !noalias !176
  store i8 2, ptr %i.e, align 8, !alias.scope !175, !noalias !176
  br label %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol5flagsCs8aoZCP6pRcV_7objdump.exit

bb.ap:                                            ; preds = %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump.exit
  %i.ie = call noundef i64 @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_10CoffSymbolNtNtB9_6traits12ObjectSymbol7addressCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  store i64 %i.ie, ptr %i.k, align 8
  %i.if = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ig = call noundef i64 @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_10CoffSymbolNtNtB9_6traits12ObjectSymbol4sizeCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  store i64 %i.ig, ptr %i.j, align 8
  %i.ih = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.if, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 4, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ii = call noundef i8 @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_10CoffSymbolNtNtB9_6traits12ObjectSymbol4kindCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  store i8 %i.ii, ptr %i.i, align 1
  %i.ij = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ih, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ik = call { i64, i64 } @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_10CoffSymbolNtNtB9_6traits12ObjectSymbol7sectionCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) ; 2 uses
  %i.il = extractvalue { i64, i64 } %i.ik, 0
  %i.im = extractvalue { i64, i64 } %i.ik, 1
  store i64 %i.il, ptr %i.h, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.im, ptr %i.in, align 8
  %i.io = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ij, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 7, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !alias.scope !172, !nonnull !5, !noundef !5
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16 ; 2 uses
  %i.is = load i8, ptr %i.ir, align 1, !noalias !172, !noundef !5 ; 2 uses
  %switch.selectcmp.case14.i = icmp eq i8 %i.is, 2
  %switch.selectcmp.case25.i = icmp eq i8 %i.is, 105
  %switch.selectcmp6.i = or i1 %switch.selectcmp.case14.i, %switch.selectcmp.case25.i
  %i.it = select i1 %switch.selectcmp6.i, i8 2, i8 1
  store i8 %i.it, ptr %i.g, align 1
  %i.iu = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.io, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 5, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.iv = load i8, ptr %i.ir, align 1, !noalias !173, !noundef !5
  %i.iw = icmp eq i8 %i.iv, 105
  %i.ix = zext i1 %i.iw to i8
  store i8 %i.ix, ptr %i.f, align 1
  %i.iy = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.iu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 4, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_10CoffSymbolNtNtB9_6traits12ObjectSymbol5flagsCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  br label %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol5flagsCs8aoZCP6pRcV_7objdump.exit

bb.aq:                                            ; preds = %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol4nameCs8aoZCP6pRcV_7objdump.exit
  %i.iz = call noundef i64 @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_10CoffSymbolNtNtB9_6traits12ObjectSymbol7addressCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  store i64 %i.iz, ptr %i.k, align 8
  %i.ja = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 7, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.jb = call noundef i64 @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_10CoffSymbolNtNtB9_6traits12ObjectSymbol4sizeCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  store i64 %i.jb, ptr %i.j, align 8
  %i.jc = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ja, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 4, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.jd = call noundef i8 @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_10CoffSymbolNtNtB9_6traits12ObjectSymbol4kindCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  store i8 %i.jd, ptr %i.i, align 1
  %i.je = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.jc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.jf = call { i64, i64 } @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_10CoffSymbolNtNtB9_6traits12ObjectSymbol7sectionCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) ; 2 uses
  %i.jg = extractvalue { i64, i64 } %i.jf, 0
  %i.jh = extractvalue { i64, i64 } %i.jf, 1
  store i64 %i.jg, ptr %i.h, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.jh, ptr %i.ji, align 8
  %i.jj = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.je, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 7, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !alias.scope !172, !nonnull !5, !noundef !5
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16 ; 2 uses
  %i.jn = load i8, ptr %i.jm, align 1, !noalias !172, !noundef !5 ; 2 uses
  %switch.selectcmp.case17.i = icmp eq i8 %i.jn, 2
  %switch.selectcmp.case28.i = icmp eq i8 %i.jn, 105
  %switch.selectcmp9.i = or i1 %switch.selectcmp.case17.i, %switch.selectcmp.case28.i
  %i.jo = select i1 %switch.selectcmp9.i, i8 2, i8 1
  store i8 %i.jo, ptr %i.g, align 1
  %i.jp = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.jj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 5, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.jq = load i8, ptr %i.jm, align 1, !noalias !173, !noundef !5
  %i.jr = icmp eq i8 %i.jq, 105
  %i.js = zext i1 %i.jr to i8
  store i8 %i.js, ptr %i.f, align 1
  %i.jt = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.jp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 4, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read4coff6symbolNtB5_10CoffSymbolNtNtB9_6traits12ObjectSymbol5flagsCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  br label %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol5flagsCs8aoZCP6pRcV_7objdump.exit

bb.ar:                                            ; preds = %bb.ab, %.sink.split.i.i
  %.sroa.0.0.i1.ph58 = phi i64 [ 0, %bb.ab ], [ %.sroa.0.0.ph.i.i, %.sink.split.i.i ]
  store i64 %.sroa.0.0.i1.ph58, ptr %i.j, align 8
  %i.ju = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 4, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.jv = call noundef i8 @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader32ENtNtB9_6traits12ObjectSymbol4kindCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
  store i8 %i.jv, ptr %i.i, align 1
  %i.jw = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ju, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.jx = call { i64, i64 } @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader32ENtNtB9_6traits12ObjectSymbol7sectionCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) ; 2 uses
  %i.jy = extractvalue { i64, i64 } %i.jx, 0
  %i.jz = extractvalue { i64, i64 } %i.jx, 1
  store i64 %i.jy, ptr %i.h, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.jz, ptr %i.ka, align 8
  %i.kb = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.jw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 7, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.kc = call noundef i8 @_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader32ENtNtB9_6traits12ObjectSymbol5scopeCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
  store i8 %i.kc, ptr %i.g, align 1
  %i.kd = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.kb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 5, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ke = load i8, ptr %i.az, align 1, !noalias !173, !noundef !5
  %i.kf = icmp eq i8 %i.ke, 111
  %i.kg = zext i1 %i.kf to i8
  store i8 %i.kg, ptr %i.f, align 1
  %i.kh = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.kd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 4, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.ki = call noundef zeroext i1 @_RNvYNtNtCseHTIzroA4w0_6object5xcoff8Symbol32NtNtNtNtB6_4read5xcoff6symbol6Symbol13has_aux_csectCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(18) %.val8.i), !noalias !179
  br i1 %i.ki, label %bb.as, label %_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader32ENtNtB9_6traits12ObjectSymbol5flagsCs8aoZCP6pRcV_7objdump.exit.i

.sink.split.i.i19:                                ; preds = %bb.au, %bb.at, %bb.as
  %.sroa.3.0.ph.i.i = phi i64 [ undef, %bb.as ], [ %i.kx, %bb.au ], [ undef, %bb.at ]
  %.sroa.02.0.ph.i.i = phi i64 [ 0, %bb.as ], [ 1, %bb.au ], [ 0, %bb.at ]
  %.sroa.01.0.ph.i.i = phi i8 [ 0, %bb.as ], [ %.val7.i.i, %bb.au ], [ %.val7.i.i, %bb.at ]
  %.sroa.0.0.ph.i.i20 = phi i8 [ 0, %bb.as ], [ %.val6.i.i, %bb.au ], [ %.val6.i.i, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !179
  br label %_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader32ENtNtB9_6traits12ObjectSymbol5flagsCs8aoZCP6pRcV_7objdump.exit.i

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !179
  %i.kj = load ptr, ptr %i.p, align 8, !alias.scope !180, !noalias !181, !nonnull !5, !align !6, !noundef !5
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 40
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.km = load i64, ptr %i.kl, align 8, !alias.scope !180, !noalias !181, !noundef !5
  %i.kn = getelementptr i8, ptr %.val8.i, i64 17
  %.val3.i.i = load i8, ptr %i.kn, align 1, !noalias !179, !noundef !5
  %i.ko = zext i8 %.val3.i.i to i64
  call void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB4_11SymbolTableNtNtBa_5xcoff12FileHeader32E9aux_csectCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kk, i64 noundef %i.km, i64 noundef %i.ko), !noalias !179
  %i.kp = load ptr, ptr %i.b, align 8, !noalias !179, !noundef !5
  %.not.i.i18 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i18, label %bb.at, label %.sink.split.i.i19

bb.at:                                            ; preds = %bb.as
  %i.kq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !noalias !179, !nonnull !5, !noundef !5 ; 4 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 10
  %.val6.i.i = load i8, ptr %i.ks, align 1, !noalias !179, !noundef !5 ; 2 uses
  %i.kt = getelementptr i8, ptr %i.kr, i64 11
  %.val7.i.i = load i8, ptr %i.kt, align 1, !noalias !179, !noundef !5 ; 2 uses
  %i.ku = call noundef i8 @_RNvYNtNtCseHTIzroA4w0_6object5xcoff10CsectAux32NtNtNtNtB6_4read5xcoff6symbol8CsectAux8sym_typeCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(18) %i.kr), !noalias !179
  %i.kv = icmp eq i8 %i.ku, 2
  br i1 %i.kv, label %bb.au, label %.sink.split.i.i19

bb.au:                                            ; preds = %bb.at
  %.val4.i.i = load i32, ptr %i.kr, align 1, !noalias !179
  %i.kw = call i32 @llvm.bswap.i32(i32 %.val4.i.i)
  %i.kx = zext i32 %i.kw to i64
  br label %.sink.split.i.i19

_RNvXs7_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_11XcoffSymbolNtNtBb_5xcoff12FileHeader32ENtNtB9_6traits12ObjectSymbol5flagsCs8aoZCP6pRcV_7objdump.exit.i: ; preds = %.sink.split.i.i19, %bb.ar
  %.sroa.3.0.i.i = phi i64 [ undef, %bb.ar ], [ %.sroa.3.0.ph.i.i, %.sink.split.i.i19 ]
  %.sroa.02.0.i.i = phi i64 [ 0, %bb.ar ], [ %.sroa.02.0.ph.i.i, %.sink.split.i.i19 ]
  %.sroa.01.0.i.i = phi i8 [ 0, %bb.ar ], [ %.sroa.01.0.ph.i.i, %.sink.split.i.i19 ]
  %.sroa.0.0.i.i = phi i8 [ 0, %bb.ar ], [ %.sroa.0.0.ph.i.i20, %.sink.split.i.i19 ]
  %i.ky = getelementptr i8, ptr %.val8.i, i64 14
  %.val5.i.i = load i16, ptr %i.ky, align 1, !noalias !179
  %i.kz = call noundef i16 @llvm.bswap.i16(i16 %.val5.i.i)
  %.val.i.i17 = load i8, ptr %i.az, align 1, !noalias !179, !noundef !5
  %i.la = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i16 %i.kz, ptr %i.la, align 4, !alias.scope !181, !noalias !180
  %i.lb = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %.val.i.i17, ptr %i.lb, align 1, !alias.scope !181, !noalias !180
  %i.lc = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 %.sroa.0.0.i.i, ptr %i.lc, align 2, !alias.scope !181, !noalias !180
  %i.ld = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  store i8 %.sroa.01.0.i.i, ptr %i.ld, align 1, !alias.scope !181, !noalias !180
  %i.le = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.02.0.i.i, ptr %i.le, align 8, !alias.scope !181, !noalias !180
  %i.lf = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.3.0.i.i, ptr %i.lf, align 8, !alias.scope !181, !noalias !180
  store i8 5, ptr %i.e, align 8, !alias.scope !181, !noalias !180
  br label %_RNvXsj_NtNtCseHTIzroA4w0_6object4read3anyNtB5_6SymbolNtNtB7_6traits12ObjectSymbol5flagsCs8aoZCP6pRcV_7objdump.exit

bb.av:                                            ; preds = %bb.af, %.sink.split.i15.i
  %.sroa.0.0.i1.ph62 = phi i64 [ 0, %bb.af ], [ %.sroa.0.0.ph.i16.i, %.sink.split.i15.i ]
  store i64 %.sroa.0.0.i1.ph62, ptr %i.j, align 8
end_hunk_0
