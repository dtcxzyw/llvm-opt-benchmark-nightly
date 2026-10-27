Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarfdump.dwarfdump.33576e9ee781c344-cgu.00?download=true
inline.NumInlined: 930
inline.NumDeleted: 282
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCs4phXRVW1pDQ_9dwarfdump4main:bb.a
  br label %bb.lw

bb.gp:                                            ; preds = %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !2911
  %.pre179.i = load ptr, ptr %i.ea, align 8, !noalias !2911
  br label %bb.gl

bb.gq:                                            ; preds = %bb.gu, %bb.gl
  %i.tn = phi ptr [ %.pre180.i, %bb.gu ], [ %i.th, %bb.gl ] ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 661
  %i.tp = load i8, ptr %i.to, align 1, !range !31, !noalias !2912, !noundef !7
  %i.tq = trunc nuw i8 %i.tp to i1
  br i1 %i.tq, label %bb.gw, label %bb.gv

bb.gr:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !2911
  invoke fastcc void @_RINvCs4phXRVW1pDQ_9dwarfdump10dump_typesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBH_12endian_slice11EndianSliceNtNtBJ_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.cz, ptr noalias nofree noundef align 8 dereferenceable(40) %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(936) %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %.not57.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %i.th)
          to label %bb.gs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2912

bb.gs:                                            ; preds = %bb.gr
  %i.tr = load i64, ptr %i.cz, align 8, !range !12, !noalias !2911, !noundef !7 ; 2 uses
  %.not61.i = icmp eq i64 %i.tr, -1
  br i1 %.not61.i, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ts = load <2 x i64>, ptr %.sroa.25.0..sroa_idx273, align 8, !noalias !2919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !2911
  br label %bb.lw

bb.gu:                                            ; preds = %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !2911
  %.pre180.i = load ptr, ptr %i.ea, align 8, !noalias !2911
  br label %bb.gq

bb.gv:                                            ; preds = %bb.gz, %bb.gq
  %i.tt = phi ptr [ %.pre181.i, %bb.gz ], [ %i.tn, %bb.gq ] ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 656
  %i.tv = load i8, ptr %i.tu, align 8, !range !31, !noalias !2912, !noundef !7
  %i.tw = trunc nuw i8 %i.tv to i1
  br i1 %i.tw, label %bb.hb, label %bb.ha

bb.gw:                                            ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !2911
  invoke fastcc void @_RINvCs4phXRVW1pDQ_9dwarfdump9dump_lineINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.cy, ptr noalias nofree noundef align 8 dereferenceable(40) %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(936) %i.df)
          to label %bb.gx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2912

bb.gx:                                            ; preds = %bb.gw
  %i.tx = load i64, ptr %i.cy, align 8, !range !12, !noalias !2911, !noundef !7 ; 2 uses
  %.not62.i = icmp eq i64 %i.tx, -1
  br i1 %.not62.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.ty = load <2 x i64>, ptr %.sroa.25.0..sroa_idx272, align 8, !noalias !2919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !2911
  br label %bb.lw

bb.gz:                                            ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !2911
  %.pre181.i = load ptr, ptr %i.ea, align 8, !noalias !2911
  br label %bb.gv

bb.ha:                                            ; preds = %bb.hv, %bb.gv
  %i.tz = phi ptr [ %.pre182.i, %bb.hv ], [ %i.tt, %bb.gv ] ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 657
  %i.ub = load i8, ptr %i.ua, align 1, !range !31, !noalias !2912, !noundef !7
  %i.uc = trunc nuw i8 %i.ub to i1
  br i1 %i.uc, label %bb.hx, label %bb.hw

bb.hb:                                            ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !2911
  call void @llvm.experimental.noalias.scope.decl(metadata !2920)
  %i.ud = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull @310, ptr noundef nonnull inttoptr (i64 27 to ptr))
          to label %.noexc228 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc228:                                        ; preds = %bb.hb
  %.not.i214 = icmp eq ptr %i.ud, null
  br i1 %.not.i214, label %bb.hf, label %bb.hc

bb.hc:                                            ; preds = %.noexc228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2921
  %i.ue = ptrtoint ptr %i.ud to i64               ; 2 uses
  %i.uf = and i64 %i.ue, 3
  switch i64 %i.uf, label %default.unreachable [
    i64 2, label %_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread386
    i64 3, label %bb.hd
    i64 0, label %_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread386
    i64 1, label %bb.he
  ], !prof !11

bb.hd:                                            ; preds = %bb.hc
  %i.ug = icmp ult ptr %i.ud, inttoptr (i64 188978561024 to ptr)
  %i.uh = and i64 %i.ue, 1095216660480
  %i.ui = icmp ne i64 %i.uh, 1095216660480
  call void @llvm.assume(i1 %i.ug), !noalias !2912
  call void @llvm.assume(i1 %i.ui), !noalias !2912
  br label %_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread386

bb.he:                                            ; preds = %bb.hc
  %i.uj = getelementptr i8, ptr %i.ud, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.uj) ], !noalias !2912
  store ptr %i.uj, ptr %i.mz, align 8, !alias.scope !2922, !noalias !2921
  store i8 3, ptr %i.b, align 8, !alias.scope !2922, !noalias !2921
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.mz)
          to label %_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread386 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread386: ; preds = %bb.hc, %bb.hc, %bb.hd, %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2921
  br label %bb.hu

bb.hf:                                            ; preds = %.noexc228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2923
  invoke void @_RNvMNtNtCsi68uqYEhoRA_5gimli4read4addrINtB2_9DebugAddrINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE7headersB2w_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.my)
          to label %.noexc230 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc230:                                        ; preds = %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2923
  invoke void @_RNvMs2_NtNtCsi68uqYEhoRA_5gimli4read4addrINtB5_14AddrHeaderIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2F_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %.noexc231 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc231:                                        ; preds = %.noexc230
  %i.uk = load i8, ptr %i.na, align 16, !range !14, !noalias !2923, !noundef !7 ; 2 uses
  %i.ul = icmp eq i8 %i.uk, -1
  br i1 %i.ul, label %_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread388, label %.lr.ph122.i

_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread388: ; preds = %.noexc242, %.noexc231
  %i.um = load <2 x i64>, ptr %i.k, align 16, !noalias !2923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2923
  store i64 0, ptr %i.cx, align 8, !alias.scope !2920, !noalias !2912
  store <2 x i64> %i.um, ptr %.sroa.454.0..sroa_idx.i, align 8, !alias.scope !2920, !noalias !2912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2923
  br label %bb.hu

.lr.ph122.i:                                      ; preds = %.noexc231, %.noexc242
  %i.un = phi i8 [ %i.vl, %.noexc242 ], [ %i.uk, %.noexc231 ] ; 2 uses
  %.sroa.029.sroa.4.0.copyload.i = load i64, ptr %.sroa.029.sroa.4.0..sroa_idx.i, align 8, !noalias !2923
  %i.uo = load <2 x ptr>, ptr %.sroa.029.sroa.5.0..sroa_idx.i, align 16, !noalias !2923 ; 3 uses
  %.sroa.029.sroa.7.0.copyload.i = load i64, ptr %.sroa.029.sroa.7.0..sroa_idx.i, align 16, !noalias !2923
  %.sroa.029.sroa.8.0.copyload.i = load i8, ptr %.sroa.029.sroa.8.0..sroa_idx.i, align 8, !noalias !2923
  %.sroa.029.sroa.10.0.copyload.i = load ptr, ptr %.sroa.029.sroa.10.0..sroa_idx.i, align 16, !noalias !2923 ; 2 uses
  %.sroa.029.sroa.11.0.copyload.i = load i64, ptr %.sroa.029.sroa.11.0..sroa_idx.i, align 8, !noalias !2923
  %.sroa.5.sroa.4.0.copyload.i = load i32, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !2923 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2923
  %.not66.i219 = icmp eq i8 %i.un, 2
  br i1 %.not66.i219, label %_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread, label %bb.hg

bb.hg:                                            ; preds = %.lr.ph122.i
  %.sroa.14.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.5.sroa.4.0.copyload.i to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2923
  store i64 %.sroa.029.sroa.4.0.copyload.i, ptr %i.j, align 8, !noalias !2923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2923
  store i32 %.sroa.5.sroa.4.0.copyload.i, ptr %i.i, align 4, !noalias !2923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2923
  store i32 %.sroa.5.sroa.4.0.copyload.i, ptr %i.h, align 4, !noalias !2923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2923
  store ptr %i.j, ptr %i.g, align 8, !noalias !2923
  store ptr @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt, ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !2923
  store ptr %i.nb, ptr %i.nc, align 8, !noalias !2923
  store ptr @_RNvXsm_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8LowerHex3fmt, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !2923
  store ptr %i.h, ptr %i.nd, align 8, !noalias !2923
  store ptr @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt, ptr %.sroa.444.0..sroa_idx.i, align 8, !noalias !2923
  %i.up = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull @311, ptr noundef nonnull %i.g)
          to label %.noexc232 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc232:                                        ; preds = %bb.hg
  %.not67.i220 = icmp eq ptr %i.up, null
  br i1 %.not67.i220, label %bb.hi, label %bb.hh

_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread: ; preds = %.lr.ph122.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2923
  br label %bb.hv

bb.hh:                                            ; preds = %.noexc232
  invoke void @_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cx, ptr noundef nonnull %i.up)
          to label %.noexc233 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc233:                                        ; preds = %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2923
  br label %_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit

bb.hi:                                            ; preds = %.noexc232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2923
  %i.uq = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull @312, ptr noundef nonnull inttoptr (i64 19 to ptr))
          to label %.noexc234 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc234:                                        ; preds = %bb.hi
  %.not68.i221 = icmp eq ptr %i.uq, null
  br i1 %.not68.i221, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %.noexc234
  invoke void @_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cx, ptr noundef nonnull %i.uq)
          to label %_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hk:                                            ; preds = %.noexc234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2923
  %i.ur = extractelement <2 x ptr> %i.uo, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ur) ], !noalias !2912
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.029.sroa.10.0.copyload.i) ], !noalias !2912
  %i.us = extractelement <2 x ptr> %i.uo, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.us) ], !noalias !2912
  store <2 x ptr> %i.uo, ptr %i.f, align 16, !noalias !2923
  store i64 %.sroa.029.sroa.7.0.copyload.i, ptr %.sroa.5.0..sroa_idx102.i, align 16, !noalias !2923
  store i8 %.sroa.029.sroa.8.0.copyload.i, ptr %.sroa.6103.0..sroa_idx.i, align 8, !noalias !2923
  store ptr %.sroa.029.sroa.10.0.copyload.i, ptr %.sroa.7105.0..sroa_idx.i, align 16, !noalias !2923
  store i64 %.sroa.029.sroa.11.0.copyload.i, ptr %.sroa.8106.0..sroa_idx.i, align 8, !noalias !2923
  store i8 %i.un, ptr %.sroa.9.0..sroa_idx.i218, align 16, !noalias !2923
  store i32 %.sroa.5.sroa.4.0.copyload.i, ptr %i.ne, align 8, !noalias !2923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2923
  invoke void @_RNvMs5_NtNtCsi68uqYEhoRA_5gimli4read4addrINtB5_13AddrEntryIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2E_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %.noexc236 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc236:                                        ; preds = %bb.hk
  %i.ut = load i64, ptr %i.e, align 8, !range !16, !noalias !2923, !noundef !7
  %i.uu = trunc nuw i64 %i.ut to i1
  br i1 %i.uu, label %._crit_edge.i227, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %.noexc236
  %i.uv = shl i16 %.sroa.14.sroa.0.0.extract.trunc.i, 1
  %i.uw = and i16 %i.uv, 254
  br label %bb.hl

._crit_edge.i227:                                 ; preds = %.noexc236, %.noexc240
  %i.ux = load <2 x i64>, ptr %i.nf, align 8, !noalias !2923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2923
  store i64 0, ptr %i.cx, align 8, !alias.scope !2920, !noalias !2912
  store <2 x i64> %i.ux, ptr %.sroa.454.0..sroa_idx.i, align 8, !alias.scope !2920, !noalias !2912
  br label %.noexc241

bb.hl:                                            ; preds = %.noexc240, %.lr.ph.i222
  %i.uy = load i64, ptr %i.nf, align 8, !range !16, !noalias !2923, !noundef !7
  %i.uz = load i64, ptr %i.ng, align 8, !noalias !2923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2923
  %i.va = trunc nuw i64 %i.uy to i1
  br i1 %i.va, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2923
  store i64 %i.uz, ptr %i.d, align 8, !noalias !2923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2923
  store ptr %i.d, ptr %i.c, align 8, !noalias !2923
  store <2 x ptr> <ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr null>, ptr %.sroa.459.0..sroa_idx.i, align 8, !noalias !2923
  store i16 %i.uw, ptr %.sroa.464.0..sroa_idx.i, align 8, !noalias !2923
  %i.vb = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull @313, ptr noundef nonnull %i.c)
          to label %.noexc237 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc237:                                        ; preds = %bb.hm
  %.not70.i226 = icmp eq ptr %i.vb, null
  br i1 %.not70.i226, label %bb.hr, label %bb.ho

bb.hn:                                            ; preds = %bb.hl
  %i.vc = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull @314, ptr noundef nonnull inttoptr (i64 5 to ptr))
          to label %.noexc238 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc238:                                        ; preds = %bb.hn
  %.not69.i223 = icmp eq ptr %i.vc, null
  br i1 %.not69.i223, label %bb.ht, label %bb.hs

bb.ho:                                            ; preds = %.noexc237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2924
  %i.vd = ptrtoint ptr %i.vb to i64               ; 2 uses
  %i.ve = and i64 %i.vd, 3
  switch i64 %i.ve, label %default.unreachable [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit72.i
    i64 3, label %bb.hp
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit72.i
    i64 1, label %bb.hq
  ], !prof !11

bb.hp:                                            ; preds = %bb.ho
  %i.vf = icmp ult ptr %i.vb, inttoptr (i64 188978561024 to ptr)
  %i.vg = and i64 %i.vd, 1095216660480
  %i.vh = icmp ne i64 %i.vg, 1095216660480
  call void @llvm.assume(i1 %i.vf), !noalias !2912
  call void @llvm.assume(i1 %i.vh), !noalias !2912
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit72.i

bb.hq:                                            ; preds = %bb.ho
  %i.vi = getelementptr i8, ptr %i.vb, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vi) ], !noalias !2912
  store ptr %i.vi, ptr %i.nh, align 8, !alias.scope !2925, !noalias !2924
  store i8 3, ptr %i.a, align 8, !alias.scope !2925, !noalias !2924
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.nh)
          to label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit72.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit72.i: ; preds = %bb.hq, %bb.hp, %bb.ho, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2924
  store i64 2, ptr %i.cx, align 8, !alias.scope !2920, !noalias !2912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2923
  br label %.noexc241

bb.hr:                                            ; preds = %.noexc237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2923
  invoke void @_RNvMs5_NtNtCsi68uqYEhoRA_5gimli4read4addrINtB5_13AddrEntryIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2E_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %.noexc240 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc240:                                        ; preds = %bb.hr
  %i.vj = load i64, ptr %i.e, align 8, !range !16, !noalias !2923, !noundef !7
  %i.vk = trunc nuw i64 %i.vj to i1
  br i1 %i.vk, label %._crit_edge.i227, label %bb.hl

bb.hs:                                            ; preds = %.noexc238
  invoke void @_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cx, ptr noundef nonnull %i.vc)
          to label %.noexc241 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ht:                                            ; preds = %.noexc238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2923
  invoke void @_RNvMs2_NtNtCsi68uqYEhoRA_5gimli4read4addrINtB5_14AddrHeaderIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2F_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %.noexc242 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc242:                                        ; preds = %bb.ht
  %i.vl = load i8, ptr %i.na, align 16, !range !14, !noalias !2923, !noundef !7 ; 2 uses
  %i.vm = icmp eq i8 %i.vl, -1
  br i1 %i.vm, label %_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread388, label %.lr.ph122.i

.noexc241:                                        ; preds = %bb.hs, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit72.i, %._crit_edge.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2923
  br label %_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit

_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit: ; preds = %.noexc233, %.noexc241, %bb.hj
  %.pr.pr = load i64, ptr %i.cx, align 8, !noalias !2911 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2923
  %.not63.i = icmp eq i64 %.pr.pr, -1
  br i1 %.not63.i, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread388, %_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread386, %_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit
  %i.vn = phi i64 [ 2, %_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread386 ], [ %.pr.pr, %_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit ], [ 0, %_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread388 ]
  %i.vo = load <2 x i64>, ptr %.sroa.454.0..sroa_idx.i, align 8, !noalias !2919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !2911
  br label %bb.lw

bb.hv:                                            ; preds = %_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread, %_RINvCs4phXRVW1pDQ_9dwarfdump9dump_addrINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !2911
  %.pre182.i = load ptr, ptr %i.ea, align 8, !noalias !2911
  br label %bb.ha

bb.hw:                                            ; preds = %bb.iu, %bb.ha
  %i.vp = phi ptr [ %.pre183.i, %bb.iu ], [ %i.tz, %bb.ha ] ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 663
  %i.vr = load i8, ptr %i.vq, align 1, !range !31, !noalias !2912, !noundef !7
  %i.vs = trunc nuw i8 %i.vr to i1
  br i1 %i.vs, label %bb.iw, label %bb.iv

bb.hx:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !2911
  call void @llvm.experimental.noalias.scope.decl(metadata !2926)
  %i.vt = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull @55, ptr noundef nonnull inttoptr (i64 33 to ptr))
          to label %.noexc200 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc200:                                        ; preds = %bb.hx
  %.not.i194 = icmp eq ptr %i.vt, null
  br i1 %.not.i194, label %bb.ib, label %bb.hy

bb.hy:                                            ; preds = %.noexc200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2927
  %i.vu = ptrtoint ptr %i.vt to i64               ; 2 uses
  %i.vv = and i64 %i.vu, 3
  switch i64 %i.vv, label %default.unreachable [
    i64 2, label %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread392
    i64 3, label %bb.hz
    i64 0, label %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread392
    i64 1, label %bb.ia
  ], !prof !11

bb.hz:                                            ; preds = %bb.hy
  %i.vw = icmp ult ptr %i.vt, inttoptr (i64 188978561024 to ptr)
  %i.vx = and i64 %i.vu, 1095216660480
  %i.vy = icmp ne i64 %i.vx, 1095216660480
  call void @llvm.assume(i1 %i.vw), !noalias !2912
  call void @llvm.assume(i1 %i.vy), !noalias !2912
  br label %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread392

bb.ia:                                            ; preds = %bb.hy
  %i.vz = getelementptr i8, ptr %i.vt, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vz) ], !noalias !2912
  store ptr %i.vz, ptr %i.nj, align 8, !alias.scope !2928, !noalias !2927
  store i8 3, ptr %i.o, align 8, !alias.scope !2928, !noalias !2927
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.nj)
          to label %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread392 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread392: ; preds = %bb.hy, %bb.hy, %bb.hz, %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2927
  store i64 2, ptr %i.cw, align 8, !alias.scope !2926, !noalias !2912
  br label %bb.it

bb.ib:                                            ; preds = %.noexc200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2929
  invoke void @_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read7arangesINtB4_12DebugArangesINtNtB6_8relocate14RelocateReaderINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE7headersB2F_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ni)
          to label %.noexc202 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc202:                                        ; preds = %bb.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2929
  invoke void @_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read7arangesINtB5_16ArangeHeaderIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2K_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ae)
          to label %.noexc203 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc203:                                        ; preds = %.noexc202
  %i.wa = load i8, ptr %i.nk, align 8, !range !14, !noalias !2929, !noundef !7 ; 2 uses
  %i.wb = icmp eq i8 %i.wa, -1
  br i1 %i.wb, label %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread395, label %.lr.ph165.i

_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread395: ; preds = %.noexc208, %.noexc203
  %i.wc = load <2 x i64>, ptr %i.ad, align 16, !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2929
  store i64 0, ptr %i.cw, align 8, !alias.scope !2926, !noalias !2912
  store <2 x i64> %i.wc, ptr %.sroa.4101.0..sroa_idx.i, align 8, !alias.scope !2926, !noalias !2912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2929
  br label %bb.it

.lr.ph165.i:                                      ; preds = %.noexc203, %.noexc208
  %i.wd = phi i8 [ %i.wq, %.noexc208 ], [ %i.wa, %.noexc203 ] ; 2 uses
  %.sroa.054.sroa.4.0.copyload.i = load i64, ptr %.sroa.054.sroa.4.0..sroa_idx.i, align 8, !noalias !2929
  %.sroa.054.sroa.5.0.copyload.i = load i64, ptr %.sroa.054.sroa.5.0..sroa_idx.i, align 16, !noalias !2929
  %i.we = load <2 x ptr>, ptr %.sroa.054.sroa.6.0..sroa_idx.i, align 8, !noalias !2929 ; 3 uses
  %.sroa.054.sroa.8.0.copyload.i = load i64, ptr %.sroa.054.sroa.8.0..sroa_idx.i, align 8, !noalias !2929
  %.sroa.054.sroa.9.0.copyload.i = load i8, ptr %.sroa.054.sroa.9.0..sroa_idx.i, align 16, !noalias !2929
  %.sroa.054.sroa.11.0.copyload.i = load ptr, ptr %.sroa.054.sroa.11.0..sroa_idx.i, align 8, !noalias !2929 ; 2 uses
  %.sroa.054.sroa.12.0.copyload.i = load i64, ptr %.sroa.054.sroa.12.0..sroa_idx.i, align 16, !noalias !2929
  %.sroa.556.sroa.4.0.copyload.i = load i32, ptr %.sroa.556.sroa.4.0..sroa.556.0..sroa_idx.sroa_idx.i, align 16, !noalias !2929 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2929
  %.not119.i = icmp eq i8 %i.wd, 2
  br i1 %.not119.i, label %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread, label %bb.ic

bb.ic:                                            ; preds = %.lr.ph165.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2929
  store i64 %.sroa.054.sroa.4.0.copyload.i, ptr %i.ac, align 8, !noalias !2929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2929
  store i32 %.sroa.556.sroa.4.0.copyload.i, ptr %i.ab, align 4, !noalias !2929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2929
  store i64 %.sroa.054.sroa.5.0.copyload.i, ptr %i.aa, align 8, !noalias !2929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2929
  store i32 %.sroa.556.sroa.4.0.copyload.i, ptr %i.z, align 4, !noalias !2929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2929
  store ptr %i.ac, ptr %i.y, align 8, !noalias !2929
  store ptr @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !2929
  store ptr %i.nl, ptr %i.nm, align 8, !noalias !2929
  store ptr @_RNvXsm_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8LowerHex3fmt, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !2929
  store ptr %i.aa, ptr %i.nn, align 8, !noalias !2929
  store ptr @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt, ptr %.sroa.470.0..sroa_idx.i, align 8, !noalias !2929
  store ptr %i.z, ptr %i.no, align 8, !noalias !2929
  store ptr @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt, ptr %.sroa.474.0..sroa_idx.i, align 8, !noalias !2929
  %i.wf = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull @56, ptr noundef nonnull %i.y)
          to label %.noexc204 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc204:                                        ; preds = %bb.ic
  %.not120.i = icmp eq ptr %i.wf, null
  br i1 %.not120.i, label %bb.ie, label %bb.id

_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread: ; preds = %.lr.ph165.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2929
  br label %bb.iu

bb.id:                                            ; preds = %.noexc204
  invoke void @_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cw, ptr noundef nonnull %i.wf)
          to label %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ie:                                            ; preds = %.noexc204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2929
  %i.wg = extractelement <2 x ptr> %i.we, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wg) ], !noalias !2912
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.054.sroa.11.0.copyload.i) ], !noalias !2912
  %i.wh = extractelement <2 x ptr> %i.we, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wh) ], !noalias !2912
  store <2 x ptr> %i.we, ptr %i.x, align 16, !noalias !2929
  store i64 %.sroa.054.sroa.8.0.copyload.i, ptr %.sroa.5147.0..sroa_idx.i, align 16, !noalias !2929
  store i8 %.sroa.054.sroa.9.0.copyload.i, ptr %.sroa.6148.0..sroa_idx.i, align 8, !noalias !2929
  store ptr %.sroa.054.sroa.11.0.copyload.i, ptr %.sroa.7150.0..sroa_idx.i, align 16, !noalias !2929
  store i64 %.sroa.054.sroa.12.0.copyload.i, ptr %.sroa.8151.0..sroa_idx.i, align 8, !noalias !2929
  store i8 %i.wd, ptr %.sroa.9.0..sroa_idx.i, align 16, !noalias !2929
  store i32 %.sroa.556.sroa.4.0.copyload.i, ptr %i.np, align 8, !noalias !2929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2929
  invoke void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read7arangesINtB5_15ArangeEntryIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE8next_rawB2J_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.x)
          to label %.noexc206 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc206:                                        ; preds = %bb.ie
  %i.wi = load i64, ptr %i.w, align 8, !range !20, !noalias !2929, !noundef !7 ; 2 uses
  %i.wj = icmp eq i64 %i.wi, 2
  br i1 %i.wj, label %._crit_edge.i199, label %.lr.ph.i198

._crit_edge.i199:                                 ; preds = %.noexc206, %.noexc212
  %i.wk = load <2 x i64>, ptr %.sroa.478.0..sroa_idx.i, align 8, !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2929
  store i64 0, ptr %i.cw, align 8, !alias.scope !2926, !noalias !2912
  store <2 x i64> %i.wk, ptr %.sroa.4101.0..sroa_idx.i, align 8, !alias.scope !2926, !noalias !2912
  br label %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread762

.lr.ph.i198:                                      ; preds = %.noexc206, %.noexc212
  %i.wl = phi i64 [ %i.xa, %.noexc212 ], [ %i.wi, %.noexc206 ]
  %i.wm = load <2 x i64>, ptr %.sroa.478.0..sroa_idx.i, align 8, !noalias !2929
  %.sroa.478.0.copyload.i = load i64, ptr %.sroa.478.0..sroa_idx.i, align 8, !noalias !2929
  %.sroa.680.0.copyload.i = load i64, ptr %.sroa.680.0..sroa_idx.i, align 8, !noalias !2929 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2929
  %i.wn = trunc nuw i64 %i.wl to i1
  br i1 %i.wn, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %.lr.ph.i198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2929
  store <2 x i64> %i.wm, ptr %i.p, align 16, !noalias !2929
  store i64 %.sroa.680.0.copyload.i, ptr %.sroa.623.0..sroa_idx.i, align 16, !noalias !2929
  invoke void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read7arangesINtB5_15ArangeEntryIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE11convert_rawB2J_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.x, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.p)
          to label %.noexc207 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc207:                                        ; preds = %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2929
  %i.wo = load i64, ptr %i.v, align 8, !range !20, !noalias !2929, !noundef !7
  %i.wp = load <2 x i64>, ptr %.sroa.491.0..sroa_idx.i, align 8, !noalias !2929 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2929
  switch i64 %i.wo, label %bb.ii [
    i64 2, label %bb.ih
    i64 0, label %bb.ij
  ]

bb.ig:                                            ; preds = %.lr.ph.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2929
  invoke void @_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read7arangesINtB5_16ArangeHeaderIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2K_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ae)
          to label %.noexc208 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc208:                                        ; preds = %bb.ig
  %i.wq = load i8, ptr %i.nk, align 8, !range !14, !noalias !2929, !noundef !7 ; 2 uses
  %i.wr = icmp eq i8 %i.wq, -1
  br i1 %i.wr, label %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread395, label %.lr.ph165.i

bb.ih:                                            ; preds = %.noexc207
  store i64 0, ptr %i.cw, align 8, !alias.scope !2926, !noalias !2912
  store <2 x i64> %i.wp, ptr %.sroa.4101.0..sroa_idx.i, align 8, !alias.scope !2926, !noalias !2912
  br label %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread762

bb.ii:                                            ; preds = %.noexc207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2929
  store <2 x i64> %i.wp, ptr %i.u, align 16, !noalias !2929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2929
  store ptr %i.u, ptr %i.t, align 8, !noalias !2929
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4106.0..sroa_idx.i, align 8, !noalias !2929
  store ptr %i.nr, ptr %i.ns, align 8, !noalias !2929
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4110.0..sroa_idx.i, align 8, !noalias !2929
  %i.ws = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull @57, ptr noundef nonnull %i.t)
          to label %.noexc209 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc209:                                        ; preds = %bb.ii
  %.not122.i = icmp eq ptr %i.ws, null
  br i1 %.not122.i, label %bb.in, label %bb.ik

bb.ij:                                            ; preds = %.noexc207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2929
  store i64 %.sroa.478.0.copyload.i, ptr %i.s, align 8, !noalias !2929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2929
  store i64 %.sroa.680.0.copyload.i, ptr %i.r, align 8, !noalias !2929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2929
  store ptr %i.s, ptr %i.q, align 8, !noalias !2929
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4114.0..sroa_idx.i, align 8, !noalias !2929
  store ptr %i.r, ptr %i.nq, align 8, !noalias !2929
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4118.0..sroa_idx.i, align 8, !noalias !2929
  %i.wt = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull @58, ptr noundef nonnull %i.q)
          to label %.noexc210 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc210:                                        ; preds = %bb.ij
  %.not121.i = icmp eq ptr %i.wt, null
  br i1 %.not121.i, label %bb.is, label %bb.ip

bb.ik:                                            ; preds = %.noexc209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2930
  %i.wu = ptrtoint ptr %i.ws to i64               ; 2 uses
  %i.wv = and i64 %i.wu, 3
  switch i64 %i.wv, label %default.unreachable [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit124.i
    i64 3, label %bb.il
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit124.i
    i64 1, label %bb.im
  ], !prof !11

bb.il:                                            ; preds = %bb.ik
  %i.ww = icmp ult ptr %i.ws, inttoptr (i64 188978561024 to ptr)
  %i.wx = and i64 %i.wu, 1095216660480
  %i.wy = icmp ne i64 %i.wx, 1095216660480
  call void @llvm.assume(i1 %i.ww), !noalias !2912
  call void @llvm.assume(i1 %i.wy), !noalias !2912
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit124.i

bb.im:                                            ; preds = %bb.ik
  %i.wz = getelementptr i8, ptr %i.ws, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wz) ], !noalias !2912
  store ptr %i.wz, ptr %i.nu, align 8, !alias.scope !2931, !noalias !2930
  store i8 3, ptr %i.n, align 8, !alias.scope !2931, !noalias !2930
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.nu)
          to label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit124.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit124.i: ; preds = %bb.im, %bb.il, %bb.ik, %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2930
  store i64 2, ptr %i.cw, align 8, !alias.scope !2926, !noalias !2912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2929
  br label %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread762

bb.in:                                            ; preds = %.noexc209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2929
  br label %bb.io

bb.io:                                            ; preds = %bb.is, %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2929
  invoke void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read7arangesINtB5_15ArangeEntryIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE8next_rawB2J_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.x)
          to label %.noexc212 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc212:                                        ; preds = %bb.io
  %i.xa = load i64, ptr %i.w, align 8, !range !20, !noalias !2929, !noundef !7 ; 2 uses
  %i.xb = icmp eq i64 %i.xa, 2
  br i1 %i.xb, label %._crit_edge.i199, label %.lr.ph.i198

bb.ip:                                            ; preds = %.noexc210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2932
  %i.xc = ptrtoint ptr %i.wt to i64               ; 2 uses
  %i.xd = and i64 %i.xc, 3
  switch i64 %i.xd, label %default.unreachable [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit126.i
    i64 3, label %bb.iq
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit126.i
    i64 1, label %bb.ir
  ], !prof !11

bb.iq:                                            ; preds = %bb.ip
  %i.xe = icmp ult ptr %i.wt, inttoptr (i64 188978561024 to ptr)
  %i.xf = and i64 %i.xc, 1095216660480
  %i.xg = icmp ne i64 %i.xf, 1095216660480
  call void @llvm.assume(i1 %i.xe), !noalias !2912
  call void @llvm.assume(i1 %i.xg), !noalias !2912
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit126.i

bb.ir:                                            ; preds = %bb.ip
  %i.xh = getelementptr i8, ptr %i.wt, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xh) ], !noalias !2912
  store ptr %i.xh, ptr %i.nt, align 8, !alias.scope !2933, !noalias !2932
  store i8 3, ptr %i.m, align 8, !alias.scope !2933, !noalias !2932
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.nt)
          to label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit126.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit126.i: ; preds = %bb.ir, %bb.iq, %bb.ip, %bb.ip
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2932
  store i64 2, ptr %i.cw, align 8, !alias.scope !2926, !noalias !2912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2929
  br label %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread762

bb.is:                                            ; preds = %.noexc210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2929
  br label %bb.io

_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread762: ; preds = %._crit_edge.i199, %bb.ih, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit124.i, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit126.i
  %.pr.pr394694 = phi i64 [ 2, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit126.i ], [ 2, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit124.i ], [ 0, %bb.ih ], [ 0, %._crit_edge.i199 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2929
  br label %bb.it

_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit: ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2929
  %.pr.pr394.pre = load i64, ptr %i.cw, align 8, !noalias !2911 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2929
  %.not64.i = icmp eq i64 %.pr.pr394.pre, -1
  br i1 %.not64.i, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread762, %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread395, %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread392, %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit
  %i.xi = phi i64 [ 2, %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread392 ], [ %.pr.pr394.pre, %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit ], [ 0, %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread395 ], [ %.pr.pr394694, %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread762 ]
  %i.xj = load <2 x i64>, ptr %.sroa.4101.0..sroa_idx.i, align 8, !noalias !2919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !2911
  br label %bb.lw

bb.iu:                                            ; preds = %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit.thread, %_RINvCs4phXRVW1pDQ_9dwarfdump12dump_arangesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !2911
  %.pre183.i = load ptr, ptr %i.ea, align 8, !noalias !2911
  br label %bb.hw

bb.iv:                                            ; preds = %bb.jp, %bb.hw
  %i.xk = phi ptr [ %.pre184.i, %bb.jp ], [ %i.vp, %bb.hw ] ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 658
  %i.xm = load i8, ptr %i.xl, align 2, !range !31, !noalias !2912, !noundef !7
  %i.xn = trunc nuw i8 %i.xm to i1
  br i1 %i.xn, label %bb.jr, label %bb.jq

bb.iw:                                            ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !2911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !2911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cu, ptr noundef nonnull align 8 dereferenceable(40) %i.dm, i64 40, i1 false), !noalias !2911
  invoke void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read8pubnames13DebugPubNamesINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEINtB8_7SectionBX_E4loadNCINvB2D_9dump_fileB23_Es0_0NtB2D_5ErrorEB2D_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.cv, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.cu)
          to label %bb.ix unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2912

bb.ix:                                            ; preds = %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !2911
  call void @llvm.experimental.noalias.scope.decl(metadata !2934)
  call void @llvm.experimental.noalias.scope.decl(metadata !2935)
  %i.xo = load i8, ptr %i.nv, align 16, !range !10, !alias.scope !2935, !noalias !2911, !noundef !7 ; 2 uses
  %i.xp = icmp eq i8 %i.xo, 2
  br i1 %i.xp, label %bb.iy, label %bb.iz, !prof !22

bb.iy:                                            ; preds = %bb.ix
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !2936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull readonly align 16 dereferenceable(56) %i.cv, i64 24, i1 false), !noalias !2937
  br label %.invoke.i

bb.iz:                                            ; preds = %bb.ix
  %i.xq = load <2 x ptr>, ptr %i.cv, align 16, !alias.scope !2938, !noalias !2911 ; 3 uses
  %.sroa.6292.0.copyload = load i64, ptr %.sroa.6292.0..sroa_idx, align 16, !alias.scope !2938, !noalias !2911
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !2938, !noalias !2911
  %.sroa.8293.0.copyload = load ptr, ptr %.sroa.8293.0..sroa_idx, align 16, !alias.scope !2938, !noalias !2911 ; 2 uses
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !2938, !noalias !2911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !2911
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i153.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i154)
  %i.xr = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull @113, ptr noundef nonnull inttoptr (i64 35 to ptr))
          to label %.noexc185 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc185:                                        ; preds = %bb.iz
  %.not.i155 = icmp eq ptr %i.xr, null
  br i1 %.not.i155, label %bb.jd, label %bb.ja

bb.ja:                                            ; preds = %.noexc185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2939
  %i.xs = ptrtoint ptr %i.xr to i64               ; 2 uses
  %i.xt = and i64 %i.xs, 3
  switch i64 %i.xt, label %default.unreachable [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i156
    i64 3, label %bb.jb
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i156
    i64 1, label %bb.jc
  ], !prof !11

bb.jb:                                            ; preds = %bb.ja
  %i.xu = icmp ult ptr %i.xr, inttoptr (i64 188978561024 to ptr)
  %i.xv = and i64 %i.xs, 1095216660480
  %i.xw = icmp ne i64 %i.xv, 1095216660480
  call void @llvm.assume(i1 %i.xu), !noalias !2912
  call void @llvm.assume(i1 %i.xw), !noalias !2912
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i156

bb.jc:                                            ; preds = %bb.ja
  %i.xx = getelementptr i8, ptr %i.xr, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xx) ], !noalias !2912
  store ptr %i.xx, ptr %i.nw, align 8, !alias.scope !2940, !noalias !2939
  store i8 3, ptr %i.af, align 8, !alias.scope !2940, !noalias !2939
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.nw)
          to label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i156 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i156: ; preds = %bb.jc, %bb.jb, %bb.ja, %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2939
  br label %bb.jo

bb.jd:                                            ; preds = %.noexc185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2941
  %i.xy = extractelement <2 x ptr> %i.xq, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xy) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8293.0.copyload) ]
  %i.xz = extractelement <2 x ptr> %i.xq, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xz) ]
  store <2 x ptr> %i.xq, ptr %i.an, align 16, !noalias !2941
  store i64 %.sroa.6292.0.copyload, ptr %.sroa.017.sroa.5.0..sroa_idx.i161, align 16, !noalias !2941
  store i8 %.sroa.7.0.copyload, ptr %.sroa.017.sroa.6.0..sroa_idx.i162, align 8, !noalias !2941
  store ptr %.sroa.8293.0.copyload, ptr %.sroa.017.sroa.8.0..sroa_idx.i163, align 16, !noalias !2941
  store i64 %.sroa.9.0.copyload, ptr %.sroa.017.sroa.9.0..sroa_idx.i164, align 8, !noalias !2941
  store i8 %i.xo, ptr %.sroa.017.sroa.10.0..sroa_idx.i165, align 16, !noalias !2941
  store i8 0, ptr %.sroa.418.0..sroa_idx.i166, align 8, !noalias !2941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2941
  invoke void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read8pubnamesINtB5_15PubNamesSetIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2K_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.an)
          to label %.noexc187 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc187:                                        ; preds = %bb.jd
  %i.ya = load i8, ptr %i.nx, align 8, !range !14, !noalias !2941, !noundef !7 ; 2 uses
  %i.yb = icmp eq i8 %i.ya, -1
  br i1 %i.yb, label %._crit_edge62.i, label %.lr.ph61.i

._crit_edge62.i:                                  ; preds = %.noexc192, %.noexc187
  %i.yc = load <2 x i64>, ptr %i.am, align 16, !noalias !2941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2941
  br label %bb.jn

.lr.ph61.i:                                       ; preds = %.noexc187, %.noexc192
  %i.yd = phi i8 [ %i.yo, %.noexc192 ], [ %i.ya, %.noexc187 ] ; 2 uses
  %.sroa.03.i153.sroa.0.0.copyload = load i64, ptr %i.am, align 16, !noalias !2941 ; 2 uses
  %.sroa.03.i153.sroa.6.0.copyload = load i64, ptr %.sroa.03.i153.sroa.6.0..sroa_idx, align 8, !noalias !2941 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.03.i153.sroa.7, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.03.i153.sroa.7.0..sroa_idx, i64 72, i1 false), !noalias !2941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i154, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.521.0..sroa_idx.i167, i64 7, i1 false), !noalias !2941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2941
  %.not29.i173 = icmp eq i8 %i.yd, 2
  br i1 %.not29.i173, label %bb.jp, label %bb.je

bb.je:                                            ; preds = %.lr.ph61.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2941
  store i64 %.sroa.03.i153.sroa.0.0.copyload, ptr %i.al, align 8, !noalias !2941
  store i64 %.sroa.03.i153.sroa.6.0.copyload, ptr %.sroa.03.i153.sroa.6.0..sroa_idx376, align 8, !noalias !2941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.oa, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.03.i153.sroa.7, i64 72, i1 false), !noalias !2941
  store i8 %i.yd, ptr %.sroa.2.0..sroa_idx.i168, align 8, !noalias !2941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i169, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i154, i64 7, i1 false), !noalias !2941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2941
  %i.ye = load i8, ptr %i.ny, align 2, !range !19, !noalias !2941, !noundef !7
  %i.yf = load i16, ptr %i.nz, align 8, !noalias !2941, !noundef !7
  %i.yg = load i64, ptr %i.oa, align 8, !noalias !2941, !noundef !7
  invoke fastcc void @_RINvCs4phXRVW1pDQ_9dwarfdump19dump_pub_set_headerINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, i8 noundef %i.ye, i16 noundef %i.yf, i64 noundef %.sroa.03.i153.sroa.6.0.copyload, i64 noundef %i.yg, i64 noundef %.sroa.03.i153.sroa.0.0.copyload, i1 noundef zeroext false)
          to label %.noexc188 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc188:                                        ; preds = %bb.je
  %i.yh = load i64, ptr %i.ak, align 8, !range !12, !noalias !2941, !noundef !7 ; 2 uses
  %.not30.i174 = icmp eq i64 %i.yh, -1
  br i1 %.not30.i174, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %.noexc188
  %i.yi = load <2 x i64>, ptr %.sroa.11297.0..sroa_idx, align 8, !noalias !2942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2941
  br label %bb.jm

bb.jg:                                            ; preds = %.noexc188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2941
  invoke void @_RNvMs1_NtNtCsi68uqYEhoRA_5gimli4read6lookupINtB5_6PubSetINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5itemsB2y_(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.al)
          to label %.noexc189 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc189:                                        ; preds = %bb.jg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.aj, ptr noundef nonnull align 8 dereferenceable(160) %i.ag, i64 160, i1 false), !noalias !2941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2941
  invoke void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8pubnamesINtB5_17PubNamesEntryIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2M_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.aj)
          to label %.noexc190 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc190:                                        ; preds = %.noexc189
  %i.yj = load i8, ptr %i.ob, align 16, !range !14, !noalias !2941, !noundef !7 ; 2 uses
  %i.yk = icmp eq i8 %i.yj, -1
  br i1 %i.yk, label %._crit_edge.i181, label %.lr.ph.i175

._crit_edge.i181:                                 ; preds = %.noexc190, %.noexc193
  %i.yl = load <2 x i64>, ptr %i.ai, align 16, !noalias !2941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2941
  br label %bb.jl

.lr.ph.i175:                                      ; preds = %.noexc190, %.noexc193
  %i.ym = phi i8 [ %i.yr, %.noexc193 ], [ %i.yj, %.noexc190 ]
  %.sroa.024.sroa.4.0.copyload.i176 = load i64, ptr %.sroa.024.sroa.4.0..sroa_idx.i170, align 8, !noalias !2941
  %.sroa.024.sroa.6.0.copyload.i177 = load ptr, ptr %.sroa.024.sroa.6.0..sroa_idx.i171, align 16, !noalias !2941 ; 2 uses
  %.sroa.024.sroa.7.0.copyload.i178 = load i64, ptr %.sroa.024.sroa.7.0..sroa_idx.i172, align 8, !noalias !2941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2941
  %.not31.i179 = icmp eq i8 %i.ym, 2
  br i1 %.not31.i179, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %.lr.ph.i175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2941
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.024.sroa.6.0.copyload.i177) ], !noalias !2912
  invoke fastcc void @_RINvCs4phXRVW1pDQ_9dwarfdump14dump_pub_entryINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, i64 noundef %.sroa.024.sroa.4.0.copyload.i176, ptr %.sroa.024.sroa.6.0.copyload.i177, i64 %.sroa.024.sroa.7.0.copyload.i178)
          to label %.noexc191 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc191:                                        ; preds = %bb.jh
  %i.yn = load i64, ptr %i.ah, align 8, !range !12, !noalias !2941, !noundef !7 ; 2 uses
  %.not32.i180 = icmp eq i64 %i.yn, -1
  br i1 %.not32.i180, label %bb.jk, label %bb.jj

bb.ji:                                            ; preds = %.lr.ph.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2941
  invoke void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read8pubnamesINtB5_15PubNamesSetIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2K_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.an)
          to label %.noexc192 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc192:                                        ; preds = %bb.ji
  %i.yo = load i8, ptr %i.nx, align 8, !range !14, !noalias !2941, !noundef !7 ; 2 uses
  %i.yp = icmp eq i8 %i.yo, -1
  br i1 %i.yp, label %._crit_edge62.i, label %.lr.ph61.i

bb.jj:                                            ; preds = %.noexc191
  %i.yq = load <2 x i64>, ptr %.sroa.11297.0..sroa_idx298, align 8, !noalias !2942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2941
  br label %bb.jl

bb.jk:                                            ; preds = %.noexc191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2941
  invoke void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8pubnamesINtB5_17PubNamesEntryIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2M_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.aj)
          to label %.noexc193 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc193:                                        ; preds = %bb.jk
  %i.yr = load i8, ptr %i.ob, align 16, !range !14, !noalias !2941, !noundef !7 ; 2 uses
  %i.ys = icmp eq i8 %i.yr, -1
  br i1 %i.ys, label %._crit_edge.i181, label %.lr.ph.i175

bb.jl:                                            ; preds = %bb.jj, %._crit_edge.i181
  %.sroa.0295.2 = phi i64 [ 0, %._crit_edge.i181 ], [ %i.yn, %bb.jj ]
  %i.yt = phi <2 x i64> [ %i.yl, %._crit_edge.i181 ], [ %i.yq, %bb.jj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2941
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jf
  %.sroa.0295.0 = phi i64 [ %.sroa.0295.2, %bb.jl ], [ %i.yh, %bb.jf ]
  %i.yu = phi <2 x i64> [ %i.yt, %bb.jl ], [ %i.yi, %bb.jf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2941
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %._crit_edge62.i
  %.sroa.0295.1 = phi i64 [ 0, %._crit_edge62.i ], [ %.sroa.0295.0, %bb.jm ]
  %i.yv = phi <2 x i64> [ %i.yc, %._crit_edge62.i ], [ %i.yu, %bb.jm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2941
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i156
  %.sroa.0295.3.ph = phi i64 [ 2, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i156 ], [ %.sroa.0295.1, %bb.jn ]
  %i.yw = phi <2 x i64> [ undef, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i156 ], [ %i.yv, %bb.jn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i153.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i154)
  br label %bb.lw

bb.jp:                                            ; preds = %.lr.ph61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2941
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i153.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i154)
  %.pre184.i = load ptr, ptr %i.ea, align 8, !noalias !2911
  br label %bb.iv

bb.jq:                                            ; preds = %bb.kk, %bb.iv
  %i.yx = phi ptr [ %.pre185.i, %bb.kk ], [ %i.xk, %bb.iv ] ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 664
  %i.yz = load i8, ptr %i.yy, align 8, !range !31, !noalias !2912, !noundef !7
  %i.za = trunc nuw i8 %i.yz to i1
  br i1 %i.za, label %bb.km, label %bb.kl

bb.jr:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !2911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !2911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, ptr noundef nonnull align 8 dereferenceable(40) %i.dm, i64 40, i1 false), !noalias !2911
  invoke void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read8pubnames16DebugGnuPubNamesINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEINtB8_7SectionB10_E4loadNCINvB2G_9dump_fileB26_Es0_0NtB2G_5ErrorEB2G_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.cs)
          to label %bb.js unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2912

bb.js:                                            ; preds = %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !2911
  call void @llvm.experimental.noalias.scope.decl(metadata !2943)
  call void @llvm.experimental.noalias.scope.decl(metadata !2944)
  %i.zb = load i8, ptr %i.oc, align 16, !range !10, !alias.scope !2944, !noalias !2911, !noundef !7 ; 2 uses
  %i.zc = icmp eq i8 %i.zb, 2
  br i1 %i.zc, label %bb.jt, label %bb.ju, !prof !22

bb.jt:                                            ; preds = %bb.js
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !2945
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull readonly align 16 dereferenceable(56) %i.ct, i64 24, i1 false), !noalias !2946
  br label %.invoke.i

bb.ju:                                            ; preds = %bb.js
  %i.zd = load <2 x ptr>, ptr %i.ct, align 16, !alias.scope !2947, !noalias !2911 ; 3 uses
  %.sroa.6350.0.copyload = load i64, ptr %.sroa.6350.0..sroa_idx, align 16, !alias.scope !2947, !noalias !2911
  %.sroa.7351.0.copyload = load i8, ptr %.sroa.7351.0..sroa_idx, align 8, !alias.scope !2947, !noalias !2911
  %.sroa.8353.0.copyload = load ptr, ptr %.sroa.8353.0..sroa_idx, align 16, !alias.scope !2947, !noalias !2911 ; 2 uses
  %.sroa.9354.0.copyload = load i64, ptr %.sroa.9354.0..sroa_idx, align 8, !alias.scope !2947, !noalias !2911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !2911
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.ze = invoke noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull @171, ptr noundef nonnull inttoptr (i64 43 to ptr))
          to label %.noexc144 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc144:                                        ; preds = %bb.ju
  %.not.i138 = icmp eq ptr %i.ze, null
  br i1 %.not.i138, label %bb.jy, label %bb.jv

bb.jv:                                            ; preds = %.noexc144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2948
  %i.zf = ptrtoint ptr %i.ze to i64               ; 2 uses
  %i.zg = and i64 %i.zf, 3
  switch i64 %i.zg, label %default.unreachable [
    i64 2, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i
    i64 3, label %bb.jw
    i64 0, label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i
    i64 1, label %bb.jx
  ], !prof !11

bb.jw:                                            ; preds = %bb.jv
  %i.zh = icmp ult ptr %i.ze, inttoptr (i64 188978561024 to ptr)
  %i.zi = and i64 %i.zf, 1095216660480
  %i.zj = icmp ne i64 %i.zi, 1095216660480
  call void @llvm.assume(i1 %i.zh), !noalias !2912
  call void @llvm.assume(i1 %i.zj), !noalias !2912
  br label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i

bb.jx:                                            ; preds = %bb.jv
  %i.zk = getelementptr i8, ptr %i.ze, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zk) ], !noalias !2912
  store ptr %i.zk, ptr %i.od, align 8, !alias.scope !2949, !noalias !2948
  store i8 3, ptr %i.ao, align 8, !alias.scope !2949, !noalias !2948
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.od)
          to label %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i: ; preds = %bb.jx, %bb.jw, %bb.jv, %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2948
  br label %bb.kj

bb.jy:                                            ; preds = %.noexc144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2950
  %i.zl = extractelement <2 x ptr> %i.zd, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zl) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8353.0.copyload) ]
  %i.zm = extractelement <2 x ptr> %i.zd, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zm) ]
  store <2 x ptr> %i.zd, ptr %i.aw, align 16, !noalias !2950
  store i64 %.sroa.6350.0.copyload, ptr %.sroa.017.sroa.5.0..sroa_idx.i, align 16, !noalias !2950
  store i8 %.sroa.7351.0.copyload, ptr %.sroa.017.sroa.6.0..sroa_idx.i, align 8, !noalias !2950
  store ptr %.sroa.8353.0.copyload, ptr %.sroa.017.sroa.8.0..sroa_idx.i, align 16, !noalias !2950
  store i64 %.sroa.9354.0.copyload, ptr %.sroa.017.sroa.9.0..sroa_idx.i, align 8, !noalias !2950
  store i8 %i.zb, ptr %.sroa.017.sroa.10.0..sroa_idx.i, align 16, !noalias !2950
  store i8 1, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !2950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2950
  invoke void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read8pubnamesINtB5_15PubNamesSetIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2K_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aw)
          to label %.noexc146 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc146:                                        ; preds = %bb.jy
  %i.zn = load i8, ptr %i.oe, align 8, !range !14, !noalias !2950, !noundef !7 ; 2 uses
  %i.zo = icmp eq i8 %i.zn, -1
  br i1 %i.zo, label %._crit_edge64.i, label %.lr.ph63.i

._crit_edge64.i:                                  ; preds = %.noexc151, %.noexc146
  %i.zp = load <2 x i64>, ptr %i.av, align 16, !noalias !2950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2950
  br label %bb.ki

.lr.ph63.i:                                       ; preds = %.noexc146, %.noexc151
  %i.zq = phi i8 [ %i.aae, %.noexc151 ], [ %i.zn, %.noexc146 ] ; 2 uses
  %.sroa.03.i.sroa.0.0.copyload = load i64, ptr %i.av, align 16, !noalias !2950 ; 2 uses
  %.sroa.03.i.sroa.6.0.copyload = load i64, ptr %.sroa.03.i.sroa.6.0..sroa_idx, align 8, !noalias !2950 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.03.i.sroa.7, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.03.i.sroa.7.0..sroa_idx, i64 72, i1 false), !noalias !2950
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.521.0..sroa_idx.i, i64 7, i1 false), !noalias !2950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2950
  %.not29.i = icmp eq i8 %i.zq, 2
  br i1 %.not29.i, label %bb.kk, label %bb.jz

bb.jz:                                            ; preds = %.lr.ph63.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2950
  store i64 %.sroa.03.i.sroa.0.0.copyload, ptr %i.au, align 8, !noalias !2950
  store i64 %.sroa.03.i.sroa.6.0.copyload, ptr %.sroa.03.i.sroa.6.0..sroa_idx369, align 8, !noalias !2950
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.oh, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.03.i.sroa.7, i64 72, i1 false), !noalias !2950
  store i8 %i.zq, ptr %.sroa.2.0..sroa_idx.i140, align 8, !noalias !2950
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i141, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i, i64 7, i1 false), !noalias !2950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2950
  %i.zr = load i8, ptr %i.of, align 2, !range !19, !noalias !2950, !noundef !7
  %i.zs = load i16, ptr %i.og, align 8, !noalias !2950, !noundef !7
  %i.zt = load i64, ptr %i.oh, align 8, !noalias !2950, !noundef !7
  invoke fastcc void @_RINvCs4phXRVW1pDQ_9dwarfdump19dump_pub_set_headerINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, i8 noundef %i.zr, i16 noundef %i.zs, i64 noundef %.sroa.03.i.sroa.6.0.copyload, i64 noundef %i.zt, i64 noundef %.sroa.03.i.sroa.0.0.copyload, i1 noundef zeroext true)
          to label %.noexc147 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc147:                                        ; preds = %bb.jz
  %i.zu = load i64, ptr %i.at, align 8, !range !12, !noalias !2950, !noundef !7 ; 2 uses
  %.not30.i = icmp eq i64 %i.zu, -1
  br i1 %.not30.i, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %.noexc147
  %i.zv = load <2 x i64>, ptr %.sroa.11359.0..sroa_idx, align 8, !noalias !2951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2950
  br label %bb.kh

bb.kb:                                            ; preds = %.noexc147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2950
  invoke void @_RNvMs1_NtNtCsi68uqYEhoRA_5gimli4read6lookupINtB5_6PubSetINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5itemsB2y_(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.au)
          to label %.noexc148 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc148:                                        ; preds = %bb.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.as, ptr noundef nonnull align 8 dereferenceable(160) %i.ap, i64 160, i1 false), !noalias !2950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2950
  invoke void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8pubnamesINtB5_17PubNamesEntryIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2M_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ar, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.as)
          to label %.noexc149 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc149:                                        ; preds = %.noexc148
  %i.zw = load i8, ptr %i.oi, align 16, !range !14, !noalias !2950, !noundef !7 ; 2 uses
  %i.zx = icmp eq i8 %i.zw, -1
  br i1 %i.zx, label %._crit_edge.i143, label %.lr.ph.i142

._crit_edge.i143:                                 ; preds = %.noexc149, %.noexc152
  %i.zy = load <2 x i64>, ptr %i.ar, align 16, !noalias !2950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2950
  br label %bb.kg

.lr.ph.i142:                                      ; preds = %.noexc149, %.noexc152
  %i.zz = phi i8 [ %i.aah, %.noexc152 ], [ %i.zw, %.noexc149 ]
  %.sroa.024.sroa.4.0.copyload.i = load i64, ptr %.sroa.024.sroa.4.0..sroa_idx.i, align 8, !noalias !2950
  %.sroa.024.sroa.6.0.copyload.i = load ptr, ptr %.sroa.024.sroa.6.0..sroa_idx.i, align 16, !noalias !2950
  %.sroa.024.sroa.7.0.copyload.i = load i64, ptr %.sroa.024.sroa.7.0..sroa_idx.i, align 8, !noalias !2950
  %.sroa.526.sroa.4.0.copyload.i = load i8, ptr %.sroa.526.sroa.4.0..sroa.526.0..sroa_idx.sroa_idx.i, align 8, !noalias !2950 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2950
  %.not31.i = icmp eq i8 %i.zz, 2
  br i1 %.not31.i, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %.lr.ph.i142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2950
  %i.aaa = icmp slt i8 %.sroa.526.sroa.4.0.copyload.i, 0
  %i.aab = lshr i8 %.sroa.526.sroa.4.0.copyload.i, 4
  %i.aac = and i8 %i.aab, 7
  invoke fastcc void @_RINvCs4phXRVW1pDQ_9dwarfdump18dump_gnu_pub_entryINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBP_12endian_slice11EndianSliceNtNtBR_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, i64 noundef %.sroa.024.sroa.4.0.copyload.i, i1 noundef zeroext %i.aaa, i8 noundef %i.aac, ptr %.sroa.024.sroa.6.0.copyload.i, i64 %.sroa.024.sroa.7.0.copyload.i)
          to label %.noexc150 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc150:                                        ; preds = %bb.kc
  %i.aad = load i64, ptr %i.aq, align 8, !range !12, !noalias !2950, !noundef !7 ; 2 uses
  %.not32.i = icmp eq i64 %i.aad, -1
  br i1 %.not32.i, label %bb.kf, label %bb.ke

bb.kd:                                            ; preds = %.lr.ph.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2950
  invoke void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read8pubnamesINtB5_15PubNamesSetIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2K_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aw)
          to label %.noexc151 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc151:                                        ; preds = %bb.kd
  %i.aae = load i8, ptr %i.oe, align 8, !range !14, !noalias !2950, !noundef !7 ; 2 uses
  %i.aaf = icmp eq i8 %i.aae, -1
  br i1 %i.aaf, label %._crit_edge64.i, label %.lr.ph63.i

bb.ke:                                            ; preds = %.noexc150
  %i.aag = load <2 x i64>, ptr %.sroa.11359.0..sroa_idx360, align 8, !noalias !2951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2950
  br label %bb.kg

bb.kf:                                            ; preds = %.noexc150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2950
  invoke void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8pubnamesINtB5_17PubNamesEntryIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2M_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ar, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.as)
          to label %.noexc152 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc152:                                        ; preds = %bb.kf
  %i.aah = load i8, ptr %i.oi, align 16, !range !14, !noalias !2950, !noundef !7 ; 2 uses
  %i.aai = icmp eq i8 %i.aah, -1
  br i1 %i.aai, label %._crit_edge.i143, label %.lr.ph.i142

bb.kg:                                            ; preds = %bb.ke, %._crit_edge.i143
  %.sroa.0357.2 = phi i64 [ 0, %._crit_edge.i143 ], [ %i.aad, %bb.ke ]
  %i.aaj = phi <2 x i64> [ %i.zy, %._crit_edge.i143 ], [ %i.aag, %bb.ke ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2950
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.ka
  %.sroa.0357.0 = phi i64 [ %.sroa.0357.2, %bb.kg ], [ %i.zu, %bb.ka ]
  %i.aak = phi <2 x i64> [ %i.aaj, %bb.kg ], [ %i.zv, %bb.ka ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2950
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %._crit_edge64.i
  %.sroa.0357.1 = phi i64 [ 0, %._crit_edge64.i ], [ %.sroa.0357.0, %bb.kh ]
  %i.aal = phi <2 x i64> [ %i.zp, %._crit_edge64.i ], [ %i.aak, %bb.kh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2950
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i
  %.sroa.0357.3.ph = phi i64 [ 2, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i ], [ %.sroa.0357.1, %bb.ki ]
  %i.aam = phi <2 x i64> [ undef, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit.i ], [ %i.aal, %bb.ki ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  br label %bb.lw

bb.kk:                                            ; preds = %.lr.ph63.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2950
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %.pre185.i = load ptr, ptr %i.ea, align 8, !noalias !2911
  br label %bb.jq

bb.kl:                                            ; preds = %bb.ks, %bb.jq
  %i.aan = phi ptr [ %.pre186.i, %bb.ks ], [ %i.yx, %bb.jq ] ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 659
  %i.aap = load i8, ptr %i.aao, align 1, !range !31, !noalias !2912, !noundef !7
  %i.aaq = trunc nuw i8 %i.aap to i1
  br i1 %i.aaq, label %bb.ku, label %bb.kt

bb.km:                                            ; preds = %bb.jq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !2911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !2911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !2911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %i.dm, i64 40, i1 false), !noalias !2911
  invoke void @_RINvYINtNtNtCsi68uqYEhoRA_5gimli4read8pubtypes13DebugPubTypesINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEINtB8_7SectionBX_E4loadNCINvB2D_9dump_fileB23_Es0_0NtB2D_5ErrorEB2D_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.cq, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.cp)
          to label %bb.kn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2912

bb.kn:                                            ; preds = %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !2911
  call void @llvm.experimental.noalias.scope.decl(metadata !2952)
  call void @llvm.experimental.noalias.scope.decl(metadata !2953)
  %i.aar = load i8, ptr %i.oj, align 8, !range !10, !alias.scope !2953, !noalias !2911, !noundef !7
  %i.aas = icmp eq i8 %i.aar, 2
  br i1 %i.aas, label %bb.ko, label %bb.kp, !prof !22

bb.ko:                                            ; preds = %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !2954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.cq, i64 24, i1 false), !noalias !2955
  br label %.invoke.i

bb.kp:                                            ; preds = %bb.kn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cr, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.cq, i64 56, i1 false), !alias.scope !2956, !noalias !2911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !2911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !2911
  invoke fastcc void @_RINvCs4phXRVW1pDQ_9dwarfdump13dump_pubtypesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBK_12endian_slice11EndianSliceNtNtBM_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.co, ptr noalias nofree noundef align 8 dereferenceable(40) %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cr)
          to label %bb.kq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2912

bb.kq:                                            ; preds = %bb.kp
  %i.aat = load i64, ptr %i.co, align 8, !range !12, !noalias !2911, !noundef !7 ; 2 uses
  %.not67.i = icmp eq i64 %i.aat, -1
end_hunk_0
