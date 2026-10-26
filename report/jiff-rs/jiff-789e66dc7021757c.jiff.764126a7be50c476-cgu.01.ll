Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.01?download=true
inline.NumInlined: 432
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE6format0Bd_:bb.a
    i8 114, label %bb.hh
    i8 83, label %bb.hi
    i8 115, label %bb.hj
    i8 84, label %bb.hn
    i8 116, label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit117.i
    i8 85, label %bb.iq
    i8 117, label %bb.jj
    i8 86, label %bb.jq
    i8 87, label %bb.jv
    i8 119, label %bb.ko
    i8 88, label %bb.kv
    i8 120, label %bb.kw
    i8 89, label %bb.kx
    i8 121, label %bb.lc
    i8 90, label %bb.lh
    i8 122, label %bb.mc
    i8 46, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit
  ]

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !1423
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  store i8 %i.eu, ptr %i.ev, align 1, !noalias !1423
  store i8 34, ptr %i.dw, align 8, !noalias !1423
  %i.ew = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dw) #20, !noalias !1424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !1423
  br label %bb.rp

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val38 = load ptr, ptr %i.ex, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.val38, i64 109
  %i.ez = load i8, ptr %i.ey, align 1, !range !9, !noalias !1425, !noundef !6 ; 2 uses
  %.not.i.i95 = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i95, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsa9sSWSfjDbm_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_13DefaultCustomE16fmt_weekday_full0EBO_.exit.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !1426
  call fastcc void @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_date(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.dk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.val38) #25, !noalias !1425
  %i.fa = load i16, ptr %i.dk, align 8, !range !10, !noalias !1426, !noundef !6
  %i.fb = trunc nuw i16 %i.fa to i1
  br i1 %i.fb, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !1430, !noalias !1426, !noundef !6 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.md, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ff = atomicrmw add ptr %i.fd, i64 -1 release, align 8, !noalias !1431
  %i.fg = icmp eq i64 %i.ff, 1
  br i1 %i.fg, label %bb.h, label %bb.md

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fc) #20, !noalias !1425
  br label %bb.md

bb.i:                                             ; preds = %bb.e
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  %.sroa.03.0.copyload.i.i.i = load i32, ptr %i.fh, align 2, !noalias !1426 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !1426
  %i.fi = shl i32 %.sroa.03.0.copyload.i.i.i, 8
  %i.fj = ashr i32 %i.fi, 24                      ; 3 uses
  %i.fk = icmp ult i32 %i.fj, 3                   ; 2 uses
  %i.fl = or disjoint i32 %i.fj, 12
  %.sroa.02.0.i.i.i.i.i = select i1 %i.fk, i32 %i.fl, i32 %i.fj
  %i.fm = shl i32 %.sroa.03.0.copyload.i.i.i, 16
  %i.fn = ashr exact i32 %i.fm, 16
  %i.fo = add nsw i32 %i.fn, 32800
  %.neg.i.i.i.i.i = sext i1 %i.fk to i32
  %i.fp = add nsw i32 %i.fo, %.neg.i.i.i.i.i      ; 3 uses
  %i.fq = ashr i32 %.sroa.03.0.copyload.i.i.i, 24
  %i.fr = udiv i32 %i.fp, 100
  %i.fs = mul nuw nsw i32 %i.fp, 1461
  %i.ft = lshr i32 %i.fs, 2
  %i.fu = udiv i32 %i.fp, 400
  %i.fv = mul nsw i32 %.sroa.02.0.i.i.i.i.i, 979
  %i.fw = add nsw i32 %i.fv, -2919
  %i.fx = lshr i32 %i.fw, 5
  %i.fy = add nsw i32 %i.fq, -12699423
  %i.fz = sub nuw nsw i32 %i.fy, %i.fr
  %i.ga = add nuw nsw i32 %i.fz, %i.fu
  %i.gb = add nsw i32 %i.ga, %i.ft
  %i.gc = add nsw i32 %i.gb, %i.fx
  %i.gd = mul i32 %i.gc, 613566757
  %i.ge = add i32 %i.gd, -1879048192
  %i.gf = lshr i32 %i.ge, 29                      ; 2 uses
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.j, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit.i.i.i, !prof !11

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @38, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #24, !noalias !1425
  unreachable

_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit.i.i.i: ; preds = %bb.i
  %i.gh = trunc nuw nsw i32 %i.gf to i8
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsa9sSWSfjDbm_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_13DefaultCustomE16fmt_weekday_full0EBO_.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsa9sSWSfjDbm_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_13DefaultCustomE16fmt_weekday_full0EBO_.exit.i: ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit.i.i.i, %bb.d
  %.sroa.0.0.i.i96 = phi i8 [ %i.ez, %bb.d ], [ %i.gh, %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit.i.i.i ]
  %switch.tableidx = add nsw i8 %.sroa.0.0.i.i96, -1 ; 2 uses
  %i.gi = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE6format0Bd_, i64 %i.gi
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.gj = zext nneg i8 %switch.tableidx to i64
  %switch.gep2686 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE6format0Bd_.73, i64 %i.gj
  %switch.load2687 = load ptr, ptr %switch.gep2686, align 8
  store ptr %switch.load2687, ptr %i.ek, align 8, !alias.scope !1432, !noalias !1424
  %.sroa.61997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i64 %switch.ext, ptr %.sroa.61997.0..sroa_idx, align 8, !alias.scope !1432, !noalias !1424
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !1432, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

default.unreachable:                              ; preds = %bb.ln
  unreachable

bb.k:                                             ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val39 = load ptr, ptr %i.gk, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.val39, i64 109
  %i.gm = load i8, ptr %i.gl, align 1, !range !9, !noalias !1433, !noundef !6 ; 2 uses
  %.not.i.i99 = icmp eq i8 %i.gm, 0
  br i1 %.not.i.i99, label %bb.l, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsa9sSWSfjDbm_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_13DefaultCustomE18fmt_weekday_abbrev0EBO_.exit.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !1434
  call fastcc void @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_date(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.dj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.val39) #25, !noalias !1433
  %i.gn = load i16, ptr %i.dj, align 8, !range !10, !noalias !1434, !noundef !6
  %i.go = trunc nuw i16 %i.gn to i1
  br i1 %i.go, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !1438, !noalias !1434, !noundef !6 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %bb.mi, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gs = atomicrmw add ptr %i.gq, i64 -1 release, align 8, !noalias !1439
  %i.gt = icmp eq i64 %i.gs, 1
  br i1 %i.gt, label %bb.o, label %bb.mi

bb.o:                                             ; preds = %bb.n
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gp) #20, !noalias !1433
  br label %bb.mi

bb.p:                                             ; preds = %bb.l
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  %.sroa.03.0.copyload.i.i.i106 = load i32, ptr %i.gu, align 2, !noalias !1434 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !1434
  %i.gv = shl i32 %.sroa.03.0.copyload.i.i.i106, 8
  %i.gw = ashr i32 %i.gv, 24                      ; 3 uses
  %i.gx = icmp ult i32 %i.gw, 3                   ; 2 uses
  %i.gy = or disjoint i32 %i.gw, 12
  %.sroa.02.0.i.i.i.i.i107 = select i1 %i.gx, i32 %i.gy, i32 %i.gw
  %i.gz = shl i32 %.sroa.03.0.copyload.i.i.i106, 16
  %i.ha = ashr exact i32 %i.gz, 16
  %i.hb = add nsw i32 %i.ha, 32800
  %.neg.i.i.i.i.i108 = sext i1 %i.gx to i32
  %i.hc = add nsw i32 %i.hb, %.neg.i.i.i.i.i108   ; 3 uses
  %i.hd = ashr i32 %.sroa.03.0.copyload.i.i.i106, 24
  %i.he = udiv i32 %i.hc, 100
  %i.hf = mul nuw nsw i32 %i.hc, 1461
  %i.hg = lshr i32 %i.hf, 2
  %i.hh = udiv i32 %i.hc, 400
  %i.hi = mul nsw i32 %.sroa.02.0.i.i.i.i.i107, 979
  %i.hj = add nsw i32 %i.hi, -2919
  %i.hk = lshr i32 %i.hj, 5
  %i.hl = add nsw i32 %i.hd, -12699423
  %i.hm = sub nuw nsw i32 %i.hl, %i.he
  %i.hn = add nuw nsw i32 %i.hm, %i.hh
  %i.ho = add nsw i32 %i.hn, %i.hg
  %i.hp = add nsw i32 %i.ho, %i.hk
  %i.hq = mul i32 %i.hp, 613566757
  %i.hr = add i32 %i.hq, -1879048192
  %i.hs = lshr i32 %i.hr, 29                      ; 2 uses
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.q, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit.i.i.i109, !prof !11

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @38, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #24, !noalias !1433
  unreachable

_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit.i.i.i109: ; preds = %bb.p
  %i.hu = trunc nuw nsw i32 %i.hs to i8
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsa9sSWSfjDbm_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_13DefaultCustomE18fmt_weekday_abbrev0EBO_.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsa9sSWSfjDbm_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_13DefaultCustomE18fmt_weekday_abbrev0EBO_.exit.i: ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit.i.i.i109, %bb.k
  %.sroa.0.0.i.i100 = phi i8 [ %i.gm, %bb.k ], [ %i.hu, %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit.i.i.i109 ]
  %2 = zext nneg i8 %.sroa.0.0.i.i100 to i64
  %i.hv = getelementptr [8 x i8], ptr @switch.table._RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE6format0Bd_.74, i64 %2
  %switch.gep2690 = getelementptr i8, ptr %i.hv, i64 -8
  %switch.load2691 = load ptr, ptr %switch.gep2690, align 8
  store ptr %switch.load2691, ptr %i.ek, align 8, !alias.scope !1440, !noalias !1424
  %.sroa.61999.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i64 3, ptr %.sroa.61999.0..sroa_idx, align 8, !alias.scope !1440, !noalias !1424
  %.sroa.72000.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 0, ptr %.sroa.72000.0..sroa_idx, align 8, !alias.scope !1440, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.r:                                             ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val40 = load ptr, ptr %i.hw, align 8, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.val40, i64 92
  %i.hy = load i8, ptr %i.hx, align 4, !range !12, !noalias !1441, !noundef !6
  %i.hz = trunc nuw i8 %i.hy to i1
  %i.ia = getelementptr inbounds nuw i8, ptr %.val40, i64 93
  %i.ib = load i8, ptr %i.ia, align 1, !noalias !1441
  br i1 %i.hz, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE14fmt_month_full0EB16_.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !1442
  call fastcc void @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_date(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.dg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.val40) #25, !noalias !1441
  %i.ic = load i16, ptr %i.dg, align 8, !range !10, !noalias !1442, !noundef !6
  %i.id = trunc nuw i16 %i.ic to i1
  br i1 %i.id, label %bb.t, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE14fmt_month_full0EB16_.exit.i

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !1446, !noalias !1442, !noundef !6 ; 2 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.mn, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ih = atomicrmw add ptr %i.if, i64 -1 release, align 8, !noalias !1447
  %i.ii = icmp eq i64 %i.ih, 1
  br i1 %i.ii, label %bb.v, label %bb.mn

bb.v:                                             ; preds = %bb.u
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ie) #20, !noalias !1441
  br label %bb.mn

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE14fmt_month_full0EB16_.exit.i: ; preds = %bb.s
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %.sroa.4.0.copyload.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !1442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !1442
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE14fmt_month_full0EB16_.exit.thread.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE14fmt_month_full0EB16_.exit.thread.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE14fmt_month_full0EB16_.exit.i, %bb.r
  %.pn2.i3.i = phi i8 [ %.sroa.4.0.copyload.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE14fmt_month_full0EB16_.exit.i ], [ %i.ib, %bb.r ] ; 2 uses
  %switch.tableidx2692 = add i8 %.pn2.i3.i, -1    ; 3 uses
  %i.ij = icmp ult i8 %switch.tableidx2692, 12
  br i1 %i.ij, label %switch.lookup2693, label %bb.w, !prof !13

bb.w:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE14fmt_month_full0EB16_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !1441
  store i8 %.pn2.i3.i, ptr %i.di, align 1, !noalias !1441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !1441
  store ptr %i.di, ptr %i.dh, align 8, !noalias !1441
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr @_RNvXs_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impaNtB8_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1441
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @86, ptr noundef nonnull %i.dh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #24, !noalias !1441
  unreachable

bb.x:                                             ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej), !noalias !1423
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val41 = load ptr, ptr %i.ik, align 8, !nonnull !6, !align !8, !noundef !6
  call fastcc void @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE16fmt_month_abbrevBb_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ej, ptr nonnull %.val41)
  %i.il = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.im = load i8, ptr %i.il, align 8, !range !1448, !noalias !1423, !noundef !6 ; 2 uses
  %i.in = icmp eq i8 %i.im, -1
  %i.io = load ptr, ptr %i.ej, align 8, !noalias !1423 ; 5 uses
  br i1 %i.in, label %bb.ms, label %bb.mx

bb.y:                                             ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val43 = load ptr, ptr %i.ip, align 8, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.val43, i64 80
  %i.ir = load i16, ptr %i.iq, align 8, !range !10, !noalias !1449, !noundef !6
  %i.is = getelementptr inbounds nuw i8, ptr %.val43, i64 82
  %i.it = load i16, ptr %i.is, align 2, !noalias !1449
  %i.iu = trunc nuw i16 %i.ir to i1
  br i1 %i.iu, label %bb.nd, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !1450
  call fastcc void @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_date(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.df, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.val43) #25, !noalias !1449
  %i.iv = load i16, ptr %i.df, align 8, !range !10, !noalias !1450, !noundef !6
  %i.iw = trunc nuw i16 %i.iv to i1
  br i1 %i.iw, label %bb.aa, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionsE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE11fmt_century0EB16_.exit.i

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %i.ix = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  %i.iy = load ptr, ptr %i.ix, align 8, !alias.scope !1454, !noalias !1450, !noundef !6 ; 2 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.my, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ja = atomicrmw add ptr %i.iy, i64 -1 release, align 8, !noalias !1455
  %i.jb = icmp eq i64 %i.ja, 1
  br i1 %i.jb, label %bb.ac, label %bb.my

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ix) #20, !noalias !1449
  br label %bb.my

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionsE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE11fmt_century0EB16_.exit.i: ; preds = %bb.z
  %i.jc = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %.sroa.02.0.copyload.i.i.i = load i16, ptr %i.jc, align 2, !noalias !1450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !1450
  br label %bb.nd

bb.ad:                                            ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  %i.jd = load ptr, ptr %0, align 8, !alias.scope !1456, !nonnull !6, !noundef !6 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8, !alias.scope !1456, !nonnull !6, !align !8, !noundef !6
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ji = load ptr, ptr %i.jh, align 8, !alias.scope !1456, !nonnull !6, !align !8, !noundef !6
  %i.jj = call { i64, ptr } @_RINvYNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom15format_datetimeNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.je, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.jd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.el, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.jg, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ji), !noalias !1457 ; 2 uses
  %i.jk = extractvalue { i64, ptr } %i.jj, 0
  %i.jl = trunc nuw i64 %i.jk to i1
  br i1 %i.jl, label %bb.ne, label %bb.nj

bb.ae:                                            ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val47 = load ptr, ptr %i.jm, align 8, !nonnull !6, !align !8, !noundef !6 ; 9 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val48 = load ptr, ptr %i.jn, align 8          ; 19 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.val47, i64 92
  %i.jp = load i8, ptr %i.jo, align 4, !range !12, !noalias !1458, !noundef !6
  %i.jq = trunc nuw i8 %i.jp to i1
  %i.jr = getelementptr inbounds nuw i8, ptr %.val47, i64 93
  %i.js = load i8, ptr %i.jr, align 1, !noalias !1458
  br i1 %i.jq, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !1459
  call fastcc void @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_date(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.de, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.val47) #25, !noalias !1458
  %i.jt = load i16, ptr %i.de, align 8, !range !10, !noalias !1459, !noundef !6
  %i.ju = trunc nuw i16 %i.jt to i1
  br i1 %i.ju, label %bb.ag, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE9fmt_month0EB16_.exit.i.i

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  %i.jv = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  %i.jw = load ptr, ptr %i.jv, align 8, !alias.scope !1463, !noalias !1459, !noundef !6 ; 2 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jy = atomicrmw add ptr %i.jw, i64 -1 release, align 8, !noalias !1464
  %i.jz = icmp eq i64 %i.jy, 1
  br i1 %i.jz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jv) #20, !noalias !1458
  br label %bb.aj

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE9fmt_month0EB16_.exit.i.i: ; preds = %bb.af
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %.sroa.4.0.copyload.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !1459
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !1459
  %i.ka = call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 0) #20, !noalias !1458
  br label %bb.nk

bb.ak:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE9fmt_month0EB16_.exit.i.i, %bb.ae
  %.pn2.i3.i.i = phi i8 [ %.sroa.4.0.copyload.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE9fmt_month0EB16_.exit.i.i ], [ %i.js, %bb.ae ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val48) ]
  %i.kb = tail call i8 @llvm.abs.i8(i8 %.pn2.i3.i.i, i1 false) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  %i.kc = load ptr, ptr %.val48, align 8, !alias.scope !1466, !noalias !1467, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load i16, ptr %i.kd, align 8, !noalias !1468, !noundef !6
  %i.kf = zext i16 %i.ke to i64
  %i.kg = add nuw nsw i64 %i.kf, 2
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ki = load i64, ptr %i.kh, align 8, !noalias !1468, !noundef !6
  %i.kj = icmp ugt i64 %i.kg, %i.ki
  br i1 %i.kj, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i119, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.thread.i, !prof !14

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i119: ; preds = %bb.ak
end_hunk_0
begin_hunk_1_@_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE6format0Bd_:bb.a
  %i.bba = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ce)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i322 unwind label %bb.me, !noalias !1759

bb.me:                                            ; preds = %bb.md
  %i.bbb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bbc = icmp eq ptr %i.baz, null
  br i1 %i.bbc, label %common.resume, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.bbd = atomicrmw add ptr %i.baz, i64 -1 release, align 8, !noalias !1761
  %i.bbe = icmp eq i64 %i.bbd, 1
  br i1 %i.bbe, label %bb.mg, label %common.resume

bb.mg:                                            ; preds = %bb.mf
  fence acquire, !noalias !1424
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cf) #20
          to label %common.resume unwind label %bb.mh, !noalias !1759

bb.mh:                                            ; preds = %bb.mg
  %i.bbf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !1759
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i322: ; preds = %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !1759
  %i.bbg = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.baz, ptr noundef %i.bba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !1759
  store ptr %i.bbg, ptr %i.ek, align 8, !alias.scope !1757, !noalias !1424
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 -1, ptr %i.bbh, align 8, !alias.scope !1757, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.mi:                                            ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !1434
  %i.bbi = call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 0) #20, !noalias !1433 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1762)
  call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !1764
  store ptr %i.bbi, ptr %i.cd, align 8, !noalias !1764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !1764
  store i8 1, ptr %i.cc, align 8, !noalias !1765
  %.sroa.51690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  store i8 97, ptr %.sroa.51690.0..sroa_idx, align 1, !noalias !1765
  %.sroa.61691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store i8 0, ptr %.sroa.61691.0..sroa_idx, align 2, !noalias !1765
  %i.bbj = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cc)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i330 unwind label %bb.mj, !noalias !1764

bb.mj:                                            ; preds = %bb.mi
  %i.bbk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bbl = icmp eq ptr %i.bbi, null
  br i1 %i.bbl, label %common.resume, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %i.bbm = atomicrmw add ptr %i.bbi, i64 -1 release, align 8, !noalias !1766
  %i.bbn = icmp eq i64 %i.bbm, 1
  br i1 %i.bbn, label %bb.ml, label %common.resume

bb.ml:                                            ; preds = %bb.mk
  fence acquire, !noalias !1424
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cd) #20
          to label %common.resume unwind label %bb.mm, !noalias !1764

bb.mm:                                            ; preds = %bb.ml
  %i.bbo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !1764
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i330: ; preds = %bb.mi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !1764
  %i.bbp = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.bbi, ptr noundef %i.bbj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !1764
  store ptr %i.bbp, ptr %i.ek, align 8, !alias.scope !1762, !noalias !1424
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 -1, ptr %i.bbq, align 8, !alias.scope !1762, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.mn:                                            ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !1442
  %i.bbr = call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 0) #20, !noalias !1441 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1767)
  call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !1769
  store ptr %i.bbr, ptr %i.cb, align 8, !noalias !1769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !1769
  store i8 1, ptr %i.ca, align 8, !noalias !1770
  %.sroa.51684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store i8 66, ptr %.sroa.51684.0..sroa_idx, align 1, !noalias !1770
  %.sroa.61685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  store i8 0, ptr %.sroa.61685.0..sroa_idx, align 2, !noalias !1770
  %i.bbs = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ca)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i338 unwind label %bb.mo, !noalias !1769

bb.mo:                                            ; preds = %bb.mn
  %i.bbt = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bbu = icmp eq ptr %i.bbr, null
  br i1 %i.bbu, label %common.resume, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.bbv = atomicrmw add ptr %i.bbr, i64 -1 release, align 8, !noalias !1771
  %i.bbw = icmp eq i64 %i.bbv, 1
  br i1 %i.bbw, label %bb.mq, label %common.resume

bb.mq:                                            ; preds = %bb.mp
  fence acquire, !noalias !1424
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cb) #20
          to label %common.resume unwind label %bb.mr, !noalias !1769

bb.mr:                                            ; preds = %bb.mq
  %i.bbx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !1769
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i338: ; preds = %bb.mn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !1769
  %i.bby = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.bbr, ptr noundef %i.bbs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !1769
  store ptr %i.bby, ptr %i.ek, align 8, !alias.scope !1767, !noalias !1424
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 -1, ptr %i.bbz, align 8, !alias.scope !1767, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

switch.lookup2693:                                ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE14fmt_month_full0EB16_.exit.thread.i
  %i.bca = zext nneg i8 %switch.tableidx2692 to i64
  %switch.gep2694 = getelementptr inbounds nuw i8, ptr @switch.table._RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE6format0Bd_.75, i64 %i.bca
  %switch.load2695 = load i8, ptr %switch.gep2694, align 1
  %switch.ext2696 = zext i8 %switch.load2695 to i64
  %i.bcb = zext nneg i8 %switch.tableidx2692 to i64
  %switch.gep2697 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE6format0Bd_.76, i64 %i.bcb
  %switch.load2698 = load ptr, ptr %switch.gep2697, align 8
  store ptr %switch.load2698, ptr %i.ek, align 8, !alias.scope !1772, !noalias !1424
  %.sroa.62003.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i64 %switch.ext2696, ptr %.sroa.62003.0..sroa_idx, align 8, !alias.scope !1772, !noalias !1424
  %.sroa.72004.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 0, ptr %.sroa.72004.0..sroa_idx, align 8, !alias.scope !1772, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.ms:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !noalias !1423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !1773
  store ptr %i.io, ptr %i.bz, align 8, !noalias !1773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !1773
  store i8 1, ptr %i.by, align 8, !noalias !1774
  %.sroa.51678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 98, ptr %.sroa.51678.0..sroa_idx, align 1, !noalias !1774
  %.sroa.61679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store i8 0, ptr %.sroa.61679.0..sroa_idx, align 2, !noalias !1774
  %i.bcc = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.by)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i346 unwind label %bb.mt, !noalias !1773

bb.mt:                                            ; preds = %bb.ms
  %i.bcd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bce = icmp eq ptr %i.io, null
  br i1 %i.bce, label %common.resume, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.bcf = atomicrmw add ptr %i.io, i64 -1 release, align 8, !noalias !1775
  %i.bcg = icmp eq i64 %i.bcf, 1
  br i1 %i.bcg, label %bb.mv, label %common.resume

bb.mv:                                            ; preds = %bb.mu
  fence acquire, !noalias !1424
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bz) #20
          to label %common.resume unwind label %bb.mw, !noalias !1773

bb.mw:                                            ; preds = %bb.mv
  %i.bch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !1773
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i346: ; preds = %bb.ms
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !1773
  %i.bci = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.io, ptr noundef %i.bcc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !1773
  store ptr %i.bci, ptr %i.ek, align 8, !alias.scope !1776, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit147.i

bb.mx:                                            ; preds = %bb.x
  %.sroa.42236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.42236.0.copyload = load i64, ptr %.sroa.42236.0..sroa_idx, align 8, !noalias !1423
  %.sroa.62238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 17
  %.sroa.8.0..sroa_idx2014 = getelementptr inbounds nuw i8, ptr %i.ek, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa_idx2014, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.62238.0..sroa_idx, i64 7, i1 false), !noalias !1424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !noalias !1423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1777)
  store ptr %i.io, ptr %i.ek, align 8, !alias.scope !1778, !noalias !1424
  %.sroa.62008.0..sroa_idx2009 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i64 %.sroa.42236.0.copyload, ptr %.sroa.62008.0..sroa_idx2009, align 8, !alias.scope !1778, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit147.i

_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit147.i: ; preds = %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i346, %bb.mx
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 %i.im, ptr %i.bcj, align 8, !alias.scope !1778, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.my:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !1450
  %i.bck = call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 0) #20, !noalias !1449 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !1779
  store ptr %i.bck, ptr %i.bx, align 8, !noalias !1779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !1779
  store i8 1, ptr %i.bw, align 8, !noalias !1780
  %.sroa.51672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store i8 67, ptr %.sroa.51672.0..sroa_idx, align 1, !noalias !1780
  %.sroa.61673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  store i8 0, ptr %.sroa.61673.0..sroa_idx, align 2, !noalias !1780
  %i.bcl = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bw)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i354 unwind label %bb.mz, !noalias !1779

bb.mz:                                            ; preds = %bb.my
  %i.bcm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bcn = icmp eq ptr %i.bck, null
  br i1 %i.bcn, label %common.resume, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.bco = atomicrmw add ptr %i.bck, i64 -1 release, align 8, !noalias !1781
  %i.bcp = icmp eq i64 %i.bco, 1
  br i1 %i.bcp, label %bb.nb, label %common.resume

bb.nb:                                            ; preds = %bb.na
  fence acquire, !noalias !1424
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bx) #20
          to label %common.resume unwind label %bb.nc, !noalias !1779

bb.nc:                                            ; preds = %bb.nb
  %i.bcq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !1779
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i354: ; preds = %bb.my
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !1779
  %i.bcr = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.bck, ptr noundef %i.bcl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !1779
  store ptr %i.bcr, ptr %i.ek, align 8, !alias.scope !1782, !noalias !1424
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 -1, ptr %i.bcs, align 8, !alias.scope !1782, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.nd:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionsE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE11fmt_century0EB16_.exit.i, %bb.y
  %.pn2.i5.i = phi i16 [ %.sroa.02.0.copyload.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionsE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE11fmt_century0EB16_.exit.i ], [ %i.it, %bb.y ]
  %i.bct = sdiv i16 %.pn2.i5.i, 100
  %i.bcu = sext i16 %i.bct to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  store i64 %i.bcu, ptr %i.ek, align 8, !alias.scope !1784, !noalias !1424
  %.sroa.62016.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i8 32, ptr %.sroa.62016.0..sroa_idx, align 8, !alias.scope !1784, !noalias !1424
  %.sroa.72017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 9
  store i8 0, ptr %.sroa.72017.0..sroa_idx, align 1, !alias.scope !1784, !noalias !1424
  %.sroa.82019.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 4, ptr %.sroa.82019.0..sroa_idx, align 8, !alias.scope !1784, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.ne:                                            ; preds = %bb.ad
  %i.bcv = extractvalue { i64, ptr } %i.jj, 1     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !1785
  store ptr %i.bcv, ptr %i.bv, align 8, !noalias !1785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !1785
  store i8 1, ptr %i.bu, align 8, !noalias !1786
  %.sroa.51666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 99, ptr %.sroa.51666.0..sroa_idx, align 1, !noalias !1786
  %.sroa.61667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i8 0, ptr %.sroa.61667.0..sroa_idx, align 2, !noalias !1786
  %i.bcw = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bu)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i362 unwind label %bb.nf, !noalias !1785

bb.nf:                                            ; preds = %bb.ne
  %i.bcx = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bcy = icmp eq ptr %i.bcv, null
  br i1 %i.bcy, label %common.resume, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.bcz = atomicrmw add ptr %i.bcv, i64 -1 release, align 8, !noalias !1787
  %i.bda = icmp eq i64 %i.bcz, 1
  br i1 %i.bda, label %bb.nh, label %common.resume

bb.nh:                                            ; preds = %bb.ng
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv) #20
          to label %common.resume unwind label %bb.ni, !noalias !1785

bb.ni:                                            ; preds = %bb.nh
  %i.bdb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !1785
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i362: ; preds = %bb.ne
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !1785
  %i.bdc = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.bcv, ptr noundef %i.bcw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !1785
  store ptr %i.bdc, ptr %i.ek, align 8, !alias.scope !1788
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 -1, ptr %i.bdd, align 8, !alias.scope !1788
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.nj:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !1788)
  call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  %.sroa.42022.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 3, ptr %.sroa.42022.0..sroa_idx, align 8, !alias.scope !1786
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.nk:                                            ; preds = %bb.ao, %bb.at, %bb.ay, %bb.bw, %bb.bx, %bb.bn, %bb.bi, %bb.bd, %bb.aj
  %.sroa.02024.0 = phi ptr [ %i.kw, %bb.ao ], [ %i.ls, %bb.at ], [ %i.nh, %bb.bd ], [ %i.od, %bb.bi ], [ %i.qc, %bb.bw ], [ %i.qk, %bb.bx ], [ %i.ox, %bb.bn ], [ %i.ml, %bb.ay ], [ %i.ka, %bb.aj ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !1790
  store ptr %.sroa.02024.0, ptr %i.bt, align 8, !noalias !1790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !1790
  store i8 1, ptr %i.bs, align 8, !noalias !1791
  %.sroa.51660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store i8 68, ptr %.sroa.51660.0..sroa_idx, align 1, !noalias !1791
  %.sroa.61661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store i8 0, ptr %.sroa.61661.0..sroa_idx, align 2, !noalias !1791
  %i.bde = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bs)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i370 unwind label %bb.nl, !noalias !1790

bb.nl:                                            ; preds = %bb.nk
  %i.bdf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bdg = icmp eq ptr %.sroa.02024.0, null
  br i1 %i.bdg, label %common.resume, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.bdh = atomicrmw add ptr %.sroa.02024.0, i64 -1 release, align 8, !noalias !1792
  %i.bdi = icmp eq i64 %i.bdh, 1
  br i1 %i.bdi, label %bb.nn, label %common.resume

bb.nn:                                            ; preds = %bb.nm
  fence acquire, !noalias !1424
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bt) #20
          to label %common.resume unwind label %bb.no, !noalias !1790

bb.no:                                            ; preds = %bb.nn
  %i.bdj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !1790
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i370: ; preds = %bb.nk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !1790
  %i.bdk = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.02024.0, ptr noundef %i.bde)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !1790
  store ptr %i.bdk, ptr %i.ek, align 8, !alias.scope !1793, !noalias !1424
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 -1, ptr %i.bdl, align 8, !alias.scope !1793, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.np:                                            ; preds = %bb.bu
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.bdn = load ptr, ptr %i.pz, align 8, !alias.scope !1507, !noalias !1467, !nonnull !6, !noundef !6
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdn, i64 %.pre-phi2365 ; 2 uses
  %i.bdp = shl nuw nsw i64 %.sroa.059.0.i117, 1
  %i.bdq = getelementptr inbounds nuw i8, ptr @9, i64 %i.bdp ; 2 uses
  %i.bdr = load i8, ptr %i.bdq, align 1, !noalias !1794, !noundef !6
  store i8 %i.bdr, ptr %i.bdo, align 1, !noalias !1508
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdo, i64 1
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdq, i64 1
  %i.bdu = load i8, ptr %i.bdt, align 1, !noalias !1794, !noundef !6
  store i8 %i.bdu, ptr %i.bds, align 1, !noalias !1508
  %i.bdv = add i16 %i.px, 2
  store i16 %i.bdv, ptr %i.bdm, align 8, !alias.scope !1507, !noalias !1467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1795)
  %.sroa.132025.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 3, ptr %.sroa.132025.0..sroa_idx, align 8, !alias.scope !1796, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.nq:                                            ; preds = %bb.cc, %bb.cb, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !1510
  %i.bdw = call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 0) #20, !noalias !1509 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !1797
  store ptr %i.bdw, ptr %i.br, align 8, !noalias !1797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !1797
  store i8 1, ptr %i.bq, align 8, !noalias !1798
  %.sroa.51654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 100, ptr %.sroa.51654.0..sroa_idx, align 1, !noalias !1798
  %.sroa.61655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store i8 0, ptr %.sroa.61655.0..sroa_idx, align 2, !noalias !1798
  %i.bdx = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bq)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i378 unwind label %bb.nr, !noalias !1797

bb.nr:                                            ; preds = %bb.nq
  %i.bdy = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bdz = icmp eq ptr %i.bdw, null
  br i1 %i.bdz, label %common.resume, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.bea = atomicrmw add ptr %i.bdw, i64 -1 release, align 8, !noalias !1799
  %i.beb = icmp eq i64 %i.bea, 1
end_hunk_1
begin_hunk_2_@_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE6format0Bd_:bb.a
_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i410: ; preds = %bb.oo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !1821
  %i.bga = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.bft, ptr noundef %i.bfu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !1821
  store ptr %i.bga, ptr %i.ek, align 8, !alias.scope !1824, !noalias !1424
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 -1, ptr %i.bgb, align 8, !alias.scope !1824, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.ot:                                            ; preds = %bb.en, %bb.ei
  %.pn2.i.ph.i = phi i16 [ %.sroa.07.0.extract.trunc.i.i.i, %bb.en ], [ %i.zn, %bb.ei ]
  %i.bgc = sext i16 %.pn2.i.ph.i to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  store i64 %i.bgc, ptr %i.ek, align 8, !alias.scope !1826, !noalias !1424
  %.sroa.62045.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i8 48, ptr %.sroa.62045.0..sroa_idx, align 8, !alias.scope !1826, !noalias !1424
  %.sroa.72046.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 9
  store i8 4, ptr %.sroa.72046.0..sroa_idx, align 1, !alias.scope !1826, !noalias !1424
  %.sroa.82048.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 4, ptr %.sroa.82048.0..sroa_idx, align 8, !alias.scope !1826, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.ou:                                            ; preds = %bb.es, %bb.er, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !1584
  %i.bgd = call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 0) #20, !noalias !1583 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !1827
  store ptr %i.bgd, ptr %i.bh, align 8, !noalias !1827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !1827
  store i8 1, ptr %i.bg, align 8, !noalias !1828
  %.sroa.51624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 103, ptr %.sroa.51624.0..sroa_idx, align 1, !noalias !1828
  %.sroa.61625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i8 0, ptr %.sroa.61625.0..sroa_idx, align 2, !noalias !1828
  %i.bge = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bg)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i418 unwind label %bb.ov, !noalias !1827

bb.ov:                                            ; preds = %bb.ou
  %i.bgf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bgg = icmp eq ptr %i.bgd, null
  br i1 %i.bgg, label %common.resume, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.bgh = atomicrmw add ptr %i.bgd, i64 -1 release, align 8, !noalias !1829
  %i.bgi = icmp eq i64 %i.bgh, 1
  br i1 %i.bgi, label %bb.ox, label %common.resume

bb.ox:                                            ; preds = %bb.ow
  fence acquire, !noalias !1424
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bh) #20
          to label %common.resume unwind label %bb.oy, !noalias !1827

bb.oy:                                            ; preds = %bb.ox
  %i.bgj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !1827
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i418: ; preds = %bb.ou
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !1827
  %i.bgk = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.bgd, ptr noundef %i.bge)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1827
  store ptr %i.bgk, ptr %i.ek, align 8, !alias.scope !1830, !noalias !1424
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 -1, ptr %i.bgl, align 8, !alias.scope !1830, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.oz:                                            ; preds = %bb.et, %bb.eo
  %.pn2.i.ph.i156 = phi i16 [ %.sroa.07.0.extract.trunc.i.i.i155, %bb.et ], [ %i.aac, %bb.eo ]
  %i.bgm = srem i16 %.pn2.i.ph.i156, 100
  %i.bgn = sext i16 %i.bgm to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  store i64 %i.bgn, ptr %i.ek, align 8, !alias.scope !1832, !noalias !1424
  %.sroa.62051.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i8 48, ptr %.sroa.62051.0..sroa_idx, align 8, !alias.scope !1832, !noalias !1424
  %.sroa.72052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 9
  store i8 2, ptr %.sroa.72052.0..sroa_idx, align 1, !alias.scope !1832, !noalias !1424
  %.sroa.82054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 4, ptr %.sroa.82054.0..sroa_idx, align 8, !alias.scope !1832, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.pa:                                            ; preds = %bb.eu
  %i.bgo = tail call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 3) #20, !noalias !1590 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !1835
  store ptr %i.bgo, ptr %i.bf, align 8, !noalias !1835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !1835
  store i8 1, ptr %i.be, align 8, !noalias !1836
  %.sroa.51618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 72, ptr %.sroa.51618.0..sroa_idx, align 1, !noalias !1836
  %.sroa.61619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store i8 0, ptr %.sroa.61619.0..sroa_idx, align 2, !noalias !1836
  %i.bgp = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.be)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i426 unwind label %bb.pb, !noalias !1835

bb.pb:                                            ; preds = %bb.pa
  %i.bgq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bgr = icmp eq ptr %i.bgo, null
  br i1 %i.bgr, label %common.resume, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.bgs = atomicrmw add ptr %i.bgo, i64 -1 release, align 8, !noalias !1837
  %i.bgt = icmp eq i64 %i.bgs, 1
  br i1 %i.bgt, label %bb.pd, label %common.resume

bb.pd:                                            ; preds = %bb.pc
  fence acquire, !noalias !1424
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf) #20
          to label %common.resume unwind label %bb.pe, !noalias !1835

bb.pe:                                            ; preds = %bb.pd
  %i.bgu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !1835
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i426: ; preds = %bb.pa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !1835
  %i.bgv = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.bgo, ptr noundef %i.bgp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !1835
  store ptr %i.bgv, ptr %i.ek, align 8, !alias.scope !1833, !noalias !1424
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 -1, ptr %i.bgw, align 8, !alias.scope !1833, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.pf:                                            ; preds = %bb.eu
  %i.bgx = getelementptr inbounds nuw i8, ptr %.val56, i64 103
  %i.bgy = load i8, ptr %i.bgx, align 1, !noalias !1590
  %i.bgz = sext i8 %i.bgy to i64
  %i.bha = inttoptr i64 %i.bgz to ptr
  store ptr %i.bha, ptr %i.ek, align 8, !alias.scope !1838, !noalias !1424
  %.sroa.62057.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i8 48, ptr %.sroa.62057.0..sroa_idx, align 8, !alias.scope !1838, !noalias !1424
  %.sroa.72058.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 9
  store i8 2, ptr %.sroa.72058.0..sroa_idx, align 1, !alias.scope !1838, !noalias !1424
  %.sroa.82060.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 4, ptr %.sroa.82060.0..sroa_idx, align 8, !alias.scope !1838, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.pg:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !1423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !1839
  store ptr %i.aav, ptr %i.bd, align 8, !noalias !1839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !1839
  store i8 1, ptr %i.bc, align 8, !noalias !1840
  %.sroa.51612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store i8 98, ptr %.sroa.51612.0..sroa_idx, align 1, !noalias !1840
  %.sroa.61613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i8 0, ptr %.sroa.61613.0..sroa_idx, align 2, !noalias !1840
  %i.bhb = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bc)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i434 unwind label %bb.ph, !noalias !1839

bb.ph:                                            ; preds = %bb.pg
  %i.bhc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bhd = icmp eq ptr %i.aav, null
  br i1 %i.bhd, label %common.resume, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.bhe = atomicrmw add ptr %i.aav, i64 -1 release, align 8, !noalias !1841
  %i.bhf = icmp eq i64 %i.bhe, 1
  br i1 %i.bhf, label %bb.pj, label %common.resume

bb.pj:                                            ; preds = %bb.pi
  fence acquire, !noalias !1424
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bd) #20
          to label %common.resume unwind label %bb.pk, !noalias !1839

bb.pk:                                            ; preds = %bb.pj
  %i.bhg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !1839
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i434: ; preds = %bb.pg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !1839
  %i.bhh = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.aav, ptr noundef %i.bhb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !1839
  store ptr %i.bhh, ptr %i.ek, align 8, !alias.scope !1842, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit136.i

bb.pl:                                            ; preds = %bb.ev
  %.sroa.42248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.sroa.42248.0.copyload = load i64, ptr %.sroa.42248.0..sroa_idx, align 8, !noalias !1423
  %.sroa.62250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 17
  %.sroa.82070.0..sroa_idx2071 = getelementptr inbounds nuw i8, ptr %i.ek, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.82070.0..sroa_idx2071, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.62250.0..sroa_idx, i64 7, i1 false), !noalias !1424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !1423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1843)
  store ptr %i.aav, ptr %i.ek, align 8, !alias.scope !1844, !noalias !1424
  %.sroa.62064.0..sroa_idx2065 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i64 %.sroa.42248.0.copyload, ptr %.sroa.62064.0..sroa_idx2065, align 8, !alias.scope !1844, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit136.i

_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit136.i: ; preds = %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i434, %bb.pl
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 %i.aat, ptr %i.bhi, align 8, !alias.scope !1844, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.pm:                                            ; preds = %bb.ew
  %i.bhj = tail call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 3) #20, !noalias !1591 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1846)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !1847
  store ptr %i.bhj, ptr %i.bb, align 8, !noalias !1847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !1847
  store i8 1, ptr %i.ba, align 8, !noalias !1848
  %.sroa.51606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 72, ptr %.sroa.51606.0..sroa_idx, align 1, !noalias !1848
  %.sroa.61607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store i8 0, ptr %.sroa.61607.0..sroa_idx, align 2, !noalias !1848
  %i.bhk = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ba)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i442 unwind label %bb.pn, !noalias !1847

bb.pn:                                            ; preds = %bb.pm
  %i.bhl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bhm = icmp eq ptr %i.bhj, null
  br i1 %i.bhm, label %common.resume, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.bhn = atomicrmw add ptr %i.bhj, i64 -1 release, align 8, !noalias !1849
  %i.bho = icmp eq i64 %i.bhn, 1
  br i1 %i.bho, label %bb.pp, label %common.resume

bb.pp:                                            ; preds = %bb.po
  fence acquire, !noalias !1424
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bb) #20
          to label %common.resume unwind label %bb.pq, !noalias !1847

bb.pq:                                            ; preds = %bb.pp
  %i.bhp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !1847
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i442: ; preds = %bb.pm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !1847
  %i.bhq = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.bhj, ptr noundef %i.bhk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !1847
  store ptr %i.bhq, ptr %i.ek, align 8, !alias.scope !1845, !noalias !1424
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 -1, ptr %i.bhr, align 8, !alias.scope !1845, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.pr:                                            ; preds = %bb.ew
  %i.bhs = getelementptr inbounds nuw i8, ptr %.val57, i64 103
  %i.bht = load i8, ptr %i.bhs, align 1, !noalias !1591 ; 4 uses
  %i.bhu = icmp eq i8 %i.bht, 0
  %i.bhv = icmp sgt i8 %i.bht, 12
  %i.bhw = add nsw i8 %i.bht, -12
  %spec.select.i = select i1 %i.bhv, i8 %i.bhw, i8 %i.bht
  %.sroa.08.0.i = select i1 %i.bhu, i8 12, i8 %spec.select.i
  %i.bhx = sext i8 %.sroa.08.0.i to i64
  %i.bhy = inttoptr i64 %i.bhx to ptr
  store ptr %i.bhy, ptr %i.ek, align 8, !alias.scope !1850, !noalias !1424
  %.sroa.62073.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i8 48, ptr %.sroa.62073.0..sroa_idx, align 8, !alias.scope !1850, !noalias !1424
  %.sroa.72074.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 9
  store i8 2, ptr %.sroa.72074.0..sroa_idx, align 1, !alias.scope !1850, !noalias !1424
  %.sroa.82076.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 4, ptr %.sroa.82076.0..sroa_idx, align 8, !alias.scope !1850, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.ps:                                            ; preds = %bb.fb, %bb.fa, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !1593
  %i.bhz = call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 0) #20, !noalias !1592 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !1851
  store ptr %i.bhz, ptr %i.az, align 8, !noalias !1851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !1851
  store i8 1, ptr %i.ay, align 8, !noalias !1852
  %.sroa.51600.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 106, ptr %.sroa.51600.0..sroa_idx, align 1, !noalias !1852
  %.sroa.61601.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i8 0, ptr %.sroa.61601.0..sroa_idx, align 2, !noalias !1852
  %i.bia = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ay)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i450 unwind label %bb.pt, !noalias !1851

bb.pt:                                            ; preds = %bb.ps
  %i.bib = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bic = icmp eq ptr %i.bhz, null
  br i1 %i.bic, label %common.resume, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.bid = atomicrmw add ptr %i.bhz, i64 -1 release, align 8, !noalias !1853
  %i.bie = icmp eq i64 %i.bid, 1
  br i1 %i.bie, label %bb.pv, label %common.resume

bb.pv:                                            ; preds = %bb.pu
  fence acquire, !noalias !1424
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.az) #20
          to label %common.resume unwind label %bb.pw, !noalias !1851

bb.pw:                                            ; preds = %bb.pv
  %i.bif = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !1851
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i450: ; preds = %bb.ps
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1851
  %i.big = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.bhz, ptr noundef %i.bia)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1851
  store ptr %i.big, ptr %i.ek, align 8, !alias.scope !1854, !noalias !1424
  %i.bih = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 -1, ptr %i.bih, align 8, !alias.scope !1854, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.px:                                            ; preds = %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date11day_of_year.exit.i.i.i, %bb.ex
  %.pn2.i.ph.i168 = phi i16 [ %i.aby, %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date11day_of_year.exit.i.i.i ], [ %i.abe, %bb.ex ]
  %i.bii = sext i16 %.pn2.i.ph.i168 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  store i64 %i.bii, ptr %i.ek, align 8, !alias.scope !1856, !noalias !1424
  %.sroa.62079.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i8 48, ptr %.sroa.62079.0..sroa_idx, align 8, !alias.scope !1856, !noalias !1424
  %.sroa.72080.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 9
  store i8 3, ptr %.sroa.72080.0..sroa_idx, align 1, !alias.scope !1856, !noalias !1424
  %.sroa.82082.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 4, ptr %.sroa.82082.0..sroa_idx, align 8, !alias.scope !1856, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.py:                                            ; preds = %bb.fe
  %i.bij = tail call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 3) #20, !noalias !1599 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1858)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !1859
  store ptr %i.bij, ptr %i.ax, align 8, !noalias !1859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1859
  store i8 1, ptr %i.aw, align 8, !noalias !1860
  %.sroa.51594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 107, ptr %.sroa.51594.0..sroa_idx, align 1, !noalias !1860
  %.sroa.61595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i8 0, ptr %.sroa.61595.0..sroa_idx, align 2, !noalias !1860
  %i.bik = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aw)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i458 unwind label %bb.pz, !noalias !1859

bb.pz:                                            ; preds = %bb.py
  %i.bil = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bim = icmp eq ptr %i.bij, null
  br i1 %i.bim, label %common.resume, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.bin = atomicrmw add ptr %i.bij, i64 -1 release, align 8, !noalias !1861
  %i.bio = icmp eq i64 %i.bin, 1
  br i1 %i.bio, label %bb.qb, label %common.resume

bb.qb:                                            ; preds = %bb.qa
  fence acquire, !noalias !1424
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ax) #20
          to label %common.resume unwind label %bb.qc, !noalias !1859

bb.qc:                                            ; preds = %bb.qb
  %i.bip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !1859
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i458: ; preds = %bb.py
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1859
  %i.biq = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.bij, ptr noundef %i.bik)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !1859
  store ptr %i.biq, ptr %i.ek, align 8, !alias.scope !1857, !noalias !1424
  %i.bir = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 -1, ptr %i.bir, align 8, !alias.scope !1857, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.qd:                                            ; preds = %bb.fe
  %i.bis = getelementptr inbounds nuw i8, ptr %.val59, i64 103
  %i.bit = load i8, ptr %i.bis, align 1, !noalias !1599
  %i.biu = sext i8 %i.bit to i64
  %i.biv = inttoptr i64 %i.biu to ptr
  store ptr %i.biv, ptr %i.ek, align 8, !alias.scope !1862, !noalias !1424
  %.sroa.62085.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i8 32, ptr %.sroa.62085.0..sroa_idx, align 8, !alias.scope !1862, !noalias !1424
  %.sroa.72086.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 9
  store i8 2, ptr %.sroa.72086.0..sroa_idx, align 1, !alias.scope !1862, !noalias !1424
  %.sroa.82088.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i8 4, ptr %.sroa.82088.0..sroa_idx, align 8, !alias.scope !1862, !noalias !1424
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.qe:                                            ; preds = %bb.ff
  %i.biw = tail call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 3) #20, !noalias !1600 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1864)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !1865
  store ptr %i.biw, ptr %i.av, align 8, !noalias !1865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1865
  store i8 1, ptr %i.au, align 8, !noalias !1866
  %.sroa.51588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 108, ptr %.sroa.51588.0..sroa_idx, align 1, !noalias !1866
  %.sroa.61589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store i8 0, ptr %.sroa.61589.0..sroa_idx, align 2, !noalias !1866
  %i.bix = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.au)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i466 unwind label %bb.qf, !noalias !1865
end_hunk_2
begin_hunk_3_@_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE6format0Bd_:bb.a
  %.pre2287 = load ptr, ptr %i.cci, align 8, !alias.scope !2082, !noalias !2056 ; 3 uses
  %.phi.trans.insert2288 = getelementptr inbounds nuw i8, ptr %.pre2287, i64 8
  %.pre2289 = load i64, ptr %.phi.trans.insert2288, align 8, !alias.scope !2084, !noalias !2056
  %.phi.trans.insert2290 = getelementptr inbounds nuw i8, ptr %.pre2287, i64 16
  %.pre2291 = load i16, ptr %.phi.trans.insert2290, align 8, !alias.scope !2084, !noalias !2056 ; 2 uses
  %.pre2358 = zext i16 %.pre2291 to i64           ; 2 uses
  %i.cft = icmp eq i64 %.pre2289, %.pre2358
  call void @llvm.experimental.noalias.scope.decl(metadata !2084), !noalias !2056
  br i1 %i.cft, label %bb.yl, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit94.i, !prof !16

bb.yl:                                            ; preds = %bb.yk
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #24, !noalias !2085
  unreachable

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit94.i: ; preds = %bb.yi, %bb.yk
  %i.cfu = phi ptr [ %.pre2287, %bb.yk ], [ %i.cfj, %bb.yi ] ; 2 uses
  %i.cfv = phi i16 [ %.pre2291, %bb.yk ], [ %i.cfn, %bb.yi ]
  %.pre-phi23592640 = phi i64 [ %.pre2358, %bb.yk ], [ %i.cfo, %bb.yi ]
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cfu, i64 16
  %i.cfx = load ptr, ptr %i.cfu, align 8, !alias.scope !2084, !noalias !2056, !nonnull !6, !noundef !6
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.cfx, i64 %.pre-phi23592640
  store i8 58, ptr %i.cfy, align 1, !noalias !2085
  %i.cfz = add i16 %i.cfv, 1
  store i16 %i.cfz, ptr %i.cfw, align 8, !alias.scope !2084, !noalias !2056
  br label %bb.yg

bb.ym:                                            ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit72.i.thread
  %i.cga = getelementptr inbounds nuw i8, ptr %i.cfg, i64 16
  %i.cgb = load ptr, ptr %i.cfg, align 8, !alias.scope !2079, !noalias !2056, !nonnull !6, !noundef !6
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.cgb, i64 %.pre-phi2353 ; 2 uses
  %i.cgd = shl nuw nsw i32 %.sroa.015.0.in.i, 1
  %i.cge = zext nneg i32 %i.cgd to i64
  %i.cgf = getelementptr inbounds nuw i8, ptr @9, i64 %i.cge ; 2 uses
  %i.cgg = load i8, ptr %i.cgf, align 1, !noalias !2086, !noundef !6
  store i8 %i.cgg, ptr %i.cgc, align 1, !noalias !2080
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.cgc, i64 1
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.cgf, i64 1
  %i.cgj = load i8, ptr %i.cgi, align 1, !noalias !2086, !noundef !6
  store i8 %i.cgj, ptr %i.cgh, align 1, !noalias !2080
  %i.cgk = add i16 %i.cfe, 2
  store i16 %i.cgk, ptr %i.cga, align 8, !alias.scope !2079, !noalias !2056
  %or.cond5.i = or i1 %i.ccg, %i.ceq
  br i1 %or.cond5.i, label %bb.yn, label %.thread1952

bb.yn:                                            ; preds = %bb.ym
  br i1 %.not1961, label %bb.yo, label %bb.yq

bb.yo:                                            ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit89.i, %bb.yn
  call void @llvm.experimental.noalias.scope.decl(metadata !2087), !noalias !2056
  call void @llvm.experimental.noalias.scope.decl(metadata !2088), !noalias !2056
  %i.cgl = load ptr, ptr %i.cci, align 8, !alias.scope !2089, !noalias !2056, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.cgl, i64 16
  %i.cgn = load i16, ptr %i.cgm, align 8, !noalias !2090, !noundef !6 ; 2 uses
  %i.cgo = zext i16 %i.cgn to i64                 ; 2 uses
  %i.cgp = add nuw nsw i64 %i.cgo, 2
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.cgl, i64 8
  %i.cgr = load i64, ptr %i.cgq, align 8, !noalias !2090, !noundef !6 ; 2 uses
  %i.cgs = icmp ugt i64 %i.cgp, %i.cgr
  br i1 %i.cgs, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i.thread, !prof !14

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i: ; preds = %bb.yo
  %i.cgt = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cci) #20, !noalias !2056 ; 2 uses
  %i.cgu = extractvalue { i64, ptr } %i.cgt, 0
  %i.cgv = trunc nuw i64 %i.cgu to i1
  br i1 %i.cgv, label %_RINvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB8_9Extension9write_intxEBc_.exit.i.thread, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i.thread_crit_edge

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i.thread_crit_edge: ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i
  %.pre2303 = load ptr, ptr %i.cci, align 8, !alias.scope !2091, !noalias !2056 ; 3 uses
  %.phi.trans.insert2304 = getelementptr inbounds nuw i8, ptr %.pre2303, i64 8
  %.pre2305 = load i64, ptr %.phi.trans.insert2304, align 8, !alias.scope !2092, !noalias !2056
  %.phi.trans.insert2306 = getelementptr inbounds nuw i8, ptr %.pre2303, i64 16
  %.pre2307 = load i16, ptr %.phi.trans.insert2306, align 8, !alias.scope !2092, !noalias !2056 ; 2 uses
  %.pre2354 = zext i16 %.pre2307 to i64
  br label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i.thread

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i.thread: ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i.thread_crit_edge, %bb.yo
  %.pre-phi2355 = phi i64 [ %.pre2354, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i.thread_crit_edge ], [ %i.cgo, %bb.yo ] ; 2 uses
  %i.cgw = phi i16 [ %.pre2307, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i.thread_crit_edge ], [ %i.cgn, %bb.yo ]
  %i.cgx = phi i64 [ %.pre2305, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i.thread_crit_edge ], [ %i.cgr, %bb.yo ]
  %i.cgy = phi ptr [ %.pre2303, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i.thread_crit_edge ], [ %i.cgl, %bb.yo ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2092), !noalias !2056
  %i.cgz = sub nuw i64 %i.cgx, %.pre-phi2355
  %i.cha = icmp ugt i64 %i.cgz, 1
  br i1 %i.cha, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2hEBa_.exit.i, label %bb.yp, !prof !15

bb.yp:                                            ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i.thread
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #24, !noalias !2093
  unreachable

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2hEBa_.exit.i: ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i.thread
  %i.chb = getelementptr inbounds nuw i8, ptr %i.cgy, i64 16
  %i.chc = load ptr, ptr %i.cgy, align 8, !alias.scope !2092, !noalias !2056, !nonnull !6, !noundef !6
  %i.chd = getelementptr inbounds nuw i8, ptr %i.chc, i64 %.pre-phi2355 ; 2 uses
  %i.che = shl nuw nsw i32 %.sroa.021.0.in.i, 1
  %i.chf = zext nneg i32 %i.che to i64
  %i.chg = getelementptr inbounds nuw i8, ptr @9, i64 %i.chf ; 2 uses
  %i.chh = load i8, ptr %i.chg, align 1, !noalias !2094, !noundef !6
  store i8 %i.chh, ptr %i.chd, align 1, !noalias !2093
  %i.chi = getelementptr inbounds nuw i8, ptr %i.chd, i64 1
  %i.chj = getelementptr inbounds nuw i8, ptr %i.chg, i64 1
  %i.chk = load i8, ptr %i.chj, align 1, !noalias !2094, !noundef !6
  store i8 %i.chk, ptr %i.chi, align 1, !noalias !2093
  %i.chl = add i16 %i.cgw, 2
  store i16 %i.chl, ptr %i.chb, align 8, !alias.scope !2092, !noalias !2056
  br label %.thread1952

bb.yq:                                            ; preds = %bb.yn
  call void @llvm.experimental.noalias.scope.decl(metadata !2095), !noalias !2056
  %i.chm = load ptr, ptr %i.cci, align 8, !alias.scope !2096, !noalias !2056, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.chn = getelementptr inbounds nuw i8, ptr %i.chm, i64 8
  %i.cho = load i64, ptr %i.chn, align 8, !noalias !2097, !noundef !6
  %i.chp = getelementptr inbounds nuw i8, ptr %i.chm, i64 16
  %i.chq = load i16, ptr %i.chp, align 8, !noalias !2097, !noundef !6 ; 2 uses
  %i.chr = zext i16 %i.chq to i64                 ; 2 uses
  %i.chs = icmp eq i64 %i.cho, %i.chr
  br i1 %i.chs, label %bb.yr, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit89.i, !prof !14

bb.yr:                                            ; preds = %bb.yq
  %i.cht = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cci) #20, !noalias !2056 ; 2 uses
  %i.chu = extractvalue { i64, ptr } %i.cht, 0
  %i.chv = trunc nuw i64 %i.chu to i1
  br i1 %i.chv, label %_RINvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB8_9Extension9write_intxEBc_.exit.i.thread, label %bb.ys

bb.ys:                                            ; preds = %bb.yr
  %.pre2298 = load ptr, ptr %i.cci, align 8, !alias.scope !2096, !noalias !2056 ; 3 uses
  %.phi.trans.insert2299 = getelementptr inbounds nuw i8, ptr %.pre2298, i64 8
  %.pre2300 = load i64, ptr %.phi.trans.insert2299, align 8, !alias.scope !2098, !noalias !2056
  %.phi.trans.insert2301 = getelementptr inbounds nuw i8, ptr %.pre2298, i64 16
  %.pre2302 = load i16, ptr %.phi.trans.insert2301, align 8, !alias.scope !2098, !noalias !2056 ; 2 uses
  %.pre2356 = zext i16 %.pre2302 to i64           ; 2 uses
  %i.chw = icmp eq i64 %.pre2300, %.pre2356
  call void @llvm.experimental.noalias.scope.decl(metadata !2098), !noalias !2056
  br i1 %i.chw, label %bb.yt, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit89.i, !prof !16

bb.yt:                                            ; preds = %bb.ys
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #24, !noalias !2099
  unreachable

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit89.i: ; preds = %bb.yq, %bb.ys
  %i.chx = phi ptr [ %.pre2298, %bb.ys ], [ %i.chm, %bb.yq ] ; 2 uses
  %i.chy = phi i16 [ %.pre2302, %bb.ys ], [ %i.chq, %bb.yq ]
  %.pre-phi23572644 = phi i64 [ %.pre2356, %bb.ys ], [ %i.chr, %bb.yq ]
  %i.chz = getelementptr inbounds nuw i8, ptr %i.chx, i64 16
  %i.cia = load ptr, ptr %i.chx, align 8, !alias.scope !2098, !noalias !2056, !nonnull !6, !noundef !6
  %i.cib = getelementptr inbounds nuw i8, ptr %i.cia, i64 %.pre-phi23572644
  store i8 58, ptr %i.cib, align 1, !noalias !2099
  %i.cic = add i16 %i.chy, 1
  store i16 %i.cic, ptr %i.chz, align 8, !alias.scope !2098, !noalias !2056
  br label %bb.yo

._crit_edge2314:                                  ; preds = %bb.xs, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit15
  call void @llvm.experimental.noalias.scope.decl(metadata !2100)
  call void @llvm.experimental.noalias.scope.decl(metadata !2101), !noalias !2056
  %i.cid = load ptr, ptr %.pre2316, align 8, !alias.scope !2102, !noalias !2056, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.cie = getelementptr inbounds nuw i8, ptr %i.cid, i64 16
  %i.cif = load i16, ptr %i.cie, align 8, !noalias !2103, !noundef !6
  %i.cig = zext i16 %i.cif to i64
  %i.cih = add nuw nsw i64 %i.cig, 9
  %i.cii = getelementptr inbounds nuw i8, ptr %i.cid, i64 8
  %i.cij = load i64, ptr %i.cii, align 8, !noalias !2103, !noundef !6
  %i.cik = icmp ugt i64 %i.cih, %i.cij
  br i1 %i.cik, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i1, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i1.thread, !prof !14

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i1: ; preds = %._crit_edge2314
  %i.cil = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.pre2316) #20, !noalias !2056 ; 2 uses
  %i.cim = extractvalue { i64, ptr } %i.cil, 0
  %i.cin = trunc nuw i64 %i.cim to i1
  br i1 %i.cin, label %_RINvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB8_9Extension9write_intxEBc_.exit.i.thread, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i1._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i1.thread_crit_edge

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i1._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i1.thread_crit_edge: ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i1
  %.pre2317 = load ptr, ptr %.pre2316, align 8, !alias.scope !2100, !noalias !2056
  br label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i1.thread

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i1.thread: ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i1._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i1.thread_crit_edge, %._crit_edge2314
  %i.cio = phi ptr [ %.pre2317, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i1._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i1.thread_crit_edge ], [ %i.cid, %._crit_edge2314 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2104), !noalias !2056
  %i.cip = icmp ult i32 %.sroa.0707.0.extract.trunc710, 1000000000
  br i1 %i.cip, label %bb.yv, label %bb.yu, !prof !15

bb.yu:                                            ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i1.thread
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #24, !noalias !2105
  unreachable

bb.yv:                                            ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i1.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !2106
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.cir = urem i32 %.sroa.0707.0.extract.trunc710, 10 ; 2 uses
  %i.cis = trunc nuw nsw i32 %i.cir to i8
  %i.cit = or disjoint i8 %i.cis, 48
  store i8 %i.cit, ptr %i.ciq, align 1, !noalias !2106
  %i.ciu = insertelement <4 x i32> poison, i32 %.sroa.0707.0.extract.trunc710, i64 0
  %i.civ = shufflevector <4 x i32> %i.ciu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ciw = udiv <4 x i32> %i.civ, <i32 10000, i32 1000, i32 100, i32 10>
  %i.cix = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.ciy = urem <4 x i32> %i.ciw, splat (i32 10)  ; 5 uses
  %i.ciz = trunc nuw nsw <4 x i32> %i.ciy to <4 x i8>
  %i.cja = or disjoint <4 x i8> %i.ciz, splat (i8 48)
  store <4 x i8> %i.cja, ptr %i.cix, align 1, !noalias !2106
  %i.cjb = udiv i32 %.sroa.0707.0.extract.trunc710, 100000
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.do, i64 3
  %.lhs.trunc2655 = trunc nuw nsw i32 %i.cjb to i16
  %i.cjd = urem i16 %.lhs.trunc2655, 10           ; 2 uses
  %i.cje = trunc nuw nsw i16 %i.cjd to i8
  %i.cjf = or disjoint i8 %i.cje, 48
  store i8 %i.cjf, ptr %i.cjc, align 1, !noalias !2106
  %i.cjg = udiv i32 %.sroa.0707.0.extract.trunc710, 1000000
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.do, i64 2
  %.lhs.trunc2656 = trunc nuw nsw i32 %i.cjg to i16
  %i.cji = urem i16 %.lhs.trunc2656, 10           ; 2 uses
  %i.cjj = trunc nuw nsw i16 %i.cji to i8
  %i.cjk = or disjoint i8 %i.cjj, 48
  store i8 %i.cjk, ptr %i.cjh, align 1, !noalias !2106
  %i.cjl = udiv i32 %.sroa.0707.0.extract.trunc710, 10000000
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %.lhs.trunc2658 = trunc nuw nsw i32 %i.cjl to i8
  %i.cjn = urem i8 %.lhs.trunc2658, 10            ; 2 uses
  %i.cjo = or disjoint i8 %i.cjn, 48
  store i8 %i.cjo, ptr %i.cjm, align 1, !noalias !2106
  %i.cjp = udiv i32 %.sroa.0707.0.extract.trunc710, 100000000
  %i.cjq = trunc nuw nsw i32 %i.cjp to i8
  %i.cjr = or disjoint i8 %i.cjq, 48
  store i8 %i.cjr, ptr %i.do, align 1, !noalias !2106
  br i1 %.not1965, label %.split, label %bb.yw

bb.yw:                                            ; preds = %bb.yv
  %..i680 = call noundef range(i8 0, 21) i8 @llvm.umin.i8(i8 %.sroa.0707.5.extract.trunc716, i8 9)
  br label %bb.zf

.split:                                           ; preds = %bb.yv
  %i.cjs = icmp eq i32 %i.cir, 0
  br i1 %i.cjs, label %bb.yx, label %bb.zf

bb.yx:                                            ; preds = %.split
  %i.cjt = extractelement <4 x i32> %i.ciy, i64 3
  %i.cju = icmp eq i32 %i.cjt, 0
  br i1 %i.cju, label %bb.yy, label %bb.zf

bb.yy:                                            ; preds = %bb.yx
  %i.cjv = extractelement <4 x i32> %i.ciy, i64 2
  %i.cjw = icmp eq i32 %i.cjv, 0
  br i1 %i.cjw, label %bb.yz, label %bb.zf

bb.yz:                                            ; preds = %bb.yy
  %i.cjx = extractelement <4 x i32> %i.ciy, i64 1
  %i.cjy = icmp eq i32 %i.cjx, 0
  br i1 %i.cjy, label %bb.za, label %bb.zf

bb.za:                                            ; preds = %bb.yz
  %i.cjz = extractelement <4 x i32> %i.ciy, i64 0
  %i.cka = icmp eq i32 %i.cjz, 0
  br i1 %i.cka, label %bb.zb, label %bb.zf

bb.zb:                                            ; preds = %bb.za
  %i.ckb = icmp eq i16 %i.cjd, 0
  br i1 %i.ckb, label %bb.zc, label %bb.zf

bb.zc:                                            ; preds = %bb.zb
  %i.ckc = icmp eq i16 %i.cji, 0
  br i1 %i.ckc, label %bb.zd, label %bb.zf

bb.zd:                                            ; preds = %bb.zc
  %i.ckd = icmp eq i8 %i.cjn, 0
  br i1 %i.ckd, label %bb.ze, label %bb.zf

bb.ze:                                            ; preds = %bb.zd
  %i.cke = icmp samesign ugt i32 %.sroa.0707.0.extract.trunc710, 99999999
  %spec.select = zext i1 %i.cke to i8
  br label %bb.zf

bb.zf:                                            ; preds = %bb.ze, %.split, %bb.yx, %bb.yy, %bb.yz, %bb.za, %bb.zb, %bb.zc, %bb.zd, %bb.yw
  %.sroa.06.1.i.i = phi i8 [ %..i680, %bb.yw ], [ 9, %.split ], [ 3, %bb.zc ], [ 8, %bb.yx ], [ %spec.select, %bb.ze ], [ 7, %bb.yy ], [ 4, %bb.zb ], [ 6, %bb.yz ], [ 2, %bb.zd ], [ 5, %bb.za ] ; 2 uses
  %i.ckf = zext nneg i8 %.sroa.06.1.i.i to i64    ; 3 uses
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.cio, i64 8
  %i.ckh = load i64, ptr %i.ckg, align 8, !alias.scope !2104, !noalias !2056, !noundef !6
  %i.cki = getelementptr inbounds nuw i8, ptr %i.cio, i64 16 ; 2 uses
  %i.ckj = load i16, ptr %i.cki, align 8, !alias.scope !2104, !noalias !2056, !noundef !6 ; 2 uses
  %i.ckk = zext i16 %i.ckj to i64                 ; 2 uses
  %i.ckl = sub nuw i64 %i.ckh, %i.ckk
  %.not20.i.i = icmp ult i64 %i.ckl, %i.ckf
  br i1 %.not20.i.i, label %bb.zg, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit.i, !prof !14

bb.zg:                                            ; preds = %bb.zf
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24, !noalias !2105
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit.i: ; preds = %bb.zf
  %i.ckm = load ptr, ptr %i.cio, align 8, !alias.scope !2104, !noalias !2056, !nonnull !6, !noundef !6
  %i.ckn = getelementptr inbounds nuw i8, ptr %i.ckm, i64 %i.ckk
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.ckn, i64 noundef %i.ckf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.do, i64 noundef %i.ckf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26), !noalias !2105
  %i.cko = zext nneg i8 %.sroa.06.1.i.i to i16
  %i.ckp = add i16 %i.ckj, %i.cko
  store i16 %i.ckp, ptr %i.cki, align 8, !alias.scope !2104, !noalias !2056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !2106
  br label %.thread1952

bb.zh:                                            ; preds = %bb.xs
  call void @llvm.experimental.noalias.scope.decl(metadata !2107)
  %i.ckq = load ptr, ptr %.pre2316, align 8, !alias.scope !2107, !noalias !2056, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.ckq, i64 8
  %i.cks = load i64, ptr %i.ckr, align 8, !noalias !2108, !noundef !6
  %i.ckt = getelementptr inbounds nuw i8, ptr %i.ckq, i64 16
  %i.cku = load i16, ptr %i.ckt, align 8, !noalias !2108, !noundef !6 ; 2 uses
  %i.ckv = zext i16 %i.cku to i64                 ; 2 uses
  %i.ckw = icmp eq i64 %i.cks, %i.ckv
  br i1 %i.ckw, label %bb.zi, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit15, !prof !14

bb.zi:                                            ; preds = %bb.zh
  %i.ckx = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.pre2316) #20, !noalias !2056 ; 2 uses
  %i.cky = extractvalue { i64, ptr } %i.ckx, 0
  %i.ckz = trunc nuw i64 %i.cky to i1
  br i1 %i.ckz, label %_RINvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB8_9Extension9write_intxEBc_.exit.i.thread, label %bb.zj

bb.zj:                                            ; preds = %bb.zi
  %.pre2309 = load ptr, ptr %.pre2316, align 8, !alias.scope !2107, !noalias !2056 ; 3 uses
  %.phi.trans.insert2310 = getelementptr inbounds nuw i8, ptr %.pre2309, i64 8
  %.pre2311 = load i64, ptr %.phi.trans.insert2310, align 8, !alias.scope !2109, !noalias !2056
  %.phi.trans.insert2312 = getelementptr inbounds nuw i8, ptr %.pre2309, i64 16
  %.pre2313 = load i16, ptr %.phi.trans.insert2312, align 8, !alias.scope !2109, !noalias !2056 ; 2 uses
  %.pre2348 = zext i16 %.pre2313 to i64           ; 2 uses
  %i.cla = icmp eq i64 %.pre2311, %.pre2348
  call void @llvm.experimental.noalias.scope.decl(metadata !2109), !noalias !2056
  br i1 %i.cla, label %bb.zk, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit15, !prof !16

bb.zk:                                            ; preds = %bb.zj
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #24, !noalias !2110
  unreachable

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit15: ; preds = %bb.zh, %bb.zj
  %i.clb = phi ptr [ %.pre2309, %bb.zj ], [ %i.ckq, %bb.zh ] ; 2 uses
  %i.clc = phi i16 [ %.pre2313, %bb.zj ], [ %i.cku, %bb.zh ]
  %.pre-phi23492648 = phi i64 [ %.pre2348, %bb.zj ], [ %i.ckv, %bb.zh ]
  %i.cld = getelementptr inbounds nuw i8, ptr %i.clb, i64 16
  %i.cle = load ptr, ptr %i.clb, align 8, !alias.scope !2109, !noalias !2056, !nonnull !6, !noundef !6
  %i.clf = getelementptr inbounds nuw i8, ptr %i.cle, i64 %.pre-phi23492648
  store i8 46, ptr %i.clf, align 1, !noalias !2110
  %i.clg = add i16 %i.clc, 1
  store i16 %i.clg, ptr %i.cld, align 8, !alias.scope !2109, !noalias !2056
  br label %._crit_edge2314

bb.zl:                                            ; preds = %bb.xt
  %i.clh = call { i64, ptr } @_RNvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB7_9Extension14write_str_cold(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.el, i8 noundef %i.baw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bay, i64 noundef %.sroa.490.0.copyload.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cby) #20, !noalias !2111
  br label %_RINvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB8_9Extension9write_intxEBc_.exit.i

bb.zm:                                            ; preds = %bb.xt
  call void @llvm.experimental.noalias.scope.decl(metadata !2112)
  %i.cli = load ptr, ptr %i.cby, align 8, !alias.scope !2112, !noalias !2056, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.clj = getelementptr inbounds nuw i8, ptr %i.cli, i64 8
  %i.clk = load i64, ptr %i.clj, align 8, !noalias !2113, !noundef !6
  %i.cll = getelementptr inbounds nuw i8, ptr %i.cli, i64 16
  %i.clm = load i16, ptr %i.cll, align 8, !noalias !2113, !noundef !6 ; 2 uses
  %i.cln = zext i16 %i.clm to i64                 ; 2 uses
  %i.clo = sub i64 %i.clk, %i.cln
  %i.clp = icmp ugt i64 %.sroa.490.0.copyload.i, %i.clo
  br i1 %i.clp, label %bb.zn, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i, !prof !14

bb.zn:                                            ; preds = %bb.zm
  %i.clq = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cby) #20, !noalias !2114 ; 2 uses
  %i.clr = extractvalue { i64, ptr } %i.clq, 0
  %i.cls = trunc nuw i64 %i.clr to i1
  br i1 %i.cls, label %_RINvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB8_9Extension9write_intxEBc_.exit.i.thread, label %bb.zo

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i: ; preds = %bb.zm, %bb.zo
  %.pre-phi2350 = phi i64 [ %i.cmf, %bb.zo ], [ %i.cln, %bb.zm ]
  %i.clt = phi i16 [ %i.cme, %bb.zo ], [ %i.clm, %bb.zm ]
  %i.clu = phi ptr [ %i.cma, %bb.zo ], [ %i.cli, %bb.zm ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2115), !noalias !2056
  %i.clv = getelementptr inbounds nuw i8, ptr %i.clu, i64 16
  %i.clw = load ptr, ptr %i.clu, align 8, !alias.scope !2115, !noalias !2114, !nonnull !6, !noundef !6
  %i.clx = getelementptr inbounds nuw i8, ptr %i.clw, i64 %.pre-phi2350
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.clx, i64 noundef %.sroa.490.0.copyload.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bay, i64 noundef %.sroa.490.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !2116
  %i.cly = trunc i64 %.sroa.490.0.copyload.i to i16
  %i.clz = add i16 %i.clt, %i.cly
  store i16 %i.clz, ptr %i.clv, align 8, !alias.scope !2115, !noalias !2056
  br label %.thread1952

bb.zo:                                            ; preds = %bb.zn
  %i.cma = load ptr, ptr %i.cby, align 8, !alias.scope !2112, !noalias !2056, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.cma, i64 8
  %i.cmc = load i64, ptr %i.cmb, align 8, !noalias !2114, !noundef !6
  %i.cmd = getelementptr inbounds nuw i8, ptr %i.cma, i64 16
  %i.cme = load i16, ptr %i.cmd, align 8, !noalias !2114, !noundef !6 ; 2 uses
  %i.cmf = zext i16 %i.cme to i64                 ; 2 uses
  %i.cmg = sub i64 %i.cmc, %i.cmf
  %i.cmh = icmp ugt i64 %.sroa.490.0.copyload.i, %i.cmg
  br i1 %i.cmh, label %bb.zp, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i

bb.zp:                                            ; preds = %bb.zo
  %i.cmi = getelementptr inbounds nuw i8, ptr %i.cby, i64 8
  %i.cmj = load ptr, ptr %i.cmi, align 8, !alias.scope !2112, !noalias !2056, !nonnull !6, !noundef !6
  %i.cmk = getelementptr inbounds nuw i8, ptr %i.cby, i64 16
  %i.cml = load ptr, ptr %i.cmk, align 8, !alias.scope !2112, !noalias !2056, !nonnull !6, !align !8, !noundef !6
  %i.cmm = getelementptr inbounds nuw i8, ptr %i.cml, i64 24
  %i.cmn = load ptr, ptr %i.cmm, align 8, !invariant.load !6, !noalias !2114, !nonnull !6
  %i.cmo = call { i64, ptr } %i.cmn(ptr noundef nonnull %i.cmj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bay, i64 noundef %.sroa.490.0.copyload.i) #25, !noalias !2056, !inline_history !0
  br label %_RINvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB8_9Extension9write_intxEBc_.exit.i

_RINvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB8_9Extension9write_intxEBc_.exit.i: ; preds = %bb.zp, %bb.wx, %bb.zl
  %.sink2680 = phi { i64, ptr } [ %i.cmo, %bb.zp ], [ %i.bwb, %bb.wx ], [ %i.clh, %bb.zl ] ; 2 uses
  %i.cmp = extractvalue { i64, ptr } %.sink2680, 0
  %i.cmq = trunc nuw i64 %i.cmp to i1
  br i1 %i.cmq, label %_RINvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB8_9Extension9write_intxEBc_.exit.i.thread, label %.thread1952

_RINvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB8_9Extension9write_intxEBc_.exit.i.thread: ; preds = %bb.zn, %bb.zi, %bb.yr, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i, %bb.yj, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit72.i, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i28, %bb.xy, %bb.xv, %bb.wu, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit27.i, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit.i, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit22.i, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i1, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i, %_RINvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB8_9Extension9write_intxEBc_.exit.i
  %.pn = phi { i64, ptr } [ %i.cht, %bb.yr ], [ %.sink2680, %_RINvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB8_9Extension9write_intxEBc_.exit.i ], [ %i.ckx, %bb.zi ], [ %i.cdt, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i28 ], [ %i.cfb, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit72.i ], [ %i.cdd, %bb.xy ], [ %i.cbd, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i ], [ %i.cgt, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit77.i ], [ %i.bys, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit27.i ], [ %i.bxb, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit.i ], [ %i.bvw, %bb.wu ], [ %i.bzs, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit22.i ], [ %i.cfq, %bb.yj ], [ %i.cil, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i1 ], [ %i.ccr, %bb.xv ], [ %i.clq, %bb.zn ]
  %.sroa.8.0.i1951 = extractvalue { i64, ptr } %.pn, 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2117
  store ptr %.sroa.8.0.i1951, ptr %i.d, align 8, !noalias !2117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2117
  store i8 1, ptr %i.c, align 8
  %.sroa.51708.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.sroa.013.0.i, ptr %.sroa.51708.0..sroa_idx, align 1
  %.sroa.61709.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 0, ptr %.sroa.61709.0..sroa_idx, align 2
  %i.cmr = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i unwind label %bb.zq, !noalias !2117

bb.zq:                                            ; preds = %_RINvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB8_9Extension9write_intxEBc_.exit.i.thread
  %i.cms = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cmt = icmp eq ptr %.sroa.8.0.i1951, null
  br i1 %i.cmt, label %common.resume, label %bb.zr

bb.zr:                                            ; preds = %bb.zq
  %i.cmu = atomicrmw add ptr %.sroa.8.0.i1951, i64 -1 release, align 8, !noalias !2118
  %i.cmv = icmp eq i64 %i.cmu, 1
  br i1 %i.cmv, label %bb.zs, label %common.resume

bb.zs:                                            ; preds = %bb.zr
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #20
          to label %common.resume unwind label %bb.zt, !noalias !2117

bb.zt:                                            ; preds = %bb.zs
  %i.cmw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !2117
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i: ; preds = %_RINvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB8_9Extension9write_intxEBc_.exit.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2117
  %i.cmx = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.8.0.i1951, ptr noundef %i.cmr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2117
  br label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE10format_oneBb_.exit

.thread1952:                                      ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad4yEBa_.exit.i.i, %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2yEBa_.exit.i.i, %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit.i.i, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit.i, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i, %bb.ym, %bb.ye, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2hEBa_.exit.i, %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer20write_int_pad2_spaceyEBa_.exit.i.i, %bb.wn, %_RINvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB8_9Extension9write_intxEBc_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2119)
  %i.cmy = load i64, ptr %i.en, align 8, !alias.scope !2119, !noundef !6 ; 2 uses
  %i.cmz = icmp eq i64 %i.cmy, 0
  br i1 %i.cmz, label %bb.zu, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit688, !prof !14

bb.zu:                                            ; preds = %.thread1952
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #24, !noalias !2119
  unreachable

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit688: ; preds = %.thread1952
  %i.cna = load ptr, ptr %i.em, align 8, !alias.scope !2119, !nonnull !6, !noundef !6
  %i.cnb = add i64 %i.cmy, -1
  %i.cnc = getelementptr inbounds nuw i8, ptr %i.cna, i64 1
  store ptr %i.cnc, ptr %i.em, align 8, !alias.scope !2119, !captures !20
  store i64 %i.cnb, ptr %i.en, align 8, !alias.scope !2119
  br label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE10format_oneBb_.exit

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE10format_oneBb_.exit: ; preds = %bb.rp, %bb.wm, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit688
  %.sroa.10.1.i = phi ptr [ undef, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit688 ], [ %i.cmx, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i ], [ %.sroa.10.0.i, %bb.rp ], [ %i.bay, %bb.wm ]
  %.sroa.0.1.i = phi i64 [ 0, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit688 ], [ 1, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i ], [ 1, %bb.rp ], [ 1, %bb.wm ]
  %i.cnd = insertvalue { i64, ptr } poison, i64 %.sroa.0.1.i, 0
end_hunk_3
begin_hunk_4_@_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime12to_timestamp:bb.a
  %i.di = sext i32 %i.dh to i64
  %i.dj = mul nsw i64 %i.di, 86400
  %i.dk = shl i64 %.0..0..0..val, 24
  %i.dl = ashr i64 %i.dk, 56
  %i.dm = mul nsw i64 %i.dl, 3600
  %i.dn = shl i64 %.0..0..0..val, 16
  %i.do = ashr i64 %i.dn, 56
  %i.dp = mul nsw i64 %i.do, 60
  %i.dq = shl i64 %.0..0..0..val, 8
  %i.dr = ashr i64 %i.dq, 56
  %.sroa.02.0.extract.trunc.i = trunc i64 %.0..0..0..val to i32 ; 3 uses
  %i.ds = sext i32 %i.cl to i64
  %i.dt = sub nsw i64 %i.dr, %i.ds
  %i.du = add nsw i64 %i.dt, %i.dm
  %i.dv = add nsw i64 %i.du, %i.dp
  %i.dw = add nsw i64 %i.dv, %i.dj                ; 2 uses
  %i.dx = icmp slt i64 %i.dw, 0
  %i.dy = icmp ne i32 %.sroa.02.0.extract.trunc.i, 0
  %or.cond3.not.i.i = and i1 %i.dy, %i.dx         ; 2 uses
  %i.dz = zext i1 %or.cond3.not.i.i to i64
  %.sroa.05.0.i.i = add nsw i64 %i.dw, %i.dz      ; 2 uses
  %i.ea = add nsw i64 %.sroa.05.0.i.i, 377705023201
  %or.cond.i.i = icmp ult i64 %i.ea, 631107230402
  br i1 %or.cond.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtBM_9timestamp9TimestampNtBK_5ErrorEINtBK_12ErrorContextB1x_B1Y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i8 26, ptr %i.q, align 8
  %i.eb = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q) #20
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eb, ptr %i.ec, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ax

bb.bg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2347
  store i32 0, ptr %i.c, align 8, !noalias !2347
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.cl, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !2347
  %i.ed = call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsb09rMIQFAXO_9jiff_core9timestamp9TimestampNtNtB1f_6bounds10RangeErrorEINtB8_12ErrorContextB1b_B1X_E7contextNtNtNtB8_2tz6offset5ErrorE0Ba_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, i32 7167) #25, !noalias !2347 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2347
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ed, ptr %i.ee, align 8, !alias.scope !2347
  store i64 1, ptr %0, align 8, !alias.scope !2347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2348
  store ptr %i.ed, ptr %i.b, align 8, !noalias !2348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2348
  store i8 21, ptr %i.a, align 8
  %i.ef = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit unwind label %bb.bh, !noalias !2348

bb.bh:                                            ; preds = %bb.bg
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.eh = icmp eq ptr %i.ed, null
  br i1 %i.eh, label %common.resume, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ei = atomicrmw add ptr %i.ed, i64 -1 release, align 8, !noalias !2349
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %bb.bj, label %common.resume

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #20
          to label %common.resume unwind label %bb.bk, !noalias !2348

bb.bk:                                            ; preds = %bb.bj
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !2348
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2348
  %i.el = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ed, ptr noundef %i.ef), !noalias !2348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2348
  store ptr %i.el, ptr %i.ee, align 8
  br label %bb.bl

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtBM_9timestamp9TimestampNtBK_5ErrorEINtBK_12ErrorContextB1x_B1Y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit
  %i.em = add i32 %.sroa.02.0.extract.trunc.i, -1000000000
  %.sroa.021.0.i.i = select i1 %or.cond3.not.i.i, i32 %i.em, i32 %.sroa.02.0.extract.trunc.i
  %i.en = inttoptr i64 %.sroa.05.0.i.i to ptr
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.021.0.i.i, ptr %i.eo, align 8, !alias.scope !2347
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.en, ptr %i.ep, align 8, !alias.scope !2347
  br label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtBM_9timestamp9TimestampNtBK_5ErrorEINtBK_12ErrorContextB1x_B1Y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit
  %storemerge = phi i64 [ 1, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtBM_9timestamp9TimestampNtBK_5ErrorEINtBK_12ErrorContextB1x_B1Y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit ]
  store i64 %storemerge, ptr %0, align 8
  br label %bb.ax
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_date(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load i16, ptr %i.c, align 8, !range !10, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.f = load i16, ptr %i.e, align 2              ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 93
  %i.h = load i8, ptr %i.g, align 1               ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 94
  %i.j = load i8, ptr %i.i, align 2, !range !12, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 95
  %i.l = load i8, ptr %i.k, align 1               ; 4 uses
  %i.m = trunc nuw i16 %i.d to i1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.o = load i8, ptr %i.n, align 4, !range !12
  %i.p = and i8 %i.o, %i.j
  %i.q = icmp ne i8 %i.p, 0
  %.not56 = select i1 %i.m, i1 %i.q, i1 false
  br i1 %.not56, label %bb.c, label %bb.b, !prof !2350

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB7_14BrokenDownTime7to_date7to_date(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) #20
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.r = add i16 %i.f, 9999
  %or.cond.i = icmp ult i16 %i.r, 19999
  br i1 %or.cond.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.s = add i8 %i.h, -1
  %or.cond1.i = icmp ult i8 %i.s, 12
  br i1 %or.cond1.i, label %bb.e, label %bb.k, !prof !2351

bb.e:                                             ; preds = %bb.d
  %i.t = icmp slt i8 %i.l, 1
  br i1 %i.t, label %bb.k, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.u = icmp samesign ugt i8 %i.l, 28
  br i1 %i.u, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq i8 %i.h, 2
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = srem i16 %i.f, 25
  %i.x = icmp eq i16 %i.w, 0
  %..i.i = select i1 %i.x, i16 15, i16 3
  %i.y = and i16 %..i.i, %i.f
  %i.z = icmp eq i16 %i.y, 0
  %spec.select.i.i = select i1 %i.z, i8 29, i8 28
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i

bb.i:                                             ; preds = %bb.g
  %i.aa = lshr i8 %i.h, 3
  %i.ab = xor i8 %i.aa, %i.h
  %i.ac = or i8 %i.ab, 30
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i = phi i8 [ %spec.select.i.i, %bb.h ], [ %i.ac, %bb.i ]
  %i.ad = icmp samesign ugt i8 %i.l, %.sroa.0.0.i.i
  br i1 %i.ad, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit, !prof !2352

bb.j:                                             ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i
  %.sroa.530.0.insert.ext.i = zext i16 %i.f to i32
  %.sroa.530.0.insert.shift.i = shl nuw i32 %.sroa.530.0.insert.ext.i, 16
  %.sroa.429.0.insert.ext.i = zext nneg i8 %i.h to i32
  %.sroa.429.0.insert.shift.i = shl nuw nsw i32 %.sroa.429.0.insert.ext.i, 8
  %.sroa.429.0.insert.insert.i = or disjoint i32 %.sroa.429.0.insert.shift.i, %.sroa.530.0.insert.shift.i
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.j, %bb.c, %bb.e
  %.sroa.6.0.i.ph = phi i32 [ 767, %bb.e ], [ 8447, %bb.c ], [ %.sroa.429.0.insert.insert.i, %bb.j ], [ 3327, %bb.d ]
  %i.ae = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.6.0.i.ph) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 9, ptr %i.a, align 8
  %i.af = call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef %i.ae) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  store i16 1, ptr %0, align 8
  br label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit: ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i, %bb.f
  %.sroa.518.0.insert.ext.i = zext nneg i8 %i.l to i32 ; 2 uses
  %.sroa.518.0.insert.shift.i = shl nuw nsw i32 %.sroa.518.0.insert.ext.i, 24
  %.sroa.417.0.insert.ext.i = zext nneg i8 %i.h to i32 ; 3 uses
  %.sroa.417.0.insert.shift.i = shl nuw nsw i32 %.sroa.417.0.insert.ext.i, 16
  %.sroa.016.0.insert.ext.i = zext i16 %i.f to i32
  %i.ah = or disjoint i32 %.sroa.518.0.insert.shift.i, %.sroa.417.0.insert.shift.i
  %.sroa.016.0.insert.insert.i = or disjoint i32 %i.ah, %.sroa.016.0.insert.ext.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 109
  %i.aj = load i8, ptr %i.ai, align 1, !range !9, !noundef !6 ; 3 uses
  %.not = icmp eq i8 %i.aj, 0
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit
  %i.ak = icmp samesign ult i8 %i.h, 3            ; 2 uses
  %i.al = or disjoint i32 %.sroa.417.0.insert.ext.i, 12
  %.sroa.02.0.i.i = select i1 %i.ak, i32 %i.al, i32 %.sroa.417.0.insert.ext.i
  %i.am = sext i16 %i.f to i32
  %i.an = add nsw i32 %i.am, 32800
  %.neg.i.i = sext i1 %i.ak to i32
  %i.ao = add nsw i32 %i.an, %.neg.i.i            ; 3 uses
  %.lhs.trunc = trunc i32 %i.ao to i16
  %2 = udiv i16 %.lhs.trunc, 100
  %.zext = zext nneg i16 %2 to i32
  %i.ap = mul nuw nsw i32 %i.ao, 1461
  %i.aq = lshr i32 %i.ap, 2
  %.lhs.trunc64 = trunc i32 %i.ao to i16
  %3 = udiv i16 %.lhs.trunc64, 400
  %.zext65 = zext nneg i16 %3 to i32
  %i.ar = mul nuw nsw i32 %.sroa.02.0.i.i, 979
  %i.as = add nsw i32 %i.ar, -2919
  %i.at = lshr i32 %i.as, 5
  %i.au = add nuw nsw i32 %.sroa.518.0.insert.ext.i, -12699423
  %i.av = sub nuw nsw i32 %i.au, %.zext
  %i.aw = add nuw nsw i32 %i.av, %.zext65
  %i.ax = add nsw i32 %i.aw, %i.aq
  %i.ay = add nsw i32 %i.ax, %i.at
  %i.az = mul i32 %i.ay, 613566757
  %i.ba = add i32 %i.az, -1879048192
  %i.bb = lshr i32 %i.ba, 29                      ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit, !prof !11

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @38, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #24
  unreachable

_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit: ; preds = %bb.l
  %i.bd = trunc nuw nsw i32 %i.bb to i8           ; 2 uses
  %.not47 = icmp eq i8 %i.aj, %i.bd
  br i1 %.not47, label %bb.n, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit53

bb.n:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.016.0.insert.insert.i, ptr %i.be, align 2
  store i16 0, ptr %0, align 8
  br label %bb.o

_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit53: ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.aj, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.bd, ptr %i.bg, align 2
  store i8 14, ptr %i.b, align 8
  %i.bh = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bi, align 8
  store i16 1, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit53, %bb.n, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw(i32 noundef range(i32 0, 1114112) %0, ptr noalias nofree noundef nonnull initializes((0, 1)) %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp samesign ult i32 %0, 128
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 2048
  %i.c = trunc i32 %0 to i8
  %i.d = and i8 %i.c, 63
  %i.e = or disjoint i8 %i.d, -128                ; 3 uses
  %i.f = lshr i32 %0, 6
  %i.g = trunc i32 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 2 uses
  %i.j = lshr i32 %0, 12
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = lshr i32 %0, 18
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = or disjoint i8 %i.o, -16
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = trunc nuw nsw i32 %0 to i8
  store i8 %i.q, ptr %1, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_unchecked.exit

bb.d:                                             ; preds = %bb.b
  %i.r = or disjoint i8 %i.g, -64
  store i8 %i.r, ptr %1, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.e, ptr %i.s, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_unchecked.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp samesign ult i32 %0, 65536
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = or disjoint i8 %i.k, -32
  store i8 %i.u, ptr %1, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.i, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.e, ptr %i.w, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_unchecked.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.p, ptr %1, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.m, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.i, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.e, ptr %i.z, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_unchecked.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_unchecked.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05 = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aa = insertvalue { ptr, i64 } poison, ptr %1, 0
  %i.ab = insertvalue { ptr, i64 } %i.aa, i64 %.sroa.0.05, 1
  ret { ptr, i64 } %i.ab
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 0, 23) i32 @_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl(i64 noundef range(i64 10000, -9223372036854775807) %0) unnamed_addr #7 {
bb.a:
  %i.a = icmp ugt i64 %0, 9999999999              ; 2 uses
  %i.b = udiv i64 %0, 10000000000
  %.sroa.05.0 = select i1 %i.a, i32 10, i32 0     ; 2 uses
  %.sroa.0.0 = select i1 %i.a, i64 %i.b, i64 %0   ; 3 uses
  %i.c = icmp samesign ugt i64 %.sroa.0.0, 99999
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 %.sroa.0.0, 100000
  %i.e = or disjoint i32 %.sroa.05.0, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.05.1 = phi i32 [ %i.e, %bb.b ], [ %.sroa.05.0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %i.d, %bb.b ], [ %.sroa.0.0, %bb.a ]
  %i.f = trunc nuw nsw i64 %.sroa.0.1 to i32      ; 4 uses
  %i.g = add nuw nsw i32 %i.f, 393206
  %i.h = add nuw nsw i32 %i.f, 524188
  %i.i = and i32 %i.g, %i.h
  %i.j = add nuw nsw i32 %i.f, 916504
  %i.k = add nuw nsw i32 %i.f, 514288
  %i.l = and i32 %i.j, %i.k
  %i.m = xor i32 %i.i, %i.l
  %i.n = lshr i32 %i.m, 17
  %i.o = add nuw nsw i32 %i.n, %.sroa.05.1
  ret i32 %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs3oUPovFnLWP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_ENtNtCs3oUPovFnLWP_4core3fmt5Write9write_strCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef captures(none) dereferenceable(10) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2359)
  %i.a = load i8, ptr %0, align 1, !alias.scope !2358, !noundef !6
  %i.b = zext i8 %i.a to i64                      ; 7 uses
  %i.c = add i64 %2, %i.b                         ; 5 uses
  %i.d = icmp ult i64 %i.c, %i.b
  %i.e = icmp ugt i64 %i.c, 9
  %or.cond.not.i.not = or i1 %i.d, %i.e           ; 2 uses
  br i1 %or.cond.not.i.not, label %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsa9sSWSfjDbm_4jiff.exit, label %.preheader.i, !prof !2360

.preheader.i:                                     ; preds = %bb.a
  %i.f = icmp samesign ugt i64 %i.c, %i.b
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.h = add i64 %2, -1
  %i.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.h)
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 17
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i
  %.sroa.02.010.i.ph = phi i64 [ %i.b, %.lr.ph.i ], [ %i.n, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.k = and i64 %i.j, 15                         ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 16, i64 %i.k
  %n.vec = sub nuw i64 %i.j, %i.m                 ; 2 uses
  %i.n = add i64 %n.vec, %i.b
  %invariant.gep = getelementptr i8, ptr %i.g, i64 %i.b
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.o, align 1, !alias.scope !2359
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index
  store <16 x i8> %wide.load, ptr %gep, align 1, !alias.scope !2358
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2356

._crit_edge.i:                                    ; preds = %bb.c, %.preheader.i
  %i.q = trunc nuw nsw i64 %i.c to i8
  store i8 %i.q, ptr %0, align 1, !alias.scope !2358
  br label %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsa9sSWSfjDbm_4jiff.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %.sroa.02.010.i = phi i64 [ %i.w, %bb.c ], [ %.sroa.02.010.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.r = sub nuw nsw i64 %.sroa.02.010.i, %i.b    ; 3 uses
  %i.s = icmp ult i64 %i.r, %2
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #24, !noalias !2363
  unreachable

bb.c:                                             ; preds = %scalar.ph
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !2359, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.010.i
  store i8 %i.u, ptr %i.v, align 1, !alias.scope !2358
  %i.w = add nuw nsw i64 %.sroa.02.010.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.c
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !2357

_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.a, %._crit_edge.i
  ret i1 %or.cond.not.i.not
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, ptr } @_RNvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB7_9Extension18write_negative_int(i8 noundef, i8 noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error2tz6offsetNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs2_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtB7_9IntoError10into_error(i8 noundef range(i8 0, 3), i8) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone14to_offset_info(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232), i64 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_8TimeZone14to_offset_info(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), i64 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtNtCsb09rMIQFAXO_9jiff_core5civil4date24iso_week_start_from_year(i16 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtB6_7Display3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYINtNtCsb09rMIQFAXO_9jiff_core4util8ArrayStrKj9_ENtNtCs3oUPovFnLWP_4core3fmt5Write10write_charCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef dereferenceable(10), i32 noundef range(i32 0, 1114112)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYINtNtCsb09rMIQFAXO_9jiff_core4util8ArrayStrKj9_ENtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef dereferenceable(10), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef range(i8 0, 9)) unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, ptr } @_RNvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB7_9Extension14write_str_cold(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), i8 noundef range(i8 0, 3), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom15format_datetimeNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom18format_12hour_timeNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvNtNtCsa9sSWSfjDbm_4jiff4util4utf86decode(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom11format_dateNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom11format_timeNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32) unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB7_14BrokenDownTime7to_date7to_date(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impaNtB8_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #16

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #19
end_hunk_4
