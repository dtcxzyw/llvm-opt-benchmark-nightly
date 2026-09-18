Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_sort-67924ef9ea112bf2.uu_sort.bca978c67578681b-cgu.0?download=true
inline.NumInlined: 5661
inline.NumDeleted: 2556
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_RINvMNtCsgcf5BHVXlUt_7uu_sort5mergeNtB3_10FileMerger12write_all_toINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEB5_:bb.a
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.fy, align 1, !noalias !412, !noundef !11 ; 2 uses
  %i.fz = icmp eq i8 %.val11.i.i.i.i.i.i.i.i.i.i.i.i, 9
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.fz, i8 62, i8 %.val11.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fx
  store i8 %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ga, align 1, !noalias !413
  %i.gb = add nuw nsw i64 %i.fx, 1                ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gb
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.1 = load i8, ptr %i.gc, align 1, !noalias !412, !noundef !11 ; 2 uses
  %i.gd = icmp eq i8 %.val11.i.i.i.i.i.i.i.i.i.i.i.i.1, 9
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = select i1 %i.gd, i8 62, i8 %.val11.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.gb
  store i8 %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, ptr %i.ge, align 1, !noalias !413
  %i.gf = add nuw nsw i64 %i.fx, 2                ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gf
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.2 = load i8, ptr %i.gg, align 1, !noalias !412, !noundef !11 ; 2 uses
  %i.gh = icmp eq i8 %.val11.i.i.i.i.i.i.i.i.i.i.i.i.2, 9
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = select i1 %i.gh, i8 62, i8 %.val11.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.gf
  store i8 %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, ptr %i.gi, align 1, !noalias !413
  %i.gj = add nuw nsw i64 %i.fx, 3                ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gj
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.3 = load i8, ptr %i.gk, align 1, !noalias !412, !noundef !11 ; 2 uses
  %i.gl = icmp eq i8 %.val11.i.i.i.i.i.i.i.i.i.i.i.i.3, 9
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = select i1 %i.gl, i8 62, i8 %.val11.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.gj
  store i8 %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, ptr %i.gm, align 1, !noalias !413
  %i.gn = add nuw nsw i64 %i.fx, 4                ; 2 uses
  %i.go = icmp eq i64 %i.gn, %.val5.i.i
  br i1 %i.go, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VechEINtB2_12SpecFromIterhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtB1q_5slice4iter4IterhEENCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB35_4Line11write_debugINtNtNtNtB6_2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEE0EE9from_iterB35_.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !164

_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VechEINtB2_12SpecFromIterhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtB1q_5slice4iter4IterhEENCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB35_4Line11write_debugINtNtNtNtB6_2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEE0EE9from_iterB35_.exit.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i, %middle.block793, %vec.epilog.middle.block, %bb.k
  %.sroa.10.0.i6.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ %i.ex, %middle.block793 ], [ %i.ex, %vec.epilog.middle.block ], [ %i.ex, %.preheader.i.i.i.i.i.i.i.i ], [ %i.ex, %.preheader.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.gp = load i64, ptr %2, align 8, !range !22, !alias.scope !416, !noalias !417, !noundef !11
  %i.gq = load i64, ptr %i.au, align 8, !alias.scope !416, !noalias !417, !noundef !11 ; 4 uses
  %i.gr = icmp sgt i64 %i.gq, -1
  call void @llvm.assume(i1 %i.gr)
  %i.gs = sub nsw i64 %i.gp, %i.gq
  %i.gt = icmp ult i64 %.val5.i.i, %i.gs
  br i1 %i.gt, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, !prof !17

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i: ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VechEINtB2_12SpecFromIterhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtB1q_5slice4iter4IterhEENCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB35_4Line11write_debugINtNtNtNtB6_2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEE0EE9from_iterB35_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.gu = load ptr, ptr %i.av, align 8, !alias.scope !419, !noalias !420, !nonnull !11, !noundef !11
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gv, ptr nonnull readonly align 1 %.sroa.10.0.i6.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val5.i.i, i1 false), !noalias !421
  %i.gw = add nuw i64 %i.gq, %.val5.i.i           ; 2 uses
  store i64 %i.gw, ptr %i.au, align 8, !alias.scope !419, !noalias !420
  br label %bb.n

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i: ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VechEINtB2_12SpecFromIterhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtB1q_5slice4iter4IterhEENCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB35_4Line11write_debugINtNtNtNtB6_2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEE0EE9from_iterB35_.exit.i.i.i.i
  %i.gx = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileE14write_all_coldCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.10.0.i6.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val5.i.i) #39, !noalias !422 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit._crit_edge.i.i.i.i, label %bb.du

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit._crit_edge.i.i.i.i: ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i
  %.pre.i.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !423, !noalias !424
  br label %bb.n

bb.n:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit._crit_edge.i.i.i.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i
  %i.gy = phi i64 [ %.pre.i.i.i.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit._crit_edge.i.i.i.i ], [ %i.gw, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.gz = load i64, ptr %2, align 8, !range !22, !alias.scope !423, !noalias !424, !noundef !11
  %i.ha = icmp sgt i64 %i.gy, -1
  call void @llvm.assume(i1 %i.ha)
  %i.hb = sub nsw i64 %i.gz, %i.gy
  %i.hc = icmp ugt i64 %i.hb, 1
  br i1 %i.hc, label %_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i, label %_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, !prof !17

_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i: ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.hd = load ptr, ptr %i.av, align 8, !alias.scope !428, !noalias !429, !nonnull !11, !noundef !11
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.gy
  store i8 10, ptr %i.he, align 1, !noalias !430
  %i.hf = add nuw i64 %i.gy, 1
  store i64 %i.hf, ptr %i.au, align 8, !alias.scope !428, !noalias !429
  br label %bb.o

_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i: ; preds = %bb.n
  %i.hg = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileE14write_all_coldCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef range(i64 0, -9223372036854775808) 1) #39, !noalias !422 ; 2 uses
  %.not114.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not114.i.i.i.i, label %bb.o, label %bb.du

bb.o:                                             ; preds = %_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, %_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !431
  store i64 0, ptr %i.aa, align 8, !noalias !431
  store ptr inttoptr (i64 8 to ptr), ptr %i.ay, align 8, !noalias !431
  store i64 0, ptr %i.az, align 8, !noalias !431
  call fastcc void @_RNvCsgcf5BHVXlUt_7uu_sort8tokenize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val5.i.i, i1 noundef zeroext %i.bc, i8 %i.be, ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, i8 %.val.i.i.i.i, i8 %.val139.i.i.i.i) #34, !noalias !422
  br i1 %i.bm, label %._crit_edge150.i.i.i.i.thread, label %.lr.ph149.i.i.i.i

.lr.ph149.i.i.i.i:                                ; preds = %bb.o
  %.pre255.i.i.i.i = load ptr, ptr %i.ay, align 8, !noalias !431 ; 2 uses
  %.pre256.i.i.i.i = load i64, ptr %i.az, align 8, !noalias !431 ; 2 uses
  %invariant.gep.i.i.i.i = getelementptr i8, ptr %.val.i.i, i64 -1
  br label %bb.p

bb.p:                                             ; preds = %bb.cg, %.lr.ph149.i.i.i.i
  %.sroa.023.0146.i.i.i.i = phi ptr [ %i.bi, %.lr.ph149.i.i.i.i ], [ %i.hh, %bb.cg ] ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.023.0146.i.i.i.i, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.023.0146.i.i.i.i, i64 24
  %i.hj = call fastcc { i64, i64 } @_RNvNvMs9_Csgcf5BHVXlUt_7uu_sortNtB7_13FieldSelector9get_range13resolve_index(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val5.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.pre255.i.i.i.i, i64 %.pre256.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hi) #34, !noalias !422 ; 2 uses
  %i.hk = extractvalue { i64, i64 } %i.hj, 0
  %i.hl = extractvalue { i64, i64 } %i.hj, 1      ; 4 uses
  switch i64 %i.hk, label %default.unreachable.i.i.i.i.i [
    i64 0, label %bb.q
    i64 1, label %bb.r
    i64 2, label %bb.r
    i64 3, label %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i
  ], !prof !27

default.unreachable.i.i.i.i.i:                    ; preds = %bb.s, %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.023.0146.i.i.i.i, i64 16
  %i.hn = load i8, ptr %i.hm, align 8, !range !28, !alias.scope !432, !noalias !433, !noundef !11
  %.not.i.i.i.i.i = icmp eq i8 %i.hn, 2
  br i1 %.not.i.i.i.i.i, label %bb.w, label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.p
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @446, ptr noundef nonnull inttoptr (i64 285 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #40, !noalias !434
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ho = call fastcc { i64, i64 } @_RNvNvMs9_Csgcf5BHVXlUt_7uu_sortNtB7_13FieldSelector9get_range13resolve_index(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val5.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.pre255.i.i.i.i, i64 %.pre256.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.023.0146.i.i.i.i) #34, !noalias !422 ; 2 uses
  %i.hp = extractvalue { i64, i64 } %i.ho, 0
  %i.hq = extractvalue { i64, i64 } %i.ho, 1      ; 2 uses
  switch i64 %i.hp, label %default.unreachable.i.i.i.i.i [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
    i64 3, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  %i.hr = add i64 %i.hq, 1
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.q
  %.sroa.8.0.i.i.i.i.i = phi i64 [ %i.hr, %bb.t ], [ %i.hq, %bb.u ], [ 0, %bb.v ], [ %.val5.i.i, %bb.q ], [ %.val5.i.i, %bb.s ]
  %.sroa.0.0.i151.i.i.i.i = phi i64 [ %i.hl, %bb.t ], [ %i.hl, %bb.u ], [ 0, %bb.v ], [ %i.hl, %bb.q ], [ %i.hl, %bb.s ] ; 2 uses
  %spec.select.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i151.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i)
  br label %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i

_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i: ; preds = %bb.w, %bb.p
  %.sroa.8.2.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %bb.w ], [ %.val5.i.i, %bb.p ] ; 19 uses
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %.sroa.0.0.i151.i.i.i.i, %bb.w ], [ %.val5.i.i, %bb.p ] ; 23 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.023.0146.i.i.i.i, i64 53
  %i.ht = load i8, ptr %i.hs, align 1, !range !20, !noalias !422, !noundef !11 ; 2 uses
  switch i8 %i.ht, label %bb.x [
    i8 0, label %bb.y
    i8 1, label %bb.y
    i8 2, label %bb.z
    i8 3, label %bb.aa
  ]

._crit_edge150.i.i.i.i:                           ; preds = %bb.cg
  br i1 %or.cond5.i.i.i.i, label %bb.cn, label %bb.cp

._crit_edge150.i.i.i.i.thread:                    ; preds = %bb.o
  br i1 %or.cond5.i.i.i.i, label %bb.cn, label %.thread449

bb.x:                                             ; preds = %bb.au, %bb.at, %_RNvCsgcf5BHVXlUt_7uu_sort17locale_decimal_pt.exit.i.i.i.i, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i.i.i.i, %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i
  %i.hu = phi i64 [ %i.kc, %bb.at ], [ %i.kd, %bb.au ], [ %i.jn, %_RNvCsgcf5BHVXlUt_7uu_sort17locale_decimal_pt.exit.i.i.i.i ], [ %i.is, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i.i.i.i ], [ %.sroa.8.2.i.i.i.i.i, %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i ] ; 4 uses
  %i.hv = phi i64 [ %i.kb, %bb.at ], [ %i.kd, %bb.au ], [ %i.jm, %_RNvCsgcf5BHVXlUt_7uu_sort17locale_decimal_pt.exit.i.i.i.i ], [ %i.it, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i, %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i ] ; 12 uses
  %.not123.i.i.i.i = icmp ugt i64 %i.hv, %.val5.i.i
  br i1 %.not123.i.i.i.i, label %bb.av, label %bb.aw, !prof !29

bb.y:                                             ; preds = %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i, %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !431
  %i.hw = icmp eq i8 %i.ht, 1                     ; 2 uses
  %i.hx = zext i1 %i.hw to i8
  store i8 %i.hx, ptr %i.z, align 1, !noalias !431
  store <4 x i8> %i.dt, ptr %i.br, align 1, !noalias !431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !431
  %i.hy = icmp ult i64 %.sroa.8.2.i.i.i.i.i, %.sroa.0.1.i.i.i.i.i
  %.not117.i.i.i.i = icmp ugt i64 %.sroa.8.2.i.i.i.i.i, %.val5.i.i
  %or.cond133.i.i.i.i = or i1 %.not117.i.i.i.i, %i.hy
  br i1 %or.cond133.i.i.i.i, label %bb.ac, label %bb.ab, !prof !29

bb.z:                                             ; preds = %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i
  %i.hz = icmp ult i64 %.sroa.8.2.i.i.i.i.i, %.sroa.0.1.i.i.i.i.i
  %.not116.i.i.i.i = icmp ugt i64 %.sroa.8.2.i.i.i.i.i, %.val5.i.i
  %or.cond137.i.i.i.i = or i1 %.not116.i.i.i.i, %i.hz
  br i1 %or.cond137.i.i.i.i, label %bb.ao, label %bb.am, !prof !29

bb.aa:                                            ; preds = %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i
  %i.ia = icmp ult i64 %.sroa.8.2.i.i.i.i.i, %.sroa.0.1.i.i.i.i.i
  br i1 %i.ia, label %bb.as, label %bb.ap, !prof !21

bb.ab:                                            ; preds = %bb.y
  %i.ib = sub nuw i64 %.sroa.8.2.i.i.i.i.i, %.sroa.0.1.i.i.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.1.i.i.i.i.i
  call fastcc void @_RNvMs_NtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmpNtB4_7NumInfo5parse(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ic, i64 noundef %i.ib, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(5) %i.z) #34, !noalias !422
  %i.id = load i64, ptr %i.bs, align 8, !noalias !431, !noundef !11 ; 5 uses
  %i.ie = load i64, ptr %i.bt, align 8, !noalias !431, !noundef !11 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !431
  %i.if = add i64 %i.id, %.sroa.0.1.i.i.i.i.i     ; 9 uses
  %.sroa.050.0.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %i.ie, i64 %i.id) ; 2 uses
  %i.ig = add i64 %.sroa.050.0.i.i.i.i, %i.if     ; 12 uses
  %i.ih = or i64 %i.ie, %i.id
  %or.cond15.i.i.i.i = icmp eq i64 %i.ih, 0
  br i1 %or.cond15.i.i.i.i, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.y
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.8.2.i.i.i.i.i, i64 noundef %.val5.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #40, !noalias !422
  unreachable

bb.ad:                                            ; preds = %bb.ab
  br i1 %i.hw, label %bb.ai, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i

bb.ae:                                            ; preds = %bb.ab
  %i.ii = icmp ult i64 %i.ig, %i.if
  %.not122.i.i.i.i = icmp ugt i64 %i.ig, %.val5.i.i
  %or.cond134.i.i.i.i = or i1 %i.ii, %.not122.i.i.i.i
  br i1 %or.cond134.i.i.i.i, label %bb.ah, label %bb.af, !prof !29

bb.af:                                            ; preds = %bb.ae
  %i.ij = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ig
  %.not42.i.i.i.i = icmp ugt i64 %i.ie, %i.id
  br i1 %.not42.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs_0EB1P_.exit.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.af
  %i.ik = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.if
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs_0B8_.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.sroa.02.07.i.i.i.i.i = phi i64 [ %i.in, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs_0B8_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i ] ; 3 uses
  %i.il = phi ptr [ %i.im, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs_0B8_.exit.i.i.i.i.i ], [ %i.ik, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %.val.i.i.i.i.i = load i8, ptr %i.il, align 1, !noalias !435, !noundef !11
  switch i8 %.val.i.i.i.i.i, label %bb.ag [
    i8 9, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs_0B8_.exit.i.i.i.i.i
    i8 10, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs_0B8_.exit.i.i.i.i.i
    i8 12, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs_0B8_.exit.i.i.i.i.i
    i8 13, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs_0B8_.exit.i.i.i.i.i
    i8 32, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs_0B8_.exit.i.i.i.i.i
  ]

_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs_0B8_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 1 ; 2 uses
  %i.in = add nuw i64 %.sroa.02.07.i.i.i.i.i, 1
  %i.io = icmp eq ptr %i.im, %i.ij
  br i1 %i.io, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs_0EB1P_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ip = icmp ult i64 %.sroa.02.07.i.i.i.i.i, %.sroa.050.0.i.i.i.i
  call void @llvm.assume(i1 %i.ip)
  br label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs_0EB1P_.exit.i.i.i.i

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs_0EB1P_.exit.i.i.i.i: ; preds = %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs_0B8_.exit.i.i.i.i.i, %bb.ag, %bb.af
  %.sroa.0.0.i152.i.i.i.i = phi i64 [ %.sroa.02.07.i.i.i.i.i, %bb.ag ], [ 0, %bb.af ], [ 0, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs_0B8_.exit.i.i.i.i.i ] ; 2 uses
  %i.iq = add i64 %.sroa.0.0.i152.i.i.i.i, %i.if
  %i.ir = add i64 %.sroa.0.0.i152.i.i.i.i, %i.ig
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i.i.i.i

bb.ah:                                            ; preds = %bb.ae
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.if, i64 noundef %i.ig, i64 noundef %.val5.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #40, !noalias !422
  unreachable

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i155.i.i.i.i, %.lr.ph.i.preheader.i.i.i, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs_0EB1P_.exit.i.i.i.i
  %i.is = phi i64 [ %i.ir, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs_0EB1P_.exit.i.i.i.i ], [ %i.iv, %.lr.ph.i.preheader.i.i.i ], [ %i.iv, %.lr.ph.i155.i.i.i.i ], [ %i.iv, %.lr.ph.i.i.i.i ]
  %i.it = phi i64 [ %i.iq, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs_0EB1P_.exit.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i ], [ %.sroa.0.1.i.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ja, %.lr.ph.i155.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !431
  br label %bb.x

bb.ai:                                            ; preds = %bb.ad
  %i.iu = icmp ult i64 %.sroa.8.2.i.i.i.i.i, %i.ig
  br i1 %i.iu, label %bb.ak, label %bb.aj, !prof !29

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i: ; preds = %bb.al, %.lr.ph.i153.i.i.i.i, %bb.aj, %bb.ad
  %i.iv = phi i64 [ %i.iz, %bb.al ], [ %i.ig, %bb.ad ], [ %.sroa.8.2.i.i.i.i.i, %bb.aj ], [ %i.ig, %.lr.ph.i153.i.i.i.i ] ; 3 uses
  %i.iw = icmp ult i64 %i.if, %.sroa.0.1.i.i.i.i.i
  %.not120141.i.i.i.i = icmp ugt i64 %i.if, %.val5.i.i
  %or.cond136142.i.i.i.i = or i1 %i.iw, %.not120141.i.i.i.i
  br i1 %or.cond136142.i.i.i.i, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit._crit_edge.i.i.i.i, label %.lr.ph.i.preheader.i.i.i, !prof !30

.lr.ph.i.preheader.i.i.i:                         ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i
  %.not121.i87.i.i.i = icmp eq i64 %i.id, 0
  br i1 %.not121.i87.i.i.i, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i.i.i.i, label %.lr.ph.i155.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %.not119.i.i.i.i = icmp eq i64 %.sroa.8.2.i.i.i.i.i, %i.ig
  br i1 %.not119.i.i.i.i, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i, label %.lr.ph.i153.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.ig, i64 noundef %.sroa.8.2.i.i.i.i.i, i64 noundef %.val5.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #40, !noalias !422
  unreachable

.lr.ph.i153.i.i.i.i:                              ; preds = %bb.aj
  %i.ix = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ig
  %i.iy = load i8, ptr %i.ix, align 1, !noalias !436, !noundef !11
  switch i8 %i.iy, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i [
    i8 107, label %bb.al
    i8 75, label %bb.al
    i8 77, label %bb.al
    i8 71, label %bb.al
    i8 84, label %bb.al
    i8 80, label %bb.al
    i8 69, label %bb.al
    i8 90, label %bb.al
    i8 89, label %bb.al
    i8 82, label %bb.al
    i8 81, label %bb.al
  ]

bb.al:                                            ; preds = %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i
  %i.iz = add nuw i64 %i.ig, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit._crit_edge.i.i.i.i: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.1.i.i.i.i.i, i64 noundef %i.if, i64 noundef %.val5.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #40, !noalias !422
  unreachable

.lr.ph.i155.i.i.i.i:                              ; preds = %.lr.ph.i.preheader.i.i.i, %.lr.ph.i.i.i.i
  %i.ja = phi i64 [ %i.jc, %.lr.ph.i.i.i.i ], [ %i.if, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %gep.i.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i.i, i64 %i.ja
  %i.jb = load i8, ptr %gep.i.i.i.i, align 1, !noalias !436, !noundef !11
  switch i8 %i.jb, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i.i.i.i [
    i8 45, label %.lr.ph.i.i.i.i
    i8 48, label %.lr.ph.i.i.i.i
    i8 46, label %.lr.ph.i.i.i.i
  ]

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i155.i.i.i.i, %.lr.ph.i155.i.i.i.i, %.lr.ph.i155.i.i.i.i
  %i.jc = add nsw i64 %i.ja, -1                   ; 2 uses
  %.not121.i.i.i.i = icmp eq i64 %i.jc, %.sroa.0.1.i.i.i.i.i
  br i1 %.not121.i.i.i.i, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i.i.i.i, label %.lr.ph.i155.i.i.i.i

bb.am:                                            ; preds = %bb.z
  %i.jd = sub nuw i64 %.sroa.8.2.i.i.i.i.i, %.sroa.0.1.i.i.i.i.i
  %i.je = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.1.i.i.i.i.i
  %i.jf = call { ptr, i64 } @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n7decimal24locale_decimal_separator() #34, !noalias !422 ; 2 uses
  %i.jg = extractvalue { ptr, i64 } %i.jf, 1
  %.not.i161.i.i.i.i = icmp eq i64 %i.jg, 0
  br i1 %.not.i161.i.i.i.i, label %_RNvCsgcf5BHVXlUt_7uu_sort17locale_decimal_pt.exit.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jh = extractvalue { ptr, i64 } %i.jf, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jh) ]
  %i.ji = load i8, ptr %i.jh, align 1, !noalias !422, !noundef !11
  %switch.selectcmp.i.i.i.i.i = icmp eq i8 %i.ji, 44
  %switch.select.i.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i.i, i8 44, i8 46
  br label %_RNvCsgcf5BHVXlUt_7uu_sort17locale_decimal_pt.exit.i.i.i.i

_RNvCsgcf5BHVXlUt_7uu_sort17locale_decimal_pt.exit.i.i.i.i: ; preds = %bb.an, %bb.am
  %.sroa.0.0.i162.i.i.i.i = phi i8 [ %switch.select.i.i.i.i.i, %bb.an ], [ 46, %bb.am ]
  %i.jj = call fastcc { i64, i64 } @_RNvCsgcf5BHVXlUt_7uu_sort15get_leading_gen(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.je, i64 noundef %i.jd, i8 noundef %.sroa.0.0.i162.i.i.i.i) #34, !noalias !422 ; 2 uses
  %i.jk = extractvalue { i64, i64 } %i.jj, 0      ; 2 uses
  %i.jl = extractvalue { i64, i64 } %i.jj, 1
  %i.jm = add i64 %i.jk, %.sroa.0.1.i.i.i.i.i     ; 2 uses
  %.sroa.056.0.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %i.jl, i64 %i.jk)
  %i.jn = add i64 %i.jm, %.sroa.056.0.i.i.i.i
  br label %bb.x

bb.ao:                                            ; preds = %bb.z
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.8.2.i.i.i.i.i, i64 noundef %.val5.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #40, !noalias !422
  unreachable

bb.ap:                                            ; preds = %bb.aa
  %i.jo = sub nuw i64 %.sroa.8.2.i.i.i.i.i, %.sroa.0.1.i.i.i.i.i ; 3 uses
  %.not115.i.i.i.i = icmp ugt i64 %.sroa.8.2.i.i.i.i.i, %.val5.i.i
  br i1 %.not115.i.i.i.i, label %bb.as, label %bb.aq, !prof !21

bb.aq:                                            ; preds = %bb.ap
  %i.jp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.1.i.i.i.i.i ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.8.2.i.i.i.i.i
  %i.jr = icmp samesign eq i64 %.sroa.0.1.i.i.i.i.i, %.sroa.8.2.i.i.i.i.i
  br i1 %i.jr, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs2_0EB1P_.exit.i.i.i.i, label %.lr.ph.i165.i.i.i.i

.lr.ph.i165.i.i.i.i:                              ; preds = %bb.aq, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs2_0B8_.exit.i.i.i.i.i
  %.sroa.02.07.i166.i.i.i.i = phi i64 [ %i.ju, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs2_0B8_.exit.i.i.i.i.i ], [ 0, %bb.aq ] ; 3 uses
  %i.js = phi ptr [ %i.jt, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs2_0B8_.exit.i.i.i.i.i ], [ %i.jp, %bb.aq ] ; 2 uses
  %.val.i167.i.i.i.i = load i8, ptr %i.js, align 1, !noalias !437, !noundef !11
  switch i8 %.val.i167.i.i.i.i, label %bb.ar [
    i8 9, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs2_0B8_.exit.i.i.i.i.i
    i8 10, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs2_0B8_.exit.i.i.i.i.i
    i8 12, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs2_0B8_.exit.i.i.i.i.i
    i8 13, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs2_0B8_.exit.i.i.i.i.i
    i8 32, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs2_0B8_.exit.i.i.i.i.i
  ]

_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs2_0B8_.exit.i.i.i.i.i: ; preds = %.lr.ph.i165.i.i.i.i, %.lr.ph.i165.i.i.i.i, %.lr.ph.i165.i.i.i.i, %.lr.ph.i165.i.i.i.i, %.lr.ph.i165.i.i.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1 ; 2 uses
  %i.ju = add nuw i64 %.sroa.02.07.i166.i.i.i.i, 1
  %i.jv = icmp eq ptr %i.jt, %i.jq
  br i1 %i.jv, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs2_0EB1P_.exit.i.i.i.i, label %.lr.ph.i165.i.i.i.i

bb.ar:                                            ; preds = %.lr.ph.i165.i.i.i.i
  %i.jw = icmp ult i64 %.sroa.02.07.i166.i.i.i.i, %i.jo
  call void @llvm.assume(i1 %i.jw)
  br label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs2_0EB1P_.exit.i.i.i.i

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs2_0EB1P_.exit.i.i.i.i: ; preds = %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs2_0B8_.exit.i.i.i.i.i, %bb.ar, %bb.aq
  %.sroa.0.0.i170.i.i.i.i = phi i64 [ %.sroa.02.07.i166.i.i.i.i, %bb.ar ], [ 0, %bb.aq ], [ %i.jo, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs2_0B8_.exit.i.i.i.i.i ] ; 2 uses
  %i.jx = call fastcc { i8, i64 } @_RNvCsgcf5BHVXlUt_7uu_sort11month_parse(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jp, i64 noundef %i.jo) #34, !noalias !422 ; 2 uses
  %i.jy = extractvalue { i8, i64 } %i.jx, 0
  %i.jz = icmp eq i8 %i.jy, 0
  br i1 %i.jz, label %bb.au, label %bb.at

bb.as:                                            ; preds = %bb.ap, %bb.aa
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.8.2.i.i.i.i.i, i64 noundef %.val5.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #40, !noalias !422
  unreachable

bb.at:                                            ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs2_0EB1P_.exit.i.i.i.i
  %i.ka = extractvalue { i8, i64 } %i.jx, 1
  %i.kb = add i64 %.sroa.0.0.i170.i.i.i.i, %.sroa.0.1.i.i.i.i.i ; 2 uses
  %i.kc = add i64 %i.ka, %i.kb
  br label %bb.x

bb.au:                                            ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileEEs2_0EB1P_.exit.i.i.i.i
  %i.kd = add i64 %.sroa.0.0.i170.i.i.i.i, %.sroa.0.1.i.i.i.i.i ; 2 uses
  br label %bb.x

bb.av:                                            ; preds = %bb.x
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hv, i64 noundef %.val5.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #40, !noalias !422
  unreachable

bb.aw:                                            ; preds = %bb.x
  %i.ke = icmp samesign eq i64 %i.hv, 0
  br i1 %i.ke, label %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.thread.i.i.i.i, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %bb.aw
  %min.iters.check767 = icmp ult i64 %i.hv, 4
  br i1 %min.iters.check767, label %.preheader.i.i.i.i.i.i.preheader804, label %vector.ph768

vector.ph768:                                     ; preds = %.preheader.i.i.i.i.i.i.preheader
  %n.vec769 = and i64 %i.hv, -4                   ; 3 uses
  br label %vector.body770

vector.body770:                                   ; preds = %vector.body770, %vector.ph768
  %index771 = phi i64 [ 0, %vector.ph768 ], [ %index.next776, %vector.body770 ] ; 2 uses
  %vec.phi772 = phi <2 x i64> [ zeroinitializer, %vector.ph768 ], [ %i.kl, %vector.body770 ]
  %vec.phi773 = phi <2 x i64> [ zeroinitializer, %vector.ph768 ], [ %i.km, %vector.body770 ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i6.i.i.i.i.i.i, i64 %index771 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 2
  %wide.load774 = load <2 x i8>, ptr %i.kf, align 1, !alias.scope !438, !noalias !422
  %wide.load775 = load <2 x i8>, ptr %i.kg, align 1, !alias.scope !438, !noalias !422
  %i.kh = icmp ne <2 x i8> %wide.load774, zeroinitializer
  %i.ki = icmp ne <2 x i8> %wide.load775, zeroinitializer
  %i.kj = zext <2 x i1> %i.kh to <2 x i64>
  %i.kk = zext <2 x i1> %i.ki to <2 x i64>
  %i.kl = add <2 x i64> %vec.phi772, %i.kj        ; 2 uses
  %i.km = add <2 x i64> %vec.phi773, %i.kk        ; 2 uses
  %index.next776 = add nuw i64 %index771, 4       ; 2 uses
  %i.kn = icmp eq i64 %index.next776, %n.vec769
  br i1 %i.kn, label %middle.block777, label %vector.body770, !llvm.loop !191

middle.block777:                                  ; preds = %vector.body770
  %bin.rdx778 = add <2 x i64> %i.km, %i.kl
  %i.ko = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx778) ; 2 uses
  %cmp.n779 = icmp eq i64 %i.hv, %n.vec769
  br i1 %cmp.n779, label %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i.preheader804

.preheader.i.i.i.i.i.i.preheader804:              ; preds = %.preheader.i.i.i.i.i.i.preheader, %middle.block777
  %.sroa.04.0.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %n.vec769, %middle.block777 ]
  %.sroa.02.0.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ko, %middle.block777 ]
  br label %.preheader.i.i.i.i.i.i

_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.thread.i.i.i.i: ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !431
  br label %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.preheader804, %.preheader.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ %i.kt, %.preheader.i.i.i.i.i.i ], [ %.sroa.04.0.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.preheader804 ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i = phi i64 [ %i.ks, %.preheader.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.preheader804 ]
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i6.i.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i = load i8, ptr %i.kp, align 1, !alias.scope !438, !noalias !422, !noundef !11
  %i.kq = icmp ne i8 %.val.i.i.i.i.i.i.i, 0
  %i.kr = zext i1 %i.kq to i64
  %i.ks = add i64 %.sroa.02.0.i.i.i.i.i.i.i, %i.kr ; 2 uses
  %i.kt = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ku = icmp eq i64 %i.kt, %i.hv
  br i1 %i.ku, label %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !192

_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i, %middle.block777
  %.lcssa610 = phi i64 [ %i.ko, %middle.block777 ], [ %i.ks, %.preheader.i.i.i.i.i.i ] ; 9 uses
  %i.kv = icmp ule i64 %.lcssa610, %i.hv
  call void @llvm.assume(i1 %i.kv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !431
  %i.kw = icmp eq i64 %.lcssa610, 0
  br i1 %i.kw, label %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !439
  %i.kx = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %.lcssa610, i64 noundef range(i64 1, 9) 1) #34, !noalias !439 ; 8 uses
  %i.ky = icmp eq ptr %i.kx, null
  br i1 %i.ky, label %bb.ay, label %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.lcssa610) #37, !noalias !440
  unreachable

_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i: ; preds = %bb.ax
  store i8 32, ptr %i.kx, align 1, !noalias !441
  %.sroa.01.07.i.i.i.i.i = lshr i64 %.lcssa610, 1 ; 2 uses
  %.not8.i.i.i.i.i = icmp eq i64 %.sroa.01.07.i.i.i.i.i, 0
  br i1 %.not8.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i171.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i171.i.i.i.i, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i
  %storemerge.lcssa.i.i.i.i.i = phi i64 [ 1, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i ], [ %i.lb, %.lr.ph.i171.i.i.i.i ] ; 4 uses
  %i.kz = icmp sgt i64 %storemerge.lcssa.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.kz)
  %.not5.i.i.i.i.i = icmp eq i64 %.lcssa610, %storemerge.lcssa.i.i.i.i.i
  br i1 %.not5.i.i.i.i.i, label %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, label %bb.az

.lr.ph.i171.i.i.i.i:                              ; preds = %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i, %.lr.ph.i171.i.i.i.i
  %.sroa.01.010.i.i.i.i.i = phi i64 [ %.sroa.01.0.i.i.i.i.i, %.lr.ph.i171.i.i.i.i ], [ %.sroa.01.07.i.i.i.i.i, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i ]
  %storemerge9.i.i.i.i.i = phi i64 [ %i.lb, %.lr.ph.i171.i.i.i.i ], [ 1, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i ] ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 %storemerge9.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.la, ptr noundef nonnull align 1 dereferenceable(1) %i.kx, i64 %storemerge9.i.i.i.i.i, i1 false), !noalias !440
  %i.lb = shl nuw i64 %storemerge9.i.i.i.i.i, 1   ; 2 uses
  %.sroa.01.0.i.i.i.i.i = lshr i64 %.sroa.01.010.i.i.i.i.i, 1 ; 2 uses
  %.not.i172.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i, 0
  br i1 %.not.i172.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i171.i.i.i.i

bb.az:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.lc = sub nsw i64 %.lcssa610, %storemerge.lcssa.i.i.i.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kx, i64 %storemerge.lcssa.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ld, ptr nonnull align 1 %i.kx, i64 %i.lc, i1 false), !noalias !440
  br label %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i: ; preds = %bb.az, %._crit_edge.i.i.i.i.i, %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i.i.i.i, %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.thread.i.i.i.i
  %.sink14.i.i.i.i.i = phi i64 [ %.lcssa610, %._crit_edge.i.i.i.i.i ], [ %.lcssa610, %bb.az ], [ 0, %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i.i.i.i ], [ 0, %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.thread.i.i.i.i ] ; 2 uses
  %.sink13.i.i.i.i.i = phi ptr [ %i.kx, %._crit_edge.i.i.i.i.i ], [ %i.kx, %bb.az ], [ inttoptr (i64 1 to ptr), %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i.i.i.i ], [ inttoptr (i64 1 to ptr), %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.thread.i.i.i.i ]
  store i64 %.sink14.i.i.i.i.i, ptr %i.x, align 8, !noalias !431
  store ptr %.sink13.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !431
  store i64 %.sink14.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx20.i.i.i.i, align 8, !noalias !431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !431
  store ptr %i.x, ptr %i.w, align 8, !noalias !431
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.469.0..sroa_idx.i.i.i.i, align 8, !noalias !431
end_hunk_0
begin_hunk_1_@_RINvMNtCsgcf5BHVXlUt_7uu_sort5mergeNtB3_10FileMerger12write_all_toINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEB5_:bb.a
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.fy, align 1, !noalias !878, !noundef !11 ; 2 uses
  %i.fz = icmp eq i8 %.val11.i.i.i.i.i.i.i.i.i.i.i.i, 9
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.fz, i8 62, i8 %.val11.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fx
  store i8 %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ga, align 1, !noalias !879
  %i.gb = add nuw nsw i64 %i.fx, 1                ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gb
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.1 = load i8, ptr %i.gc, align 1, !noalias !878, !noundef !11 ; 2 uses
  %i.gd = icmp eq i8 %.val11.i.i.i.i.i.i.i.i.i.i.i.i.1, 9
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = select i1 %i.gd, i8 62, i8 %.val11.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.gb
  store i8 %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, ptr %i.ge, align 1, !noalias !879
  %i.gf = add nuw nsw i64 %i.fx, 2                ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gf
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.2 = load i8, ptr %i.gg, align 1, !noalias !878, !noundef !11 ; 2 uses
  %i.gh = icmp eq i8 %.val11.i.i.i.i.i.i.i.i.i.i.i.i.2, 9
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = select i1 %i.gh, i8 62, i8 %.val11.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.gf
  store i8 %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, ptr %i.gi, align 1, !noalias !879
  %i.gj = add nuw nsw i64 %i.fx, 3                ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gj
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.3 = load i8, ptr %i.gk, align 1, !noalias !878, !noundef !11 ; 2 uses
  %i.gl = icmp eq i8 %.val11.i.i.i.i.i.i.i.i.i.i.i.i.3, 9
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = select i1 %i.gl, i8 62, i8 %.val11.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.gj
  store i8 %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, ptr %i.gm, align 1, !noalias !879
  %i.gn = add nuw nsw i64 %i.fx, 4                ; 2 uses
  %i.go = icmp eq i64 %i.gn, %.val5.i.i
  br i1 %i.go, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VechEINtB2_12SpecFromIterhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtB1q_5slice4iter4IterhEENCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB35_4Line11write_debugINtNtNtNtB6_2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEE0EE9from_iterB35_.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !630

_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VechEINtB2_12SpecFromIterhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtB1q_5slice4iter4IterhEENCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB35_4Line11write_debugINtNtNtNtB6_2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEE0EE9from_iterB35_.exit.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i, %middle.block793, %vec.epilog.middle.block, %bb.k
  %.sroa.10.0.i6.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ %i.ex, %middle.block793 ], [ %i.ex, %vec.epilog.middle.block ], [ %i.ex, %.preheader.i.i.i.i.i.i.i.i ], [ %i.ex, %.preheader.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %i.gp = load i64, ptr %2, align 8, !range !22, !alias.scope !882, !noalias !883, !noundef !11
  %i.gq = load i64, ptr %i.au, align 8, !alias.scope !882, !noalias !883, !noundef !11 ; 4 uses
  %i.gr = icmp sgt i64 %i.gq, -1
  call void @llvm.assume(i1 %i.gr)
  %i.gs = sub nsw i64 %i.gp, %i.gq
  %i.gt = icmp ult i64 %.val5.i.i, %i.gs
  br i1 %i.gt, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, !prof !17

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i: ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VechEINtB2_12SpecFromIterhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtB1q_5slice4iter4IterhEENCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB35_4Line11write_debugINtNtNtNtB6_2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEE0EE9from_iterB35_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %i.gu = load ptr, ptr %i.av, align 8, !alias.scope !885, !noalias !886, !nonnull !11, !noundef !11
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gv, ptr nonnull readonly align 1 %.sroa.10.0.i6.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val5.i.i, i1 false), !noalias !887
  %i.gw = add nuw i64 %i.gq, %.val5.i.i           ; 2 uses
  store i64 %i.gw, ptr %i.au, align 8, !alias.scope !885, !noalias !886
  br label %bb.n

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i: ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VechEINtB2_12SpecFromIterhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtB1q_5slice4iter4IterhEENCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB35_4Line11write_debugINtNtNtNtB6_2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEE0EE9from_iterB35_.exit.i.i.i.i
  %i.gx = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinE14write_all_coldCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.10.0.i6.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val5.i.i) #39, !noalias !888 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit._crit_edge.i.i.i.i, label %bb.du

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit._crit_edge.i.i.i.i: ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i
  %.pre.i.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !889, !noalias !890
  br label %bb.n

bb.n:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit._crit_edge.i.i.i.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i
  %i.gy = phi i64 [ %.pre.i.i.i.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit._crit_edge.i.i.i.i ], [ %i.gw, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  %i.gz = load i64, ptr %2, align 8, !range !22, !alias.scope !889, !noalias !890, !noundef !11
  %i.ha = icmp sgt i64 %i.gy, -1
  call void @llvm.assume(i1 %i.ha)
  %i.hb = sub nsw i64 %i.gz, %i.gy
  %i.hc = icmp ugt i64 %i.hb, 1
  br i1 %i.hc, label %_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i, label %_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, !prof !17

_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i: ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  %i.hd = load ptr, ptr %i.av, align 8, !alias.scope !894, !noalias !895, !nonnull !11, !noundef !11
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.gy
  store i8 10, ptr %i.he, align 1, !noalias !896
  %i.hf = add nuw i64 %i.gy, 1
  store i64 %i.hf, ptr %i.au, align 8, !alias.scope !894, !noalias !895
  br label %bb.o

_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i: ; preds = %bb.n
  %i.hg = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinE14write_all_coldCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef range(i64 0, -9223372036854775808) 1) #39, !noalias !888 ; 2 uses
  %.not114.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not114.i.i.i.i, label %bb.o, label %bb.du

bb.o:                                             ; preds = %_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, %_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !897
  store i64 0, ptr %i.aa, align 8, !noalias !897
  store ptr inttoptr (i64 8 to ptr), ptr %i.ay, align 8, !noalias !897
  store i64 0, ptr %i.az, align 8, !noalias !897
  call fastcc void @_RNvCsgcf5BHVXlUt_7uu_sort8tokenize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val5.i.i, i1 noundef zeroext %i.bc, i8 %i.be, ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, i8 %.val.i.i.i.i, i8 %.val139.i.i.i.i) #34, !noalias !888
  br i1 %i.bm, label %._crit_edge150.i.i.i.i.thread, label %.lr.ph149.i.i.i.i

.lr.ph149.i.i.i.i:                                ; preds = %bb.o
  %.pre255.i.i.i.i = load ptr, ptr %i.ay, align 8, !noalias !897 ; 2 uses
  %.pre256.i.i.i.i = load i64, ptr %i.az, align 8, !noalias !897 ; 2 uses
  %invariant.gep.i.i.i.i = getelementptr i8, ptr %.val.i.i, i64 -1
  br label %bb.p

bb.p:                                             ; preds = %bb.cg, %.lr.ph149.i.i.i.i
  %.sroa.023.0146.i.i.i.i = phi ptr [ %i.bi, %.lr.ph149.i.i.i.i ], [ %i.hh, %bb.cg ] ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.023.0146.i.i.i.i, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.023.0146.i.i.i.i, i64 24
  %i.hj = call fastcc { i64, i64 } @_RNvNvMs9_Csgcf5BHVXlUt_7uu_sortNtB7_13FieldSelector9get_range13resolve_index(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val5.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.pre255.i.i.i.i, i64 %.pre256.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hi) #34, !noalias !888 ; 2 uses
  %i.hk = extractvalue { i64, i64 } %i.hj, 0
  %i.hl = extractvalue { i64, i64 } %i.hj, 1      ; 4 uses
  switch i64 %i.hk, label %default.unreachable.i.i.i.i.i [
    i64 0, label %bb.q
    i64 1, label %bb.r
    i64 2, label %bb.r
    i64 3, label %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i
  ], !prof !27

default.unreachable.i.i.i.i.i:                    ; preds = %bb.s, %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.023.0146.i.i.i.i, i64 16
  %i.hn = load i8, ptr %i.hm, align 8, !range !28, !alias.scope !898, !noalias !899, !noundef !11
  %.not.i.i.i.i.i = icmp eq i8 %i.hn, 2
  br i1 %.not.i.i.i.i.i, label %bb.w, label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.p
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @446, ptr noundef nonnull inttoptr (i64 285 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #40, !noalias !900
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ho = call fastcc { i64, i64 } @_RNvNvMs9_Csgcf5BHVXlUt_7uu_sortNtB7_13FieldSelector9get_range13resolve_index(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val5.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.pre255.i.i.i.i, i64 %.pre256.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.023.0146.i.i.i.i) #34, !noalias !888 ; 2 uses
  %i.hp = extractvalue { i64, i64 } %i.ho, 0
  %i.hq = extractvalue { i64, i64 } %i.ho, 1      ; 2 uses
  switch i64 %i.hp, label %default.unreachable.i.i.i.i.i [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
    i64 3, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  %i.hr = add i64 %i.hq, 1
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.q
  %.sroa.8.0.i.i.i.i.i = phi i64 [ %i.hr, %bb.t ], [ %i.hq, %bb.u ], [ 0, %bb.v ], [ %.val5.i.i, %bb.q ], [ %.val5.i.i, %bb.s ]
  %.sroa.0.0.i151.i.i.i.i = phi i64 [ %i.hl, %bb.t ], [ %i.hl, %bb.u ], [ 0, %bb.v ], [ %i.hl, %bb.q ], [ %i.hl, %bb.s ] ; 2 uses
  %spec.select.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i151.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i)
  br label %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i

_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i: ; preds = %bb.w, %bb.p
  %.sroa.8.2.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %bb.w ], [ %.val5.i.i, %bb.p ] ; 19 uses
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %.sroa.0.0.i151.i.i.i.i, %bb.w ], [ %.val5.i.i, %bb.p ] ; 23 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.023.0146.i.i.i.i, i64 53
  %i.ht = load i8, ptr %i.hs, align 1, !range !20, !noalias !888, !noundef !11 ; 2 uses
  switch i8 %i.ht, label %bb.x [
    i8 0, label %bb.y
    i8 1, label %bb.y
    i8 2, label %bb.z
    i8 3, label %bb.aa
  ]

._crit_edge150.i.i.i.i:                           ; preds = %bb.cg
  br i1 %or.cond5.i.i.i.i, label %bb.cn, label %bb.cp

._crit_edge150.i.i.i.i.thread:                    ; preds = %bb.o
  br i1 %or.cond5.i.i.i.i, label %bb.cn, label %.thread449

bb.x:                                             ; preds = %bb.au, %bb.at, %_RNvCsgcf5BHVXlUt_7uu_sort17locale_decimal_pt.exit.i.i.i.i, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i.i.i.i, %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i
  %i.hu = phi i64 [ %i.kc, %bb.at ], [ %i.kd, %bb.au ], [ %i.jn, %_RNvCsgcf5BHVXlUt_7uu_sort17locale_decimal_pt.exit.i.i.i.i ], [ %i.is, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i.i.i.i ], [ %.sroa.8.2.i.i.i.i.i, %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i ] ; 4 uses
  %i.hv = phi i64 [ %i.kb, %bb.at ], [ %i.kd, %bb.au ], [ %i.jm, %_RNvCsgcf5BHVXlUt_7uu_sort17locale_decimal_pt.exit.i.i.i.i ], [ %i.it, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i, %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i ] ; 12 uses
  %.not123.i.i.i.i = icmp ugt i64 %i.hv, %.val5.i.i
  br i1 %.not123.i.i.i.i, label %bb.av, label %bb.aw, !prof !29

bb.y:                                             ; preds = %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i, %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !897
  %i.hw = icmp eq i8 %i.ht, 1                     ; 2 uses
  %i.hx = zext i1 %i.hw to i8
  store i8 %i.hx, ptr %i.z, align 1, !noalias !897
  store <4 x i8> %i.dt, ptr %i.br, align 1, !noalias !897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !897
  %i.hy = icmp ult i64 %.sroa.8.2.i.i.i.i.i, %.sroa.0.1.i.i.i.i.i
  %.not117.i.i.i.i = icmp ugt i64 %.sroa.8.2.i.i.i.i.i, %.val5.i.i
  %or.cond133.i.i.i.i = or i1 %.not117.i.i.i.i, %i.hy
  br i1 %or.cond133.i.i.i.i, label %bb.ac, label %bb.ab, !prof !29

bb.z:                                             ; preds = %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i
  %i.hz = icmp ult i64 %.sroa.8.2.i.i.i.i.i, %.sroa.0.1.i.i.i.i.i
  %.not116.i.i.i.i = icmp ugt i64 %.sroa.8.2.i.i.i.i.i, %.val5.i.i
  %or.cond137.i.i.i.i = or i1 %.not116.i.i.i.i, %i.hz
  br i1 %or.cond137.i.i.i.i, label %bb.ao, label %bb.am, !prof !29

bb.aa:                                            ; preds = %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i.i.i.i
  %i.ia = icmp ult i64 %.sroa.8.2.i.i.i.i.i, %.sroa.0.1.i.i.i.i.i
  br i1 %i.ia, label %bb.as, label %bb.ap, !prof !21

bb.ab:                                            ; preds = %bb.y
  %i.ib = sub nuw i64 %.sroa.8.2.i.i.i.i.i, %.sroa.0.1.i.i.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.1.i.i.i.i.i
  call fastcc void @_RNvMs_NtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmpNtB4_7NumInfo5parse(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ic, i64 noundef %i.ib, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(5) %i.z) #34, !noalias !888
  %i.id = load i64, ptr %i.bs, align 8, !noalias !897, !noundef !11 ; 5 uses
  %i.ie = load i64, ptr %i.bt, align 8, !noalias !897, !noundef !11 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !897
  %i.if = add i64 %i.id, %.sroa.0.1.i.i.i.i.i     ; 9 uses
  %.sroa.050.0.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %i.ie, i64 %i.id) ; 2 uses
  %i.ig = add i64 %.sroa.050.0.i.i.i.i, %i.if     ; 12 uses
  %i.ih = or i64 %i.ie, %i.id
  %or.cond15.i.i.i.i = icmp eq i64 %i.ih, 0
  br i1 %or.cond15.i.i.i.i, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.y
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.8.2.i.i.i.i.i, i64 noundef %.val5.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #40, !noalias !888
  unreachable

bb.ad:                                            ; preds = %bb.ab
  br i1 %i.hw, label %bb.ai, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i

bb.ae:                                            ; preds = %bb.ab
  %i.ii = icmp ult i64 %i.ig, %i.if
  %.not122.i.i.i.i = icmp ugt i64 %i.ig, %.val5.i.i
  %or.cond134.i.i.i.i = or i1 %i.ii, %.not122.i.i.i.i
  br i1 %or.cond134.i.i.i.i, label %bb.ah, label %bb.af, !prof !29

bb.af:                                            ; preds = %bb.ae
  %i.ij = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ig
  %.not42.i.i.i.i = icmp ugt i64 %i.ie, %i.id
  br i1 %.not42.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs_0EB1P_.exit.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.af
  %i.ik = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.if
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs_0B8_.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.sroa.02.07.i.i.i.i.i = phi i64 [ %i.in, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs_0B8_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i ] ; 3 uses
  %i.il = phi ptr [ %i.im, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs_0B8_.exit.i.i.i.i.i ], [ %i.ik, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %.val.i.i.i.i.i = load i8, ptr %i.il, align 1, !noalias !901, !noundef !11
  switch i8 %.val.i.i.i.i.i, label %bb.ag [
    i8 9, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs_0B8_.exit.i.i.i.i.i
    i8 10, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs_0B8_.exit.i.i.i.i.i
    i8 12, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs_0B8_.exit.i.i.i.i.i
    i8 13, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs_0B8_.exit.i.i.i.i.i
    i8 32, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs_0B8_.exit.i.i.i.i.i
  ]

_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs_0B8_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 1 ; 2 uses
  %i.in = add nuw i64 %.sroa.02.07.i.i.i.i.i, 1
  %i.io = icmp eq ptr %i.im, %i.ij
  br i1 %i.io, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs_0EB1P_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ip = icmp ult i64 %.sroa.02.07.i.i.i.i.i, %.sroa.050.0.i.i.i.i
  call void @llvm.assume(i1 %i.ip)
  br label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs_0EB1P_.exit.i.i.i.i

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs_0EB1P_.exit.i.i.i.i: ; preds = %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs_0B8_.exit.i.i.i.i.i, %bb.ag, %bb.af
  %.sroa.0.0.i152.i.i.i.i = phi i64 [ %.sroa.02.07.i.i.i.i.i, %bb.ag ], [ 0, %bb.af ], [ 0, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs_0B8_.exit.i.i.i.i.i ] ; 2 uses
  %i.iq = add i64 %.sroa.0.0.i152.i.i.i.i, %i.if
  %i.ir = add i64 %.sroa.0.0.i152.i.i.i.i, %i.ig
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i.i.i.i

bb.ah:                                            ; preds = %bb.ae
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.if, i64 noundef %i.ig, i64 noundef %.val5.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #40, !noalias !888
  unreachable

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i155.i.i.i.i, %.lr.ph.i.preheader.i.i.i, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs_0EB1P_.exit.i.i.i.i
  %i.is = phi i64 [ %i.ir, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs_0EB1P_.exit.i.i.i.i ], [ %i.iv, %.lr.ph.i.preheader.i.i.i ], [ %i.iv, %.lr.ph.i155.i.i.i.i ], [ %i.iv, %.lr.ph.i.i.i.i ]
  %i.it = phi i64 [ %i.iq, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs_0EB1P_.exit.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i ], [ %.sroa.0.1.i.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ja, %.lr.ph.i155.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !897
  br label %bb.x

bb.ai:                                            ; preds = %bb.ad
  %i.iu = icmp ult i64 %.sroa.8.2.i.i.i.i.i, %i.ig
  br i1 %i.iu, label %bb.ak, label %bb.aj, !prof !29

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i: ; preds = %bb.al, %.lr.ph.i153.i.i.i.i, %bb.aj, %bb.ad
  %i.iv = phi i64 [ %i.iz, %bb.al ], [ %i.ig, %bb.ad ], [ %.sroa.8.2.i.i.i.i.i, %bb.aj ], [ %i.ig, %.lr.ph.i153.i.i.i.i ] ; 3 uses
  %i.iw = icmp ult i64 %i.if, %.sroa.0.1.i.i.i.i.i
  %.not120141.i.i.i.i = icmp ugt i64 %i.if, %.val5.i.i
  %or.cond136142.i.i.i.i = or i1 %i.iw, %.not120141.i.i.i.i
  br i1 %or.cond136142.i.i.i.i, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit._crit_edge.i.i.i.i, label %.lr.ph.i.preheader.i.i.i, !prof !30

.lr.ph.i.preheader.i.i.i:                         ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i
  %.not121.i87.i.i.i = icmp eq i64 %i.id, 0
  br i1 %.not121.i87.i.i.i, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i.i.i.i, label %.lr.ph.i155.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %.not119.i.i.i.i = icmp eq i64 %.sroa.8.2.i.i.i.i.i, %i.ig
  br i1 %.not119.i.i.i.i, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i, label %.lr.ph.i153.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.ig, i64 noundef %.sroa.8.2.i.i.i.i.i, i64 noundef %.val5.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #40, !noalias !888
  unreachable

.lr.ph.i153.i.i.i.i:                              ; preds = %bb.aj
  %i.ix = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ig
  %i.iy = load i8, ptr %i.ix, align 1, !noalias !902, !noundef !11
  switch i8 %i.iy, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i [
    i8 107, label %bb.al
    i8 75, label %bb.al
    i8 77, label %bb.al
    i8 71, label %bb.al
    i8 84, label %bb.al
    i8 80, label %bb.al
    i8 69, label %bb.al
    i8 90, label %bb.al
    i8 89, label %bb.al
    i8 82, label %bb.al
    i8 81, label %bb.al
  ]

bb.al:                                            ; preds = %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i, %.lr.ph.i153.i.i.i.i
  %i.iz = add nuw i64 %i.ig, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit._crit_edge.i.i.i.i: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.1.i.i.i.i.i, i64 noundef %i.if, i64 noundef %.val5.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #40, !noalias !888
  unreachable

.lr.ph.i155.i.i.i.i:                              ; preds = %.lr.ph.i.preheader.i.i.i, %.lr.ph.i.i.i.i
  %i.ja = phi i64 [ %i.jc, %.lr.ph.i.i.i.i ], [ %i.if, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %gep.i.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i.i, i64 %i.ja
  %i.jb = load i8, ptr %gep.i.i.i.i, align 1, !noalias !902, !noundef !11
  switch i8 %i.jb, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i.i.i.i [
    i8 45, label %.lr.ph.i.i.i.i
    i8 48, label %.lr.ph.i.i.i.i
    i8 46, label %.lr.ph.i.i.i.i
  ]

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i155.i.i.i.i, %.lr.ph.i155.i.i.i.i, %.lr.ph.i155.i.i.i.i
  %i.jc = add nsw i64 %i.ja, -1                   ; 2 uses
  %.not121.i.i.i.i = icmp eq i64 %i.jc, %.sroa.0.1.i.i.i.i.i
  br i1 %.not121.i.i.i.i, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i.i.i.i, label %.lr.ph.i155.i.i.i.i

bb.am:                                            ; preds = %bb.z
  %i.jd = sub nuw i64 %.sroa.8.2.i.i.i.i.i, %.sroa.0.1.i.i.i.i.i
  %i.je = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.1.i.i.i.i.i
  %i.jf = call { ptr, i64 } @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n7decimal24locale_decimal_separator() #34, !noalias !888 ; 2 uses
  %i.jg = extractvalue { ptr, i64 } %i.jf, 1
  %.not.i161.i.i.i.i = icmp eq i64 %i.jg, 0
  br i1 %.not.i161.i.i.i.i, label %_RNvCsgcf5BHVXlUt_7uu_sort17locale_decimal_pt.exit.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jh = extractvalue { ptr, i64 } %i.jf, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jh) ]
  %i.ji = load i8, ptr %i.jh, align 1, !noalias !888, !noundef !11
  %switch.selectcmp.i.i.i.i.i = icmp eq i8 %i.ji, 44
  %switch.select.i.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i.i, i8 44, i8 46
  br label %_RNvCsgcf5BHVXlUt_7uu_sort17locale_decimal_pt.exit.i.i.i.i

_RNvCsgcf5BHVXlUt_7uu_sort17locale_decimal_pt.exit.i.i.i.i: ; preds = %bb.an, %bb.am
  %.sroa.0.0.i162.i.i.i.i = phi i8 [ %switch.select.i.i.i.i.i, %bb.an ], [ 46, %bb.am ]
  %i.jj = call fastcc { i64, i64 } @_RNvCsgcf5BHVXlUt_7uu_sort15get_leading_gen(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.je, i64 noundef %i.jd, i8 noundef %.sroa.0.0.i162.i.i.i.i) #34, !noalias !888 ; 2 uses
  %i.jk = extractvalue { i64, i64 } %i.jj, 0      ; 2 uses
  %i.jl = extractvalue { i64, i64 } %i.jj, 1
  %i.jm = add i64 %i.jk, %.sroa.0.1.i.i.i.i.i     ; 2 uses
  %.sroa.056.0.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %i.jl, i64 %i.jk)
  %i.jn = add i64 %i.jm, %.sroa.056.0.i.i.i.i
  br label %bb.x

bb.ao:                                            ; preds = %bb.z
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.8.2.i.i.i.i.i, i64 noundef %.val5.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #40, !noalias !888
  unreachable

bb.ap:                                            ; preds = %bb.aa
  %i.jo = sub nuw i64 %.sroa.8.2.i.i.i.i.i, %.sroa.0.1.i.i.i.i.i ; 3 uses
  %.not115.i.i.i.i = icmp ugt i64 %.sroa.8.2.i.i.i.i.i, %.val5.i.i
  br i1 %.not115.i.i.i.i, label %bb.as, label %bb.aq, !prof !21

bb.aq:                                            ; preds = %bb.ap
  %i.jp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.1.i.i.i.i.i ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.8.2.i.i.i.i.i
  %i.jr = icmp samesign eq i64 %.sroa.0.1.i.i.i.i.i, %.sroa.8.2.i.i.i.i.i
  br i1 %i.jr, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs2_0EB1P_.exit.i.i.i.i, label %.lr.ph.i165.i.i.i.i

.lr.ph.i165.i.i.i.i:                              ; preds = %bb.aq, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs2_0B8_.exit.i.i.i.i.i
  %.sroa.02.07.i166.i.i.i.i = phi i64 [ %i.ju, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs2_0B8_.exit.i.i.i.i.i ], [ 0, %bb.aq ] ; 3 uses
  %i.js = phi ptr [ %i.jt, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs2_0B8_.exit.i.i.i.i.i ], [ %i.jp, %bb.aq ] ; 2 uses
  %.val.i167.i.i.i.i = load i8, ptr %i.js, align 1, !noalias !903, !noundef !11
  switch i8 %.val.i167.i.i.i.i, label %bb.ar [
    i8 9, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs2_0B8_.exit.i.i.i.i.i
    i8 10, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs2_0B8_.exit.i.i.i.i.i
    i8 12, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs2_0B8_.exit.i.i.i.i.i
    i8 13, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs2_0B8_.exit.i.i.i.i.i
    i8 32, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs2_0B8_.exit.i.i.i.i.i
  ]

_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs2_0B8_.exit.i.i.i.i.i: ; preds = %.lr.ph.i165.i.i.i.i, %.lr.ph.i165.i.i.i.i, %.lr.ph.i165.i.i.i.i, %.lr.ph.i165.i.i.i.i, %.lr.ph.i165.i.i.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1 ; 2 uses
  %i.ju = add nuw i64 %.sroa.02.07.i166.i.i.i.i, 1
  %i.jv = icmp eq ptr %i.jt, %i.jq
  br i1 %i.jv, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs2_0EB1P_.exit.i.i.i.i, label %.lr.ph.i165.i.i.i.i

bb.ar:                                            ; preds = %.lr.ph.i165.i.i.i.i
  %i.jw = icmp ult i64 %.sroa.02.07.i166.i.i.i.i, %i.jo
  call void @llvm.assume(i1 %i.jw)
  br label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs2_0EB1P_.exit.i.i.i.i

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs2_0EB1P_.exit.i.i.i.i: ; preds = %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs2_0B8_.exit.i.i.i.i.i, %bb.ar, %bb.aq
  %.sroa.0.0.i170.i.i.i.i = phi i64 [ %.sroa.02.07.i166.i.i.i.i, %bb.ar ], [ 0, %bb.aq ], [ %i.jo, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs2_0B8_.exit.i.i.i.i.i ] ; 2 uses
  %i.jx = call fastcc { i8, i64 } @_RNvCsgcf5BHVXlUt_7uu_sort11month_parse(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jp, i64 noundef %i.jo) #34, !noalias !888 ; 2 uses
  %i.jy = extractvalue { i8, i64 } %i.jx, 0
  %i.jz = icmp eq i8 %i.jy, 0
  br i1 %i.jz, label %bb.au, label %bb.at

bb.as:                                            ; preds = %bb.ap, %bb.aa
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.8.2.i.i.i.i.i, i64 noundef %.val5.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #40, !noalias !888
  unreachable

bb.at:                                            ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs2_0EB1P_.exit.i.i.i.i
  %i.ka = extractvalue { i8, i64 } %i.jx, 1
  %i.kb = add i64 %.sroa.0.0.i170.i.i.i.i, %.sroa.0.1.i.i.i.i.i ; 2 uses
  %i.kc = add i64 %i.ka, %i.kb
  br label %bb.x

bb.au:                                            ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEs2_0EB1P_.exit.i.i.i.i
  %i.kd = add i64 %.sroa.0.0.i170.i.i.i.i, %.sroa.0.1.i.i.i.i.i ; 2 uses
  br label %bb.x

bb.av:                                            ; preds = %bb.x
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hv, i64 noundef %.val5.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #40, !noalias !888
  unreachable

bb.aw:                                            ; preds = %bb.x
  %i.ke = icmp samesign eq i64 %i.hv, 0
  br i1 %i.ke, label %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.thread.i.i.i.i, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %bb.aw
  %min.iters.check767 = icmp ult i64 %i.hv, 4
  br i1 %min.iters.check767, label %.preheader.i.i.i.i.i.i.preheader804, label %vector.ph768

vector.ph768:                                     ; preds = %.preheader.i.i.i.i.i.i.preheader
  %n.vec769 = and i64 %i.hv, -4                   ; 3 uses
  br label %vector.body770

vector.body770:                                   ; preds = %vector.body770, %vector.ph768
  %index771 = phi i64 [ 0, %vector.ph768 ], [ %index.next776, %vector.body770 ] ; 2 uses
  %vec.phi772 = phi <2 x i64> [ zeroinitializer, %vector.ph768 ], [ %i.kl, %vector.body770 ]
  %vec.phi773 = phi <2 x i64> [ zeroinitializer, %vector.ph768 ], [ %i.km, %vector.body770 ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i6.i.i.i.i.i.i, i64 %index771 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 2
  %wide.load774 = load <2 x i8>, ptr %i.kf, align 1, !alias.scope !904, !noalias !888
  %wide.load775 = load <2 x i8>, ptr %i.kg, align 1, !alias.scope !904, !noalias !888
  %i.kh = icmp ne <2 x i8> %wide.load774, zeroinitializer
  %i.ki = icmp ne <2 x i8> %wide.load775, zeroinitializer
  %i.kj = zext <2 x i1> %i.kh to <2 x i64>
  %i.kk = zext <2 x i1> %i.ki to <2 x i64>
  %i.kl = add <2 x i64> %vec.phi772, %i.kj        ; 2 uses
  %i.km = add <2 x i64> %vec.phi773, %i.kk        ; 2 uses
  %index.next776 = add nuw i64 %index771, 4       ; 2 uses
  %i.kn = icmp eq i64 %index.next776, %n.vec769
  br i1 %i.kn, label %middle.block777, label %vector.body770, !llvm.loop !657

middle.block777:                                  ; preds = %vector.body770
  %bin.rdx778 = add <2 x i64> %i.km, %i.kl
  %i.ko = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx778) ; 2 uses
  %cmp.n779 = icmp eq i64 %i.hv, %n.vec769
  br i1 %cmp.n779, label %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i.preheader804

.preheader.i.i.i.i.i.i.preheader804:              ; preds = %.preheader.i.i.i.i.i.i.preheader, %middle.block777
  %.sroa.04.0.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %n.vec769, %middle.block777 ]
  %.sroa.02.0.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ko, %middle.block777 ]
  br label %.preheader.i.i.i.i.i.i

_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.thread.i.i.i.i: ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !897
  br label %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.preheader804, %.preheader.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ %i.kt, %.preheader.i.i.i.i.i.i ], [ %.sroa.04.0.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.preheader804 ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i = phi i64 [ %i.ks, %.preheader.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.preheader804 ]
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i6.i.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i = load i8, ptr %i.kp, align 1, !alias.scope !904, !noalias !888, !noundef !11
  %i.kq = icmp ne i8 %.val.i.i.i.i.i.i.i, 0
  %i.kr = zext i1 %i.kq to i64
  %i.ks = add i64 %.sroa.02.0.i.i.i.i.i.i.i, %i.kr ; 2 uses
  %i.kt = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ku = icmp eq i64 %i.kt, %i.hv
  br i1 %i.ku, label %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !658

_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i, %middle.block777
  %.lcssa610 = phi i64 [ %i.ko, %middle.block777 ], [ %i.ks, %.preheader.i.i.i.i.i.i ] ; 9 uses
  %i.kv = icmp ule i64 %.lcssa610, %i.hv
  call void @llvm.assume(i1 %i.kv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !897
  %i.kw = icmp eq i64 %.lcssa610, 0
  br i1 %i.kw, label %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !905
  %i.kx = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %.lcssa610, i64 noundef range(i64 1, 9) 1) #34, !noalias !905 ; 8 uses
  %i.ky = icmp eq ptr %i.kx, null
  br i1 %i.ky, label %bb.ay, label %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.lcssa610) #37, !noalias !906
  unreachable

_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i: ; preds = %bb.ax
  store i8 32, ptr %i.kx, align 1, !noalias !907
  %.sroa.01.07.i.i.i.i.i = lshr i64 %.lcssa610, 1 ; 2 uses
  %.not8.i.i.i.i.i = icmp eq i64 %.sroa.01.07.i.i.i.i.i, 0
  br i1 %.not8.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i171.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i171.i.i.i.i, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i
  %storemerge.lcssa.i.i.i.i.i = phi i64 [ 1, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i ], [ %i.lb, %.lr.ph.i171.i.i.i.i ] ; 4 uses
  %i.kz = icmp sgt i64 %storemerge.lcssa.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.kz)
  %.not5.i.i.i.i.i = icmp eq i64 %.lcssa610, %storemerge.lcssa.i.i.i.i.i
  br i1 %.not5.i.i.i.i.i, label %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, label %bb.az

.lr.ph.i171.i.i.i.i:                              ; preds = %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i, %.lr.ph.i171.i.i.i.i
  %.sroa.01.010.i.i.i.i.i = phi i64 [ %.sroa.01.0.i.i.i.i.i, %.lr.ph.i171.i.i.i.i ], [ %.sroa.01.07.i.i.i.i.i, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i ]
  %storemerge9.i.i.i.i.i = phi i64 [ %i.lb, %.lr.ph.i171.i.i.i.i ], [ 1, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i ] ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 %storemerge9.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.la, ptr noundef nonnull align 1 dereferenceable(1) %i.kx, i64 %storemerge9.i.i.i.i.i, i1 false), !noalias !906
  %i.lb = shl nuw i64 %storemerge9.i.i.i.i.i, 1   ; 2 uses
  %.sroa.01.0.i.i.i.i.i = lshr i64 %.sroa.01.010.i.i.i.i.i, 1 ; 2 uses
  %.not.i172.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i, 0
  br i1 %.not.i172.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i171.i.i.i.i

bb.az:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.lc = sub nsw i64 %.lcssa610, %storemerge.lcssa.i.i.i.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kx, i64 %storemerge.lcssa.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ld, ptr nonnull align 1 %i.kx, i64 %i.lc, i1 false), !noalias !906
  br label %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i: ; preds = %bb.az, %._crit_edge.i.i.i.i.i, %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i.i.i.i, %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.thread.i.i.i.i
  %.sink14.i.i.i.i.i = phi i64 [ %.lcssa610, %._crit_edge.i.i.i.i.i ], [ %.lcssa610, %bb.az ], [ 0, %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i.i.i.i ], [ 0, %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.thread.i.i.i.i ] ; 2 uses
  %.sink13.i.i.i.i.i = phi ptr [ %i.kx, %._crit_edge.i.i.i.i.i ], [ %i.kx, %bb.az ], [ inttoptr (i64 1 to ptr), %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i.i.i.i ], [ inttoptr (i64 1 to ptr), %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.thread.i.i.i.i ]
  store i64 %.sink14.i.i.i.i.i, ptr %i.x, align 8, !noalias !897
  store ptr %.sink13.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !897
  store i64 %.sink14.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx20.i.i.i.i, align 8, !noalias !897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !897
  store ptr %i.x, ptr %i.w, align 8, !noalias !897
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.469.0..sroa_idx.i.i.i.i, align 8, !noalias !897
end_hunk_1
begin_hunk_2_@_RINvMs7_Csgcf5BHVXlUt_7uu_sortNtB6_4Line5writeINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtBR_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEB6_:bb.a
  %.pre.i = load i64, ptr %i.bk, align 8, !alias.scope !1563, !noalias !1564
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEB1q_9write_allCsgcf5BHVXlUt_7uu_sort.exit._crit_edge.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEB1q_9write_allCsgcf5BHVXlUt_7uu_sort.exit.thread.i
  %i.bu = phi i64 [ %.pre.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEB1q_9write_allCsgcf5BHVXlUt_7uu_sort.exit._crit_edge.i ], [ %i.bs, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEB1q_9write_allCsgcf5BHVXlUt_7uu_sort.exit.thread.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1566)
  %i.bv = load i64, ptr %0, align 8, !range !22, !alias.scope !1563, !noalias !1564, !noundef !11
  %i.bw = icmp sgt i64 %i.bu, -1
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = sub nsw i64 %i.bv, %i.bu
  %i.by = icmp ugt i64 %i.bx, 1
  br i1 %i.by, label %_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEB1k_9write_fmtCsgcf5BHVXlUt_7uu_sort.exit.thread.i, label %_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEB1k_9write_fmtCsgcf5BHVXlUt_7uu_sort.exit.i, !prof !17

_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEB1k_9write_fmtCsgcf5BHVXlUt_7uu_sort.exit.thread.i: ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !1568, !noalias !1569, !nonnull !11, !noundef !11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bu
  store i8 10, ptr %i.cb, align 1, !noalias !1570
  %i.cc = add nuw i64 %i.bu, 1
  store i64 %i.cc, ptr %i.bk, align 8, !alias.scope !1568, !noalias !1569
  br label %bb.h

_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEB1k_9write_fmtCsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %bb.g
  %i.cd = tail call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterINtNtBa_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE14write_all_coldCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef range(i64 0, -9223372036854775808) 1) #39, !noalias !1550 ; 2 uses
  %.not114.i = icmp eq ptr %i.cd, null
  br i1 %.not114.i, label %bb.h, label %bb.di

bb.h:                                             ; preds = %_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEB1k_9write_fmtCsgcf5BHVXlUt_7uu_sort.exit.i, %_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtBb_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEB1k_9write_fmtCsgcf5BHVXlUt_7uu_sort.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1571
  store i64 0, ptr %i.v, align 8, !noalias !1571
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ce, align 8, !noalias !1571
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store i64 0, ptr %i.cf, align 8, !noalias !1571
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ch = load i8, ptr %i.cg, align 4, !range !18, !alias.scope !1550, !noalias !1551, !noundef !11
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 125
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !1550, !noalias !1551
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 100
  %.val.i = load i8, ptr %i.cl, align 4, !alias.scope !1550, !noalias !1551
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 101
  %.val139.i = load i8, ptr %i.cm, align 1, !alias.scope !1550, !noalias !1551
  call fastcc void @_RNvCsgcf5BHVXlUt_7uu_sort8tokenize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val, i1 noundef zeroext %i.ci, i8 %i.ck, ptr noalias nofree noundef align 8 dereferenceable(24) %i.v, i8 %.val.i, i8 %.val139.i) #34, !noalias !1550
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !1550, !noalias !1551, !nonnull !11, !noundef !11 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !1550, !noalias !1551, !noundef !11 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.cq, 56
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx.i ; 8 uses
  %i.cs = icmp eq i64 %i.cq, 0                    ; 2 uses
  br i1 %i.cs, label %._crit_edge150.i, label %.lr.ph149.i

.lr.ph149.i:                                      ; preds = %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !1550, !noalias !1551
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 122
  %i.cw = load i8, ptr %i.cv, align 2, !range !18, !alias.scope !1550, !noalias !1551
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 123
  %i.cy = load i8, ptr %i.cx, align 1, !alias.scope !1550, !noalias !1551
  %i.cz = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.db = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.469.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.473.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.477.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.pre255.i = load ptr, ptr %i.ce, align 8, !noalias !1571 ; 2 uses
  %.pre256.i = load i64, ptr %i.cf, align 8, !noalias !1571 ; 2 uses
  %invariant.gep.i = getelementptr i8, ptr %.0.val, i64 -1
  br label %bb.i

bb.i:                                             ; preds = %bb.bz, %.lr.ph149.i
  %.sroa.023.0146.i = phi ptr [ %i.co, %.lr.ph149.i ], [ %i.dm, %bb.bz ] ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.023.0146.i, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.023.0146.i, i64 24
  %i.do = call fastcc { i64, i64 } @_RNvNvMs9_Csgcf5BHVXlUt_7uu_sortNtB7_13FieldSelector9get_range13resolve_index(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef range(i64 0, -9223372036854775808) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.pre255.i, i64 %.pre256.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dn) #34, !noalias !1550 ; 2 uses
  %i.dp = extractvalue { i64, i64 } %i.do, 0
  %i.dq = extractvalue { i64, i64 } %i.do, 1      ; 4 uses
  switch i64 %i.dp, label %default.unreachable.i.i [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.k
    i64 3, label %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i
  ], !prof !27

default.unreachable.i.i:                          ; preds = %bb.l, %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.023.0146.i, i64 16
  %i.ds = load i8, ptr %i.dr, align 8, !range !28, !alias.scope !1572, !noalias !1573, !noundef !11
  %.not.i.i = icmp eq i8 %i.ds, 2
  br i1 %.not.i.i, label %bb.p, label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @446, ptr noundef nonnull inttoptr (i64 285 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #40, !noalias !1574
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.dt = call fastcc { i64, i64 } @_RNvNvMs9_Csgcf5BHVXlUt_7uu_sortNtB7_13FieldSelector9get_range13resolve_index(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef range(i64 0, -9223372036854775808) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.pre255.i, i64 %.pre256.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.023.0146.i) #34, !noalias !1550 ; 2 uses
  %i.du = extractvalue { i64, i64 } %i.dt, 0
  %i.dv = extractvalue { i64, i64 } %i.dt, 1      ; 2 uses
  switch i64 %i.du, label %default.unreachable.i.i [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
    i64 3, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.dw = add i64 %i.dv, 1
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.j
  %.sroa.8.0.i.i = phi i64 [ %i.dw, %bb.m ], [ %i.dv, %bb.n ], [ 0, %bb.o ], [ %.8.val, %bb.j ], [ %.8.val, %bb.l ]
  %.sroa.0.0.i151.i = phi i64 [ %i.dq, %bb.m ], [ %i.dq, %bb.n ], [ 0, %bb.o ], [ %i.dq, %bb.j ], [ %i.dq, %bb.l ] ; 2 uses
  %spec.select.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i151.i, i64 %.sroa.8.0.i.i)
  br label %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i

_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i: ; preds = %bb.p, %bb.i
  %.sroa.8.2.i.i = phi i64 [ %spec.select.i.i, %bb.p ], [ %.8.val, %bb.i ] ; 19 uses
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.0.i151.i, %bb.p ], [ %.8.val, %bb.i ] ; 23 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.023.0146.i, i64 53
  %i.dy = load i8, ptr %i.dx, align 1, !range !20, !noalias !1550, !noundef !11 ; 2 uses
  switch i8 %i.dy, label %bb.q [
    i8 0, label %bb.r
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
  ]

._crit_edge150.i:                                 ; preds = %bb.bz, %bb.h
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 155
  %i.ea = load i8, ptr %i.dz, align 1, !range !20, !alias.scope !1550, !noalias !1551, !noundef !11 ; 2 uses
  %i.eb = icmp eq i8 %i.ea, 5
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 133
  %i.ed = load i8, ptr %i.ec, align 1, !range !18, !alias.scope !1550, !noalias !1551
  %i.ee = trunc nuw i8 %i.ed to i1
  %or.cond.i = select i1 %i.eb, i1 true, i1 %i.ee
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 134
  %i.eg = load i8, ptr %i.ef, align 2, !range !18, !alias.scope !1550, !noalias !1551
  %i.eh = trunc nuw i8 %i.eg to i1
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %i.eh
  br i1 %or.cond5.i, label %bb.cg, label %bb.ci

bb.q:                                             ; preds = %bb.an, %bb.am, %_RNvCsgcf5BHVXlUt_7uu_sort17locale_decimal_pt.exit.i, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i, %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i
  %i.ei = phi i64 [ %i.gq, %bb.am ], [ %i.gr, %bb.an ], [ %i.gb, %_RNvCsgcf5BHVXlUt_7uu_sort17locale_decimal_pt.exit.i ], [ %i.fg, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i ], [ %.sroa.8.2.i.i, %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i ] ; 4 uses
  %i.ej = phi i64 [ %i.gp, %bb.am ], [ %i.gr, %bb.an ], [ %i.ga, %_RNvCsgcf5BHVXlUt_7uu_sort17locale_decimal_pt.exit.i ], [ %i.fh, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i ], [ %.sroa.0.1.i.i, %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i ] ; 12 uses
  %.not123.i = icmp ugt i64 %i.ej, %.8.val
  br i1 %.not123.i, label %bb.ao, label %bb.ap, !prof !29

bb.r:                                             ; preds = %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i, %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1571
  %i.ek = icmp eq i8 %i.dy, 1                     ; 2 uses
  %i.el = zext i1 %i.ek to i8
  store i8 %i.el, ptr %i.u, align 1, !noalias !1571
  store i8 %i.cu, ptr %i.da, align 1, !noalias !1571
  store i8 %i.cw, ptr %i.db, align 1, !noalias !1571
  store i8 %i.cy, ptr %i.dc, align 1, !noalias !1571
  store i8 0, ptr %i.cz, align 1, !noalias !1571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1571
  %i.em = icmp ult i64 %.sroa.8.2.i.i, %.sroa.0.1.i.i
  %.not117.i = icmp ugt i64 %.sroa.8.2.i.i, %.8.val
  %or.cond133.i = or i1 %.not117.i, %i.em
  br i1 %or.cond133.i, label %bb.v, label %bb.u, !prof !29

bb.s:                                             ; preds = %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i
  %i.en = icmp ult i64 %.sroa.8.2.i.i, %.sroa.0.1.i.i
  %.not116.i = icmp ugt i64 %.sroa.8.2.i.i, %.8.val
  %or.cond137.i = or i1 %.not116.i, %i.en
  br i1 %or.cond137.i, label %bb.ah, label %bb.af, !prof !29

bb.t:                                             ; preds = %_RNvMs9_Csgcf5BHVXlUt_7uu_sortNtB5_13FieldSelector9get_range.exit.i
  %i.eo = icmp ult i64 %.sroa.8.2.i.i, %.sroa.0.1.i.i
  br i1 %i.eo, label %bb.al, label %bb.ai, !prof !21

bb.u:                                             ; preds = %bb.r
  %i.ep = sub nuw i64 %.sroa.8.2.i.i, %.sroa.0.1.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.1.i.i
  call fastcc void @_RNvMs_NtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmpNtB4_7NumInfo5parse(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eq, i64 noundef %i.ep, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(5) %i.u) #34, !noalias !1550
  %i.er = load i64, ptr %i.dd, align 8, !noalias !1571, !noundef !11 ; 5 uses
  %i.es = load i64, ptr %i.de, align 8, !noalias !1571, !noundef !11 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1571
  %i.et = add i64 %i.er, %.sroa.0.1.i.i           ; 9 uses
  %.sroa.050.0.i = call i64 @llvm.usub.sat.i64(i64 %i.es, i64 %i.er) ; 2 uses
  %i.eu = add i64 %.sroa.050.0.i, %i.et           ; 12 uses
  %i.ev = or i64 %i.es, %i.er
  %or.cond15.i = icmp eq i64 %i.ev, 0
  br i1 %or.cond15.i, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.r
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.1.i.i, i64 noundef %.sroa.8.2.i.i, i64 noundef %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #40, !noalias !1550
  unreachable

bb.w:                                             ; preds = %bb.u
  br i1 %i.ek, label %bb.ab, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i

bb.x:                                             ; preds = %bb.u
  %i.ew = icmp ult i64 %i.eu, %i.et
  %.not122.i = icmp ugt i64 %i.eu, %.8.val
  %or.cond134.i = or i1 %i.ew, %.not122.i
  br i1 %or.cond134.i, label %bb.aa, label %bb.y, !prof !29

bb.y:                                             ; preds = %bb.x
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.eu
  %.not42.i = icmp ugt i64 %i.es, %i.er
  br i1 %.not42.i, label %.lr.ph.i.preheader.i, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB2I_5boxed3BoxDNtNtNtBb_2io5write5WriteEL_EEEs_0EB1P_.exit.i

.lr.ph.i.preheader.i:                             ; preds = %bb.y
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.et
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs_0B8_.exit.i.i, %.lr.ph.i.preheader.i
  %.sroa.02.07.i.i = phi i64 [ %i.fb, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs_0B8_.exit.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.ez = phi ptr [ %i.fa, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs_0B8_.exit.i.i ], [ %i.ey, %.lr.ph.i.preheader.i ] ; 2 uses
  %.val.i.i = load i8, ptr %i.ez, align 1, !noalias !1575, !noundef !11
  switch i8 %.val.i.i, label %bb.z [
    i8 9, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs_0B8_.exit.i.i
    i8 10, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs_0B8_.exit.i.i
    i8 12, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs_0B8_.exit.i.i
    i8 13, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs_0B8_.exit.i.i
    i8 32, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs_0B8_.exit.i.i
  ]

_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs_0B8_.exit.i.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1 ; 2 uses
  %i.fb = add nuw i64 %.sroa.02.07.i.i, 1
  %i.fc = icmp eq ptr %i.fa, %i.ex
  br i1 %i.fc, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB2I_5boxed3BoxDNtNtNtBb_2io5write5WriteEL_EEEs_0EB1P_.exit.i, label %.lr.ph.i.i

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.fd = icmp ult i64 %.sroa.02.07.i.i, %.sroa.050.0.i
  call void @llvm.assume(i1 %i.fd)
  br label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB2I_5boxed3BoxDNtNtNtBb_2io5write5WriteEL_EEEs_0EB1P_.exit.i

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB2I_5boxed3BoxDNtNtNtBb_2io5write5WriteEL_EEEs_0EB1P_.exit.i: ; preds = %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs_0B8_.exit.i.i, %bb.z, %bb.y
  %.sroa.0.0.i152.i = phi i64 [ %.sroa.02.07.i.i, %bb.z ], [ 0, %bb.y ], [ 0, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs_0B8_.exit.i.i ] ; 2 uses
  %i.fe = add i64 %.sroa.0.0.i152.i, %i.et
  %i.ff = add i64 %.sroa.0.0.i152.i, %i.eu
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i

bb.aa:                                            ; preds = %bb.x
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.et, i64 noundef %i.eu, i64 noundef %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #40, !noalias !1550
  unreachable

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i: ; preds = %.lr.ph.i, %.lr.ph.i155.i, %.lr.ph.i.preheader, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB2I_5boxed3BoxDNtNtNtBb_2io5write5WriteEL_EEEs_0EB1P_.exit.i
  %i.fg = phi i64 [ %i.ff, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB2I_5boxed3BoxDNtNtNtBb_2io5write5WriteEL_EEEs_0EB1P_.exit.i ], [ %i.fj, %.lr.ph.i.preheader ], [ %i.fj, %.lr.ph.i155.i ], [ %i.fj, %.lr.ph.i ]
  %i.fh = phi i64 [ %i.fe, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB2I_5boxed3BoxDNtNtNtBb_2io5write5WriteEL_EEEs_0EB1P_.exit.i ], [ %.sroa.0.1.i.i, %.lr.ph.i.preheader ], [ %.sroa.0.1.i.i, %.lr.ph.i ], [ %i.fo, %.lr.ph.i155.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1571
  br label %bb.q

bb.ab:                                            ; preds = %bb.w
  %i.fi = icmp ult i64 %.sroa.8.2.i.i, %i.eu
  br i1 %i.fi, label %bb.ad, label %bb.ac, !prof !29

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i: ; preds = %bb.ae, %.lr.ph.i153.i, %bb.ac, %bb.w
  %i.fj = phi i64 [ %i.fn, %bb.ae ], [ %i.eu, %bb.w ], [ %.sroa.8.2.i.i, %bb.ac ], [ %i.eu, %.lr.ph.i153.i ] ; 3 uses
  %i.fk = icmp ult i64 %i.et, %.sroa.0.1.i.i
  %.not120141.i = icmp ugt i64 %i.et, %.8.val
  %or.cond136142.i = or i1 %i.fk, %.not120141.i
  br i1 %or.cond136142.i, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit._crit_edge.i, label %.lr.ph.i.preheader, !prof !30

.lr.ph.i.preheader:                               ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i
  %.not121.i87 = icmp eq i64 %i.er, 0
  br i1 %.not121.i87, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i, label %.lr.ph.i155.i

bb.ac:                                            ; preds = %bb.ab
  %.not119.i = icmp eq i64 %.sroa.8.2.i.i, %i.eu
  br i1 %.not119.i, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i, label %.lr.ph.i153.i

bb.ad:                                            ; preds = %bb.ab
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.eu, i64 noundef %.sroa.8.2.i.i, i64 noundef %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #40, !noalias !1550
  unreachable

.lr.ph.i153.i:                                    ; preds = %bb.ac
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.eu
  %i.fm = load i8, ptr %i.fl, align 1, !noalias !1571, !noundef !11
  switch i8 %i.fm, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i [
    i8 107, label %bb.ae
    i8 75, label %bb.ae
    i8 77, label %bb.ae
    i8 71, label %bb.ae
    i8 84, label %bb.ae
    i8 80, label %bb.ae
    i8 69, label %bb.ae
    i8 90, label %bb.ae
    i8 89, label %bb.ae
    i8 82, label %bb.ae
    i8 81, label %bb.ae
  ]

bb.ae:                                            ; preds = %.lr.ph.i153.i, %.lr.ph.i153.i, %.lr.ph.i153.i, %.lr.ph.i153.i, %.lr.ph.i153.i, %.lr.ph.i153.i, %.lr.ph.i153.i, %.lr.ph.i153.i, %.lr.ph.i153.i, %.lr.ph.i153.i, %.lr.ph.i153.i
  %i.fn = add nuw i64 %i.eu, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit._crit_edge.i: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.1.i.i, i64 noundef %i.et, i64 noundef %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #40, !noalias !1550
  unreachable

.lr.ph.i155.i:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.fo = phi i64 [ %i.fq, %.lr.ph.i ], [ %i.et, %.lr.ph.i.preheader ] ; 3 uses
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.fo
  %i.fp = load i8, ptr %gep.i, align 1, !noalias !1571, !noundef !11
  switch i8 %i.fp, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i [
    i8 45, label %.lr.ph.i
    i8 48, label %.lr.ph.i
    i8 46, label %.lr.ph.i
  ]

.lr.ph.i:                                         ; preds = %.lr.ph.i155.i, %.lr.ph.i155.i, %.lr.ph.i155.i
  %i.fq = add nsw i64 %i.fo, -1                   ; 2 uses
  %.not121.i = icmp eq i64 %i.fq, %.sroa.0.1.i.i
  br i1 %.not121.i, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit160.i, label %.lr.ph.i155.i

bb.af:                                            ; preds = %bb.s
  %i.fr = sub nuw i64 %.sroa.8.2.i.i, %.sroa.0.1.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.1.i.i
  %i.ft = call { ptr, i64 } @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n7decimal24locale_decimal_separator() #34, !noalias !1550 ; 2 uses
  %i.fu = extractvalue { ptr, i64 } %i.ft, 1
  %.not.i161.i = icmp eq i64 %i.fu, 0
  br i1 %.not.i161.i, label %_RNvCsgcf5BHVXlUt_7uu_sort17locale_decimal_pt.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fv = extractvalue { ptr, i64 } %i.ft, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fv) ]
  %i.fw = load i8, ptr %i.fv, align 1, !noalias !1550, !noundef !11
  %switch.selectcmp.i.i = icmp eq i8 %i.fw, 44
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i8 44, i8 46
  br label %_RNvCsgcf5BHVXlUt_7uu_sort17locale_decimal_pt.exit.i

_RNvCsgcf5BHVXlUt_7uu_sort17locale_decimal_pt.exit.i: ; preds = %bb.ag, %bb.af
  %.sroa.0.0.i162.i = phi i8 [ %switch.select.i.i, %bb.ag ], [ 46, %bb.af ]
  %i.fx = call fastcc { i64, i64 } @_RNvCsgcf5BHVXlUt_7uu_sort15get_leading_gen(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fs, i64 noundef %i.fr, i8 noundef %.sroa.0.0.i162.i) #34, !noalias !1550 ; 2 uses
  %i.fy = extractvalue { i64, i64 } %i.fx, 0      ; 2 uses
  %i.fz = extractvalue { i64, i64 } %i.fx, 1
  %i.ga = add i64 %i.fy, %.sroa.0.1.i.i           ; 2 uses
  %.sroa.056.0.i = call i64 @llvm.usub.sat.i64(i64 %i.fz, i64 %i.fy)
  %i.gb = add i64 %i.ga, %.sroa.056.0.i
  br label %bb.q

bb.ah:                                            ; preds = %bb.s
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.1.i.i, i64 noundef %.sroa.8.2.i.i, i64 noundef %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #40, !noalias !1550
  unreachable

bb.ai:                                            ; preds = %bb.t
  %i.gc = sub nuw i64 %.sroa.8.2.i.i, %.sroa.0.1.i.i ; 3 uses
  %.not115.i = icmp ugt i64 %.sroa.8.2.i.i, %.8.val
  br i1 %.not115.i, label %bb.al, label %bb.aj, !prof !21

bb.aj:                                            ; preds = %bb.ai
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.1.i.i ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.8.2.i.i
  %i.gf = icmp samesign eq i64 %.sroa.0.1.i.i, %.sroa.8.2.i.i
  br i1 %i.gf, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB2I_5boxed3BoxDNtNtNtBb_2io5write5WriteEL_EEEs2_0EB1P_.exit.i, label %.lr.ph.i165.i

.lr.ph.i165.i:                                    ; preds = %bb.aj, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs2_0B8_.exit.i.i
  %.sroa.02.07.i166.i = phi i64 [ %i.gi, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs2_0B8_.exit.i.i ], [ 0, %bb.aj ] ; 3 uses
  %i.gg = phi ptr [ %i.gh, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs2_0B8_.exit.i.i ], [ %i.gd, %bb.aj ] ; 2 uses
  %.val.i167.i = load i8, ptr %i.gg, align 1, !noalias !1576, !noundef !11
  switch i8 %.val.i167.i, label %bb.ak [
    i8 9, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs2_0B8_.exit.i.i
    i8 10, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs2_0B8_.exit.i.i
    i8 12, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs2_0B8_.exit.i.i
    i8 13, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs2_0B8_.exit.i.i
    i8 32, label %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs2_0B8_.exit.i.i
  ]

_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs2_0B8_.exit.i.i: ; preds = %.lr.ph.i165.i, %.lr.ph.i165.i, %.lr.ph.i165.i, %.lr.ph.i165.i, %.lr.ph.i165.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1 ; 2 uses
  %i.gi = add nuw i64 %.sroa.02.07.i166.i, 1
  %i.gj = icmp eq ptr %i.gh, %i.ge
  br i1 %i.gj, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB2I_5boxed3BoxDNtNtNtBb_2io5write5WriteEL_EEEs2_0EB1P_.exit.i, label %.lr.ph.i165.i

bb.ak:                                            ; preds = %.lr.ph.i165.i
  %i.gk = icmp ult i64 %.sroa.02.07.i166.i, %i.gc
  call void @llvm.assume(i1 %i.gk)
  br label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB2I_5boxed3BoxDNtNtNtBb_2io5write5WriteEL_EEEs2_0EB1P_.exit.i

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB2I_5boxed3BoxDNtNtNtBb_2io5write5WriteEL_EEEs2_0EB1P_.exit.i: ; preds = %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs2_0B8_.exit.i.i, %bb.ak, %bb.aj
  %.sroa.0.0.i170.i = phi i64 [ %.sroa.02.07.i166.i, %bb.ak ], [ 0, %bb.aj ], [ %i.gc, %_RNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB8_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB10_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EEEs2_0B8_.exit.i.i ] ; 2 uses
  %i.gl = call fastcc { i8, i64 } @_RNvCsgcf5BHVXlUt_7uu_sort11month_parse(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gd, i64 noundef %i.gc) #34, !noalias !1550 ; 2 uses
  %i.gm = extractvalue { i8, i64 } %i.gl, 0
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.ai, %bb.t
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.1.i.i, i64 noundef %.sroa.8.2.i.i, i64 noundef %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #40, !noalias !1550
  unreachable

bb.am:                                            ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB2I_5boxed3BoxDNtNtNtBb_2io5write5WriteEL_EEEs2_0EB1P_.exit.i
  %i.go = extractvalue { i8, i64 } %i.gl, 1
  %i.gp = add i64 %.sroa.0.0.i170.i, %.sroa.0.1.i.i ; 2 uses
  %i.gq = add i64 %i.go, %i.gp
  br label %bb.q

bb.an:                                            ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvMs7_Csgcf5BHVXlUt_7uu_sortNtB1P_4Line11write_debugINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterINtNtB2I_5boxed3BoxDNtNtNtBb_2io5write5WriteEL_EEEs2_0EB1P_.exit.i
  %i.gr = add i64 %.sroa.0.0.i170.i, %.sroa.0.1.i.i ; 2 uses
  br label %bb.q

bb.ao:                                            ; preds = %bb.q
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ej, i64 noundef %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #40, !noalias !1550
  unreachable

bb.ap:                                            ; preds = %bb.q
  %i.gs = icmp samesign eq i64 %i.ej, 0
  br i1 %i.gs, label %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.thread.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.ap
  %min.iters.check370 = icmp ult i64 %i.ej, 4
  br i1 %min.iters.check370, label %.preheader.i.i.i.preheader386, label %vector.ph371

vector.ph371:                                     ; preds = %.preheader.i.i.i.preheader
  %n.vec372 = and i64 %i.ej, -4                   ; 3 uses
  br label %vector.body373

vector.body373:                                   ; preds = %vector.body373, %vector.ph371
  %index374 = phi i64 [ 0, %vector.ph371 ], [ %index.next379, %vector.body373 ] ; 2 uses
  %vec.phi375 = phi <2 x i64> [ zeroinitializer, %vector.ph371 ], [ %i.gz, %vector.body373 ]
  %vec.phi376 = phi <2 x i64> [ zeroinitializer, %vector.ph371 ], [ %i.ha, %vector.body373 ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i6.i.i.i, i64 %index374 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 2
  %wide.load377 = load <2 x i8>, ptr %i.gt, align 1, !alias.scope !1577, !noalias !1550
  %wide.load378 = load <2 x i8>, ptr %i.gu, align 1, !alias.scope !1577, !noalias !1550
  %i.gv = icmp ne <2 x i8> %wide.load377, zeroinitializer
  %i.gw = icmp ne <2 x i8> %wide.load378, zeroinitializer
  %i.gx = zext <2 x i1> %i.gv to <2 x i64>
  %i.gy = zext <2 x i1> %i.gw to <2 x i64>
  %i.gz = add <2 x i64> %vec.phi375, %i.gx        ; 2 uses
  %i.ha = add <2 x i64> %vec.phi376, %i.gy        ; 2 uses
  %index.next379 = add nuw i64 %index374, 4       ; 2 uses
  %i.hb = icmp eq i64 %index.next379, %n.vec372
  br i1 %i.hb, label %middle.block380, label %vector.body373, !llvm.loop !1424

middle.block380:                                  ; preds = %vector.body373
  %bin.rdx381 = add <2 x i64> %i.ha, %i.gz
  %i.hc = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx381) ; 2 uses
  %cmp.n382 = icmp eq i64 %i.ej, %n.vec372
  br i1 %cmp.n382, label %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i, label %.preheader.i.i.i.preheader386

.preheader.i.i.i.preheader386:                    ; preds = %.preheader.i.i.i.preheader, %middle.block380
  %.sroa.04.0.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %n.vec372, %middle.block380 ]
  %.sroa.02.0.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.hc, %middle.block380 ]
  br label %.preheader.i.i.i

_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.thread.i: ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1571
  br label %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsgcf5BHVXlUt_7uu_sort.exit.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader386, %.preheader.i.i.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.hh, %.preheader.i.i.i ], [ %.sroa.04.0.i.i.i.i.ph, %.preheader.i.i.i.preheader386 ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.hg, %.preheader.i.i.i ], [ %.sroa.02.0.i.i.i.i.ph, %.preheader.i.i.i.preheader386 ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i6.i.i.i, i64 %.sroa.04.0.i.i.i.i
  %.val.i.i.i.i = load i8, ptr %i.hd, align 1, !alias.scope !1577, !noalias !1550, !noundef !11
  %i.he = icmp ne i8 %.val.i.i.i.i, 0
  %i.hf = zext i1 %i.he to i64
  %i.hg = add i64 %.sroa.02.0.i.i.i.i, %i.hf      ; 2 uses
  %i.hh = add nuw nsw i64 %.sroa.04.0.i.i.i.i, 1  ; 2 uses
  %i.hi = icmp eq i64 %i.hh, %i.ej
  br i1 %i.hi, label %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i, label %.preheader.i.i.i, !llvm.loop !1425

_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i: ; preds = %.preheader.i.i.i, %middle.block380
  %.lcssa272 = phi i64 [ %i.hc, %middle.block380 ], [ %i.hg, %.preheader.i.i.i ] ; 9 uses
  %i.hj = icmp ule i64 %.lcssa272, %i.ej
  call void @llvm.assume(i1 %i.hj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1571
  %i.hk = icmp eq i64 %.lcssa272, 0
  br i1 %i.hk, label %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsgcf5BHVXlUt_7uu_sort.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !1578
  %i.hl = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %.lcssa272, i64 noundef range(i64 1, 9) 1) #34, !noalias !1578 ; 8 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %bb.ar, label %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.lcssa272) #37, !noalias !1579
  unreachable

_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i: ; preds = %bb.aq
  store i8 32, ptr %i.hl, align 1, !noalias !1580
  %.sroa.01.07.i.i = lshr i64 %.lcssa272, 1       ; 2 uses
  %.not8.i.i = icmp eq i64 %.sroa.01.07.i.i, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i171.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i171.i, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i
  %storemerge.lcssa.i.i = phi i64 [ 1, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i ], [ %i.hp, %.lr.ph.i171.i ] ; 4 uses
  %i.hn = icmp sgt i64 %storemerge.lcssa.i.i, -1
  call void @llvm.assume(i1 %i.hn)
  %.not5.i.i = icmp eq i64 %.lcssa272, %storemerge.lcssa.i.i
  br i1 %.not5.i.i, label %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsgcf5BHVXlUt_7uu_sort.exit.i, label %bb.as

.lr.ph.i171.i:                                    ; preds = %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i, %.lr.ph.i171.i
  %.sroa.01.010.i.i = phi i64 [ %.sroa.01.0.i.i, %.lr.ph.i171.i ], [ %.sroa.01.07.i.i, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i ]
  %storemerge9.i.i = phi i64 [ %i.hp, %.lr.ph.i171.i ], [ 1, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgcf5BHVXlUt_7uu_sort.exit.i.i ] ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 %storemerge9.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ho, ptr noundef nonnull align 1 dereferenceable(1) %i.hl, i64 %storemerge9.i.i, i1 false), !noalias !1579
  %i.hp = shl nuw i64 %storemerge9.i.i, 1         ; 2 uses
  %.sroa.01.0.i.i = lshr i64 %.sroa.01.010.i.i, 1 ; 2 uses
  %.not.i172.i = icmp eq i64 %.sroa.01.0.i.i, 0
  br i1 %.not.i172.i, label %._crit_edge.i.i, label %.lr.ph.i171.i

bb.as:                                            ; preds = %._crit_edge.i.i
  %i.hq = sub nsw i64 %.lcssa272, %storemerge.lcssa.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 %storemerge.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hr, ptr nonnull align 1 %i.hl, i64 %i.hq, i1 false), !noalias !1579
  br label %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsgcf5BHVXlUt_7uu_sort.exit.i

_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %bb.as, %._crit_edge.i.i, %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i, %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.thread.i
  %.sink14.i.i = phi i64 [ %.lcssa272, %._crit_edge.i.i ], [ %.lcssa272, %bb.as ], [ 0, %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i ], [ 0, %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.thread.i ] ; 2 uses
  %.sink13.i.i = phi ptr [ %i.hl, %._crit_edge.i.i ], [ %i.hl, %bb.as ], [ inttoptr (i64 1 to ptr), %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.i ], [ inttoptr (i64 1 to ptr), %_RNvCsgcf5BHVXlUt_7uu_sort20count_non_null_bytes.exit.thread.i ]
  store i64 %.sink14.i.i, ptr %i.s, align 8, !noalias !1571
  store ptr %.sink13.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1571
  store i64 %.sink14.i.i, ptr %.sroa.5.0..sroa_idx20.i, align 8, !noalias !1571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1571
  store ptr %i.s, ptr %i.r, align 8, !noalias !1571
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.469.0..sroa_idx.i, align 8, !noalias !1571
end_hunk_2
