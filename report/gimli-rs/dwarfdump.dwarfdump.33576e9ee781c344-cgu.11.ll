Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarfdump.dwarfdump.33576e9ee781c344-cgu.11?download=true
inline.NumInlined: 387
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB17_20sort_unstable_by_keyjNCINvMs3_NtNtB1b_4read6abbrevNtB2F_18AbbreviationsCache8populateINtNtB2H_8relocate14RelocateReaderINtNtB2H_12endian_slice11EndianSliceNtNtB1b_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5h_:bb.a
  %i.ib = icmp ult i64 %.val.i.else.val.i.i, %.val1.i.pre.i.i
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.sroa.23.1.i5.i ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !alias.scope !258, !noalias !260
  store i64 %i.id, ptr %.sroa.015.1.i7.i, align 8, !alias.scope !258, !noalias !260
  store i64 %.val.i.else.val.i.i, ptr %i.ic, align 8, !alias.scope !258, !noalias !260
  %i.ie = zext i1 %i.ib to i64
  %i.if = add i64 %.sroa.23.1.i5.i, %i.ie         ; 2 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i, i64 8 ; 2 uses
  %i.ig = icmp eq ptr %.sroa.13.1.sroa.gep.i.i, %i.hx
  br i1 %i.ig, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB35_18AbbreviationsCache8populateINtNtB37_8relocate14RelocateReaderINtNtB37_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5H_.exit.i, label %.cont.i.i

.lr.ph.i.i36:                                     ; preds = %bb.p, %.lr.ph.i.i36
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i36 ], [ %.sroa.13.030.i.i, %bb.p ] ; 2 uses
  %.sroa.015.032.i.i = phi ptr [ %i.im, %.lr.ph.i.i36 ], [ %i.hv, %bb.p ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.ir, %.lr.ph.i.i36 ], [ 0, %bb.p ] ; 2 uses
  %.val.i11.i.i = load i64, ptr %.sroa.13.033.i.i, align 8, !alias.scope !258, !noalias !261, !noundef !6 ; 2 uses
  %i.ih = icmp ult i64 %.val.i11.i.i, %.val1.i.pre.i.i
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.sroa.23.031.i.i ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !alias.scope !258, !noalias !261
  store i64 %i.ij, ptr %.sroa.015.032.i.i, align 8, !alias.scope !258, !noalias !261
  store i64 %.val.i11.i.i, ptr %i.ii, align 8, !alias.scope !258, !noalias !261
  %i.ik = zext i1 %i.ih to i64
  %i.il = add i64 %.sroa.23.031.i.i, %i.ik        ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 16 ; 3 uses
  %.val.i13.i.i37 = load i64, ptr %i.im, align 8, !alias.scope !258, !noalias !262, !noundef !6 ; 2 uses
  %i.in = icmp ult i64 %.val.i13.i.i37, %.val1.i.pre.i.i
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.il ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !alias.scope !258, !noalias !262
  store i64 %i.ip, ptr %.sroa.13.033.i.i, align 8, !alias.scope !258, !noalias !262
  store i64 %.val.i13.i.i37, ptr %i.io, align 8, !alias.scope !258, !noalias !262
  %i.iq = zext i1 %i.in to i64
  %i.ir = add i64 %i.il, %i.iq                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 24 ; 3 uses
  %i.is = icmp ult ptr %.sroa.13.0.i.i, %i.hy
  br i1 %i.is, label %.lr.ph.i.i36, label %.preheader.i.i35

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB35_18AbbreviationsCache8populateINtNtB37_8relocate14RelocateReaderINtNtB37_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5H_.exit.i: ; preds = %.cont.i.i, %.preheader.i.i35
  %.sroa.23.1.i.lcssa.i = phi i64 [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i35 ], [ %i.if, %.cont.i.i ] ; 2 uses
  %.sroa.015.1.i.lcssa.i = phi ptr [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i35 ], [ %.sroa.13.1.i6.i, %.cont.i.i ]
  %i.it = icmp ult i64 %i.hw, %.val1.i.pre.i.i
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.sroa.23.1.i.lcssa.i ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !alias.scope !258, !noalias !260
  store i64 %i.iv, ptr %.sroa.015.1.i.lcssa.i, align 8, !alias.scope !258, !noalias !260
  store i64 %i.hw, ptr %i.iu, align 8, !alias.scope !258, !noalias !260
  %i.iw = zext i1 %i.it to i64
  %i.ix = add i64 %.sroa.23.1.i.lcssa.i, %i.iw    ; 5 uses
  %.not7.i = icmp ult i64 %i.ix, %.sroa.15.090151
  br i1 %.not7.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffset12split_at_mutCs4phXRVW1pDQ_9dwarfdump.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB35_18AbbreviationsCache8populateINtNtB37_8relocate14RelocateReaderINtNtB37_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5H_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffset12split_at_mutCs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB35_18AbbreviationsCache8populateINtNtB37_8relocate14RelocateReaderINtNtB37_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5H_.exit.i
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffset14swap_uncheckedCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 %.sroa.0.091150, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.090151, i64 noundef 0, i64 noundef %i.ix, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.091150, i64 %i.ix ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = xor i64 %i.ix, -1
  %i.jb = add i64 %.sroa.15.090151, %i.ja
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB17_20sort_unstable_by_keyjNCINvMs3_NtNtB1b_4read6abbrevNtB2F_18AbbreviationsCache8populateINtNtB2H_8relocate14RelocateReaderINtNtB2H_12endian_slice11EndianSliceNtNtB1b_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5h_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.091150, i64 noundef %i.ix, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.089152, i32 noundef %i.hg, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.r:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB15_20sort_unstable_by_keyjNCINvMs3_NtNtB19_4read6abbrevNtB2D_18AbbreviationsCache8populateINtNtB2F_8relocate14RelocateReaderINtNtB2F_12endian_slice11EndianSliceNtNtB19_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5f_.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 %i.ht
  %.sroa.023.0.val = load i64, ptr %.sroa.023.089152, align 8, !noundef !6
  %.val = load i64, ptr %i.jc, align 8, !noundef !6
  %i.jd = icmp ult i64 %.sroa.023.0.val, %.val
  br i1 %i.jd, label %bb.p, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffset14swap_uncheckedCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 %.sroa.0.091150, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.090151, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.jf = load i64, ptr %i.je, align 8, !alias.scope !265, !noundef !6 ; 2 uses
  %i.jg = getelementptr [8 x i8], ptr %.sroa.0.091150, i64 %.sroa.15.090151 ; 3 uses
  %i.jh = getelementptr i8, ptr %i.jg, i64 -8     ; 2 uses
  %.sroa.13.030.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 16 ; 3 uses
  %i.ji = icmp ult ptr %.sroa.13.030.i.i45, %i.jh
  %.val1.i.pre.i.i46 = load i64, ptr %.sroa.0.091150, align 8, !alias.scope !266, !noalias !6 ; 4 uses
  br i1 %i.ji, label %.lr.ph.i.i60, label %.preheader.i.i47

.preheader.i.i47:                                 ; preds = %.lr.ph.i.i60, %bb.s
  %.sroa.23.0.lcssa.i.i48 = phi i64 [ 0, %bb.s ], [ %i.ka, %.lr.ph.i.i60 ] ; 2 uses
  %.sroa.015.0.lcssa.i.i49 = phi ptr [ %i.je, %bb.s ], [ %i.jv, %.lr.ph.i.i60 ] ; 2 uses
  %.sroa.13.0.lcssa.i.i50 = phi ptr [ %.sroa.13.030.i.i45, %bb.s ], [ %.sroa.13.0.i.i66, %.lr.ph.i.i60 ] ; 2 uses
  %i.jj = icmp eq ptr %.sroa.13.0.lcssa.i.i50, %i.jg
  br i1 %i.jj, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB3r_18AbbreviationsCache8populateINtNtB3t_8relocate14RelocateReaderINtNtB3t_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0EB63_.exit.i, label %.cont.i.i51

.cont.i.i51:                                      ; preds = %.preheader.i.i47, %.cont.i.i51
  %.sroa.015.1.i7.i52 = phi ptr [ %.sroa.13.1.i6.i53, %.cont.i.i51 ], [ %.sroa.015.0.lcssa.i.i49, %.preheader.i.i47 ]
  %.sroa.13.1.i6.i53 = phi ptr [ %.sroa.13.1.sroa.gep.i.i56, %.cont.i.i51 ], [ %.sroa.13.0.lcssa.i.i50, %.preheader.i.i47 ] ; 4 uses
  %.sroa.23.1.i5.i54 = phi i64 [ %i.jo, %.cont.i.i51 ], [ %.sroa.23.0.lcssa.i.i48, %.preheader.i.i47 ] ; 2 uses
  %.val.i.else.val.i.i55 = load i64, ptr %.sroa.13.1.i6.i53, align 8, !alias.scope !265, !noalias !267, !noundef !6 ; 2 uses
  %i.jk = icmp uge i64 %.val1.i.pre.i.i46, %.val.i.else.val.i.i55
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %.sroa.23.1.i5.i54 ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !alias.scope !265, !noalias !267
  store i64 %i.jm, ptr %.sroa.015.1.i7.i52, align 8, !alias.scope !265, !noalias !267
  store i64 %.val.i.else.val.i.i55, ptr %i.jl, align 8, !alias.scope !265, !noalias !267
  %i.jn = zext i1 %i.jk to i64
  %i.jo = add i64 %.sroa.23.1.i5.i54, %i.jn       ; 2 uses
  %.sroa.13.1.sroa.gep.i.i56 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i53, i64 8 ; 2 uses
  %i.jp = icmp eq ptr %.sroa.13.1.sroa.gep.i.i56, %i.jg
  br i1 %i.jp, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB3r_18AbbreviationsCache8populateINtNtB3t_8relocate14RelocateReaderINtNtB3t_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0EB63_.exit.i, label %.cont.i.i51

.lr.ph.i.i60:                                     ; preds = %bb.s, %.lr.ph.i.i60
  %.sroa.13.033.i.i61 = phi ptr [ %.sroa.13.0.i.i66, %.lr.ph.i.i60 ], [ %.sroa.13.030.i.i45, %bb.s ] ; 2 uses
  %.sroa.015.032.i.i62 = phi ptr [ %i.jv, %.lr.ph.i.i60 ], [ %i.je, %bb.s ] ; 3 uses
  %.sroa.23.031.i.i63 = phi i64 [ %i.ka, %.lr.ph.i.i60 ], [ 0, %bb.s ] ; 2 uses
  %.val.i11.i.i64 = load i64, ptr %.sroa.13.033.i.i61, align 8, !alias.scope !265, !noalias !268, !noundef !6 ; 2 uses
  %i.jq = icmp uge i64 %.val1.i.pre.i.i46, %.val.i11.i.i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %.sroa.23.031.i.i63 ; 2 uses
  %i.js = load i64, ptr %i.jr, align 8, !alias.scope !265, !noalias !268
  store i64 %i.js, ptr %.sroa.015.032.i.i62, align 8, !alias.scope !265, !noalias !268
  store i64 %.val.i11.i.i64, ptr %i.jr, align 8, !alias.scope !265, !noalias !268
  %i.jt = zext i1 %i.jq to i64
  %i.ju = add i64 %.sroa.23.031.i.i63, %i.jt      ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i62, i64 16 ; 3 uses
  %.val.i13.i.i65 = load i64, ptr %i.jv, align 8, !alias.scope !265, !noalias !269, !noundef !6 ; 2 uses
  %i.jw = icmp uge i64 %.val1.i.pre.i.i46, %.val.i13.i.i65
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.ju ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8, !alias.scope !265, !noalias !269
  store i64 %i.jy, ptr %.sroa.13.033.i.i61, align 8, !alias.scope !265, !noalias !269
  store i64 %.val.i13.i.i65, ptr %i.jx, align 8, !alias.scope !265, !noalias !269
  %i.jz = zext i1 %i.jw to i64
  %i.ka = add i64 %i.ju, %i.jz                    ; 2 uses
  %.sroa.13.0.i.i66 = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i62, i64 24 ; 3 uses
  %i.kb = icmp ult ptr %.sroa.13.0.i.i66, %i.jh
  br i1 %i.kb, label %.lr.ph.i.i60, label %.preheader.i.i47

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB3r_18AbbreviationsCache8populateINtNtB3t_8relocate14RelocateReaderINtNtB3t_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0EB63_.exit.i: ; preds = %.cont.i.i51, %.preheader.i.i47
  %.sroa.23.1.i.lcssa.i57 = phi i64 [ %.sroa.23.0.lcssa.i.i48, %.preheader.i.i47 ], [ %i.jo, %.cont.i.i51 ] ; 2 uses
  %.sroa.015.1.i.lcssa.i58 = phi ptr [ %.sroa.015.0.lcssa.i.i49, %.preheader.i.i47 ], [ %.sroa.13.1.i6.i53, %.cont.i.i51 ]
  %i.kc = icmp uge i64 %.val1.i.pre.i.i46, %i.jf
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %.sroa.23.1.i.lcssa.i57 ; 2 uses
  %i.ke = load i64, ptr %i.kd, align 8, !alias.scope !265, !noalias !267
  store i64 %i.ke, ptr %.sroa.015.1.i.lcssa.i58, align 8, !alias.scope !265, !noalias !267
  store i64 %i.jf, ptr %i.kd, align 8, !alias.scope !265, !noalias !267
  %i.kf = zext i1 %i.kc to i64
  %i.kg = add i64 %.sroa.23.1.i.lcssa.i57, %i.kf  ; 3 uses
  %.not7.i59 = icmp ult i64 %i.kg, %.sroa.15.090151
  br i1 %.not7.i59, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB3r_18AbbreviationsCache8populateINtNtB3t_8relocate14RelocateReaderINtNtB3t_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0EB63_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB3r_18AbbreviationsCache8populateINtNtB3t_8relocate14RelocateReaderINtNtB3t_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0EB63_.exit.i
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffset14swap_uncheckedCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 %.sroa.0.091150, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.090151, i64 noundef 0, i64 noundef %i.kg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
  %i.kh = add nuw nsw i64 %i.kg, 1                ; 2 uses
  %i.ki = sub nuw nsw i64 %.sroa.15.090151, %i.kh
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.091150, i64 %i.kh
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffset12split_at_mutCs4phXRVW1pDQ_9dwarfdump.exit
  %.sroa.023.0.be = phi ptr [ %i.iy, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffset12split_at_mutCs4phXRVW1pDQ_9dwarfdump.exit ], [ null, %bb.u ]
  %.sroa.15.0.be = phi i64 [ %i.jb, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffset12split_at_mutCs4phXRVW1pDQ_9dwarfdump.exit ], [ %i.ki, %bb.u ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.iz, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffset12split_at_mutCs4phXRVW1pDQ_9dwarfdump.exit ], [ %i.kj, %bb.u ] ; 3 uses
  %i.kk = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.kk, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE15alloc_slow_pathCs4phXRVW1pDQ_9dwarfdump(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !278
  %i.g = load i64, ptr %0, align 8, !noalias !277, !noundef !6
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #24
          to label %bb.j unwind label %.thread.i, !noalias !277

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !noalias !277
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.val.i = load i64, ptr %i.f, align 8, !range !7, !noalias !277, !noundef !6 ; 2 uses
  %i.j = icmp ne i64 %.val.i, -2                  ; 2 uses
  %i.k = load i64, ptr %i.i, align 8, !range !13, !noalias !277, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !277, !noundef !6 ; 6 uses
  %i.n = icmp ult i64 %i.m, 384307168202282326
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %i.k, %i.m                   ; 2 uses
  %i.p = and i1 %i.j, %i.o
  br i1 %i.p, label %bb.d, label %.preheader.i, !prof !11

.preheader.i:                                     ; preds = %bb.c
  br i1 %i.j, label %bb.e, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RNvMs1_CsfER1pEaRVit_11typed_arenaINtB5_9ChunkListINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE7reserveCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i, i64 noundef 1)
          to label %bb.p unwind label %.split.thread.i, !noalias !277

.split.thread.i:                                  ; preds = %bb.d
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = load i64, ptr %0, align 8, !noalias !277, !noundef !6
  %4 = add i64 %3, 1
  store i64 %4, ptr %0, align 8, !noalias !277
  br label %bb.r

bb.e:                                             ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !277
  store i64 %.val.i, ptr %i.d, align 8, !noalias !277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  br i1 %i.o, label %bb.f, label %._crit_edge.loopexit.i, !prof !11

bb.f:                                             ; preds = %bb.e
  store i64 -2, ptr %i.f, align 8, !noalias !277
  invoke fastcc void @_RNvMs1_CsfER1pEaRVit_11typed_arenaINtB5_9ChunkListINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE7reserveCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i, i64 noundef 1)
          to label %bb.g unwind label %bb.n, !noalias !277

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load i64, ptr %i.s, align 8, !noalias !277, !noundef !6 ; 2 uses
  %.not14.i = icmp eq i64 %i.t, 0
  br i1 %.not14.i, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
          to label %bb.j unwind label %bb.n, !noalias !277

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !noalias !277, !nonnull !6, !noundef !6
  %i.w = getelementptr [24 x i8], ptr %i.v, i64 %i.t ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = getelementptr i8, ptr %i.w, i64 -8
  %i.z = load i64, ptr %i.y, align 8, !noalias !277, !noundef !6 ; 2 uses
  %i.aa = icmp ult i64 %i.z, 384307168202282326
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !277
  invoke void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowShEE5drainINtNtNtCskKLDkoKarTP_4core3ops5range9RangeFromjEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %i.z)
          to label %bb.k unwind label %bb.n, !noalias !277

bb.j:                                             ; preds = %bb.h, %bb.b
  unreachable

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_10SpecExtendBT_INtNtB6_5drain5DrainBT_EE11spec_extendCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.l unwind label %bb.n, !noalias !277

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !277
  invoke fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowShEE8push_mutCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.m unwind label %.thread56.i

.thread56.i:                                      ; preds = %bb.l
  %lpad.thr_comm.split-lp58.i = landingpad { ptr, i32 }
          cleanup
  %5 = load i64, ptr %0, align 8, !noalias !277, !noundef !6
  %6 = add i64 %5, 1
  store i64 %6, ptr %0, align 8, !noalias !277
  br label %bb.r

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !277
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBT_EE11spec_extendCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.q unwind label %common.resume.sink.split.i, !noalias !277

bb.n:                                             ; preds = %bb.k, %bb.i, %bb.h, %bb.f
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %.thread36.i unwind label %bb.o, !noalias !277

.thread36.i:                                      ; preds = %bb.n
  %7 = load i64, ptr %0, align 8, !noalias !277, !noundef !6
  %8 = add i64 %7, 1
  store i64 %8, ptr %0, align 8, !noalias !277
  br label %bb.r

bb.o:                                             ; preds = %bb.r, %bb.n
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !277
  unreachable

bb.p:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBT_EE11spec_extendCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.thread39.i unwind label %common.resume.sink.split.i, !noalias !277

.thread39.i:                                      ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !277
  %i.ac = load i64, ptr %i.l, align 8, !noalias !277, !noundef !6 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 384307168202282326
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %0, align 8, !noalias !277, !noundef !6
  %i.ag = add i64 %i.af, 1
  br label %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump.exit

common.resume.sink.split.i:                       ; preds = %bb.p, %bb.m
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  %i.ah = load i64, ptr %0, align 8, !noalias !277, !noundef !6
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %0, align 8, !noalias !277
  br label %common.resume.i

.thread.i:                                        ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !277
  %i.ak = load i64, ptr %i.l, align 8, !noalias !277, !noundef !6 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 384307168202282326
  call void @llvm.assume(i1 %i.al)
  %i.am = load i64, ptr %0, align 8, !noalias !277, !noundef !6
  %i.an = add i64 %i.am, 1
  br label %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump.exit

._crit_edge.loopexit.i:                           ; preds = %bb.e
  %i.ao = load ptr, ptr %i.r, align 8, !alias.scope !279, !noalias !277, !nonnull !6, !noundef !6
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !277
  %i.aq = add nuw nsw i64 %i.m, 1                 ; 2 uses
  store i64 %i.aq, ptr %i.l, align 8, !alias.scope !279, !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !277
  %.pre.i = load i64, ptr %0, align 8, !noalias !277
  %i.ar = add i64 %.pre.i, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.as = phi i64 [ %i.ar, %._crit_edge.loopexit.i ], [ 0, %.preheader.i ]
  %i.at = phi i64 [ %i.aq, %._crit_edge.loopexit.i ], [ %i.m, %.preheader.i ] ; 2 uses
  %i.au = icmp samesign ult i64 %i.at, 384307168202282326
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump.exit

common.resume.i:                                  ; preds = %bb.r, %common.resume.sink.split.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn1635.i, %bb.r ], [ %lpad.thr_comm.split-lp.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.r:                                             ; preds = %.thread.i, %.thread36.i, %.thread56.i, %.split.thread.i
  %.pn1635.i = phi { ptr, i32 } [ %i.aj, %.thread.i ], [ %lpad.thr_comm.split-lp58.i, %.thread56.i ], [ %lpad.thr_comm.i, %.thread36.i ], [ %2, %.split.thread.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #21
          to label %common.resume.i unwind label %bb.o, !noalias !277

_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %.thread39.i, %bb.q, %._crit_edge.i
  %.sink.i = phi i64 [ %i.as, %._crit_edge.i ], [ %i.an, %bb.q ], [ %i.ag, %.thread39.i ]
  %.in.i = phi ptr [ %i.av, %._crit_edge.i ], [ %i.r, %bb.q ], [ %i.ae, %.thread39.i ]
  %i.aw = phi i64 [ %i.at, %._crit_edge.i ], [ %i.ak, %bb.q ], [ %i.ac, %.thread39.i ]
  %.sroa.01.142.i = phi i64 [ %i.m, %._crit_edge.i ], [ 0, %bb.q ], [ 0, %.thread39.i ] ; 2 uses
  %i.ax = load ptr, ptr %.in.i, align 8, !noalias !277, !nonnull !6, !noundef !6
  store i64 %.sink.i, ptr %0, align 8, !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !277
  %.not = icmp eq i64 %i.aw, %.sroa.01.142.i
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump.exit
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %.sroa.01.142.i
  ret ptr %i.ay

bb.t:                                             ; preds = %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump.exit
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE3newCs4phXRVW1pDQ_9dwarfdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !282
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 42, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !282
  %i.b = load i64, ptr %i.a, align 8, !range !5, !noalias !282, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !14, !noalias !282, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE13with_capacityCs4phXRVW1pDQ_9dwarfdump.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !282
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #24, !noalias !282
  unreachable

_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE13with_capacityCs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !282, !nonnull !6, !noundef !6
  %i.i = icmp samesign ugt i64 %i.e, 41
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !282
  store i64 0, ptr %0, align 8, !alias.scope !282
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !282
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !282
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !282
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !282
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !282
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE15alloc_slow_pathBH_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !alias.scope !299
  %i.g = load i64, ptr %0, align 8, !noalias !298, !noundef !6
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #24
          to label %bb.j unwind label %bb.r, !noalias !298

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !noalias !298
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !298, !noundef !6 ; 2 uses
  %i.j = icmp ne ptr %.val.i, null                ; 2 uses
  %i.k = load i64, ptr %i.i, align 8, !range !13, !noalias !298, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !298, !noundef !6 ; 6 uses
  %i.n = icmp ult i64 %i.m, 192153584101141163
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %i.k, %i.m                   ; 2 uses
  %i.p = and i1 %i.j, %i.o
  br i1 %i.p, label %bb.d, label %.preheader.i, !prof !11

.preheader.i:                                     ; preds = %bb.c
  br i1 %i.j, label %bb.e, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RNvMs1_CsfER1pEaRVit_11typed_arenaINtB5_9ChunkListNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE7reserveBO_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i, i64 noundef 1)
          to label %bb.p unwind label %.thread3, !noalias !298

.thread3:                                         ; preds = %bb.d
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = load i64, ptr %0, align 8, !noalias !298, !noundef !6
  %4 = add i64 %3, 1
  store i64 %4, ptr %0, align 8, !noalias !298
  br label %bb.s

bb.e:                                             ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !298
  store ptr %.val.i, ptr %i.d, align 8, !noalias !298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false)
  br i1 %i.o, label %bb.f, label %._crit_edge.loopexit.i, !prof !11

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.f, align 8, !noalias !298
  invoke fastcc void @_RNvMs1_CsfER1pEaRVit_11typed_arenaINtB5_9ChunkListNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE7reserveBO_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i, i64 noundef 1)
          to label %bb.g unwind label %bb.n, !noalias !298

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load i64, ptr %i.s, align 8, !noalias !298, !noundef !6 ; 2 uses
  %.not14.i = icmp eq i64 %i.t, 0
  br i1 %.not14.i, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
          to label %bb.j unwind label %bb.n, !noalias !298

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !noalias !298, !nonnull !6, !noundef !6
  %i.w = getelementptr [24 x i8], ptr %i.v, i64 %i.t ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = getelementptr i8, ptr %i.w, i64 -8
  %i.z = load i64, ptr %i.y, align 8, !noalias !298, !noundef !6 ; 2 uses
  %i.aa = icmp ult i64 %i.z, 192153584101141163
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !298
  invoke void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE5drainINtNtNtCskKLDkoKarTP_4core3ops5range9RangeFromjEEBH_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %i.z)
          to label %bb.k unwind label %bb.n, !noalias !298

bb.j:                                             ; preds = %bb.h, %bb.b
  unreachable

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEINtB4_10SpecExtendBT_INtNtB6_5drain5DrainBT_EE11spec_extendBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.l unwind label %bb.n, !noalias !298

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !298
  invoke fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE8push_mutBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.m unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1c_.exit20.sink.split.i.a

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !298
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBT_EE11spec_extendBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.q unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1c_.exit20.sink.split.i.a, !noalias !298

bb.n:                                             ; preds = %bb.k, %bb.i, %bb.h, %bb.f
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtCs9Jn0q30Ea0B_6object4read18RelocationMapEntryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1c_.exit20.i.sink.split unwind label %bb.o, !noalias !298

bb.o:                                             ; preds = %bb.s, %bb.n
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !298
  unreachable

bb.p:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false)
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBT_EE11spec_extendBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
          to label %.thread40.i unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1c_.exit20.sink.split.i.a, !noalias !298

.thread40.i:                                      ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !298
  %i.ac = load i64, ptr %i.l, align 8, !noalias !298, !noundef !6 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 192153584101141163
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %0, align 8, !noalias !298, !noundef !6
  %i.ag = add i64 %i.af, 1
  br label %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EEBI_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1c_.exit20.sink.split.i.a: ; preds = %bb.l, %bb.p, %bb.m
  %lpad.thr_comm.split-lp.i.a = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1c_.exit20.i.sink.split

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !298
  %i.ah = load i64, ptr %i.l, align 8, !noalias !298, !noundef !6 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 192153584101141163
  call void @llvm.assume(i1 %i.ai)
  %i.aj = load i64, ptr %0, align 8, !noalias !298, !noundef !6
  %i.ak = add i64 %i.aj, 1
  br label %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EEBI_.exit

._crit_edge.loopexit.i:                           ; preds = %bb.e
  %i.al = load ptr, ptr %i.r, align 8, !alias.scope !300, !noalias !298, !nonnull !6, !noundef !6
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %i.al, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !298
  %i.an = add nuw nsw i64 %i.m, 1                 ; 2 uses
  store i64 %i.an, ptr %i.l, align 8, !alias.scope !300, !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !298
  %.pre.i = load i64, ptr %0, align 8, !noalias !298
  %i.ao = add i64 %.pre.i, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.ap = phi i64 [ %i.ao, %._crit_edge.loopexit.i ], [ 0, %.preheader.i ]
  %i.aq = phi i64 [ %i.an, %._crit_edge.loopexit.i ], [ %i.m, %.preheader.i ] ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, 192153584101141163
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EEBI_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1c_.exit20.i.sink.split: ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1c_.exit20.sink.split.i.a
  %.pn1635.i.ph = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1c_.exit20.sink.split.i.a ], [ %lpad.thr_comm.i, %bb.n ]
  %i.at = load i64, ptr %0, align 8, !noalias !298, !noundef !6
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %0, align 8, !noalias !298
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1c_.exit20.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1c_.exit20.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1c_.exit20.i.sink.split, %bb.s, %bb.r
  %.pn1635.i = phi { ptr, i32 } [ %5, %bb.r ], [ %.pn1636.i5, %bb.s ], [ %.pn1635.i.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1c_.exit20.i.sink.split ]
  resume { ptr, i32 } %.pn1635.i

bb.r:                                             ; preds = %bb.b
  %5 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %i.f, align 8, !alias.scope !301, !noalias !298
  %i.av = icmp eq ptr %.pre, null
  br i1 %i.av, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1c_.exit20.i, label %bb.s

bb.s:                                             ; preds = %.thread3, %bb.r
  %.pn1636.i5 = phi { ptr, i32 } [ %2, %.thread3 ], [ %5, %bb.r ]
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtCs9Jn0q30Ea0B_6object4read18RelocationMapEntryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1c_.exit20.i unwind label %bb.o, !noalias !298

_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EEBI_.exit: ; preds = %.thread40.i, %bb.q, %._crit_edge.i
  %.sink.i = phi i64 [ %i.ap, %._crit_edge.i ], [ %i.ak, %bb.q ], [ %i.ag, %.thread40.i ]
  %.in.i = phi ptr [ %i.as, %._crit_edge.i ], [ %i.r, %bb.q ], [ %i.ae, %.thread40.i ]
  %i.aw = phi i64 [ %i.aq, %._crit_edge.i ], [ %i.ah, %bb.q ], [ %i.ac, %.thread40.i ]
  %.sroa.01.143.i = phi i64 [ %i.m, %._crit_edge.i ], [ 0, %bb.q ], [ 0, %.thread40.i ] ; 2 uses
  %i.ax = load ptr, ptr %.in.i, align 8, !noalias !298, !nonnull !6, !noundef !6
  store i64 %.sink.i, ptr %0, align 8, !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !298
  %.not = icmp eq i64 %i.aw, %.sroa.01.143.i
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EEBI_.exit
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %i.ax, i64 %.sroa.01.143.i
  ret ptr %i.ay

bb.u:                                             ; preds = %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EEBI_.exit
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE3newBH_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !304
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 21, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !noalias !304
  %i.b = load i64, ptr %i.a, align 8, !range !5, !noalias !304, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !14, !noalias !304, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE13with_capacityBH_.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !304
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #24, !noalias !304
  unreachable

_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE13with_capacityBH_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !304, !nonnull !6, !noundef !6
  %i.i = icmp samesign ugt i64 %i.e, 20
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !304
  store i64 0, ptr %0, align 8, !alias.scope !304
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !304
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !304
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !304
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !304
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !304
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaNtCsgQ7e0lqRvgo_7memmap24MmapE15alloc_slow_pathCs4phXRVW1pDQ_9dwarfdump(ptr noundef nonnull align 8 %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !312
  store i64 1, ptr %i.b, align 8, !alias.scope !313
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !313
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !313
  %i.c = load i64, ptr %0, align 8, !noalias !312, !noundef !6
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #24
          to label %bb.e unwind label %.thread.i, !noalias !312

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !noalias !312
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !range !13, !noalias !312, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !noalias !312, !noundef !6 ; 6 uses
  %i.i = icmp ult i64 %i.h, 576460752303423488
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.f, %i.h
  br i1 %i.j, label %bb.d, label %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCsgQ7e0lqRvgo_7memmap24MmapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump.exit.thread, !prof !11

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RNvMs1_CsfER1pEaRVit_11typed_arenaINtB5_9ChunkListNtCsgQ7e0lqRvgo_7memmap24MmapE7reserveCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e, i64 noundef 1)
          to label %bb.g unwind label %.split.thread.i, !noalias !312

.split.thread.i:                                  ; preds = %bb.d
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = load i64, ptr %0, align 8, !noalias !312, !noundef !6
  %5 = add i64 %4, 1
  store i64 %5, ptr %0, align 8, !noalias !312
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !312
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !312
  store i64 1, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx8, align 8
  %.sroa.6.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %.sroa.6.0..sroa_idx10, align 8
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtCsgQ7e0lqRvgo_7memmap24MmapEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBT_EE11spec_extendCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCsgQ7e0lqRvgo_7memmap24MmapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump.exit unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCsgQ7e0lqRvgo_7memmap24MmapEECs4phXRVW1pDQ_9dwarfdump.exit19.sink.split.i, !noalias !312

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCsgQ7e0lqRvgo_7memmap24MmapEECs4phXRVW1pDQ_9dwarfdump.exit19.sink.split.i: ; preds = %bb.g
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  %i.l = load i64, ptr %0, align 8, !noalias !312, !noundef !6
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %0, align 8, !noalias !312
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCsgQ7e0lqRvgo_7memmap24MmapEECs4phXRVW1pDQ_9dwarfdump.exit19.i

.thread.i:                                        ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCsgQ7e0lqRvgo_7memmap24MmapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump.exit.thread: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !314, !noalias !312, !nonnull !6, !noundef !6
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.q, align 8, !noalias !312
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %2, ptr %i.r, align 8, !noalias !312
  %i.s = add nuw nsw i64 %i.h, 1
  store i64 %i.s, ptr %i.g, align 8, !alias.scope !314, !noalias !312
  %i.t = icmp ne i64 %i.h, 576460752303423487
  tail call void @llvm.assume(i1 %i.t)
  %storemerge.i.in15 = load i64, ptr %0, align 8, !noalias !312
  %storemerge.i16 = add i64 %storemerge.i.in15, 1
  %.in.i17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %.in.i17, align 8, !noalias !312, !nonnull !6, !noundef !6
  store i64 %storemerge.i16, ptr %0, align 8, !noalias !312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !312
  br label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCsgQ7e0lqRvgo_7memmap24MmapEECs4phXRVW1pDQ_9dwarfdump.exit19.i: ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCsgQ7e0lqRvgo_7memmap24MmapEECs4phXRVW1pDQ_9dwarfdump.exit19.sink.split.i
  %.pn1533.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCsgQ7e0lqRvgo_7memmap24MmapEECs4phXRVW1pDQ_9dwarfdump.exit19.sink.split.i ], [ %.pn1534.i, %bb.h ]
  resume { ptr, i32 } %.pn1533.i

bb.h:                                             ; preds = %.split.thread.i, %.thread.i
  %.pn1534.i = phi { ptr, i32 } [ %i.n, %.thread.i ], [ %3, %.split.thread.i ]
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCsgQ7e0lqRvgo_7memmap24MmapEECs4phXRVW1pDQ_9dwarfdump.exit19.i unwind label %bb.f, !noalias !312

_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCsgQ7e0lqRvgo_7memmap24MmapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !312
  %.pre.a = load i64, ptr %i.g, align 8, !noalias !312 ; 2 uses
  %i.v = icmp ult i64 %.pre.a, 576460752303423488
  call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i64 %.pre.a, 0
  %storemerge.i.in = load i64, ptr %0, align 8, !noalias !312
  %storemerge.i = add i64 %storemerge.i.in, 1
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %.in.i, align 8, !noalias !312, !nonnull !6, !noundef !6
  store i64 %storemerge.i, ptr %0, align 8, !noalias !312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !312
  br i1 %i.w, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCsgQ7e0lqRvgo_7memmap24MmapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump.exit.thread, %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCsgQ7e0lqRvgo_7memmap24MmapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump.exit
  %i.y = phi ptr [ %i.u, %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCsgQ7e0lqRvgo_7memmap24MmapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump.exit.thread ], [ %i.x, %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCsgQ7e0lqRvgo_7memmap24MmapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump.exit ]
  %.sroa.01.141.i18 = phi i64 [ %i.h, %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCsgQ7e0lqRvgo_7memmap24MmapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump.exit.thread ], [ 0, %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCsgQ7e0lqRvgo_7memmap24MmapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump.exit ]
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.01.141.i18
  ret ptr %i.z

bb.j:                                             ; preds = %_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCsgQ7e0lqRvgo_7memmap24MmapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump.exit
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaNtCsgQ7e0lqRvgo_7memmap24MmapE3newCs4phXRVW1pDQ_9dwarfdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !317
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 64, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !317
  %i.b = load i64, ptr %i.a, align 8, !range !5, !noalias !317, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !14, !noalias !317, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaNtCsgQ7e0lqRvgo_7memmap24MmapE13with_capacityCs4phXRVW1pDQ_9dwarfdump.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !317
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #24, !noalias !317
  unreachable

_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaNtCsgQ7e0lqRvgo_7memmap24MmapE13with_capacityCs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !317, !nonnull !6, !noundef !6
  %i.i = icmp samesign ugt i64 %i.e, 63
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !317
  store i64 0, ptr %0, align 8, !alias.scope !317
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !317
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !317
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !317
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !317
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !317
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc void @_RNvMs1_CsfER1pEaRVit_11typed_arenaINtB5_9ChunkListINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE7reserveCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = icmp ult i64 %1, 2
  %i.d = add i64 %1, -1
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = lshr i64 -1, %i.e
  %.sroa.05.0 = select i1 %i.c, i64 0, i64 %i.f   ; 2 uses
  %i.g = icmp eq i64 %.sroa.05.0, -1
  br i1 %i.g, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !range !13, !noundef !6
  %i.i = shl nuw i64 %i.h, 1
  %i.j = add nuw i64 %.sroa.05.0, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.j, i64 %i.i) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.k = load i64, ptr %i.a, align 8, !range !5, !noundef !6
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !14, !noundef !6 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e, !prof !11

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #24
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6
  %i.r = icmp ule i64 %..i, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  store i64 %i.n, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !321, !noundef !6 ; 3 uses
  %i.v = load i64, ptr %i.s, align 8, !range !13, !alias.scope !321, !noundef !6
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.f, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_INtNtB7_6borrow3CowShEEE8push_mutCs4phXRVW1pDQ_9dwarfdump.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtB7_6borrow3CowShEEE8grow_oneCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_INtNtB7_6borrow3CowShEEE8push_mutCs4phXRVW1pDQ_9dwarfdump.exit unwind label %bb.g, !noalias !322

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_6borrow3CowShEEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #21
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.x

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_INtNtB7_6borrow3CowShEEE8push_mutCs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %bb.e, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !321, !nonnull !6, !noundef !6
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ac = add i64 %i.u, 1
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc void @_RNvMs1_CsfER1pEaRVit_11typed_arenaINtB5_9ChunkListNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE7reserveBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = icmp ult i64 %1, 2
  %i.d = add i64 %1, -1
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = lshr i64 -1, %i.e
  %.sroa.05.0 = select i1 %i.c, i64 0, i64 %i.f   ; 2 uses
  %i.g = icmp eq i64 %.sroa.05.0, -1
  br i1 %i.g, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !range !13, !noundef !6
  %i.i = shl nuw i64 %i.h, 1
  %i.j = add nuw i64 %.sroa.05.0, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.j, i64 %i.i) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
  %i.k = load i64, ptr %i.a, align 8, !range !5, !noundef !6
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !14, !noundef !6 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e, !prof !11

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #24
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6
  %i.r = icmp ule i64 %..i, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  store i64 %i.n, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!88 = distinct !{!88, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTyINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2t_5ErrorEEEECs4phXRVW1pDQ_9dwarfdump"}
!89 = distinct !{!89, !88, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTyINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2t_5ErrorEEEECs4phXRVW1pDQ_9dwarfdump: argument 0"}
!90 = distinct !{!90, i1 true, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTyINtNtBd_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2g_5ErrorEEENtNtNtBd_3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump"}
!91 = distinct !{!91, !90, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTyINtNtBd_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2g_5ErrorEEENtNtNtBd_3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump: argument 0"}
!92 = distinct !{!92, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTyINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB25_5ErrorEENCINvMNtB1y_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1y_11collections5btree3mapINtB3M_8BTreeMapyB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4M_8adapters3map3MapINtNtNtB1y_3vec9into_iter8IntoIterNtNtB27_6common17DebugAbbrevOffsetENCINvMs3_B23_NtB23_18AbbreviationsCache8populateINtNtB25_8relocate14RelocateReaderINtNtB25_12endian_slice11EndianSliceNtNtB27_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs1_0EE0E0EB9I_"}
!93 = distinct !{!93, !92, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTyINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB25_5ErrorEENCINvMNtB1y_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1y_11collections5btree3mapINtB3M_8BTreeMapyB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4M_8adapters3map3MapINtNtNtB1y_3vec9into_iter8IntoIterNtNtB27_6common17DebugAbbrevOffsetENCINvMs3_B23_NtB23_18AbbreviationsCache8populateINtNtB25_8relocate14RelocateReaderINtNtB25_12endian_slice11EndianSliceNtNtB27_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs1_0EE0E0EB9I_: argument 0"}
!94 = distinct !{!94, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTyINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2d_5ErrorEENCINvMNtB1G_5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1G_11collections5btree3mapINtB3U_8BTreeMapyB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4U_8adapters3map3MapINtNtNtB1G_3vec9into_iter8IntoIterNtNtB2f_6common17DebugAbbrevOffsetENCINvMs3_B2b_NtB2b_18AbbreviationsCache8populateINtNtB2d_8relocate14RelocateReaderINtNtB2d_12endian_slice11EndianSliceNtNtB2f_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs1_0EE0E0EB9Q_"}
!95 = distinct !{!95, !94, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTyINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2d_5ErrorEENCINvMNtB1G_5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1G_11collections5btree3mapINtB3U_8BTreeMapyB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4U_8adapters3map3MapINtNtNtB1G_3vec9into_iter8IntoIterNtNtB2f_6common17DebugAbbrevOffsetENCINvMs3_B2b_NtB2b_18AbbreviationsCache8populateINtNtB2d_8relocate14RelocateReaderINtNtB2d_12endian_slice11EndianSliceNtNtB2f_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs1_0EE0E0EB9Q_: argument 1"}
!96 = distinct !{!96, !94, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTyINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2d_5ErrorEENCINvMNtB1G_5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1G_11collections5btree3mapINtB3U_8BTreeMapyB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4U_8adapters3map3MapINtNtNtB1G_3vec9into_iter8IntoIterNtNtB2f_6common17DebugAbbrevOffsetENCINvMs3_B2b_NtB2b_18AbbreviationsCache8populateINtNtB2d_8relocate14RelocateReaderINtNtB2d_12endian_slice11EndianSliceNtNtB2f_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs1_0EE0E0EB9Q_: argument 0"}
!97 = distinct !{!97, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTyINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2h_5ErrorEEE13partition_oneCs4phXRVW1pDQ_9dwarfdump"}
!98 = distinct !{!98, !97, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTyINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2h_5ErrorEEE13partition_oneCs4phXRVW1pDQ_9dwarfdump: argument 0"}
!99 = distinct !{!99, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTyINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2h_5ErrorEEE13partition_oneCs4phXRVW1pDQ_9dwarfdump"}
!100 = distinct !{!100, !99, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTyINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2h_5ErrorEEE13partition_oneCs4phXRVW1pDQ_9dwarfdump: argument 0"}
!101 = distinct !{!101, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTyINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB1u_5ErrorEE12split_at_mutCs4phXRVW1pDQ_9dwarfdump"}
!102 = distinct !{!102, !101, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTyINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB1u_5ErrorEE12split_at_mutCs4phXRVW1pDQ_9dwarfdump: argument 1"}
!103 = distinct !{!103, !101, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTyINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB1u_5ErrorEE12split_at_mutCs4phXRVW1pDQ_9dwarfdump: argument 0"}
!104 = distinct !{!104, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTyINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2d_5ErrorEENCINvB2_9quicksortB1d_NCINvMNtB1G_5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1G_11collections5btree3mapINtB4g_8BTreeMapyB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB5g_8adapters3map3MapINtNtNtB1G_3vec9into_iter8IntoIterNtNtB2f_6common17DebugAbbrevOffsetENCINvMs3_B2b_NtB2b_18AbbreviationsCache8populateINtNtB2d_8relocate14RelocateReaderINtNtB2d_12endian_slice11EndianSliceNtNtB2f_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs1_0EE0E0E0EBac_"}
!105 = distinct !{!105, !104, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTyINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2d_5ErrorEENCINvB2_9quicksortB1d_NCINvMNtB1G_5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1G_11collections5btree3mapINtB4g_8BTreeMapyB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB5g_8adapters3map3MapINtNtNtB1G_3vec9into_iter8IntoIterNtNtB2f_6common17DebugAbbrevOffsetENCINvMs3_B2b_NtB2b_18AbbreviationsCache8populateINtNtB2d_8relocate14RelocateReaderINtNtB2d_12endian_slice11EndianSliceNtNtB2f_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs1_0EE0E0E0EBac_: argument 1"}
!106 = distinct !{!106, !104, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTyINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2d_5ErrorEENCINvB2_9quicksortB1d_NCINvMNtB1G_5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1G_11collections5btree3mapINtB4g_8BTreeMapyB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB5g_8adapters3map3MapINtNtNtB1G_3vec9into_iter8IntoIterNtNtB2f_6common17DebugAbbrevOffsetENCINvMs3_B2b_NtB2b_18AbbreviationsCache8populateINtNtB2d_8relocate14RelocateReaderINtNtB2d_12endian_slice11EndianSliceNtNtB2f_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs1_0EE0E0E0EBac_: argument 0"}
!107 = distinct !{!107, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTyINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2h_5ErrorEEE13partition_oneCs4phXRVW1pDQ_9dwarfdump"}
!108 = distinct !{!108, !107, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTyINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2h_5ErrorEEE13partition_oneCs4phXRVW1pDQ_9dwarfdump: argument 0"}
!109 = distinct !{!109, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTyINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2h_5ErrorEEE13partition_oneCs4phXRVW1pDQ_9dwarfdump"}
!110 = distinct !{!110, !109, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTyINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2h_5ErrorEEE13partition_oneCs4phXRVW1pDQ_9dwarfdump: argument 0"}
!111 = !{!74}
!112 = !{!75}
!113 = !{!74, !75}
!114 = !{!79, !77}
!115 = !{!79, !77, !74}
!116 = !{!81}
!117 = !{!81, !75}
!118 = !{!84, !83}
!119 = !{!87, !86}
!120 = !{!81, !74, !75}
!121 = !{!91, !89}
!122 = !{!93}
!123 = !{!95}
!124 = !{!96}
!125 = !{!96, !95}
!126 = !{!98}
!127 = !{!100}
!128 = !{!103, !102}
!129 = !{!105}
!130 = !{!106}
!131 = !{!106, !105}
!132 = !{!108}
!133 = !{!110}
!134 = distinct !{!134, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_networkNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1f_20sort_unstable_by_keyjNCINvMs3_NtNtB1j_4read6abbrevNtB2N_18AbbreviationsCache8populateINtNtB2P_8relocate14RelocateReaderINtNtB2P_12endian_slice11EndianSliceNtNtB1j_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5p_"}
!135 = distinct !{!135, !134, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_networkNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1f_20sort_unstable_by_keyjNCINvMs3_NtNtB1j_4read6abbrevNtB2N_18AbbreviationsCache8populateINtNtB2P_8relocate14RelocateReaderINtNtB2P_12endian_slice11EndianSliceNtNtB1j_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5p_: argument 0"}
!136 = distinct !{!136, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort14sort13_optimalNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1b_20sort_unstable_by_keyjNCINvMs3_NtNtB1f_4read6abbrevNtB2J_18AbbreviationsCache8populateINtNtB2L_8relocate14RelocateReaderINtNtB2L_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5l_"}
!137 = distinct !{!137, !136, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort14sort13_optimalNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1b_20sort_unstable_by_keyjNCINvMs3_NtNtB1f_4read6abbrevNtB2J_18AbbreviationsCache8populateINtNtB2L_8relocate14RelocateReaderINtNtB2L_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5l_: argument 0"}
!138 = distinct !{!138, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort13sort9_optimalNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1a_20sort_unstable_by_keyjNCINvMs3_NtNtB1e_4read6abbrevNtB2I_18AbbreviationsCache8populateINtNtB2K_8relocate14RelocateReaderINtNtB2K_12endian_slice11EndianSliceNtNtB1e_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5k_"}
!139 = distinct !{!139, !138, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort13sort9_optimalNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1a_20sort_unstable_by_keyjNCINvMs3_NtNtB1e_4read6abbrevNtB2I_18AbbreviationsCache8populateINtNtB2K_8relocate14RelocateReaderINtNtB2K_12endian_slice11EndianSliceNtNtB1e_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5k_: argument 0"}
!140 = distinct !{!140, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1m_20sort_unstable_by_keyjNCINvMs3_NtNtB1q_4read6abbrevNtB2U_18AbbreviationsCache8populateINtNtB2W_8relocate14RelocateReaderINtNtB2W_12endian_slice11EndianSliceNtNtB1q_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5w_"}
!141 = distinct !{!141, !140, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1m_20sort_unstable_by_keyjNCINvMs3_NtNtB1q_4read6abbrevNtB2U_18AbbreviationsCache8populateINtNtB2W_8relocate14RelocateReaderINtNtB2W_12endian_slice11EndianSliceNtNtB1q_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5w_: argument 0"}
!142 = distinct !{!142, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetEECs4phXRVW1pDQ_9dwarfdump"}
!143 = distinct !{!143, !142, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetEECs4phXRVW1pDQ_9dwarfdump: argument 0"}
!144 = distinct !{!144, i1 true, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetENtNtNtBd_3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump"}
!145 = distinct !{!145, !144, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetENtNtNtBd_3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump: argument 0"}
!146 = distinct !{!146, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1g_20sort_unstable_by_keyjNCINvMs3_NtNtB1k_4read6abbrevNtB2O_18AbbreviationsCache8populateINtNtB2Q_8relocate14RelocateReaderINtNtB2Q_12endian_slice11EndianSliceNtNtB1k_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5q_"}
!147 = distinct !{!147, !146, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1g_20sort_unstable_by_keyjNCINvMs3_NtNtB1k_4read6abbrevNtB2O_18AbbreviationsCache8populateINtNtB2Q_8relocate14RelocateReaderINtNtB2Q_12endian_slice11EndianSliceNtNtB1k_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5q_: argument 0"}
!148 = distinct !{!148, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort8merge_upNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB14_20sort_unstable_by_keyjNCINvMs3_NtNtB18_4read6abbrevNtB2C_18AbbreviationsCache8populateINtNtB2E_8relocate14RelocateReaderINtNtB2E_12endian_slice11EndianSliceNtNtB18_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5e_"}
!149 = distinct !{!149, !148, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort8merge_upNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB14_20sort_unstable_by_keyjNCINvMs3_NtNtB18_4read6abbrevNtB2C_18AbbreviationsCache8populateINtNtB2E_8relocate14RelocateReaderINtNtB2E_12endian_slice11EndianSliceNtNtB18_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5e_: argument 1"}
!150 = distinct !{!150, !148, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort8merge_upNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB14_20sort_unstable_by_keyjNCINvMs3_NtNtB18_4read6abbrevNtB2C_18AbbreviationsCache8populateINtNtB2E_8relocate14RelocateReaderINtNtB2E_12endian_slice11EndianSliceNtNtB18_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5e_: argument 0"}
!151 = distinct !{!151, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort10merge_downNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB17_20sort_unstable_by_keyjNCINvMs3_NtNtB1b_4read6abbrevNtB2F_18AbbreviationsCache8populateINtNtB2H_8relocate14RelocateReaderINtNtB2H_12endian_slice11EndianSliceNtNtB1b_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5h_"}
!152 = distinct !{!152, !151, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort10merge_downNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB17_20sort_unstable_by_keyjNCINvMs3_NtNtB1b_4read6abbrevNtB2F_18AbbreviationsCache8populateINtNtB2H_8relocate14RelocateReaderINtNtB2H_12endian_slice11EndianSliceNtNtB1b_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5h_: argument 1"}
!153 = distinct !{!153, !151, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort10merge_downNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB17_20sort_unstable_by_keyjNCINvMs3_NtNtB1b_4read6abbrevNtB2F_18AbbreviationsCache8populateINtNtB2H_8relocate14RelocateReaderINtNtB2H_12endian_slice11EndianSliceNtNtB1b_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5h_: argument 0"}
!154 = distinct !{!154, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB15_20sort_unstable_by_keyjNCINvMs3_NtNtB19_4read6abbrevNtB2D_18AbbreviationsCache8populateINtNtB2F_8relocate14RelocateReaderINtNtB2F_12endian_slice11EndianSliceNtNtB19_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5f_"}
!155 = distinct !{!155, !154, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB15_20sort_unstable_by_keyjNCINvMs3_NtNtB19_4read6abbrevNtB2D_18AbbreviationsCache8populateINtNtB2F_8relocate14RelocateReaderINtNtB2F_12endian_slice11EndianSliceNtNtB19_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5f_: argument 0"}
!156 = distinct !{!156, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB35_18AbbreviationsCache8populateINtNtB37_8relocate14RelocateReaderINtNtB37_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5H_"}
!157 = distinct !{!157, !156, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB35_18AbbreviationsCache8populateINtNtB37_8relocate14RelocateReaderINtNtB37_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5H_: argument 0"}
!158 = distinct !{!158, !156, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB35_18AbbreviationsCache8populateINtNtB37_8relocate14RelocateReaderINtNtB37_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5H_: argument 1"}
!159 = distinct !{!159, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9partitionNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB17_20sort_unstable_by_keyjNCINvMs3_NtNtB1b_4read6abbrevNtB2F_18AbbreviationsCache8populateINtNtB2H_8relocate14RelocateReaderINtNtB2H_12endian_slice11EndianSliceNtNtB1b_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5h_"}
!160 = distinct !{!160, !159, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9partitionNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB17_20sort_unstable_by_keyjNCINvMs3_NtNtB1b_4read6abbrevNtB2F_18AbbreviationsCache8populateINtNtB2H_8relocate14RelocateReaderINtNtB2H_12endian_slice11EndianSliceNtNtB1b_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0EB5h_: argument 0"}
!161 = distinct !{!161, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB37_18AbbreviationsCache8populateINtNtB39_8relocate14RelocateReaderINtNtB39_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0E0B5J_"}
!162 = distinct !{!162, !161, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB37_18AbbreviationsCache8populateINtNtB39_8relocate14RelocateReaderINtNtB39_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0E0B5J_: argument 0"}
!163 = distinct !{!163, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB37_18AbbreviationsCache8populateINtNtB39_8relocate14RelocateReaderINtNtB39_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0E0B5J_"}
!164 = distinct !{!164, !163, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB37_18AbbreviationsCache8populateINtNtB39_8relocate14RelocateReaderINtNtB39_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0E0B5J_: argument 0"}
!165 = distinct !{!165, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB37_18AbbreviationsCache8populateINtNtB39_8relocate14RelocateReaderINtNtB39_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0E0B5J_"}
!166 = distinct !{!166, !165, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB37_18AbbreviationsCache8populateINtNtB39_8relocate14RelocateReaderINtNtB39_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0E0B5J_: argument 0"}
!167 = distinct !{!167, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB3r_18AbbreviationsCache8populateINtNtB3t_8relocate14RelocateReaderINtNtB3t_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0E0EB63_"}
!168 = distinct !{!168, !167, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB3r_18AbbreviationsCache8populateINtNtB3t_8relocate14RelocateReaderINtNtB3t_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0E0EB63_: argument 0"}
!169 = distinct !{!169, !167, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB3r_18AbbreviationsCache8populateINtNtB3t_8relocate14RelocateReaderINtNtB3t_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0E0EB63_: argument 1"}
!170 = distinct !{!170, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9partitionNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB2_9quicksortB17_NCINvMB8_SB17_20sort_unstable_by_keyjNCINvMs3_NtNtB1b_4read6abbrevNtB31_18AbbreviationsCache8populateINtNtB33_8relocate14RelocateReaderINtNtB33_12endian_slice11EndianSliceNtNtB1b_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0E0EB5D_"}
!171 = distinct !{!171, !170, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9partitionNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB2_9quicksortB17_NCINvMB8_SB17_20sort_unstable_by_keyjNCINvMs3_NtNtB1b_4read6abbrevNtB31_18AbbreviationsCache8populateINtNtB33_8relocate14RelocateReaderINtNtB33_12endian_slice11EndianSliceNtNtB1b_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0E0EB5D_: argument 0"}
!172 = distinct !{!172, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB3t_18AbbreviationsCache8populateINtNtB3v_8relocate14RelocateReaderINtNtB3v_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0E0E0B65_"}
!173 = distinct !{!173, !172, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB3t_18AbbreviationsCache8populateINtNtB3v_8relocate14RelocateReaderINtNtB3v_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0E0E0B65_: argument 0"}
!174 = distinct !{!174, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB3t_18AbbreviationsCache8populateINtNtB3v_8relocate14RelocateReaderINtNtB3v_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0E0E0B65_"}
!175 = distinct !{!175, !174, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB3t_18AbbreviationsCache8populateINtNtB3v_8relocate14RelocateReaderINtNtB3v_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0E0E0B65_: argument 0"}
!176 = distinct !{!176, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB3t_18AbbreviationsCache8populateINtNtB3v_8relocate14RelocateReaderINtNtB3v_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0E0E0B65_"}
!177 = distinct !{!177, !176, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB3t_18AbbreviationsCache8populateINtNtB3v_8relocate14RelocateReaderINtNtB3v_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE0E0E0E0B65_: argument 0"}
!178 = !{!135}
!179 = !{!137, !135}
!180 = !{!139, !135}
!181 = !{!141, !135}
!182 = !{!145, !143}
!183 = !{!147}
!184 = !{!147, !135}
!185 = !{!150, !149, !147, !135}
!186 = !{!153, !152, !147, !135}
!187 = !{!155}
!188 = !{!157}
!189 = !{!158}
!190 = !{!157, !160}
!191 = !{!158, !160}
!192 = !{!162}
!193 = !{!164}
!194 = !{!166}
!195 = !{!168}
!196 = !{!169}
!197 = !{!168, !171}
!198 = !{!169, !171}
!199 = !{!173}
!200 = !{!175}
!201 = !{!177}
!202 = distinct !{!202, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_networkNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1f_20sort_unstable_by_keyjNCINvMs3_NtNtB1j_4read6abbrevNtB2N_18AbbreviationsCache8populateINtNtB2P_8relocate14RelocateReaderINtNtB2P_12endian_slice11EndianSliceNtNtB1j_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5p_"}
!203 = distinct !{!203, !202, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_networkNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1f_20sort_unstable_by_keyjNCINvMs3_NtNtB1j_4read6abbrevNtB2N_18AbbreviationsCache8populateINtNtB2P_8relocate14RelocateReaderINtNtB2P_12endian_slice11EndianSliceNtNtB1j_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5p_: argument 0"}
!204 = distinct !{!204, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort14sort13_optimalNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1b_20sort_unstable_by_keyjNCINvMs3_NtNtB1f_4read6abbrevNtB2J_18AbbreviationsCache8populateINtNtB2L_8relocate14RelocateReaderINtNtB2L_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5l_"}
!205 = distinct !{!205, !204, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort14sort13_optimalNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1b_20sort_unstable_by_keyjNCINvMs3_NtNtB1f_4read6abbrevNtB2J_18AbbreviationsCache8populateINtNtB2L_8relocate14RelocateReaderINtNtB2L_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5l_: argument 0"}
!206 = distinct !{!206, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort13sort9_optimalNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1a_20sort_unstable_by_keyjNCINvMs3_NtNtB1e_4read6abbrevNtB2I_18AbbreviationsCache8populateINtNtB2K_8relocate14RelocateReaderINtNtB2K_12endian_slice11EndianSliceNtNtB1e_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5k_"}
!207 = distinct !{!207, !206, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort13sort9_optimalNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1a_20sort_unstable_by_keyjNCINvMs3_NtNtB1e_4read6abbrevNtB2I_18AbbreviationsCache8populateINtNtB2K_8relocate14RelocateReaderINtNtB2K_12endian_slice11EndianSliceNtNtB1e_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5k_: argument 0"}
!208 = distinct !{!208, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1m_20sort_unstable_by_keyjNCINvMs3_NtNtB1q_4read6abbrevNtB2U_18AbbreviationsCache8populateINtNtB2W_8relocate14RelocateReaderINtNtB2W_12endian_slice11EndianSliceNtNtB1q_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5w_"}
!209 = distinct !{!209, !208, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1m_20sort_unstable_by_keyjNCINvMs3_NtNtB1q_4read6abbrevNtB2U_18AbbreviationsCache8populateINtNtB2W_8relocate14RelocateReaderINtNtB2W_12endian_slice11EndianSliceNtNtB1q_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5w_: argument 0"}
!210 = distinct !{!210, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetEECs4phXRVW1pDQ_9dwarfdump"}
!211 = distinct !{!211, !210, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetEECs4phXRVW1pDQ_9dwarfdump: argument 0"}
!212 = distinct !{!212, i1 true, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetENtNtNtBd_3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump"}
!213 = distinct !{!213, !212, !"_RNvXs5_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetENtNtNtBd_3ops4drop4Drop4dropCs4phXRVW1pDQ_9dwarfdump: argument 0"}
!214 = distinct !{!214, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1g_20sort_unstable_by_keyjNCINvMs3_NtNtB1k_4read6abbrevNtB2O_18AbbreviationsCache8populateINtNtB2Q_8relocate14RelocateReaderINtNtB2Q_12endian_slice11EndianSliceNtNtB1k_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5q_"}
!215 = distinct !{!215, !214, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1g_20sort_unstable_by_keyjNCINvMs3_NtNtB1k_4read6abbrevNtB2O_18AbbreviationsCache8populateINtNtB2Q_8relocate14RelocateReaderINtNtB2Q_12endian_slice11EndianSliceNtNtB1k_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5q_: argument 0"}
!216 = distinct !{!216, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort8merge_upNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB14_20sort_unstable_by_keyjNCINvMs3_NtNtB18_4read6abbrevNtB2C_18AbbreviationsCache8populateINtNtB2E_8relocate14RelocateReaderINtNtB2E_12endian_slice11EndianSliceNtNtB18_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5e_"}
!217 = distinct !{!217, !216, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort8merge_upNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB14_20sort_unstable_by_keyjNCINvMs3_NtNtB18_4read6abbrevNtB2C_18AbbreviationsCache8populateINtNtB2E_8relocate14RelocateReaderINtNtB2E_12endian_slice11EndianSliceNtNtB18_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5e_: argument 1"}
!218 = distinct !{!218, !216, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort8merge_upNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB14_20sort_unstable_by_keyjNCINvMs3_NtNtB18_4read6abbrevNtB2C_18AbbreviationsCache8populateINtNtB2E_8relocate14RelocateReaderINtNtB2E_12endian_slice11EndianSliceNtNtB18_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5e_: argument 0"}
!219 = distinct !{!219, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort10merge_downNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB17_20sort_unstable_by_keyjNCINvMs3_NtNtB1b_4read6abbrevNtB2F_18AbbreviationsCache8populateINtNtB2H_8relocate14RelocateReaderINtNtB2H_12endian_slice11EndianSliceNtNtB1b_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5h_"}
!220 = distinct !{!220, !219, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort10merge_downNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB17_20sort_unstable_by_keyjNCINvMs3_NtNtB1b_4read6abbrevNtB2F_18AbbreviationsCache8populateINtNtB2H_8relocate14RelocateReaderINtNtB2H_12endian_slice11EndianSliceNtNtB1b_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5h_: argument 1"}
!221 = distinct !{!221, !219, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort10merge_downNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB17_20sort_unstable_by_keyjNCINvMs3_NtNtB1b_4read6abbrevNtB2F_18AbbreviationsCache8populateINtNtB2H_8relocate14RelocateReaderINtNtB2H_12endian_slice11EndianSliceNtNtB1b_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5h_: argument 0"}
!222 = distinct !{!222, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB15_20sort_unstable_by_keyjNCINvMs3_NtNtB19_4read6abbrevNtB2D_18AbbreviationsCache8populateINtNtB2F_8relocate14RelocateReaderINtNtB2F_12endian_slice11EndianSliceNtNtB19_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5f_"}
!223 = distinct !{!223, !222, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB15_20sort_unstable_by_keyjNCINvMs3_NtNtB19_4read6abbrevNtB2D_18AbbreviationsCache8populateINtNtB2F_8relocate14RelocateReaderINtNtB2F_12endian_slice11EndianSliceNtNtB19_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5f_: argument 0"}
!224 = distinct !{!224, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB35_18AbbreviationsCache8populateINtNtB37_8relocate14RelocateReaderINtNtB37_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5H_"}
!225 = distinct !{!225, !224, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB35_18AbbreviationsCache8populateINtNtB37_8relocate14RelocateReaderINtNtB37_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5H_: argument 0"}
!226 = distinct !{!226, !224, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB35_18AbbreviationsCache8populateINtNtB37_8relocate14RelocateReaderINtNtB37_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5H_: argument 1"}
!227 = distinct !{!227, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9partitionNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB17_20sort_unstable_by_keyjNCINvMs3_NtNtB1b_4read6abbrevNtB2F_18AbbreviationsCache8populateINtNtB2H_8relocate14RelocateReaderINtNtB2H_12endian_slice11EndianSliceNtNtB1b_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5h_"}
!228 = distinct !{!228, !227, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9partitionNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMB8_SB17_20sort_unstable_by_keyjNCINvMs3_NtNtB1b_4read6abbrevNtB2F_18AbbreviationsCache8populateINtNtB2H_8relocate14RelocateReaderINtNtB2H_12endian_slice11EndianSliceNtNtB1b_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0EB5h_: argument 0"}
!229 = distinct !{!229, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB37_18AbbreviationsCache8populateINtNtB39_8relocate14RelocateReaderINtNtB39_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0B5J_"}
!230 = distinct !{!230, !229, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB37_18AbbreviationsCache8populateINtNtB39_8relocate14RelocateReaderINtNtB39_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0B5J_: argument 0"}
!231 = distinct !{!231, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB37_18AbbreviationsCache8populateINtNtB39_8relocate14RelocateReaderINtNtB39_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0B5J_"}
!232 = distinct !{!232, !231, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB37_18AbbreviationsCache8populateINtNtB39_8relocate14RelocateReaderINtNtB39_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0B5J_: argument 0"}
!233 = distinct !{!233, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB37_18AbbreviationsCache8populateINtNtB39_8relocate14RelocateReaderINtNtB39_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0B5J_"}
!234 = distinct !{!234, !233, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB37_18AbbreviationsCache8populateINtNtB39_8relocate14RelocateReaderINtNtB39_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0B5J_: argument 0"}
!235 = distinct !{!235, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB3r_18AbbreviationsCache8populateINtNtB3t_8relocate14RelocateReaderINtNtB3t_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0EB63_"}
!236 = distinct !{!236, !235, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB3r_18AbbreviationsCache8populateINtNtB3t_8relocate14RelocateReaderINtNtB3t_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0EB63_: argument 0"}
!237 = distinct !{!237, !235, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyjNCINvMs3_NtNtB1B_4read6abbrevNtB3r_18AbbreviationsCache8populateINtNtB3t_8relocate14RelocateReaderINtNtB3t_12endian_slice11EndianSliceNtNtB1B_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0EB63_: argument 1"}
!238 = distinct !{!238, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9partitionNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB2_9quicksortB17_NCINvMB8_SB17_20sort_unstable_by_keyjNCINvMs3_NtNtB1b_4read6abbrevNtB31_18AbbreviationsCache8populateINtNtB33_8relocate14RelocateReaderINtNtB33_12endian_slice11EndianSliceNtNtB1b_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0EB5D_"}
!239 = distinct !{!239, !238, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9partitionNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB2_9quicksortB17_NCINvMB8_SB17_20sort_unstable_by_keyjNCINvMs3_NtNtB1b_4read6abbrevNtB31_18AbbreviationsCache8populateINtNtB33_8relocate14RelocateReaderINtNtB33_12endian_slice11EndianSliceNtNtB1b_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0EB5D_: argument 0"}
!240 = distinct !{!240, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB3t_18AbbreviationsCache8populateINtNtB3v_8relocate14RelocateReaderINtNtB3v_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0E0B65_"}
!241 = distinct !{!241, !240, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB3t_18AbbreviationsCache8populateINtNtB3v_8relocate14RelocateReaderINtNtB3v_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0E0B65_: argument 0"}
!242 = distinct !{!242, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB3t_18AbbreviationsCache8populateINtNtB3v_8relocate14RelocateReaderINtNtB3v_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0E0B65_"}
!243 = distinct !{!243, !242, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB3t_18AbbreviationsCache8populateINtNtB3v_8relocate14RelocateReaderINtNtB3v_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0E0B65_: argument 0"}
!244 = distinct !{!244, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB3t_18AbbreviationsCache8populateINtNtB3v_8relocate14RelocateReaderINtNtB3v_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0E0B65_"}
!245 = distinct !{!245, !244, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsi68uqYEhoRA_5gimli6common17DebugAbbrevOffsetNCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keyjNCINvMs3_NtNtB1D_4read6abbrevNtB3t_18AbbreviationsCache8populateINtNtB3v_8relocate14RelocateReaderINtNtB3v_12endian_slice11EndianSliceNtNtB1D_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEs0_0E0E0E0B65_: argument 0"}
!246 = !{!203}
!247 = !{!205, !203}
!248 = !{!207, !203}
!249 = !{!209, !203}
!250 = !{!213, !211}
!251 = !{!215}
!252 = !{!215, !203}
!253 = !{!218, !217, !215, !203}
!254 = !{!221, !220, !215, !203}
!255 = !{!223}
!256 = !{!225}
!257 = !{!226}
!258 = !{!225, !228}
!259 = !{!226, !228}
!260 = !{!230}
!261 = !{!232}
!262 = !{!234}
!263 = !{!236}
!264 = !{!237}
!265 = !{!236, !239}
!266 = !{!237, !239}
!267 = !{!241}
!268 = !{!243}
!269 = !{!245}
!270 = distinct !{!270, i1 true, !"_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump"}
!271 = distinct !{!271, !270, !"_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump: argument 0"}
!272 = distinct !{!272, i1 true, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_7sources4once4OnceINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEENtB2_12IntoIterator9into_iterCs4phXRVW1pDQ_9dwarfdump"}
!273 = distinct !{!273, !272, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_7sources4once4OnceINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEENtB2_12IntoIterator9into_iterCs4phXRVW1pDQ_9dwarfdump: argument 1"}
!274 = distinct !{!274, !272, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_7sources4once4OnceINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEENtB2_12IntoIterator9into_iterCs4phXRVW1pDQ_9dwarfdump: argument 0"}
!275 = distinct !{!275, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowShEE8push_mutCs4phXRVW1pDQ_9dwarfdump"}
!276 = distinct !{!276, !275, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowShEE8push_mutCs4phXRVW1pDQ_9dwarfdump: argument 0"}
!277 = !{!271}
!278 = !{!274, !273}
!279 = !{!276}
!280 = distinct !{!280, i1 true, !"_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE13with_capacityCs4phXRVW1pDQ_9dwarfdump"}
!281 = distinct !{!281, !280, !"_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEE13with_capacityCs4phXRVW1pDQ_9dwarfdump: argument 0"}
!282 = !{!281}
!283 = distinct !{!283, i1 true, !"_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EEBI_"}
!284 = distinct !{!284, !283, !"_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EEBI_: argument 0"}
!285 = distinct !{!285, i1 true, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtB2_12IntoIterator9into_iterB1f_"}
!286 = distinct !{!286, !285, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtB2_12IntoIterator9into_iterB1f_: argument 1"}
!287 = distinct !{!287, !285, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtB2_12IntoIterator9into_iterB1f_: argument 0"}
!288 = distinct !{!288, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE8push_mutBH_"}
!289 = distinct !{!289, !288, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE8push_mutBH_: argument 0"}
!290 = distinct !{!290, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1c_"}
!291 = distinct !{!291, !290, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1c_: argument 0"}
!292 = distinct !{!292, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB11_"}
!293 = distinct !{!293, !292, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB11_: argument 0"}
!294 = distinct !{!294, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option4ItemNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEBX_"}
!295 = distinct !{!295, !294, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option4ItemNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEBX_: argument 0"}
!296 = distinct !{!296, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEBZ_"}
!297 = distinct !{!297, !296, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEBZ_: argument 0"}
!298 = !{!284}
!299 = !{!287, !286}
!300 = !{!289}
!301 = !{!297, !295, !293, !291}
!302 = distinct !{!302, i1 true, !"_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE13with_capacityBH_"}
!303 = distinct !{!303, !302, !"_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapE13with_capacityBH_: argument 0"}
!304 = !{!303}
!305 = distinct !{!305, i1 true, !"_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCsgQ7e0lqRvgo_7memmap24MmapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump"}
!306 = distinct !{!306, !305, !"_RINvMCsfER1pEaRVit_11typed_arenaINtB3_5ArenaNtCsgQ7e0lqRvgo_7memmap24MmapE12alloc_extendINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECs4phXRVW1pDQ_9dwarfdump: argument 0"}
!307 = distinct !{!307, i1 true, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_7sources4once4OnceNtCsgQ7e0lqRvgo_7memmap24MmapENtB2_12IntoIterator9into_iterCs4phXRVW1pDQ_9dwarfdump"}
!308 = distinct !{!308, !307, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_7sources4once4OnceNtCsgQ7e0lqRvgo_7memmap24MmapENtB2_12IntoIterator9into_iterCs4phXRVW1pDQ_9dwarfdump: argument 1"}
!309 = distinct !{!309, !307, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_7sources4once4OnceNtCsgQ7e0lqRvgo_7memmap24MmapENtB2_12IntoIterator9into_iterCs4phXRVW1pDQ_9dwarfdump: argument 0"}
!310 = distinct !{!310, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsgQ7e0lqRvgo_7memmap24MmapE8push_mutCs4phXRVW1pDQ_9dwarfdump"}
!311 = distinct !{!311, !310, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsgQ7e0lqRvgo_7memmap24MmapE8push_mutCs4phXRVW1pDQ_9dwarfdump: argument 0"}
!312 = !{!306}
!313 = !{!309, !308}
!314 = !{!311}
!315 = distinct !{!315, i1 true, !"_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaNtCsgQ7e0lqRvgo_7memmap24MmapE13with_capacityCs4phXRVW1pDQ_9dwarfdump"}
!316 = distinct !{!316, !315, !"_RNvMCsfER1pEaRVit_11typed_arenaINtB2_5ArenaNtCsgQ7e0lqRvgo_7memmap24MmapE13with_capacityCs4phXRVW1pDQ_9dwarfdump: argument 0"}
!317 = !{!316}
!318 = distinct !{!318, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_INtNtB7_6borrow3CowShEEE8push_mutCs4phXRVW1pDQ_9dwarfdump"}
!319 = distinct !{!319, !318, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_INtNtB7_6borrow3CowShEEE8push_mutCs4phXRVW1pDQ_9dwarfdump: argument 0"}
!320 = distinct !{!320, !318, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_INtNtB7_6borrow3CowShEEE8push_mutCs4phXRVW1pDQ_9dwarfdump: argument 1"}
!321 = !{!319}
!322 = !{!320}
!323 = distinct !{!323, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE8push_mutBL_"}
!324 = distinct !{!324, !323, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE8push_mutBL_: argument 0"}
!325 = distinct !{!325, !323, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE8push_mutBL_: argument 1"}
!326 = !{!324}
!327 = !{!325}
!328 = distinct !{!328, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtCsgQ7e0lqRvgo_7memmap24MmapEE8push_mutCs4phXRVW1pDQ_9dwarfdump"}
!329 = distinct !{!329, !328, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtCsgQ7e0lqRvgo_7memmap24MmapEE8push_mutCs4phXRVW1pDQ_9dwarfdump: argument 0"}
!330 = distinct !{!330, !328, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtCsgQ7e0lqRvgo_7memmap24MmapEE8push_mutCs4phXRVW1pDQ_9dwarfdump: argument 1"}
!331 = !{!329}
!332 = !{!330}
!333 = distinct !{!333, i1 true, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt"}
!334 = distinct !{!334, !333, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt: argument 1"}
!335 = !{!334}
!336 = distinct !{!336, i1 true, !"_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt"}
!337 = distinct !{!337, !336, !"_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt: argument 1"}
!338 = !{!337}
!339 = distinct !{!339, i1 true, !"_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt"}
!340 = distinct !{!340, !339, !"_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt: argument 1"}
!341 = !{i64 4}
!342 = !{!340}
!343 = distinct !{!343, i1 true, !"_RNvXsY_NtNtCskKLDkoKarTP_4core3fmt3numoNtB7_5Debug3fmt"}
!344 = distinct !{!344, !343, !"_RNvXsY_NtNtCskKLDkoKarTP_4core3fmt3numoNtB7_5Debug3fmt: argument 1"}
!345 = !{i64 16}
!346 = !{!344}
!347 = distinct !{!347, i1 true, !"_RNvXsV_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_5Debug3fmt"}
!348 = distinct !{!348, !347, !"_RNvXsV_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_5Debug3fmt: argument 1"}
!349 = !{i64 2}
!350 = !{!348}
!351 = distinct !{!351, i1 true, !"_RNvXsR_NtNtCskKLDkoKarTP_4core3fmt3numxNtB7_5Debug3fmt"}
!352 = distinct !{!352, !351, !"_RNvXsR_NtNtCskKLDkoKarTP_4core3fmt3numxNtB7_5Debug3fmt: argument 1"}
!353 = !{!352}
!354 = distinct !{!354, i1 true, !"_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt"}
!355 = distinct !{!355, !354, !"_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt: argument 1"}
!356 = !{!355}
end_hunk_1
