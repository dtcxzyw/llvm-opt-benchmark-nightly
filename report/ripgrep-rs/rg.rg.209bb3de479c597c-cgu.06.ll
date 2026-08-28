Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.06?download=true
inline.NumInlined: 969
inline.NumDeleted: 430
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNCNvXs6_NtB4_7summaryINtB21_11SummarySinkB11_NtCs6Ur84ob3I15_9termcolor6BufferENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0ECs2NzvFoTxuAy_2rg:bb.a
_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextRRRB5_NCNvXs6_NtB1S_7summaryINtB32_11SummarySinkB2P_NtCs6Ur84ob3I15_9termcolor6BufferENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0E0Cs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i: ; preds = %bb.l
  %i.aa = add i64 %i.t, 1, !dbg !1663             ; 2 uses
  store i64 %i.aa, ptr %6, align 8, !dbg !1663, !noalias !1674
  br label %bb.m, !dbg !1681

bb.m:                                             ; preds = %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextRRRB5_NCNvXs6_NtB1S_7summaryINtB32_11SummarySinkB2P_NtCs6Ur84ob3I15_9termcolor6BufferENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0E0Cs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i, %bb.k
  %i.ab = phi i64 [ %i.t, %bb.k ], [ %i.aa, %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextRRRB5_NCNvXs6_NtB1S_7summaryINtB32_11SummarySinkB2P_NtCs6Ur84ob3I15_9termcolor6BufferENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0E0Cs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i ]
  %.sroa.3.1.i.i.i.i.i = phi i64 [ %.sroa.3.02.i.i.i.i.i, %bb.k ], [ %.sroa.5.0.copyload.i.i.i.i.i, %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextRRRB5_NCNvXs6_NtB1S_7summaryINtB32_11SummarySinkB2P_NtCs6Ur84ob3I15_9termcolor6BufferENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0E0Cs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i ], !dbg !1682
  %.sroa.0.2.i.i.i.i.i = phi i64 [ %i.y, %bb.k ], [ %.sroa.0.1.i.i.i.i.i, %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextRRRB5_NCNvXs6_NtB1S_7summaryINtB32_11SummarySinkB2P_NtCs6Ur84ob3I15_9termcolor6BufferENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0E0Cs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i ], !dbg !1675 ; 2 uses
  %i.ac = icmp ugt i64 %.sroa.0.2.i.i.i.i.i, %.sroa.12.0, !dbg !1636
  br i1 %i.ac, label %_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextBy_NCNvXs6_NtB1Z_7summaryINtB36_11SummarySinkBz_NtCs6Ur84ob3I15_9termcolor6BufferENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0ECs2NzvFoTxuAy_2rg.exit.thread, label %.peel.next.i.i.i.i.i, !dbg !1636, !llvm.loop !1683

bb.n:                                             ; preds = %bb.c
  %i.ad = sub nuw nsw i64 %3, %5, !dbg !1684
  %i.ae = icmp samesign ugt i64 %i.ad, 127, !dbg !1685
  %i.af = add nuw i64 %5, 128
  %spec.select = select i1 %i.ae, i64 %i.af, i64 %3, !dbg !1685
  br label %bb.f, !dbg !1685

bb.o:                                             ; preds = %bb.c
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %5, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #22, !dbg !1686
  unreachable, !dbg !1686

.loopexit:                                        ; preds = %.peel.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1659, !noalias !1644
  %i.ag = call noundef nonnull ptr @_RINvXNtCshqpdr3wwzuw_13grep_searcher4sinkNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtB3_9SinkError13error_messageNtCs7LWxN68iDgu_12grep_matcher7NoErrorECs2NzvFoTxuAy_2rg(), !dbg !1687
  br label %_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextBy_NCNvXs6_NtB1Z_7summaryINtB36_11SummarySinkBz_NtCs6Ur84ob3I15_9termcolor6BufferENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0ECs2NzvFoTxuAy_2rg.exit.thread, !dbg !1693

_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextBy_NCNvXs6_NtB1Z_7summaryINtB36_11SummarySinkBz_NtCs6Ur84ob3I15_9termcolor6BufferENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0ECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.i, %bb.l, %bb.m, %bb.f, %bb.h, %bb.g, %.loopexit
  %.sroa.017.0 = phi ptr [ %i.ag, %.loopexit ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.i ], !dbg !1694
  ret ptr %.sroa.017.0, !dbg !1695
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNCNvXs6_NtB4_7summaryINtB21_11SummarySinkB11_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0ECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, i64 noundef %5, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1696 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = call noundef zeroext i1 @_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !dbg !1697
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !1698

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1700
  store i64 0, ptr %i.b, align 8, !dbg !1701
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1701 ; 2 uses
  store i64 %5, ptr %i.e, align 8, !dbg !1701
  %i.f = call { ptr, i64 } @_RNvNtCshhHc5tDBDRu_12grep_printer4util20trim_line_terminator(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !1704 ; 0 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !1706, !noundef !15 ; 3 uses
  %.not = icmp ugt i64 %i.g, %3, !dbg !1709
  br i1 %.not, label %bb.e, label %bb.d, !dbg !1709, !prof !838

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %5, %3, !dbg !1718
  br i1 %i.h, label %bb.o, label %bb.n, !dbg !1718, !prof !838

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1723
  br label %bb.f, !dbg !1724

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.g, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #22, !dbg !1725
  unreachable, !dbg !1725

bb.f:                                             ; preds = %bb.n, %bb.d
  %.sroa.12.0 = phi i64 [ %i.g, %bb.d ], [ %spec.select, %bb.n ] ; 5 uses
  %.val.i = load ptr, ptr %1, align 8, !dbg !1726, !noalias !1729, !nonnull !15, !align !917, !noundef !15
  %.val.i.i = load ptr, ptr %.val.i, align 8, !dbg !1732, !noalias !1735, !nonnull !15, !align !917, !noundef !15 ; 2 uses
  %i.i = getelementptr i8, ptr %.val.i.i, i64 48, !dbg !1738
  %.val.i.i.i = load ptr, ptr %i.i, align 8, !dbg !1738, !noalias !1741 ; 2 uses
  %i.j = getelementptr i8, ptr %.val.i.i, i64 56, !dbg !1738
  %.val1.i.i.i = load ptr, ptr %i.j, align 8, !dbg !1738, !noalias !1741 ; 2 uses
  %i.k = icmp ugt i64 %4, %.sroa.12.0, !dbg !1744
  br i1 %i.k, label %_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextBy_NCNvXs6_NtB1Z_7summaryINtB36_11SummarySinkBz_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0ECs2NzvFoTxuAy_2rg.exit.thread, label %.lr.ph.i.i.i.i.i, !dbg !1744

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %.sroa.414.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1751, !noalias !1752
  call fastcc void @_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher7find_at(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr readonly %.val.i.i.i, ptr %.val1.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %.sroa.12.0, i64 noundef %4) #23, !dbg !1760, !noalias !1761
  %i.l = load i64, ptr %i.a, align 8, !dbg !1762, !range !1096, !noalias !1752, !noundef !15 ; 2 uses
  %i.m = icmp eq i64 %i.l, 2, !dbg !1762
  br i1 %i.m, label %.loopexit, label %bb.g, !dbg !1765

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.sroa.414.0.copyload.peel.i.i.i.i.i = load i64, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i, align 8, !dbg !1766, !noalias !1752 ; 3 uses
  %.sroa.5.0.copyload.peel.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !dbg !1766, !noalias !1752 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1767, !noalias !1752
  %i.n = trunc nuw i64 %i.l to i1, !dbg !1768
  %.not.i.i.peel.i.i.i.i.i = icmp ult i64 %.sroa.414.0.copyload.peel.i.i.i.i.i, %5
  %or.cond.i.i.i = select i1 %i.n, i1 %.not.i.i.peel.i.i.i.i.i, i1 false, !dbg !1768
  br i1 %or.cond.i.i.i, label %bb.h, label %_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextBy_NCNvXs6_NtB1Z_7summaryINtB36_11SummarySinkBz_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0ECs2NzvFoTxuAy_2rg.exit.thread, !dbg !1768

bb.h:                                             ; preds = %bb.g
  %i.o = icmp eq i64 %.sroa.414.0.copyload.peel.i.i.i.i.i, %.sroa.5.0.copyload.peel.i.i.i.i.i, !dbg !1769
  %i.p = add nuw i64 %.sroa.414.0.copyload.peel.i.i.i.i.i, 1
  %spec.select.i.i.i.i.i = select i1 %i.o, i64 %i.p, i64 %.sroa.5.0.copyload.peel.i.i.i.i.i, !dbg !1769 ; 2 uses
  %i.q = load i64, ptr %6, align 8, !dbg !1771, !noalias !1778, !noundef !15
  %i.r = add i64 %i.q, 1, !dbg !1771              ; 2 uses
  store i64 %i.r, ptr %6, align 8, !dbg !1771, !noalias !1778
  %i.s = icmp ugt i64 %spec.select.i.i.i.i.i, %.sroa.12.0, !dbg !1744
  br i1 %i.s, label %_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextBy_NCNvXs6_NtB1Z_7summaryINtB36_11SummarySinkBz_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0ECs2NzvFoTxuAy_2rg.exit.thread, label %.peel.next.i.i.i.i.i, !dbg !1744

.peel.next.i.i.i.i.i:                             ; preds = %bb.h, %bb.m
  %i.t = phi i64 [ %i.ab, %bb.m ], [ %i.r, %bb.h ] ; 2 uses
  %.sroa.0.03.i.i.i.i.i = phi i64 [ %.sroa.0.2.i.i.i.i.i, %bb.m ], [ %spec.select.i.i.i.i.i, %bb.h ]
  %.sroa.3.02.i.i.i.i.i = phi i64 [ %.sroa.3.1.i.i.i.i.i, %bb.m ], [ %.sroa.5.0.copyload.peel.i.i.i.i.i, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1751, !noalias !1752
  call fastcc void @_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher7find_at(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr readonly %.val.i.i.i, ptr %.val1.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %.sroa.12.0, i64 noundef %.sroa.0.03.i.i.i.i.i) #23, !dbg !1760, !noalias !1761
  %i.u = load i64, ptr %i.a, align 8, !dbg !1762, !range !1096, !noalias !1752, !noundef !15 ; 2 uses
  %i.v = icmp eq i64 %i.u, 2, !dbg !1762
  br i1 %i.v, label %.loopexit, label %bb.i, !dbg !1765

bb.i:                                             ; preds = %.peel.next.i.i.i.i.i
  %.sroa.414.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i, align 8, !dbg !1766, !noalias !1752 ; 4 uses
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !dbg !1766, !noalias !1752 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1767, !noalias !1752
  %i.w = trunc nuw i64 %i.u to i1, !dbg !1768
  br i1 %i.w, label %bb.j, label %_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextBy_NCNvXs6_NtB1Z_7summaryINtB36_11SummarySinkBz_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0ECs2NzvFoTxuAy_2rg.exit.thread, !dbg !1768

bb.j:                                             ; preds = %bb.i
  %i.x = icmp eq i64 %.sroa.414.0.copyload.i.i.i.i.i, %.sroa.5.0.copyload.i.i.i.i.i, !dbg !1769
  br i1 %i.x, label %bb.k, label %bb.l, !dbg !1769

bb.k:                                             ; preds = %bb.j
  %i.y = add i64 %.sroa.414.0.copyload.i.i.i.i.i, 1, !dbg !1779 ; 2 uses
  %i.z = icmp eq i64 %.sroa.414.0.copyload.i.i.i.i.i, %.sroa.3.02.i.i.i.i.i
  br i1 %i.z, label %bb.m, label %bb.l, !dbg !1780

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %i.y, %bb.k ], [ %.sroa.5.0.copyload.i.i.i.i.i, %bb.j ], !dbg !1783
  %.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.414.0.copyload.i.i.i.i.i, %5, !dbg !1784
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextRRRB5_NCNvXs6_NtB1S_7summaryINtB32_11SummarySinkB2P_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0E0Cs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i, label %_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextBy_NCNvXs6_NtB1Z_7summaryINtB36_11SummarySinkBz_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0ECs2NzvFoTxuAy_2rg.exit.thread, !dbg !1784

_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextRRRB5_NCNvXs6_NtB1S_7summaryINtB32_11SummarySinkB2P_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0E0Cs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i: ; preds = %bb.l
  %i.aa = add i64 %i.t, 1, !dbg !1771             ; 2 uses
  store i64 %i.aa, ptr %6, align 8, !dbg !1771, !noalias !1778
  br label %bb.m, !dbg !1785

bb.m:                                             ; preds = %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextRRRB5_NCNvXs6_NtB1S_7summaryINtB32_11SummarySinkB2P_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0E0Cs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i, %bb.k
  %i.ab = phi i64 [ %i.t, %bb.k ], [ %i.aa, %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextRRRB5_NCNvXs6_NtB1S_7summaryINtB32_11SummarySinkB2P_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0E0Cs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i ]
  %.sroa.3.1.i.i.i.i.i = phi i64 [ %.sroa.3.02.i.i.i.i.i, %bb.k ], [ %.sroa.5.0.copyload.i.i.i.i.i, %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextRRRB5_NCNvXs6_NtB1S_7summaryINtB32_11SummarySinkB2P_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0E0Cs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i ], !dbg !1786
  %.sroa.0.2.i.i.i.i.i = phi i64 [ %i.y, %bb.k ], [ %.sroa.0.1.i.i.i.i.i, %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextRRRB5_NCNvXs6_NtB1S_7summaryINtB32_11SummarySinkB2P_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0E0Cs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i ], !dbg !1779 ; 2 uses
  %i.ac = icmp ugt i64 %.sroa.0.2.i.i.i.i.i, %.sroa.12.0, !dbg !1744
  br i1 %i.ac, label %_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextBy_NCNvXs6_NtB1Z_7summaryINtB36_11SummarySinkBz_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0ECs2NzvFoTxuAy_2rg.exit.thread, label %.peel.next.i.i.i.i.i, !dbg !1744, !llvm.loop !1787

bb.n:                                             ; preds = %bb.c
  %i.ad = sub nuw nsw i64 %3, %5, !dbg !1788
  %i.ae = icmp samesign ugt i64 %i.ad, 127, !dbg !1789
  %i.af = add nuw i64 %5, 128
  %spec.select = select i1 %i.ae, i64 %i.af, i64 %3, !dbg !1789
  br label %bb.f, !dbg !1789

bb.o:                                             ; preds = %bb.c
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %5, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #22, !dbg !1790
  unreachable, !dbg !1790

.loopexit:                                        ; preds = %.peel.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1767, !noalias !1752
  %i.ag = call noundef nonnull ptr @_RINvXNtCshqpdr3wwzuw_13grep_searcher4sinkNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtB3_9SinkError13error_messageNtCs7LWxN68iDgu_12grep_matcher7NoErrorECs2NzvFoTxuAy_2rg(), !dbg !1791
  br label %_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextBy_NCNvXs6_NtB1Z_7summaryINtB36_11SummarySinkBz_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0ECs2NzvFoTxuAy_2rg.exit.thread, !dbg !1797

_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher12find_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util23find_iter_at_in_contextBy_NCNvXs6_NtB1Z_7summaryINtB36_11SummarySinkBz_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink7matched0E0ECs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.i, %bb.l, %bb.m, %bb.f, %bb.h, %bb.g, %.loopexit
  %.sroa.017.0 = phi ptr [ %i.ag, %.loopexit ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.i ], !dbg !1798
  ret ptr %.sroa.017.0, !dbg !1799
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1800 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1801 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg.exit unwind label %bb.b, !dbg !1802

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.c, !dbg !1806

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !1802
  unreachable, !dbg !1802

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !1802

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !1808
  ret void, !dbg !1801
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1810 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1811
  %i.b = load i64, ptr %i.a, align 8, !dbg !1812, !range !915, !alias.scope !1821, !noundef !15
  %1 = icmp eq i64 %i.b, 0, !dbg !1812
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1812 ; 5 uses
  br i1 %1, label %bb.b, label %bb.e, !dbg !1812

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEEECs2NzvFoTxuAy_2rg.exit unwind label %bb.c, !dbg !1830

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i.i.i.i unwind label %bb.d, !dbg !1834

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !1830
  unreachable, !dbg !1830

common.resume.i.i.i.i:                            ; preds = %bb.f, %bb.c
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.f, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i, !dbg !1812

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEEECs2NzvFoTxuAy_2rg.exit unwind label %bb.f, !dbg !1836

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i.i.i.i unwind label %bb.g, !dbg !1840

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !1836
  unreachable, !dbg !1836

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b, %bb.e
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !1812
  ret void, !dbg !1811
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtCshqpdr3wwzuw_13grep_searcher11line_buffer10LineBufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1842 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !1843 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCshqpdr3wwzuw_13grep_searcher11line_buffer10LineBufferEECs2NzvFoTxuAy_2rg.exit unwind label %bb.b, !dbg !1848

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.c, !dbg !1850

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !1848
  unreachable, !dbg !1848

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !1848

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCshqpdr3wwzuw_13grep_searcher11line_buffer10LineBufferEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !1852
  ret void, !dbg !1854
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshhHc5tDBDRu_12grep_printer4util5SpaceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1855 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !1856, !range !585, !noundef !15
  %i.b = icmp eq i64 %i.a, -1, !dbg !1856
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !1856

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer4util5SpaceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherEECs2NzvFoTxuAy_2rg.exit, %bb.a
  ret void, !dbg !1856

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4util8captures8CapturesECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.d, !dbg !1857

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !1862
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #18
          to label %.body.i unwind label %bb.k, !dbg !1862

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !1862 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.f unwind label %bb.e, !dbg !1863

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesECs2NzvFoTxuAy_2rg.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i unwind label %bb.g, !dbg !1865

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesECs2NzvFoTxuAy_2rg.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.h, !dbg !1867

bb.g:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !1863
  unreachable, !dbg !1863

.body.i:                                          ; preds = %bb.h, %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.i, %bb.h ], [ %i.f, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !1862
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs7LWxN68iDgu_12grep_matcher5MatchEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #18
          to label %common.resume.i unwind label %bb.k, !dbg !1862

bb.h:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !1862 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs7LWxN68iDgu_12grep_matcher5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer4util5SpaceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherEECs2NzvFoTxuAy_2rg.exit unwind label %bb.i, !dbg !1869

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs7LWxN68iDgu_12grep_matcher5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume.i unwind label %bb.j, !dbg !1872

bb.j:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !1869
  unreachable, !dbg !1869

common.resume.i:                                  ; preds = %bb.i, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.k, %bb.i ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !1862

bb.k:                                             ; preds = %.body.i, %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !1862
  unreachable, !dbg !1862

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer4util5SpaceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherEECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs7LWxN68iDgu_12grep_matcher5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j), !dbg !1875
  br label %bb.b, !dbg !1856
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1877 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !1878, !range !585, !noundef !15
  %i.b = icmp eq i64 %i.a, -1, !dbg !1878
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !1878

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit, %bb.a
  ret void, !dbg !1878

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit unwind label %bb.d, !dbg !1879

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i.i unwind label %bb.e, !dbg !1887

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !1879
  unreachable, !dbg !1879

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !1879

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !1889
  br label %bb.b, !dbg !1878
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1891 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !1892, !range !585, !noundef !15
  %i.b = icmp eq i64 %i.a, -1, !dbg !1892
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !1892

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit, %bb.a
  ret void, !dbg !1892

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg:bb.a
          to label %common.resume.i unwind label %bb.i, !dbg !1912

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1912 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !1913, !range !211, !alias.scope !1920, !noundef !15
  %switch.i.i.i.i = icmp ugt i64 %i.g, -3, !dbg !1913
  br i1 %switch.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathECs2NzvFoTxuAy_2rg.exit, label %bb.f, !dbg !1913

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg.exit.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink13HyperlinkPathECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i unwind label %bb.g, !dbg !1929

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume.i unwind label %bb.h, !dbg !1935

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !1929
  unreachable, !dbg !1929

common.resume.i:                                  ; preds = %bb.g, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.g ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !1912

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink13HyperlinkPathECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i: ; preds = %bb.f
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f), !dbg !1937
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathECs2NzvFoTxuAy_2rg.exit, !dbg !1939

bb.i:                                             ; preds = %.body.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !1912
  unreachable, !dbg !1912
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer5jsont4DataEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1940 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !1941, !range !1942, !noundef !15
  %i.b = icmp ugt i64 %i.a, -4, !dbg !1941
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer5jsont4DataECs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !1941

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer5jsont4DataECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit.i.i
  ret void, !dbg !1941

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.c, !dbg !1943

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i.i unwind label %bb.d, !dbg !1950

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !1943
  unreachable, !dbg !1943

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c, !dbg !1943

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !1952
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer5jsont4DataECs2NzvFoTxuAy_2rg.exit, !dbg !1954
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1955 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !1956, !noundef !15 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !1956
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !1956

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexECs2NzvFoTxuAy_2rg.exit, %bb.a
  ret void, !dbg !1956

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1957), !dbg !1956
  %i.c = atomicrmw sub ptr %i.a, i64 1 release, align 8, !dbg !1960, !noalias !1974
  %i.d = icmp eq i64 %i.c, 1, !dbg !1979
  br i1 %i.d, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexECs2NzvFoTxuAy_2rg.exit, !dbg !1979

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !1980
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex6RegexIE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexECs2NzvFoTxuAy_2rg.exit unwind label %bb.e, !dbg !1983

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1984
  %.val1.i = load ptr, ptr %i.f, align 8, !dbg !1984, !alias.scope !1957, !nonnull !15, !noundef !15
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool4PoolNtNtNtBI_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1r_NtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3O_4SyncNtB37_10UnwindSafeEL_EEECs2NzvFoTxuAy_2rg(ptr nonnull %.val1.i) #18
          to label %bb.g unwind label %bb.f, !dbg !1984

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !1984
  unreachable, !dbg !1984

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.e, !dbg !1984

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.c, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1984
  %.val.i = load ptr, ptr %i.h, align 8, !dbg !1984, !alias.scope !1957, !nonnull !15, !noundef !15
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool4PoolNtNtNtBI_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1r_NtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3O_4SyncNtB37_10UnwindSafeEL_EEECs2NzvFoTxuAy_2rg(ptr nonnull %.val.i), !dbg !1984
  br label %bb.b, !dbg !1956
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2NzvFoTxuAy_2rg6search12SearchResultNtNtNtB4_2io5error5ErrorEEB11_(ptr %.0.val, i32 %.56.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1985 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.not = icmp eq i32 %.56.val, -2, !dbg !1986
  br i1 %.not, label %bb.c, label %bb.b, !dbg !1986

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg.exit, %bb.a
  ret void, !dbg !1986

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1987
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64, !dbg !1991  ; 2 uses
  %i.c = and i64 %i.b, 3, !dbg !1994
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg.exit
    i64 1, label %bb.e
  ], !dbg !1995, !prof !607

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr), !dbg !1996
  %i.e = and i64 %i.b, 1095216660480, !dbg !1998
  %i.f = icmp ne i64 %i.e, 1095216660480, !dbg !1998
  tail call void @llvm.assume(i1 %i.d), !dbg !2000
  tail call void @llvm.assume(i1 %i.f), !dbg !2000
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg.exit, !dbg !2001

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %.0.val, i64 -1, !dbg !2002 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ], !dbg !2006
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2009 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !dbg !2009, !alias.scope !2010
  store i8 3, ptr %i.a, align 8, !dbg !2013, !alias.scope !2010
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h), !dbg !2014
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg.exit, !dbg !2017

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2018
  br label %bb.b, !dbg !1986
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2NzvFoTxuAy_2rg6search7PrinterNtCs6Ur84ob3I15_9termcolor6BufferEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2019 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !2020, !range !2021, !noundef !15
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 1), !dbg !2020
  switch i64 %i.b, label %bb.b [
    i64 0, label %bb.o
    i64 1, label %bb.ab
  ], !dbg !2020

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2020 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2022), !dbg !2020
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !2025 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2028), !dbg !2025
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2031), !dbg !2034
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2037), !dbg !2040
  %i.e = load ptr, ptr %i.d, align 8, !dbg !2043, !alias.scope !2051, !nonnull !15, !noundef !15
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !dbg !2052, !noalias !2051
  %i.g = icmp eq i64 %i.f, 1, !dbg !2057
  br i1 %i.g, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4json6ConfigECs2NzvFoTxuAy_2rg.exit.i, !dbg !2057

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !2058
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_3vec3VechEEE9drop_slowCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4json6ConfigECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.d, !dbg !2060

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c) #18
          to label %.body.i unwind label %bb.n, !dbg !2025

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4json6ConfigECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.c, %bb.b
  %i.i = load i64, ptr %i.c, align 8, !dbg !2061, !range !915, !alias.scope !2065, !noundef !15
  %1 = icmp eq i64 %i.i, 0, !dbg !2061
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2061 ; 5 uses
  br i1 %1, label %bb.e, label %bb.h, !dbg !2061

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4json6ConfigECs2NzvFoTxuAy_2rg.exit.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Ur84ob3I15_9termcolor6BufferECs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.f, !dbg !2072

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i unwind label %bb.g, !dbg !2075

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2072
  unreachable, !dbg !2072

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4json6ConfigECs2NzvFoTxuAy_2rg.exit.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Ur84ob3I15_9termcolor6BufferECs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.i, !dbg !2077

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i unwind label %bb.j, !dbg !2080

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2077
  unreachable, !dbg !2077

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Ur84ob3I15_9termcolor6BufferECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.h, %bb.e
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.k, !dbg !2061

.body.i:                                          ; preds = %bb.k, %bb.i, %bb.f, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.p, %bb.k ], [ %i.k, %bb.f ], [ %i.m, %bb.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2025
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs7LWxN68iDgu_12grep_matcher5MatchEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #18
          to label %common.resume unwind label %bb.n, !dbg !2025

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Ur84ob3I15_9termcolor6BufferECs2NzvFoTxuAy_2rg.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Ur84ob3I15_9termcolor6BufferECs2NzvFoTxuAy_2rg.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2025 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs7LWxN68iDgu_12grep_matcher5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer4json4JSONNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit unwind label %bb.l, !dbg !2082

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs7LWxN68iDgu_12grep_matcher5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.m, !dbg !2084

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2082
  unreachable, !dbg !2082

common.resume:                                    ; preds = %.body.i8, %bb.aj, %bb.am, %.body.i1, %bb.y, %.body.i, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %.pn.i2, %.body.i1 ], [ %.pn.i, %.body.i ], [ %i.r, %bb.l ], [ %i.ag, %bb.y ], [ %i.be, %bb.am ], [ %i.bc, %bb.aj ], [ %eh.lpad-body.i, %.body.i8 ]
  resume { ptr, i32 } %common.resume.op, !dbg !2020

bb.n:                                             ; preds = %.body.i, %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2025
  unreachable, !dbg !2025

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer4json4JSONNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs7LWxN68iDgu_12grep_matcher5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q), !dbg !2086
  br label %bb.ap, !dbg !2020

bb.o:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer8standard6ConfigECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0)
          to label %bb.q unwind label %bb.p, !dbg !2088

bb.p:                                             ; preds = %bb.o
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !2088
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(56) %i.v) #18
          to label %.body.i1 unwind label %bb.aa, !dbg !2088

bb.q:                                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !2091
  %i.x = load i64, ptr %i.w, align 8, !dbg !2093, !range !915, !alias.scope !2098, !noundef !15
  %2 = icmp eq i64 %i.x, 0, !dbg !2093
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !2093 ; 5 uses
  br i1 %2, label %bb.r, label %bb.u, !dbg !2093

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEEECs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.s, !dbg !2111

bb.s:                                             ; preds = %bb.r
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body.i1 unwind label %bb.t, !dbg !2114

bb.t:                                             ; preds = %bb.s
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2111
  unreachable, !dbg !2111

bb.u:                                             ; preds = %bb.q
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEEECs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.v, !dbg !2116

bb.v:                                             ; preds = %bb.u
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body.i1 unwind label %bb.w, !dbg !2119

bb.w:                                             ; preds = %bb.v
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2116
  unreachable, !dbg !2116

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.u, %bb.r
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.x, !dbg !2093

.body.i1:                                         ; preds = %bb.x, %bb.v, %bb.s, %bb.p
  %.pn.i2 = phi { ptr, i32 } [ %i.u, %bb.p ], [ %i.ae, %bb.x ], [ %i.z, %bb.s ], [ %i.ab, %bb.v ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !2088
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs7LWxN68iDgu_12grep_matcher5MatchEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #18
          to label %common.resume unwind label %bb.aa, !dbg !2088

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEEECs2NzvFoTxuAy_2rg.exit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEEECs2NzvFoTxuAy_2rg.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !2088 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs7LWxN68iDgu_12grep_matcher5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer8standard8StandardNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit unwind label %bb.y, !dbg !2121

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEEECs2NzvFoTxuAy_2rg.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs7LWxN68iDgu_12grep_matcher5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %common.resume unwind label %bb.z, !dbg !2123

bb.z:                                             ; preds = %bb.y
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2121
  unreachable, !dbg !2121

bb.aa:                                            ; preds = %.body.i1, %bb.p
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2088
  unreachable, !dbg !2088

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer8standard8StandardNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEEECs2NzvFoTxuAy_2rg.exit.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs7LWxN68iDgu_12grep_matcher5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af), !dbg !2125
  br label %bb.ap, !dbg !2020

bb.ab:                                            ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2127), !dbg !2020
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !2130 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2133), !dbg !2130
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2136), !dbg !2139
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2142), !dbg !2145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2148), !dbg !2151
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !2154, !alias.scope !2161, !nonnull !15, !noundef !15
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !dbg !2162, !noalias !2161
  %i.an = icmp eq i64 %i.am, 1, !dbg !2167
  br i1 %i.an, label %bb.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !2167

bb.ac:                                            ; preds = %bb.ab
  fence acquire, !dbg !2168
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkConfigInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.ak) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigECs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.ad, !dbg !2170

bb.ad:                                            ; preds = %bb.ac
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !2139 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2171), !dbg !2139
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2174), !dbg !2177
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !2180, !alias.scope !2187, !nonnull !15, !noundef !15
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !dbg !2188, !noalias !2193
  %i.as = icmp eq i64 %i.ar, 1, !dbg !2194
  br i1 %i.as, label %bb.ae, label %.body.i8, !dbg !2194

bb.ae:                                            ; preds = %bb.ad
  fence acquire, !dbg !2195
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #24
          to label %.body.i8 unwind label %bb.ag, !dbg !2197

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.ac, %bb.ab
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !2139 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2198), !dbg !2139
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2201), !dbg !2204
  %i.au = load ptr, ptr %i.at, align 8, !dbg !2206, !alias.scope !2210, !nonnull !15, !noundef !15
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !dbg !2211, !noalias !2214
  %i.aw = icmp eq i64 %i.av, 1, !dbg !2215
  br i1 %i.aw, label %bb.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer7summary6ConfigECs2NzvFoTxuAy_2rg.exit.i, !dbg !2215

bb.af:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigECs2NzvFoTxuAy_2rg.exit.i.i
  fence acquire, !dbg !2216
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer7summary6ConfigECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.ah, !dbg !2218

bb.ag:                                            ; preds = %bb.ae
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2139
  unreachable, !dbg !2139

bb.ah:                                            ; preds = %bb.af
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body.i8, !dbg !2130

.body.i8:                                         ; preds = %bb.ah, %bb.ae, %bb.ad
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ay, %bb.ah ], [ %i.ao, %bb.ae ], [ %i.ao, %bb.ad ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.aj) #18
          to label %common.resume unwind label %bb.ao, !dbg !2130

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer7summary6ConfigECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.af, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigECs2NzvFoTxuAy_2rg.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2219
  %i.ba = load i64, ptr %i.az, align 8, !dbg !2221, !range !915, !alias.scope !2226, !noundef !15
  %3 = icmp eq i64 %i.ba, 0, !dbg !2221
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2221 ; 5 uses
  br i1 %3, label %bb.ai, label %bb.al, !dbg !2221

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer7summary6ConfigECs2NzvFoTxuAy_2rg.exit.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer7summary7SummaryNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit unwind label %bb.aj, !dbg !2237

bb.aj:                                            ; preds = %bb.ai
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %common.resume unwind label %bb.ak, !dbg !2240

bb.ak:                                            ; preds = %bb.aj
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2237
  unreachable, !dbg !2237

bb.al:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer7summary6ConfigECs2NzvFoTxuAy_2rg.exit.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer7summary7SummaryNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit unwind label %bb.am, !dbg !2242

bb.am:                                            ; preds = %bb.al
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %common.resume unwind label %bb.an, !dbg !2245

bb.an:                                            ; preds = %bb.am
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2242
  unreachable, !dbg !2242

bb.ao:                                            ; preds = %.body.i8
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2130
  unreachable, !dbg !2130

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer7summary7SummaryNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.ai, %bb.al
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb), !dbg !2221
  br label %bb.ap, !dbg !2020

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer7summary7SummaryNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer8standard8StandardNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer4json4JSONNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg.exit
  ret void, !dbg !2020
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2NzvFoTxuAy_2rg6search7PrinterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2247 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !2248, !range !2021, !noundef !15
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 1), !dbg !2248
  switch i64 %i.b, label %bb.b [
    i64 0, label %bb.k
    i64 1, label %bb.r
  ], !dbg !2248

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2248 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2249), !dbg !2248
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !2252 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2255), !dbg !2252
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2258), !dbg !2261
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2263), !dbg !2266
  %i.e = load ptr, ptr %i.d, align 8, !dbg !2268, !alias.scope !2272, !nonnull !15, !noundef !15
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !dbg !2273, !noalias !2272
  %i.g = icmp eq i64 %i.f, 1, !dbg !2276
  br i1 %i.g, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4json6ConfigECs2NzvFoTxuAy_2rg.exit.i, !dbg !2276

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !2277
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_3vec3VechEEE9drop_slowCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4json6ConfigECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.d, !dbg !2279

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.c) #18
          to label %bb.e unwind label %bb.j, !dbg !2252

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4json6ConfigECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.c, %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.c)
          to label %bb.g unwind label %bb.f, !dbg !2252

bb.e:                                             ; preds = %bb.f, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.h, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !2252
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs7LWxN68iDgu_12grep_matcher5MatchEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #18
          to label %common.resume unwind label %bb.j, !dbg !2252

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4json6ConfigECs2NzvFoTxuAy_2rg.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4json6ConfigECs2NzvFoTxuAy_2rg.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !2252 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs7LWxN68iDgu_12grep_matcher5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer4json4JSONNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit unwind label %bb.h, !dbg !2280

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs7LWxN68iDgu_12grep_matcher5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.i, !dbg !2282

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2280
  unreachable, !dbg !2280

common.resume:                                    ; preds = %.body.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEEECs2NzvFoTxuAy_2rg.exit.i, %bb.o, %bb.e, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %.pn.i1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEEECs2NzvFoTxuAy_2rg.exit.i ], [ %.pn.i, %bb.e ], [ %i.l, %bb.h ], [ %i.u, %bb.o ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !2248

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2252
  unreachable, !dbg !2252

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer4json4JSONNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.g
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs7LWxN68iDgu_12grep_matcher5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k), !dbg !2284
  br label %bb.z, !dbg !2248

bb.k:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer8standard6ConfigECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0)
          to label %bb.m unwind label %bb.l, !dbg !2286

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !2289
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.q, !dbg !2292

bb.m:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !2295
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEEECs2NzvFoTxuAy_2rg.exit2.i unwind label %bb.n, !dbg !2297

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.n, %bb.l
  %.pn.i1 = phi { ptr, i32 } [ %i.s, %bb.n ], [ %i.o, %bb.l ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !2286
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs7LWxN68iDgu_12grep_matcher5MatchEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #18
          to label %common.resume unwind label %bb.q, !dbg !2286

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEEECs2NzvFoTxuAy_2rg.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEEECs2NzvFoTxuAy_2rg.exit2.i: ; preds = %bb.m
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !2286 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs7LWxN68iDgu_12grep_matcher5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer8standard8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit unwind label %bb.o, !dbg !2299

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEEECs2NzvFoTxuAy_2rg.exit2.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs7LWxN68iDgu_12grep_matcher5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.p, !dbg !2301

bb.p:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2299
  unreachable, !dbg !2299

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEEECs2NzvFoTxuAy_2rg.exit.i, %bb.l
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2286
  unreachable, !dbg !2286

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer8standard8StandardNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEEECs2NzvFoTxuAy_2rg.exit2.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs7LWxN68iDgu_12grep_matcher5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t), !dbg !2303
  br label %bb.z, !dbg !2248

bb.r:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2305), !dbg !2248
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !2308 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2311), !dbg !2308
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2314), !dbg !2317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2319), !dbg !2322
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2324), !dbg !2327
  %i.y = load ptr, ptr %i.x, align 8, !dbg !2329, !alias.scope !2333, !nonnull !15, !noundef !15
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8, !dbg !2334, !noalias !2333
  %i.aa = icmp eq i64 %i.z, 1, !dbg !2337
  br i1 %i.aa, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !2337

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !2338
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkConfigInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.x) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigECs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.t, !dbg !2340

bb.t:                                             ; preds = %bb.s
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives7StateIDEECs2NzvFoTxuAy_2rg:bb.a
_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives7StateIDEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !2425
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsgPiXjGfBJkm_14regex_automata6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2431 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsgPiXjGfBJkm_14regex_automata6hybrid2id11LazyStateIDENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !2432

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgPiXjGfBJkm_14regex_automata6hybrid2id11LazyStateIDENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsgPiXjGfBJkm_14regex_automata6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg.exit unwind label %bb.d, !dbg !2433

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgPiXjGfBJkm_14regex_automata6hybrid2id11LazyStateIDENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !2436
  ret void, !dbg !2432

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2432
  unreachable, !dbg !2432

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsgPiXjGfBJkm_14regex_automata6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !2432
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2438 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !2439

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateEECs2NzvFoTxuAy_2rg.exit unwind label %bb.d, !dbg !2440

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !2443
  ret void, !dbg !2439

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2439
  unreachable, !dbg !2439

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !2439
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecPaEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2445 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecPaENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !2446

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecPaENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecPaEECs2NzvFoTxuAy_2rg.exit unwind label %bb.d, !dbg !2447

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecPaENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !2450
  ret void, !dbg !2446

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2446
  unreachable, !dbg !2446

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecPaEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !2446
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !306 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !2452

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit unwind label %bb.d, !dbg !2453

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !2455
  ret void, !dbg !2452

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2452
  unreachable, !dbg !2452

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !2452
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtBG_3vec3VecjEEECs2NzvFoTxuAy_2rg(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2457 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %bb.c unwind label %bb.b, !dbg !2458

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %bb.f unwind label %bb.d, !dbg !2461

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs2NzvFoTxuAy_2rg.exit unwind label %bb.e, !dbg !2464

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2458
  unreachable, !dbg !2458

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.f, !dbg !2466

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #20, !dbg !2467
  ret void, !dbg !2466

bb.f:                                             ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #20, !dbg !2476
  resume { ptr, i32 } %eh.lpad-body, !dbg !2466
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEECs2NzvFoTxuAy_2rg(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2482 {
bb.a:
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(1400) %.0.val)
          to label %bb.b unwind label %bb.c, !dbg !2483

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1400, i64 noundef 8) #20, !dbg !2484
  ret void, !dbg !2483

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1400, i64 noundef 8) #20, !dbg !2493
  resume { ptr, i32 } %i.a, !dbg !2483
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1904 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !2499, !range !585, !noundef !15
  %i.b = icmp eq i64 %i.a, -1, !dbg !2499
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !2499

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit, %bb.a
  ret void, !dbg !2499

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit unwind label %bb.d, !dbg !2500

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.e, !dbg !2502

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2500
  unreachable, !dbg !2500

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !2500

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !2504
  br label %bb.b, !dbg !2499
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1817 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !2506, !range !915, !alias.scope !2509, !noundef !15
  %1 = icmp eq i64 %i.a, 0, !dbg !2506
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2506 ; 5 uses
  br i1 %1, label %bb.b, label %bb.e, !dbg !2506

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Ur84ob3I15_9termcolor6BufferECs2NzvFoTxuAy_2rg.exit unwind label %bb.c, !dbg !2514

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume.i.i unwind label %bb.d, !dbg !2517

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2514
  unreachable, !dbg !2514

common.resume.i.i:                                ; preds = %bb.f, %bb.c
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.e, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i.i, !dbg !2506

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Ur84ob3I15_9termcolor6BufferECs2NzvFoTxuAy_2rg.exit unwind label %bb.f, !dbg !2519

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume.i.i unwind label %bb.g, !dbg !2522

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2519
  unreachable, !dbg !2519

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Ur84ob3I15_9termcolor6BufferECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b, %bb.e
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !2506
  ret void, !dbg !2524
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2525 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2526
  %i.b = load i64, ptr %i.a, align 8, !dbg !2535, !range !2021, !alias.scope !2538, !noundef !15
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg.exit
    i64 1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg.exit
    i64 2, label %bb.h
    i64 3, label %bb.b
  ], !dbg !2535

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2535 ; 5 uses
  invoke void @_RNvXs7_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StderrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.d unwind label %bb.c, !dbg !2545

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #18
          to label %common.resume.i.i.i unwind label %bb.g, !dbg !2545

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.sink.split.i.i.i unwind label %bb.e, !dbg !2548

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %common.resume.i.i.i unwind label %bb.f, !dbg !2550

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2548
  unreachable, !dbg !2548

common.resume.i.i.i:                              ; preds = %bb.k, %bb.i, %bb.e, %bb.c
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.e, %bb.e ], [ %i.j, %bb.k ], [ %i.i, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !2535

bb.g:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2545
  unreachable, !dbg !2545

.sink.split.i.i.i:                                ; preds = %bb.j, %bb.d
  %.sink.i.i.i = phi ptr [ %i.h, %bb.j ], [ %i.c, %bb.d ]
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.sink.i.i.i), !dbg !2535
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg.exit, !dbg !2535

bb.h:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2535 ; 5 uses
  invoke void @_RNvXs7_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %bb.j unwind label %bb.i, !dbg !2552

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h) #18
          to label %common.resume.i.i.i unwind label %bb.m, !dbg !2552

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %.sink.split.i.i.i unwind label %bb.k, !dbg !2555

bb.k:                                             ; preds = %bb.j
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %common.resume.i.i.i unwind label %bb.l, !dbg !2557

bb.l:                                             ; preds = %bb.k
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2555
  unreachable, !dbg !2555

bb.m:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2552
  unreachable, !dbg !2552

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %bb.a, %.sink.split.i.i.i
  ret void, !dbg !2559
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2560 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !2561
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink12InterpolatorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !2561

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2561
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #18
          to label %bb.e unwind label %bb.d, !dbg !2561

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2561
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d), !dbg !2561
  ret void, !dbg !2561

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2561
  unreachable, !dbg !2561

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !2561
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2562 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !2563
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink12InterpolatorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !2563

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2563
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #18
          to label %bb.e unwind label %bb.d, !dbg !2563

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2563
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d), !dbg !2563
  ret void, !dbg !2563

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !2563
  unreachable, !dbg !2563

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !2563
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2564 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2565
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshhHc5tDBDRu_12grep_printer4util5SpaceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer4util8ReplacerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherEECs2NzvFoTxuAy_2rg.exit unwind label %bb.b, !dbg !2566
end_hunk_2
begin_hunk_3_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore9overrides8OverrideECs2NzvFoTxuAy_2rg:bb.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !3522 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsc0anycpf6TS_6ignore9gitignore4GlobENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.i unwind label %bb.h, !dbg !3532

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsc0anycpf6TS_6ignore9gitignore4GlobENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body6.i unwind label %bb.j, !dbg !3534

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsc0anycpf6TS_6ignore9gitignore4GlobENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsc0anycpf6TS_6ignore9gitignore4GlobEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.m, !dbg !3536

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !3532
  unreachable, !dbg !3532

.body6.i:                                         ; preds = %bb.m, %bb.h, %.body4.i
  %.pn2.i = phi { ptr, i32 } [ %.pn.i, %.body4.i ], [ %i.r, %bb.m ], [ %i.k, %bb.h ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !3522 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3538), !dbg !3522
  %i.n = load ptr, ptr %i.m, align 8, !dbg !3541, !alias.scope !3544, !noundef !15 ; 2 uses
  %i.o = icmp eq ptr %i.n, null, !dbg !3541
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool4PoolINtNtB12_3vec3VecjEEEEECs2NzvFoTxuAy_2rg.exit.i, label %bb.k, !dbg !3541

bb.k:                                             ; preds = %.body6.i
  %i.p = atomicrmw sub ptr %i.n, i64 1 release, align 8, !dbg !3547, !noalias !3556
  %i.q = icmp eq i64 %i.p, 1, !dbg !3561
  br i1 %i.q, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool4PoolINtNtB12_3vec3VecjEEEEECs2NzvFoTxuAy_2rg.exit.i, !dbg !3561

bb.l:                                             ; preds = %bb.k
  fence acquire, !dbg !3562
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool4PoolINtNtB7_3vec3VecjEEE9drop_slowCsc0anycpf6TS_6ignore(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool4PoolINtNtB12_3vec3VecjEEEEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.p, !dbg !3564

bb.m:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsc0anycpf6TS_6ignore9gitignore4GlobEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !3522 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3565), !dbg !3522
  %i.t = load ptr, ptr %i.s, align 8, !dbg !3568, !alias.scope !3570, !noundef !15 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !3568
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore9gitignore9GitignoreECs2NzvFoTxuAy_2rg.exit, label %bb.n, !dbg !3568

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsc0anycpf6TS_6ignore9gitignore4GlobEECs2NzvFoTxuAy_2rg.exit.i
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !3571, !noalias !3576
  %i.w = icmp eq i64 %i.v, 1, !dbg !3581
  br i1 %i.w, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore9gitignore9GitignoreECs2NzvFoTxuAy_2rg.exit, !dbg !3581

bb.o:                                             ; preds = %bb.n
  fence acquire, !dbg !3582
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool4PoolINtNtB7_3vec3VecjEEE9drop_slowCsc0anycpf6TS_6ignore(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #24, !dbg !3584
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore9gitignore9GitignoreECs2NzvFoTxuAy_2rg.exit, !dbg !3584

bb.p:                                             ; preds = %bb.l, %.body4.i, %.body.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !3522
  unreachable, !dbg !3522

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool4PoolINtNtB12_3vec3VecjEEEEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.l, %bb.k, %.body6.i
  resume { ptr, i32 } %.pn2.i, !dbg !3522

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore9gitignore9GitignoreECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsc0anycpf6TS_6ignore9gitignore4GlobEECs2NzvFoTxuAy_2rg.exit.i, %bb.n, %bb.o
  ret void, !dbg !3585
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !308 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit unwind label %bb.b, !dbg !3586

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.c, !dbg !3588

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !3586
  unreachable, !dbg !3586

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !3586

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !3590
  ret void, !dbg !3592
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 !dbg !3593 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3594), !dbg !3597
  %i.a = load i32, ptr %0, align 8, !dbg !3598, !range !532, !alias.scope !3594, !noundef !15
  %.not.i = icmp eq i32 %i.a, 2, !dbg !3598
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !3598

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0), !dbg !3598
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2NzvFoTxuAy_2rg.exit, !dbg !3598

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !3598
  %.val.i = load i32, ptr %i.b, align 4, !dbg !3598, !range !115, !alias.scope !3594, !noundef !15
  %i.c = tail call noundef i32 @close(i32 noundef %.val.i) #20, !dbg !3601, !noalias !3594 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2NzvFoTxuAy_2rg.exit, !dbg !3598

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b, %bb.c
  ret void, !dbg !3597
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !580 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3607), !dbg !3610
  %i.b = load i64, ptr %0, align 8, !dbg !3611, !range !585, !alias.scope !3607, !noundef !15
  %i.c = icmp eq i64 %i.b, -1, !dbg !3611
  br i1 %i.c, label %bb.b, label %bb.e, !dbg !3611

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3611
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !3611, !alias.scope !3607, !nonnull !15, !noundef !15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3613, !noalias !3607
  %i.e = ptrtoint ptr %.val.i to i64, !dbg !3617  ; 2 uses
  %i.f = and i64 %i.e, 3, !dbg !3620
  switch i64 %i.f, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg.exit.i
    i64 1, label %bb.d
  ], !dbg !3621, !prof !607

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr), !dbg !3622
  %i.h = and i64 %i.e, 1095216660480, !dbg !3624
  %i.i = icmp ne i64 %i.h, 1095216660480, !dbg !3624
  tail call void @llvm.assume(i1 %i.g), !dbg !3626
  tail call void @llvm.assume(i1 %i.i), !dbg !3626
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg.exit.i, !dbg !3627

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %.val.i, i64 -1, !dbg !3628 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ], !dbg !3632
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3635 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !dbg !3635, !alias.scope !3636, !noalias !3607
  store i8 3, ptr %i.a, align 8, !dbg !3639, !alias.scope !3636, !noalias !3607
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k), !dbg !3640, !noalias !3607
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg.exit.i, !dbg !3643

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3644, !noalias !3607
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli7process16CommandErrorKindECs2NzvFoTxuAy_2rg.exit, !dbg !3611

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.f, !dbg !3645

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.g, !dbg !3647

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !3645
  unreachable, !dbg !3645

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.l, !dbg !3645

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.e
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !3649
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli7process16CommandErrorKindECs2NzvFoTxuAy_2rg.exit, !dbg !3611

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli7process16CommandErrorKindECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i
  ret void, !dbg !3610
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli7process12StderrReaderECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3651 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !dbg !3652, !range !105, !noundef !15
  %1 = icmp eq i32 %i.a, 0, !dbg !3652
  br i1 %1, label %bb.b, label %bb.k, !dbg !3652

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3652 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !3653, !alias.scope !3656, !noundef !15
  %i.d = icmp eq ptr %i.c, null, !dbg !3653
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEEECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !3653

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3659
  invoke void @_RNvXs1_NtNtNtCsG258MDvU3F_3std3sys6thread4unixNtB5_6ThreadNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6thread4unix6ThreadECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.d, !dbg !3664

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3667), !dbg !3659
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3670), !dbg !3673
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3676), !dbg !3679
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3682), !dbg !3685
  %i.g = load ptr, ptr %i.b, align 8, !dbg !3688, !alias.scope !3695, !nonnull !15, !noundef !15
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !3700, !noalias !3705
  %i.i = icmp eq i64 %i.h, 1, !dbg !3706
  br i1 %i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !3706

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !3707
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.j, !dbg !3709

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6thread4unix6ThreadECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3710), !dbg !3659
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3713), !dbg !3716
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3718), !dbg !3721
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3723), !dbg !3726
  %i.j = load ptr, ptr %i.b, align 8, !dbg !3728, !alias.scope !3732, !nonnull !15, !noundef !15
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !dbg !3733, !noalias !3736
  %i.l = icmp eq i64 %i.k, 1, !dbg !3737
  br i1 %i.l, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs2NzvFoTxuAy_2rg.exit3.i.i.i, !dbg !3737

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6thread4unix6ThreadECs2NzvFoTxuAy_2rg.exit.i.i.i
  fence acquire, !dbg !3738
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs2NzvFoTxuAy_2rg.exit3.i.i.i unwind label %bb.h, !dbg !3740

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.h, %bb.e, %bb.d
  %.pn.i.i.i = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.f, %bb.e ], [ %i.f, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3659 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3741), !dbg !3659
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3744), !dbg !3747
  %i.n = load ptr, ptr %i.m, align 8, !dbg !3750, !alias.scope !3757, !nonnull !15, !noundef !15
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !dbg !3758, !noalias !3763
  %i.p = icmp eq i64 %i.o, 1, !dbg !3764
  br i1 %i.p, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEEECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !3764

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs2NzvFoTxuAy_2rg.exit.i.i.i
  fence acquire, !dbg !3765
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEEECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.j, !dbg !3767

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs2NzvFoTxuAy_2rg.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs2NzvFoTxuAy_2rg.exit3.i.i.i: ; preds = %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6thread4unix6ThreadECs2NzvFoTxuAy_2rg.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3659 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3768), !dbg !3659
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3771), !dbg !3774
  %i.s = load ptr, ptr %i.r, align 8, !dbg !3776, !alias.scope !3780, !nonnull !15, !noundef !15
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !dbg !3781, !noalias !3784
  %i.u = icmp eq i64 %i.t, 1, !dbg !3785
  br i1 %i.u, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEEECs2NzvFoTxuAy_2rg.exit, !dbg !3785

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs2NzvFoTxuAy_2rg.exit3.i.i.i
  fence acquire, !dbg !3786
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #24, !dbg !3788
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEEECs2NzvFoTxuAy_2rg.exit, !dbg !3788

bb.j:                                             ; preds = %bb.g, %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !3659
  unreachable, !dbg !3659

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEEECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs2NzvFoTxuAy_2rg.exit.i.i.i
  resume { ptr, i32 } %.pn.i.i.i, !dbg !3659

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !3652
  %.val = load i32, ptr %i.w, align 4, !dbg !3652, !range !115, !noundef !15
  %i.x = tail call noundef i32 @close(i32 noundef %.val) #20, !dbg !3789 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEEECs2NzvFoTxuAy_2rg.exit, !dbg !3652

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs2NzvFoTxuAy_2rg.exit3.i.i.i, %bb.b, %bb.k
  ret void, !dbg !3652
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3794 {
bb.a:
  invoke void @_RNvXs5_NtCsgwyS1EwTFAS_8grep_cli7processNtB5_13CommandReaderNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.c unwind label %bb.b, !dbg !3795

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !3795
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std7process5ChildECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 4 dereferenceable(28) %i.b) #18, !dbg !3795
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli7process12StderrReaderECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #18
          to label %bb.i unwind label %bb.h, !dbg !3795

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3796), !dbg !3795
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44, !dbg !3799
  %.val.i = load i32, ptr %i.c, align 4, !dbg !3799, !alias.scope !3796, !noundef !15 ; 2 uses
  %i.d = icmp eq i32 %.val.i, -1, !dbg !3801
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix4unix7ProcessECs2NzvFoTxuAy_2rg.exit.i, label %bb.d, !dbg !3801

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef i32 @close(i32 noundef %.val.i) #20, !dbg !3804, !noalias !3796 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix4unix7ProcessECs2NzvFoTxuAy_2rg.exit.i, !dbg !3801

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix4unix7ProcessECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !3799
  %.val4.i = load i32, ptr %i.f, align 8, !dbg !3799, !alias.scope !3796, !noundef !15 ; 2 uses
  %i.g = icmp eq i32 %.val4.i, -1, !dbg !3809
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std7process10ChildStdinEECs2NzvFoTxuAy_2rg.exit10.i, label %bb.e, !dbg !3809

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix4unix7ProcessECs2NzvFoTxuAy_2rg.exit.i
  %i.h = tail call noundef i32 @close(i32 noundef %.val4.i) #20, !dbg !3811, !noalias !3796 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std7process10ChildStdinEECs2NzvFoTxuAy_2rg.exit10.i, !dbg !3809

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std7process10ChildStdinEECs2NzvFoTxuAy_2rg.exit10.i: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsG258MDvU3F_3std3sys7process4unix4unix7ProcessECs2NzvFoTxuAy_2rg.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52, !dbg !3799
  %.val6.i = load i32, ptr %i.i, align 4, !dbg !3799, !alias.scope !3796, !noundef !15 ; 2 uses
  %i.j = icmp eq i32 %.val6.i, -1, !dbg !3816
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std7process11ChildStdoutEECs2NzvFoTxuAy_2rg.exit11.i, label %bb.f, !dbg !3816

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std7process10ChildStdinEECs2NzvFoTxuAy_2rg.exit10.i
  %i.k = tail call noundef i32 @close(i32 noundef %.val6.i) #20, !dbg !3818, !noalias !3796 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std7process11ChildStdoutEECs2NzvFoTxuAy_2rg.exit11.i, !dbg !3816

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std7process11ChildStdoutEECs2NzvFoTxuAy_2rg.exit11.i: ; preds = %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std7process10ChildStdinEECs2NzvFoTxuAy_2rg.exit10.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !3799
  %.val8.i = load i32, ptr %i.l, align 8, !dbg !3799, !alias.scope !3796, !noundef !15 ; 2 uses
  %i.m = icmp eq i32 %.val8.i, -1, !dbg !3823
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std7process5ChildECs2NzvFoTxuAy_2rg.exit, label %bb.g, !dbg !3823

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std7process11ChildStdoutEECs2NzvFoTxuAy_2rg.exit11.i
  %i.n = tail call noundef i32 @close(i32 noundef %.val8.i) #20, !dbg !3825, !noalias !3796 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std7process5ChildECs2NzvFoTxuAy_2rg.exit, !dbg !3823

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std7process5ChildECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std7process11ChildStdoutEECs2NzvFoTxuAy_2rg.exit11.i
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli7process12StderrReaderECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(32) %0), !dbg !3795
  ret void, !dbg !3795

bb.h:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !3795
  unreachable, !dbg !3795

bb.i:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !3795
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer5jsont4DataECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1948 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3830, !range !211, !noundef !15
  %switch = icmp ugt i64 %i.a, -3, !dbg !3830
  br i1 %switch, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !3830

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.c, !dbg !3831

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.d, !dbg !3835

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !3831
  unreachable, !dbg !3831

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b, !dbg !3831

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !3837
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs2NzvFoTxuAy_2rg.exit, !dbg !3839

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit.i
  ret void, !dbg !3830
}

end_hunk_3
begin_hunk_4_@_RNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB4_8ReplacerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherE11replace_allCs2NzvFoTxuAy_2rg:bb.a
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.i, align 8
  %i.j = call noundef zeroext i1 @_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i), !dbg !12224
  br i1 %i.j, label %bb.c, label %bb.b, !dbg !12225

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !12227
  store i64 0, ptr %i.h, align 8, !dbg !12228
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !12228 ; 2 uses
  store i64 %6, ptr %i.k, align 8, !dbg !12228
  %i.l = call { ptr, i64 } @_RNvNtCshhHc5tDBDRu_12grep_printer4util20trim_line_terminator(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h), !dbg !12231 ; 2 uses
  %i.m = load i64, ptr %i.k, align 8, !dbg !12233, !noundef !15 ; 3 uses
  %.not = icmp ugt i64 %i.m, %4, !dbg !12237
  br i1 %.not, label %bb.e, label %bb.d, !dbg !12237, !prof !838

bb.c:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %6, %4, !dbg !12246
  br i1 %i.n, label %bb.l, label %bb.k, !dbg !12246, !prof !838

bb.d:                                             ; preds = %bb.b
  %i.o = extractvalue { ptr, i64 } %i.l, 1, !dbg !12231
  %i.p = extractvalue { ptr, i64 } %i.l, 0, !dbg !12231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !12251
  br label %bb.f, !dbg !12252

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #22, !dbg !12253
  unreachable, !dbg !12253

bb.f:                                             ; preds = %bb.k, %bb.d
  %.sroa.3.0 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.k ], !dbg !12254 ; 4 uses
  %.sroa.020.0 = phi ptr [ %i.p, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.k ], !dbg !12254
  %.sroa.13.0 = phi i64 [ %i.m, %bb.d ], [ %spec.select, %bb.k ], !dbg !12255 ; 11 uses
  %.val = load ptr, ptr %2, align 8, !dbg !12258  ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12260), !dbg !12258
  %i.q = load i64, ptr %0, align 8, !dbg !12263, !range !585, !alias.scope !12260, !noundef !15
  %.not.i = icmp eq i64 %i.q, -1, !dbg !12263
  br i1 %.not.i, label %bb.h, label %bb.m, !dbg !12272

bb.g:                                             ; preds = %bb.i
  store i64 %i.s, ptr %0, align 8, !dbg !12273, !alias.scope !12260
  %.sroa.519.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12273
  store ptr %.sroa.442.0.copyload.i, ptr %.sroa.519.0..sroa_idx20.i, align 8, !dbg !12273, !alias.scope !12260
  %.sroa.622.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622.0..sroa_idx23.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622.i, i64 24, i1 false), !dbg !12273
  %.sroa.724.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !12273
  store i64 0, ptr %.sroa.724.0..sroa_idx25.i, align 8, !dbg !12273, !alias.scope !12260
  %.sroa.724.sroa.5.0..sroa.724.0..sroa_idx25.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12273
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.724.sroa.5.0..sroa.724.0..sroa_idx25.sroa_idx.i, align 8, !dbg !12273, !alias.scope !12260
  %.sroa.724.sroa.6.0..sroa.724.0..sroa_idx25.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !12273
  %.sroa.826.sroa.5.0..sroa.826.0..sroa_idx27.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !12273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.724.sroa.6.0..sroa.724.0..sroa_idx25.sroa_idx.i, i8 0, i64 16, i1 false), !dbg !12273, !alias.scope !12260
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.826.sroa.5.0..sroa.826.0..sroa_idx27.sroa_idx.i, align 8, !dbg !12273, !alias.scope !12260
  %.sroa.826.sroa.6.0..sroa.826.0..sroa_idx27.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !12273
  store i64 0, ptr %.sroa.826.sroa.6.0..sroa.826.0..sroa_idx27.sroa_idx.i, align 8, !dbg !12273, !alias.scope !12260
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.622.i), !dbg !12275
  br label %bb.m, !dbg !12276

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12279, !noalias !12260
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.val.i.i = load ptr, ptr %.val, align 8, !dbg !12280, !noalias !12283, !nonnull !15, !align !917, !noundef !15
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48, !dbg !12286
  call void @_RNvMs2_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex15create_captures(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r), !dbg !12292, !noalias !12260
  %i.s = load i64, ptr %i.g, align 8, !dbg !12293, !range !585, !noalias !12260, !noundef !15 ; 3 uses
  %i.t = icmp eq i64 %i.s, -1, !dbg !12293
  br i1 %i.t, label %_RNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB4_8ReplacerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherE8allocateCs2NzvFoTxuAy_2rg.exit, label %bb.i, !dbg !12296

bb.i:                                             ; preds = %bb.h
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !12297
  %.sroa.442.0.copyload.i = load ptr, ptr %.sroa.442.0..sroa_idx.i, align 8, !dbg !12297, !noalias !12260 ; 2 uses
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !12297
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.622.i), !dbg !12298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.543.0..sroa_idx.i, i64 24, i1 false), !dbg !12297, !noalias !12260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12299, !noalias !12260
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshhHc5tDBDRu_12grep_printer4util5SpaceRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.g unwind label %bb.j, !dbg !12273

common.resume:                                    ; preds = %.body.thread.i.i.i.i.i.i.i.i, %bb.ab, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.dg, %.body.thread.i.i.i.i.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i, %bb.ab ]
  resume { ptr, i32 } %common.resume.op, !dbg !12300

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  store i64 %i.s, ptr %0, align 8, !dbg !12273, !alias.scope !12260
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12273
  store ptr %.sroa.442.0.copyload.i, ptr %.sroa.519.0..sroa_idx.i, align 8, !dbg !12273, !alias.scope !12260
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622.i, i64 24, i1 false), !dbg !12273
  %.sroa.724.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !12273
  store i64 0, ptr %.sroa.724.0..sroa_idx.i, align 8, !dbg !12273, !alias.scope !12260
  %.sroa.724.sroa.5.0..sroa.724.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12273
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.724.sroa.5.0..sroa.724.0..sroa_idx.sroa_idx.i, align 8, !dbg !12273, !alias.scope !12260
  %.sroa.724.sroa.6.0..sroa.724.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !12273
  %.sroa.826.sroa.5.0..sroa.826.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !12273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.724.sroa.6.0..sroa.724.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !dbg !12273, !alias.scope !12260
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.826.sroa.5.0..sroa.826.0..sroa_idx.sroa_idx.i, align 8, !dbg !12273, !alias.scope !12260
  %.sroa.826.sroa.6.0..sroa.826.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !12273
  store i64 0, ptr %.sroa.826.sroa.6.0..sroa.826.0..sroa_idx.sroa_idx.i, align 8, !dbg !12273, !alias.scope !12260
  br label %common.resume, !dbg !12301

_RNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB4_8ReplacerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherE8allocateCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.h
  %i.v = call noundef nonnull ptr @_RINvXNtCshqpdr3wwzuw_13grep_searcher4sinkNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtB3_9SinkError13error_messageNtCs7LWxN68iDgu_12grep_matcher7NoErrorECs2NzvFoTxuAy_2rg(), !dbg !12302, !noalias !12260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12299, !noalias !12260
  br label %bb.cv, !dbg !12306

bb.k:                                             ; preds = %bb.c
  %i.w = sub nuw nsw i64 %4, %6, !dbg !12309
  %i.x = icmp samesign ugt i64 %i.w, 127, !dbg !12310
  %i.y = add nuw i64 %6, 128
  %spec.select = select i1 %i.x, i64 %i.y, i64 %4, !dbg !12310
  br label %bb.f, !dbg !12310

bb.l:                                             ; preds = %bb.c
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %6, i64 noundef %4, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #22, !dbg !12311
  unreachable, !dbg !12311

bb.m:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !12312 ; 12 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !12313 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !12314 ; 20 uses
  store i64 0, ptr %i.ab, align 8, !dbg !12314
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !12319 ; 3 uses
  store i64 0, ptr %i.ac, align 8, !dbg !12319
  call void @llvm.experimental.noalias.scope.decl(metadata !12323), !dbg !12326
  call void @llvm.experimental.noalias.scope.decl(metadata !12327), !dbg !12326
  call void @llvm.experimental.noalias.scope.decl(metadata !12329), !dbg !12332
  call void @llvm.experimental.noalias.scope.decl(metadata !12336), !dbg !12339
  %.val.i.i.i = load ptr, ptr %.val, align 8, !dbg !12342, !noalias !12345, !nonnull !15, !align !917, !noundef !15 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12354), !dbg !12342
  %i.ad = getelementptr i8, ptr %.val.i.i.i, i64 48, !dbg !12357
  %.val.i.i.i.i = load ptr, ptr %i.ad, align 8, !dbg !12357, !noalias !12360 ; 4 uses
  %i.ae = getelementptr i8, ptr %.val.i.i.i, i64 56, !dbg !12357
  %.val1.i.i.i.i = load ptr, ptr %i.ae, align 8, !dbg !12357, !noalias !12360 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12363), !dbg !12357
  call void @llvm.experimental.noalias.scope.decl(metadata !12366), !dbg !12369
  %i.af = icmp ugt i64 %5, %.sroa.13.0, !dbg !12372
  br i1 %i.af, label %_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextBy_NCNvMs_B21_INtB21_8ReplacerBz_E11replace_all0E0ECs2NzvFoTxuAy_2rg.exit.i, label %.lr.ph.i.i.i.i.i.i, !dbg !12372

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.m
  %.sroa.41.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.ax = icmp eq i64 %8, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_RINvMNtNtCsgPiXjGfBJkm_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i, !dbg !12372

_RINvMNtNtCsgPiXjGfBJkm_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i: ; preds = %bb.cq, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.0.i38 = phi i64 [ %5, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.1.i, %bb.cq ], !dbg !12377 ; 9 uses
  %.sroa.0.075.i.i.i.i.i.i = phi i64 [ %5, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.2.i.i.i.i.i.i, %bb.cq ] ; 3 uses
  %.sroa.08.074.i.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.i.i.i.i.i ], [ true, %bb.cq ]
  %.sroa.3.073.i.i.i.i.i.i = phi i64 [ undef, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.3.1.i.i.i.i.i.i, %bb.cq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12378), !dbg !12381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12382, !noalias !12385
  store i32 0, ptr %i.f, align 8, !dbg !12391, !noalias !12385
  store ptr %3, ptr %.sroa.41.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !12391, !noalias !12385
  store i64 %.sroa.13.0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !12391, !noalias !12385
  store i64 %.sroa.0.075.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !12391, !noalias !12385
  store i64 %.sroa.13.0, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !12391, !noalias !12385
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !12391, !noalias !12385
  store i32 0, ptr %i.ag, align 8, !dbg !12397, !alias.scope !12408, !noalias !12409
  %i.az = load ptr, ptr %i.ah, align 8, !dbg !12410, !alias.scope !12408, !noalias !12409, !nonnull !15, !noundef !15
  %i.ba = load i64, ptr %i.ai, align 8, !dbg !12426, !alias.scope !12408, !noalias !12409, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12385
  %i.bb = load ptr, ptr %i.aj, align 8, !dbg !12427, !noalias !12445, !nonnull !15, !noundef !15 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 138, !dbg !12449
  %i.bd = load i8, ptr %i.bc, align 2, !dbg !12449, !range !12453, !noalias !12454, !noundef !15
  %cond.i.i.i.i.i.i.i.i = icmp eq i8 %i.bd, 2, !dbg !12455
  br i1 %cond.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher11captures_at.exit.thread.i.i.i.i.i.i, label %bb.n, !dbg !12455

bb.n:                                             ; preds = %_RINvMNtNtCsgPiXjGfBJkm_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.075.i.i.i.i.i.i, 0, !dbg !12458
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 168
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !dbg !12461, !noalias !12462 ; 7 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.o, !dbg !12458

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i, i64 60, !dbg !12466
  %i.bf = load i32, ptr %i.be, align 4, !dbg !12466, !noalias !12462, !noundef !15
  %9 = and i32 %i.bf, 1, !dbg !12475
  %.not6.i.i.i.i.i.i.i.i.i = icmp eq i32 %9, 0, !dbg !12475
  br i1 %.not6.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher11captures_at.exit.thread.i.i.i.i.i.i, !dbg !12479

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.o, %bb.n
  %i.bg = load i64, ptr %.pre.i.i.i.i.i.i.i, align 8, !dbg !12480, !range !915, !noalias !12462, !noundef !15
  %i.bh = trunc nuw i64 %i.bg to i1, !dbg !12483
  br i1 %i.bh, label %bb.p, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i, !dbg !12483

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i, i64 8, !dbg !12480
  %i.bj = load i64, ptr %i.bi, align 8, !dbg !12480, !noalias !12462
  %i.bk = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %.sroa.13.0, i64 range(i64 0, -9223372036854775808) %.sroa.0.075.i.i.i.i.i.i), !dbg !12484 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj, !dbg !12491
  br i1 %i.bl, label %_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher11captures_at.exit.thread.i.i.i.i.i.i, label %bb.q, !dbg !12491

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i, i64 60, !dbg !12492
  %i.bn = load i32, ptr %i.bm, align 4, !dbg !12492, !noalias !12462, !noundef !15
  %10 = and i32 %i.bn, 1, !dbg !12498
  %.not8.i.i.i.i.i.i.i.i.i = icmp eq i32 %10, 0, !dbg !12498
  br i1 %.not8.i.i.i.i.i.i.i.i.i, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i, label %bb.r, !dbg !12500

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i, i64 64, !dbg !12501
  %i.bp = load i32, ptr %i.bo, align 8, !dbg !12501, !noalias !12462, !noundef !15
  %i.bq = and i32 %i.bp, 2, !dbg !12507
  %.not9.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bq, 0, !dbg !12507
  br i1 %.not9.i.i.i.i.i.i.i.i.i, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i, label %bb.s, !dbg !12509

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i, i64 16, !dbg !12510
  %i.bs = load i64, ptr %i.br, align 8, !dbg !12510, !range !915, !noalias !12462, !noundef !15
  %i.bt = trunc nuw i64 %i.bs to i1, !dbg !12513
  br i1 %i.bt, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i.i.i.i.i, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i, !dbg !12513

_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i, i64 24, !dbg !12510
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !12510, !noalias !12462
  %i.bw = icmp ugt i64 %i.bk, %i.bv, !dbg !12514
  br i1 %i.bw, label %_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher11captures_at.exit.thread.i.i.i.i.i.i, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i, !dbg !12516

_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i.i.i.i.i, %bb.s, %bb.r, %bb.q, %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  %i.bx = call noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB18_4PoolNtNtNtB1e_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB2a_NtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtNtB3i_6marker4SendNtB4P_4SyncNtB47_10UnwindSafeEL_EE3get0jECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @69), !dbg !12517, !noalias !12522 ; 3 uses
  %i.by = load atomic i64, ptr %i.ak acquire, align 8, !dbg !12525, !noalias !12530 ; 2 uses
  %i.bz = icmp eq i64 %i.bx, %i.by, !dbg !12531
  br i1 %i.bz, label %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.thread.i.i.i.i.i.i.i, label %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i, !dbg !12531, !prof !871

_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.thread.i.i.i.i.i.i.i: ; preds = %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i
  store atomic i64 1, ptr %i.ak release, align 8, !dbg !12533, !noalias !12530
  %i.ca = inttoptr i64 %i.bx to ptr, !dbg !12537
  store ptr %.val1.i.i.i.i, ptr %i.ao, align 8, !dbg !12540, !noalias !12541
  store i64 1, ptr %i.e, align 8, !dbg !12540, !noalias !12541
  store ptr %i.ca, ptr %i.an, align 8, !dbg !12540, !noalias !12541
  store i8 0, ptr %i.ap, align 8, !dbg !12540, !noalias !12541
  %i.cb = load ptr, ptr %i.al, align 8, !dbg !12542, !noalias !12445, !nonnull !15, !noundef !15
  %i.cc = load ptr, ptr %i.am, align 8, !dbg !12542, !noalias !12445, !nonnull !15, !align !917, !noundef !15 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16, !dbg !12553
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !12553, !range !2627, !invariant.load !15, !noalias !12454
  %i.cf = add nsw i64 %i.ce, -1, !dbg !12553
  %i.cg = and i64 %i.cf, -16, !dbg !12553
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cg, !dbg !12553
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16, !dbg !12553
  br label %bb.t, !dbg !12554

_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i.i.i.i.i
  call void @_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE8get_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noundef nonnull align 8 %.val1.i.i.i.i, i64 noundef %i.bx, i64 noundef %i.by), !dbg !12559, !noalias !12454
  %.pre2.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !dbg !12560, !range !915, !noalias !12541
  %i.cj = trunc nuw i64 %.pre2.i.i.i.i.i.i.i to i1, !dbg !12554
  %i.ck = load ptr, ptr %i.al, align 8, !dbg !12542, !noalias !12445, !nonnull !15, !noundef !15
  %i.cl = load ptr, ptr %i.am, align 8, !dbg !12542, !noalias !12445, !nonnull !15, !align !917, !noundef !15 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16, !dbg !12553
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !12553, !range !2627, !invariant.load !15, !noalias !12454
  %i.co = add nsw i64 %i.cn, -1, !dbg !12553
  %i.cp = and i64 %i.co, -16, !dbg !12553
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cp, !dbg !12553
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16, !dbg !12553 ; 2 uses
  br i1 %i.cj, label %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i._crit_edge.i.i.i.i.i.i, label %bb.u, !dbg !12554

_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i._crit_edge.i.i.i.i.i.i: ; preds = %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !dbg !12561, !noalias !12541
  br label %bb.t, !dbg !12554

bb.t:                                             ; preds = %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i._crit_edge.i.i.i.i.i.i, %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.thread.i.i.i.i.i.i.i
  %i.cs = phi ptr [ %.val1.i.i.i.i, %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.thread.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i, %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i._crit_edge.i.i.i.i.i.i ], !dbg !12561
  %i.ct = phi ptr [ %i.ci, %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.thread.i.i.i.i.i.i.i ], [ %i.cr, %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i._crit_edge.i.i.i.i.i.i ]
  %i.cu = phi ptr [ %i.cc, %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.thread.i.i.i.i.i.i.i ], [ %i.cl, %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i._crit_edge.i.i.i.i.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 48, !dbg !12563
  br label %bb.v, !dbg !12566

bb.u:                                             ; preds = %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i
  %i.cw = load ptr, ptr %i.an, align 8, !dbg !12567, !noalias !12541, !nonnull !15, !noundef !15
  br label %bb.v, !dbg !12569

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cx = phi ptr [ %i.ct, %bb.t ], [ %i.cr, %bb.u ]
  %i.cy = phi ptr [ %i.cu, %bb.t ], [ %i.cl, %bb.u ]
  %i.cz = phi i1 [ true, %bb.t ], [ false, %bb.u ]
  %.sroa.01.0.i.i.i.i.i.i.i.i = phi ptr [ %i.cv, %bb.t ], [ %i.cw, %bb.u ], !dbg !12570
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 96, !dbg !12571
  %i.db = load ptr, ptr %i.da, align 8, !dbg !12571, !invariant.load !15, !noalias !12454, !nonnull !15
  %i.dc = invoke { i32, i32 } %i.db(ptr noundef nonnull %i.cx, ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %.sroa.01.0.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull align 8 %i.az, i64 noundef range(i64 0, 1152921504606846976) %i.ba)
          to label %bb.w unwind label %bb.ab, !dbg !12572, !noalias !12573 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %.sroa.46.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.an, align 8, !dbg !12574, !noalias !12541 ; 7 uses
  %.sroa.57.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !dbg !12574, !noalias !12541 ; 4 uses
  %i.dd = ptrtoint ptr %.sroa.46.0.copyload.i.i.i.i.i.i.i.i to i64, !dbg !12576 ; 2 uses
  br i1 %i.cz, label %bb.x, label %bb.y, !dbg !12585

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12586, !noalias !12587
  store i64 %i.dd, ptr %i.d, align 8, !dbg !12586, !noalias !12587
  %i.de = icmp eq ptr %.sroa.46.0.copyload.i.i.i.i.i.i.i.i, inttoptr (i64 2 to ptr), !dbg !12590
  br i1 %i.de, label %.noexc10.i.i.i.i.i.i.i.i, label %.noexc11.i.i.i.i.i.i.i.i, !dbg !12590, !prof !838

bb.y:                                             ; preds = %bb.w
  %.sroa.68.0.copyload.i.i.i.i.i.i.i.i = load i8, ptr %i.ap, align 8, !dbg !12574, !noalias !12541
  %i.df = trunc nuw i8 %.sroa.68.0.copyload.i.i.i.i.i.i.i.i to i1, !dbg !12591
  br i1 %i.df, label %bb.aa, label %bb.z, !dbg !12591

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i.i.i.i.i.i.i.i) ]
  call fastcc void @_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE9put_valueCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %.sroa.57.0.copyload.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 %.sroa.46.0.copyload.i.i.i.i.i.i.i.i) #23, !dbg !12592, !noalias !12573
  br label %_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher11captures_at.exit.i.i.i.i.i.i, !dbg !12592

bb.aa:                                            ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.46.0.copyload.i.i.i.i.i.i.i.i) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %.sroa.46.0.copyload.i.i.i.i.i.i.i.i)
          to label %.noexc9.i.i.i.i.i.i.i.i unwind label %.body.thread.i.i.i.i.i.i.i.i, !dbg !12593, !noalias !12573

.body.thread.i.i.i.i.i.i.i.i:                     ; preds = %bb.aa
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload.i.i.i.i.i.i.i.i, i64 noundef 1400, i64 noundef 8) #20, !dbg !12595, !noalias !12573
  br label %common.resume, !dbg !12601

.noexc9.i.i.i.i.i.i.i.i:                          ; preds = %bb.aa
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload.i.i.i.i.i.i.i.i, i64 noundef 1400, i64 noundef 8) #20, !dbg !12602, !noalias !12573
  br label %_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher11captures_at.exit.i.i.i.i.i.i, !dbg !12608

.noexc10.i.i.i.i.i.i.i.i:                         ; preds = %bb.x
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #22, !dbg !12609, !noalias !12573
  unreachable, !dbg !12609

.noexc11.i.i.i.i.i.i.i.i:                         ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i.i.i.i.i.i.i.i) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.57.0.copyload.i.i.i.i.i.i.i.i, i64 40, !dbg !12610
  store atomic i64 %i.dd, ptr %i.dh release, align 8, !dbg !12614, !noalias !12573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12616, !noalias !12587
  br label %_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher11captures_at.exit.i.i.i.i.i.i, !dbg !12616

bb.ab:                                            ; preds = %bb.v
  %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool9PoolGuardNtNtNtBI_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3T_4SyncNtB3c_10UnwindSafeEL_EEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #18
          to label %common.resume unwind label %bb.ac, !dbg !12601, !noalias !12573

bb.ac:                                            ; preds = %bb.ab
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !12617, !noalias !12573
  unreachable, !dbg !12617

_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher11captures_at.exit.thread.i.i.i.i.i.i: ; preds = %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i.i.i.i.i, %bb.p, %bb.o, %_RINvMNtNtCsgPiXjGfBJkm_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12618, !noalias !12385
  store i32 0, ptr %i.ag, align 8, !dbg !12619, !alias.scope !12408, !noalias !12409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12622, !noalias !12385
  br label %_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextBy_NCNvMs_B21_INtB21_8ReplacerBz_E11replace_all0E0ECs2NzvFoTxuAy_2rg.exit.i, !dbg !12623

_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher11captures_at.exit.i.i.i.i.i.i: ; preds = %.noexc11.i.i.i.i.i.i.i.i, %.noexc9.i.i.i.i.i.i.i.i, %bb.z
  %i.dj = extractvalue { i32, i32 } %i.dc, 1, !dbg !12571 ; 3 uses
  %i.dk = extractvalue { i32, i32 } %i.dc, 0, !dbg !12571 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12618, !noalias !12385
  store i32 %i.dk, ptr %i.ag, align 8, !dbg !12619, !alias.scope !12408, !noalias !12409
  store i32 %i.dj, ptr %i.aq, align 4, !dbg !12619, !alias.scope !12408, !noalias !12409
  %i.dl = icmp eq i32 %i.dk, 1, !dbg !12624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12622, !noalias !12385
  br i1 %i.dl, label %bb.ad, label %_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextBy_NCNvMs_B21_INtB21_8ReplacerBz_E11replace_all0E0ECs2NzvFoTxuAy_2rg.exit.i, !dbg !12623

bb.ad:                                            ; preds = %_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher11captures_at.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !12630), !dbg !12633
  call void @llvm.experimental.noalias.scope.decl(metadata !12634), !dbg !12637
  %i.dm = load ptr, ptr %i.ar, align 8, !dbg !12639, !alias.scope !12645, !noalias !12646, !nonnull !15, !noundef !15
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32, !dbg !12649
  %i.do = load i64, ptr %i.dn, align 8, !dbg !12649, !noalias !12652, !noundef !15 ; 4 uses
  %i.dp = icmp ult i64 %i.do, 1152921504606846976, !dbg !12653
  call void @llvm.assume(i1 %i.dp), !dbg !12654
  %i.dq = icmp eq i64 %i.do, 1, !dbg !12655       ; 2 uses
  br i1 %i.dq, label %bb.ag, label %bb.ae, !dbg !12655

bb.ae:                                            ; preds = %bb.ad
  %i.dr = zext i32 %i.dj to i64, !dbg !12656      ; 2 uses
  %i.ds = icmp samesign ugt i64 %i.do, %i.dr, !dbg !12663
  br i1 %i.ds, label %bb.af, label %bb.al, !dbg !12663

bb.af:                                            ; preds = %bb.ae
  %i.dt = shl nuw nsw i64 %i.dr, 1, !dbg !12666   ; 2 uses
  %i.du = or disjoint i64 %i.dt, 1, !dbg !12667
  br label %bb.ag, !dbg !12670

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %.sroa.038.0.i.i.i.i.i.i.i.i = phi i64 [ %i.dt, %bb.af ], [ 0, %bb.ad ], !dbg !12671 ; 2 uses
  %.sroa.040.0.i.i.i.i.i.i.i.i = phi i64 [ %i.du, %bb.af ], [ 1, %bb.ad ], !dbg !12671 ; 2 uses
  %i.dv = load ptr, ptr %i.ah, align 8, !dbg !12672, !alias.scope !12645, !noalias !12646, !nonnull !15, !noundef !15 ; 4 uses
  %i.dw = load i64, ptr %i.ai, align 8, !dbg !12679, !alias.scope !12645, !noalias !12646, !noundef !15 ; 4 uses
  %i.dx = icmp ult i64 %.sroa.038.0.i.i.i.i.i.i.i.i, %i.dw, !dbg !12680
  br i1 %i.dx, label %bb.ah, label %bb.al, !dbg !12680

bb.ah:                                            ; preds = %bb.ag
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.sroa.038.0.i.i.i.i.i.i.i.i, !dbg !12683
  %i.dz = load i64, ptr %i.dy, align 8, !dbg !12684, !noalias !12652, !noundef !15 ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.dz, 0, !dbg !12686
  %i.ea = icmp ult i64 %.sroa.040.0.i.i.i.i.i.i.i.i, %i.dw
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %i.ea, i1 false, !dbg !12688
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.ai, label %bb.al, !dbg !12688

bb.ai:                                            ; preds = %bb.ah
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.sroa.040.0.i.i.i.i.i.i.i.i, !dbg !12689
  %i.ec = load i64, ptr %i.eb, align 8, !dbg !12692, !noalias !12652, !noundef !15 ; 3 uses
  %.not44.i.i.i.i.i.i.i.i = icmp eq i64 %i.ec, 0, !dbg !12694
end_hunk_4
begin_hunk_5_@_RNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB4_8ReplacerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherE11replace_allCs2NzvFoTxuAy_2rg:bb.a
  %i.lu = getelementptr inbounds i8, ptr %i.lt, i64 -24, !dbg !13486
  %i.lv = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrowneINtB2_10EquivalentINtNtCsexYYUdYSQU6_5alloc4sync3ArceEE10equivalentCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gq, i64 noundef %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lu), !dbg !13492, !noalias !13496
  br i1 %i.lv, label %bb.cl, label %bb.cj, !dbg !13499, !prof !871

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %bb.cj, %bb.ci
  %i.lw = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1), !dbg !13502
  %i.lx = bitcast <16 x i1> %i.lw to i16, !dbg !13508
  %i.ly = icmp eq i16 %i.lx, 0, !dbg !13511
  br i1 %i.ly, label %bb.ck, label %.backedge.i.i.i.i.i.i.i.i.i.i.i, !dbg !13511, !prof !838

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lz = add i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1, !dbg !13513
  %i.ma = and i16 %i.lz, %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13516 ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ma, 0, !dbg !13451
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13463

bb.ck:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mb = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 16, !dbg !13520 ; 2 uses
  %i.mc = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.mb, !dbg !13524
  br label %bb.ci, !dbg !13411

bb.cl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.md = getelementptr inbounds i8, ptr %i.lt, i64 -8, !dbg !13525
  %i.me = load i32, ptr %i.md, align 4, !dbg !13526, !noalias !12891, !noundef !15
  %i.mf = zext i32 %i.me to i64, !dbg !13538
  call fastcc void @_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB1V_8ReplacerRRNtB7_12RegexMatcherE11replace_all00E0Cs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 noundef %i.mf, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #23, !dbg !13548, !noalias !13278
  br label %.backedge.i.i.i.i.i.i.i.i.i.i.i, !dbg !13549

_RINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB1T_8ReplacerRRNtB5_12RegexMatcherE11replace_all00ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.az, %.thread.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.20.079.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.20.085.i.i.i.i.i.i.i.i.i.i.i, %bb.az ], [ 0, %.thread.i.i.i.i.i.i.i.i.i.i.i ]
  %i.mg = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %bb.az ], [ %i.fc, %.thread.i.i.i.i.i.i.i.i.i.i.i ], !dbg !12958
  %i.mh = add i64 %i.mg, %.sroa.20.079.i.i.i.i.i.i.i.i.i.i.i, !dbg !12958 ; 4 uses
  store i64 %i.mh, ptr %i.ab, align 8, !dbg !12958, !alias.scope !12947, !noalias !12900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13550, !noalias !12864
  %i.mi = icmp sgt i64 %i.mh, -1, !dbg !13551
  call void @llvm.assume(i1 %i.mi), !dbg !13554
  %.not.i4.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.fa, %i.mh, !dbg !13555
  br i1 %.not.i4.i.i.i.i.i.i.i.i, label %bb.cm, label %bb.cn, !dbg !13555, !prof !838

bb.cm:                                            ; preds = %_RINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB1T_8ReplacerRRNtB5_12RegexMatcherE11replace_all00ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #22, !dbg !13559, !noalias !13560
  unreachable, !dbg !13559

bb.cn:                                            ; preds = %_RINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB1T_8ReplacerRRNtB5_12RegexMatcherE11replace_all00ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i
  %i.mj = load i64, ptr %i.ac, align 8, !dbg !13561, !alias.scope !13565, !noalias !13560, !noundef !15 ; 3 uses
  %i.mk = load i64, ptr %i.aa, align 8, !dbg !13568, !range !420, !alias.scope !13565, !noalias !13560, !noundef !15
  %i.ml = icmp eq i64 %i.mj, %i.mk, !dbg !13571
  br i1 %i.ml, label %bb.co, label %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRB5_NCNvMs_B1U_INtB1U_8ReplacerB32_E11replace_all0E0E0Cs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i, !dbg !13571

bb.co:                                            ; preds = %bb.cn
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs7LWxN68iDgu_12grep_matcher5MatchE8grow_oneCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa) #24, !dbg !13572, !noalias !13560
  br label %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRB5_NCNvMs_B1U_INtB1U_8ReplacerB32_E11replace_all0E0E0Cs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i, !dbg !13573

bb.cp:                                            ; preds = %bb.aw
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.i38, i64 noundef %i.er, i64 noundef range(i64 0, -9223372036854775808) %.sroa.13.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #22, !dbg !13574, !noalias !12787
  unreachable, !dbg !13574

_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRB5_NCNvMs_B1U_INtB1U_8ReplacerB32_E11replace_all0E0E0Cs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i: ; preds = %bb.co, %bb.cn
  %i.mm = load ptr, ptr %i.ay, align 8, !dbg !13575, !alias.scope !13565, !noalias !13560, !nonnull !15, !noundef !15
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %i.mj, !dbg !13580 ; 2 uses
  store i64 %i.fa, ptr %i.mn, align 8, !dbg !13582, !noalias !13560
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8, !dbg !13582
  store i64 %i.mh, ptr %i.mo, align 8, !dbg !13582, !noalias !13560
  %i.mp = add i64 %i.mj, 1, !dbg !13584
  store i64 %i.mp, ptr %i.ac, align 8, !dbg !13584, !alias.scope !13565, !noalias !13560
  br label %bb.cq, !dbg !13585

bb.cq:                                            ; preds = %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRB5_NCNvMs_B1U_INtB1U_8ReplacerB32_E11replace_all0E0E0Cs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i, %bb.am
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i38, %bb.am ], [ %i.es, %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRB5_NCNvMs_B1U_INtB1U_8ReplacerB32_E11replace_all0E0E0Cs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i ], !dbg !13586 ; 2 uses
  %.sroa.3.1.i.i.i.i.i.i = phi i64 [ %.sroa.3.073.i.i.i.i.i.i, %bb.am ], [ %i.ee, %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRB5_NCNvMs_B1U_INtB1U_8ReplacerB32_E11replace_all0E0E0Cs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i ], !dbg !13587
  %.sroa.0.2.i.i.i.i.i.i = phi i64 [ %i.dz, %bb.am ], [ %.sroa.0.1.i.i.i.i.i.i, %_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRB5_NCNvMs_B1U_INtB1U_8ReplacerB32_E11replace_all0E0E0Cs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i ], !dbg !13588 ; 2 uses
  %i.mq = icmp ugt i64 %.sroa.0.2.i.i.i.i.i.i, %.sroa.13.0, !dbg !12372
  br i1 %i.mq, label %_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextBy_NCNvMs_B21_INtB21_8ReplacerBz_E11replace_all0E0ECs2NzvFoTxuAy_2rg.exit.i, label %_RINvMNtNtCsgPiXjGfBJkm_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i, !dbg !12372

_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextBy_NCNvMs_B21_INtB21_8ReplacerBz_E11replace_all0E0ECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.cq, %_RNvXs2_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures3get.exit.i.i.i.i.i.i.i.i, %_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher11captures_at.exit.i.i.i.i.i.i, %_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher11captures_at.exit.thread.i.i.i.i.i.i, %bb.m
  %.sroa.0.2.i = phi i64 [ %5, %bb.m ], [ %.sroa.0.0.i38, %_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher11captures_at.exit.thread.i.i.i.i.i.i ], [ %.sroa.0.1.i, %bb.cq ], [ %.sroa.0.0.i38, %_RNvXs2_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures3get.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i38, %_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher11captures_at.exit.i.i.i.i.i.i ], !dbg !12377 ; 6 uses
  %i.mr = icmp ugt i64 %.sroa.0.2.i, %6, !dbg !13589
  %..i.i = call range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %6, i64 range(i64 0, -9223372036854775808) %.sroa.13.0), !dbg !13589
  %.sroa.03.0.i = select i1 %i.mr, i64 %.sroa.13.0, i64 %..i.i, !dbg !13589 ; 4 uses
  %i.ms = icmp ult i64 %.sroa.03.0.i, %.sroa.0.2.i, !dbg !13590
  br i1 %i.ms, label %bb.cu, label %bb.cr, !dbg !13590, !prof !9535

bb.cr:                                            ; preds = %_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextBy_NCNvMs_B21_INtB21_8ReplacerBz_E11replace_all0E0ECs2NzvFoTxuAy_2rg.exit.i
  %gepdiff.i = sub nuw nsw i64 %.sroa.03.0.i, %.sroa.0.2.i, !dbg !13598 ; 3 uses
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %gepdiff.i), !dbg !13616, !noalias !13619
  %i.mt = load i64, ptr %i.ab, align 8, !dbg !13620, !alias.scope !13623, !noalias !13626, !noundef !15 ; 3 uses
  %i.mu = icmp sgt i64 %i.mt, -1, !dbg !13627
  call void @llvm.assume(i1 %i.mu), !dbg !13628
  %.not.i.i = icmp eq i64 %.sroa.03.0.i, %.sroa.0.2.i, !dbg !13629
  br i1 %.not.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i, label %bb.cs, !dbg !13629

bb.cs:                                            ; preds = %bb.cr
  %i.mv = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.2.i, !dbg !13630
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !13634
  %i.mx = load ptr, ptr %i.mw, align 8, !dbg !13634, !alias.scope !13623, !noalias !13626, !nonnull !15, !noundef !15
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.mt, !dbg !13639
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.my, ptr nonnull readonly align 1 %i.mv, i64 %gepdiff.i, i1 false), !dbg !13641, !noalias !13619
  %.pre.i.i = load i64, ptr %i.ab, align 8, !dbg !13643, !alias.scope !13623, !noalias !13626
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i, !dbg !13644

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.cs, %bb.cr
  %i.mz = phi i64 [ %.pre.i.i, %bb.cs ], [ %i.mt, %bb.cr ], !dbg !13643
  %i.na = add i64 %i.mz, %gepdiff.i, !dbg !13643
  store i64 %i.na, ptr %i.ab, align 8, !dbg !13643, !alias.scope !13623, !noalias !13626
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0), !dbg !13645, !noalias !13619
  %i.nb = load i64, ptr %i.ab, align 8, !dbg !13651, !alias.scope !13654, !noalias !13626, !noundef !15 ; 3 uses
  %i.nc = icmp sgt i64 %i.nb, -1, !dbg !13657
  call void @llvm.assume(i1 %i.nc), !dbg !13658
  %.not.i8.i = icmp eq i64 %.sroa.3.0, 0, !dbg !13659
  br i1 %.not.i8.i, label %_RINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNCNvMs_B2_INtB2_8ReplacerB1a_E11replace_all0ECs2NzvFoTxuAy_2rg.exit, label %bb.ct, !dbg !13659

bb.ct:                                            ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !13660
  %i.ne = load ptr, ptr %i.nd, align 8, !dbg !13660, !alias.scope !13654, !noalias !13626, !nonnull !15, !noundef !15
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.nb, !dbg !13665
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nf, ptr nonnull readonly align 1 %.sroa.020.0, i64 range(i64 0, -9223372036854775808) %.sroa.3.0, i1 false), !dbg !13667, !noalias !13669
  %.pre.i9.i = load i64, ptr %i.ab, align 8, !dbg !13670, !alias.scope !13654, !noalias !13626
  br label %_RINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNCNvMs_B2_INtB2_8ReplacerB1a_E11replace_all0ECs2NzvFoTxuAy_2rg.exit, !dbg !13671

bb.cu:                                            ; preds = %_RINvXsb_Cs7LWxN68iDgu_12grep_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtB6_7Matcher16captures_iter_atNCINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextBy_NCNvMs_B21_INtB21_8ReplacerBz_E11replace_all0E0ECs2NzvFoTxuAy_2rg.exit.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.2.i, i64 noundef %.sroa.03.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.13.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #22, !dbg !13672, !noalias !13619
  unreachable, !dbg !13672

_RINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNCNvMs_B2_INtB2_8ReplacerB1a_E11replace_all0ECs2NzvFoTxuAy_2rg.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i, %bb.ct
  %i.ng = phi i64 [ %.pre.i9.i, %bb.ct ], [ %i.nb, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i ], !dbg !13670
  %i.nh = add i64 %i.ng, %.sroa.3.0, !dbg !13670
  store i64 %i.nh, ptr %i.ab, align 8, !dbg !13670, !alias.scope !13654, !noalias !13626
  br label %bb.cv, !dbg !13673

bb.cv:                                            ; preds = %_RNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB4_8ReplacerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherE8allocateCs2NzvFoTxuAy_2rg.exit, %_RINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNCNvMs_B2_INtB2_8ReplacerB1a_E11replace_all0ECs2NzvFoTxuAy_2rg.exit
  %.sroa.019.0 = phi ptr [ null, %_RINvNtCshhHc5tDBDRu_12grep_printer4util32replace_with_captures_in_contextRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNCNvMs_B2_INtB2_8ReplacerB1a_E11replace_all0ECs2NzvFoTxuAy_2rg.exit ], [ %i.v, %_RNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB4_8ReplacerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherE8allocateCs2NzvFoTxuAy_2rg.exit ], !dbg !12300
  ret ptr %.sroa.019.0, !dbg !13673
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_12RegexMatcherNtCs7LWxN68iDgu_12grep_matcher7Matcher7find_at(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.48.val, ptr %.56.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !13674 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 14 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13675, !noalias !13680
  store i64 %3, ptr %i.e, align 8, !dbg !13683, !noalias !13680
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !13683
  store i64 %2, ptr %i.h, align 8, !dbg !13683, !noalias !13680
  %i.i = add nuw i64 %2, 1
  %.not8.i = icmp ugt i64 %3, %i.i
  br i1 %.not8.i, label %bb.b, label %_RINvMNtNtCsgPiXjGfBJkm_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs2NzvFoTxuAy_2rg.exit, !dbg !13684, !prof !9535

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13686, !noalias !13680
  store i64 %2, ptr %i.d, align 8, !dbg !13686, !noalias !13680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13687, !noalias !13680
  store ptr %i.e, ptr %i.c, align 8, !dbg !13687, !noalias !13680
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !13687
  store ptr @_RNvXs2_NtNtCsgPiXjGfBJkm_14regex_automata4util6searchNtB5_4SpanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !13687, !noalias !13680
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !13687
  store ptr %i.d, ptr %i.j, align 8, !dbg !13687, !noalias !13680
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !13687
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !13687, !noalias !13680
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22, !dbg !13691, !noalias !13680
  unreachable, !dbg !13691

_RINvMNtNtCsgPiXjGfBJkm_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13692, !noalias !13680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13695
  store i32 0, ptr %i.f, align 8, !dbg !13698
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !13698
  store ptr %1, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !13698
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !13698
  store i64 %2, ptr %.sroa.6.0..sroa_idx6, align 8, !dbg !13698
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !13698
  store i64 %3, ptr %.sroa.77.0..sroa_idx, align 8, !dbg !13698
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !13698
  store i64 %2, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !13698
  %.sroa.98.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40, !dbg !13698
  store i8 0, ptr %.sroa.98.0..sroa_idx, align 8, !dbg !13698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13705), !dbg !13708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.48.val) ]
  %i.k = getelementptr inbounds nuw i8, ptr %.48.val, i64 32, !dbg !13709
  %i.l = load ptr, ptr %i.k, align 8, !dbg !13709, !noalias !13726, !nonnull !15, !noundef !15 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 138, !dbg !13728
  %i.n = load i8, ptr %i.m, align 2, !dbg !13728, !range !12453, !noalias !13726, !noundef !15
  %cond.i = icmp eq i8 %i.n, 2, !dbg !13731
  br i1 %cond.i, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i, label %bb.c, !dbg !13731

bb.c:                                             ; preds = %_RINvMNtNtCsgPiXjGfBJkm_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs2NzvFoTxuAy_2rg.exit
  %.not.i.i = icmp eq i64 %3, 0, !dbg !13734
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !dbg !13736, !noalias !13737 ; 7 uses
  br i1 %.not.i.i, label %._crit_edge.i, label %bb.d, !dbg !13734

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 60, !dbg !13741
  %i.p = load i32, ptr %i.o, align 4, !dbg !13741, !noalias !13737, !noundef !15
  %4 = and i32 %i.p, 1, !dbg !13744
  %.not6.i.i = icmp eq i32 %4, 0, !dbg !13744
  br i1 %.not6.i.i, label %._crit_edge.i, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i, !dbg !13746

._crit_edge.i:                                    ; preds = %bb.c, %bb.d
  %i.q = load i64, ptr %.pre, align 8, !dbg !13747, !range !915, !noalias !13737, !noundef !15
  %i.r = trunc nuw i64 %i.q to i1, !dbg !13749
  br i1 %i.r, label %bb.e, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i, !dbg !13749

bb.e:                                             ; preds = %._crit_edge.i
  %i.s = getelementptr inbounds nuw i8, ptr %.pre, i64 8, !dbg !13747
  %i.t = load i64, ptr %i.s, align 8, !dbg !13747, !noalias !13737
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %3), !dbg !13750 ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t, !dbg !13753
  br i1 %i.v, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i, label %bb.f, !dbg !13753

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 60, !dbg !13754
  %i.x = load i32, ptr %i.w, align 4, !dbg !13754, !noalias !13737, !noundef !15
  %5 = and i32 %i.x, 1, !dbg !13758
  %.not8.i.i = icmp eq i32 %5, 0, !dbg !13758
  br i1 %.not8.i.i, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i, label %bb.g, !dbg !13760

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 64, !dbg !13761
  %i.z = load i32, ptr %i.y, align 8, !dbg !13761, !noalias !13737, !noundef !15
  %i.aa = and i32 %i.z, 2, !dbg !13764
  %.not9.i.i = icmp eq i32 %i.aa, 0, !dbg !13764
  br i1 %.not9.i.i, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i, label %bb.h, !dbg !13766

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 16, !dbg !13767
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !13767, !range !915, !noalias !13737, !noundef !15
  %i.ad = trunc nuw i64 %i.ac to i1, !dbg !13769
  br i1 %i.ad, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i, !dbg !13769

_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i: ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre, i64 24, !dbg !13767
  %i.af = load i64, ptr %i.ae, align 8, !dbg !13767, !noalias !13737
  %i.ag = icmp ugt i64 %i.u, %i.af, !dbg !13770
  br i1 %i.ag, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i, label %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i, !dbg !13771

_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i: ; preds = %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i, %bb.e, %bb.d, %_RINvMNtNtCsgPiXjGfBJkm_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs2NzvFoTxuAy_2rg.exit
  store i64 0, ptr %i.g, align 8, !dbg !13772, !alias.scope !13705, !noalias !13773
  br label %_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search.exit, !dbg !13774

_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i: ; preds = %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i, %bb.h, %bb.g, %bb.f, %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.56.val) ]
  %i.ah = tail call noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB18_4PoolNtNtNtB1e_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB2a_NtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtNtB3i_6marker4SendNtB4P_4SyncNtB47_10UnwindSafeEL_EE3get0jECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @69), !dbg !13775, !noalias !13779 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.56.val, i64 40, !dbg !13782 ; 2 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8, !dbg !13788, !noalias !13779 ; 2 uses
  %i.ak = icmp eq i64 %i.ah, %i.aj, !dbg !13790
  br i1 %i.ak, label %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.thread, label %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i, !dbg !13790, !prof !871

_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.thread: ; preds = %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i
  store atomic i64 1, ptr %i.ai release, align 8, !dbg !13791, !noalias !13779
  %i.al = inttoptr i64 %i.ah to ptr, !dbg !13794
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13796
  store ptr %.56.val, ptr %i.am, align 8, !dbg !13796, !noalias !13726
  store i64 1, ptr %i.b, align 8, !dbg !13796, !noalias !13726
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13796
  store ptr %i.al, ptr %i.an, align 8, !dbg !13796, !noalias !13726
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !13796
  store i8 0, ptr %i.ao, align 8, !dbg !13796, !noalias !13726
  %i.ap = getelementptr inbounds nuw i8, ptr %.48.val, i64 16, !dbg !13797
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !13797, !noalias !13726, !nonnull !15, !noundef !15
  %i.ar = getelementptr inbounds nuw i8, ptr %.48.val, i64 24, !dbg !13797
  %i.as = load ptr, ptr %i.ar, align 8, !dbg !13797, !noalias !13726, !nonnull !15, !align !917, !noundef !15 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !13808
  %i.au = load i64, ptr %i.at, align 8, !dbg !13808, !range !2627, !invariant.load !15, !noalias !13726
  %i.av = add nsw i64 %i.au, -1, !dbg !13808
  %i.aw = and i64 %i.av, -16, !dbg !13808
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.aw, !dbg !13808
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !13808
  br label %bb.i, !dbg !13809

_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i
  call void @_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE8get_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %.56.val, i64 noundef %i.ah, i64 noundef %i.aj), !dbg !13814, !noalias !13726
  %.pre9 = load i64, ptr %i.b, align 8, !dbg !13815, !range !915, !noalias !13726
  %i.az = trunc nuw i64 %.pre9 to i1, !dbg !13809
  %i.ba = getelementptr inbounds nuw i8, ptr %.48.val, i64 16, !dbg !13797
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !13797, !noalias !13726, !nonnull !15, !noundef !15
  %i.bc = getelementptr inbounds nuw i8, ptr %.48.val, i64 24, !dbg !13797
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !13797, !noalias !13726, !nonnull !15, !align !917, !noundef !15 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16, !dbg !13808
  %i.bf = load i64, ptr %i.be, align 8, !dbg !13808, !range !2627, !invariant.load !15, !noalias !13726
  %i.bg = add nsw i64 %i.bf, -1, !dbg !13808
  %i.bh = and i64 %i.bg, -16, !dbg !13808
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh, !dbg !13808
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16, !dbg !13808 ; 2 uses
  br i1 %i.az, label %bb.i, label %bb.j, !dbg !13809

bb.i:                                             ; preds = %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.thread, %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i
  %i.bk = phi ptr [ %i.ay, %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.thread ], [ %i.bj, %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i ]
  %i.bl = phi ptr [ %i.as, %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i.thread ], [ %i.bd, %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13816
  %i.bn = load ptr, ptr %i.bm, align 8, !dbg !13816, !noalias !13726, !nonnull !15, !align !917, !noundef !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48, !dbg !13818
  br label %bb.k, !dbg !13821

bb.j:                                             ; preds = %_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs2NzvFoTxuAy_2rg.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13815
  %i.bq = load ptr, ptr %i.bp, align 8, !dbg !13822, !noalias !13726, !nonnull !15, !noundef !15
  br label %bb.k, !dbg !13824

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.br = phi ptr [ %i.bk, %bb.i ], [ %i.bj, %bb.j ]
  %i.bs = phi ptr [ %i.bl, %bb.i ], [ %i.bd, %bb.j ]
  %i.bt = phi i1 [ true, %bb.i ], [ false, %bb.j ]
  %.sroa.0.0.i = phi ptr [ %i.bo, %bb.i ], [ %i.bq, %bb.j ], !dbg !13825
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 72, !dbg !13826
  %i.bv = load ptr, ptr %i.bu, align 8, !dbg !13826, !invariant.load !15, !noalias !13726, !nonnull !15
  invoke void %i.bv(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noundef nonnull %i.br, ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f)
          to label %bb.l unwind label %bb.r, !dbg !13827

bb.l:                                             ; preds = %bb.k
  %.sroa.46.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13828
  %.sroa.46.0.copyload.i = load ptr, ptr %.sroa.46.0..sroa_idx.i3, align 8, !dbg !13828, !noalias !13726 ; 7 uses
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13828
  %.sroa.57.0.copyload.i = load ptr, ptr %.sroa.57.0..sroa_idx.i, align 8, !dbg !13828, !noalias !13726 ; 4 uses
  %i.bw = ptrtoint ptr %.sroa.46.0.copyload.i to i64, !dbg !13830 ; 2 uses
  br i1 %i.bt, label %bb.m, label %bb.n, !dbg !13838

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13839, !noalias !13840
  store i64 %i.bw, ptr %i.a, align 8, !dbg !13839, !noalias !13840
  %i.bx = icmp eq ptr %.sroa.46.0.copyload.i, inttoptr (i64 2 to ptr), !dbg !13843
  br i1 %i.bx, label %.noexc9.i, label %.noexc10.i, !dbg !13843, !prof !838

bb.n:                                             ; preds = %bb.l
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !13828
  %.sroa.68.0.copyload.i = load i8, ptr %.sroa.68.0..sroa_idx.i, align 8, !dbg !13828, !noalias !13726
  %i.by = trunc nuw i8 %.sroa.68.0.copyload.i to i1, !dbg !13844
  br i1 %i.by, label %bb.p, label %bb.o, !dbg !13844

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i) ]
  call fastcc void @_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE9put_valueCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %.sroa.57.0.copyload.i, ptr noalias noundef nonnull align 8 %.sroa.46.0.copyload.i) #23, !dbg !13845, !noalias !13705
  br label %_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search.exit, !dbg !13845

bb.p:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.46.0.copyload.i) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %.sroa.46.0.copyload.i)
          to label %.noexc8.i unwind label %.body.thread.i, !dbg !13846, !noalias !13705

.body.thread.i:                                   ; preds = %bb.p
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload.i, i64 noundef 1400, i64 noundef 8) #20, !dbg !13848, !noalias !13705
  br label %bb.q, !dbg !13854

.noexc8.i:                                        ; preds = %bb.p
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload.i, i64 noundef 1400, i64 noundef 8) #20, !dbg !13855, !noalias !13705
  br label %_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search.exit, !dbg !13861

.noexc9.i:                                        ; preds = %bb.m
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #22, !dbg !13862, !noalias !13705
  unreachable, !dbg !13862

.noexc10.i:                                       ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i) ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.57.0.copyload.i, i64 40, !dbg !13863
  store atomic i64 %i.bw, ptr %i.ca release, align 8, !dbg !13867, !noalias !13705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13869, !noalias !13840
  br label %_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search.exit, !dbg !13869

bb.q:                                             ; preds = %bb.r, %.body.thread.i
  %eh.lpad-body17.i = phi { ptr, i32 } [ %i.bz, %.body.thread.i ], [ %lpad.thr_comm.split-lp.i, %bb.r ]
  resume { ptr, i32 } %eh.lpad-body17.i, !dbg !13870

bb.r:                                             ; preds = %bb.k
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool9PoolGuardNtNtNtBI_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3T_4SyncNtB3c_10UnwindSafeEL_EEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #18
          to label %bb.q unwind label %bb.s, !dbg !13854, !noalias !13705

bb.s:                                             ; preds = %bb.r
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !13870, !noalias !13705
  unreachable, !dbg !13870

_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search.exit: ; preds = %_RNvMs4_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i, %bb.o, %.noexc8.i, %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13871
  %i.cc = load i64, ptr %i.g, align 8, !dbg !13872, !range !915, !noundef !15
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !13875
  br i1 %i.cd, label %bb.t, label %bb.u, !dbg !13875

bb.t:                                             ; preds = %_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !13876
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !13876, !noundef !15 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !13876
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !13876, !noundef !15 ; 2 uses
  %.not = icmp ugt i64 %i.cf, %i.ch, !dbg !13877
  br i1 %.not, label %bb.v, label %bb.u, !dbg !13877, !prof !838

bb.u:                                             ; preds = %bb.t, %_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search.exit
  %.sroa.6.0 = phi i64 [ undef, %_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search.exit ], [ %i.ch, %bb.t ], !dbg !13884
  %.sroa.5.0 = phi i64 [ undef, %_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search.exit ], [ %i.cf, %bb.t ], !dbg !13884
  %.sroa.0.0 = phi i64 [ 0, %_RNvMs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex6search.exit ], [ 1, %bb.t ], !dbg !13885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13886
  store i64 %.sroa.0.0, ptr %0, align 8, !dbg !13887
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13887
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !13887
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13887
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !13887
  ret void, !dbg !13888

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #22, !dbg !13889
  unreachable, !dbg !13889
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCshhHc5tDBDRu_12grep_printer4util12NiceDurationNtB6_7Display3fmtCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !13890 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !13894, !nonnull !15, !align !917, !noundef !15
  %i.b = tail call noundef zeroext i1 @_RNvXs2_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_12NiceDurationNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !13895
  ret i1 %i.b, !dbg !13896
}

end_hunk_5
