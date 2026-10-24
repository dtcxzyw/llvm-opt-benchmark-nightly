Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.11?download=true
inline.NumInlined: 225
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB5_7BackendNtNtNtB9_8terminal9crossterm18CrosstermKeyReaderNtBW_17CrosstermTerminalENtB5_13SelectBackend20render_select_promptCsjfnSKV9Rz3v_3h3i:bb.a
    #dbg_value(ptr poison, !993, !DIExpression(), !9975)
    #dbg_value(ptr poison, !964, !DIExpression(), !9976)
    #dbg_value(ptr poison, !960, !DIExpression(), !9979)
    #dbg_value(ptr poison, !981, !DIExpression(), !9982)
    #dbg_value(ptr poison, !993, !DIExpression(), !9983)
    #dbg_value(ptr poison, !964, !DIExpression(), !9984)
    #dbg_value(ptr %i.ac, !10532, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9985)
    #dbg_value(!DIArgList(ptr %i.ac, i64 %i.ad), !10532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9985)
    #dbg_value(i64 0, !10533, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9985)
    #dbg_value(i16 0, !10533, !DIExpression(DW_OP_LLVM_fragment, 64, 16), !9985)
    #dbg_declare(ptr poison, !10534, !DIExpression(), !9986)
    #dbg_value(i64 0, !10523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9987)
    #dbg_value(i16 0, !10523, !DIExpression(DW_OP_LLVM_fragment, 64, 16), !9987)
    #dbg_value(ptr undef, !10541, !DIExpression(), !9988)
    #dbg_value(ptr undef, !968, !DIExpression(), !9989)
    #dbg_value(i32 2, !999, !DIExpression(), !9991)
    #dbg_value(i32 3, !999, !DIExpression(), !9993)
    #dbg_value(i32 4, !999, !DIExpression(), !9995)
    #dbg_value(ptr undef, !964, !DIExpression(), !9997)
    #dbg_value(ptr undef, !993, !DIExpression(), !9999)
    #dbg_value(ptr undef, !981, !DIExpression(), !10001)
    #dbg_value(i64 1, !985, !DIExpression(), !10001)
    #dbg_value(i64 1, !1002, !DIExpression(), !10003)
    #dbg_value(i64 -1, !1006, !DIExpression(), !10005)
    #dbg_value(!DIArgList(ptr %i.ac, i64 %i.ad), !966, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !10006)
    #dbg_value(ptr undef, !960, !DIExpression(), !10008)
    #dbg_value(ptr poison, !961, !DIExpression(), !10009)
  %.not.i21.i.i.i = icmp samesign eq i64 %i.ad, 0, !dbg !10821
  br i1 %.not.i21.i.i.i, label %_RINvYNtNtNtCskKLDkoKarTP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCs5Tjqocmbzhi_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECsjfnSKV9Rz3v_3h3i.exit.i.i, label %.lr.ph.i.preheader.i.i, !dbg !10822

.lr.ph.i.preheader.i.i:                           ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad, !dbg !10823
    #dbg_value(ptr %i.ae, !10532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9985)
    #dbg_value(ptr %i.ae, !966, !DIExpression(), !10006)
  br label %.lr.ph.i.i.i, !dbg !10824

.lr.ph.i.i.i:                                     ; preds = %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.sroa.0.024.i.i.i = phi i16 [ %i.fm, %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i ]
  %.sroa.6.023.i.i.i = phi i16 [ %.sroa.51.1.i.i.i.i.i, %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i ] ; 5 uses
  %.sroa.2.022.i.i.i = phi ptr [ %.sroa.2.3.ph.i.i.i, %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i ], [ %i.ae, %.lr.ph.i.preheader.i.i ] ; 4 uses
    #dbg_value(i64 poison, !10523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9987)
    #dbg_value(i16 %.sroa.6.023.i.i.i, !10523, !DIExpression(DW_OP_LLVM_fragment, 64, 16), !9987)
    #dbg_value(ptr %.sroa.2.022.i.i.i, !10532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9985)
    #dbg_value(ptr undef, !988, !DIExpression(), !10012)
    #dbg_value(ptr %.sroa.2.022.i.i.i, !1004, !DIExpression(), !10003)
    #dbg_value(ptr %.sroa.2.022.i.i.i, !1010, !DIExpression(), !10005)
  %i.af = getelementptr inbounds i8, ptr %.sroa.2.022.i.i.i, i64 -1, !dbg !10825 ; 3 uses
    #dbg_value(ptr %i.af, !1004, !DIExpression(), !10003)
    #dbg_value(ptr %i.af, !1010, !DIExpression(), !10005)
    #dbg_value(ptr %i.af, !10532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9985)
    #dbg_value(ptr %i.af, !973, !DIExpression(), !10013)
  %i.ag = load i8, ptr %i.af, align 1, !dbg !10824, !noalias !10544, !noundef !556 ; 3 uses
    #dbg_value(i8 %i.ag, !969, !DIExpression(), !10018)
    #dbg_value(i8 %i.ag, !972, !DIExpression(), !10013)
    #dbg_value(i8 %i.ag, !1012, !DIExpression(), !10020)
  %i.ah = icmp sgt i8 %i.ag, -1, !dbg !10824
  br i1 %i.ah, label %bb.g, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit30.i.i.i.i.i, !dbg !10824

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit30.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
    #dbg_value(ptr undef, !964, !DIExpression(), !9984)
    #dbg_value(ptr undef, !993, !DIExpression(), !9983)
    #dbg_value(ptr undef, !981, !DIExpression(), !9982)
    #dbg_value(i64 1, !985, !DIExpression(), !9982)
    #dbg_value(i64 1, !1002, !DIExpression(), !10022)
    #dbg_value(i64 -1, !1006, !DIExpression(), !10024)
    #dbg_value(ptr %i.af, !966, !DIExpression(), !10025)
    #dbg_value(ptr undef, !960, !DIExpression(), !9979)
    #dbg_value(ptr poison, !961, !DIExpression(), !10026)
  %i.ai = icmp ne ptr %i.ac, %i.af, !dbg !10826
  call void @llvm.assume(i1 %i.ai), !dbg !10827
    #dbg_value(ptr undef, !988, !DIExpression(), !10027)
    #dbg_value(ptr %i.af, !1004, !DIExpression(), !10022)
    #dbg_value(ptr %i.af, !1010, !DIExpression(), !10024)
  %i.aj = getelementptr inbounds i8, ptr %.sroa.2.022.i.i.i, i64 -2, !dbg !10828 ; 3 uses
    #dbg_value(ptr %i.aj, !1004, !DIExpression(), !10022)
    #dbg_value(ptr %i.aj, !1010, !DIExpression(), !10024)
    #dbg_value(ptr %i.aj, !10532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9985)
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !10829, !noalias !10544, !noundef !556 ; 3 uses
    #dbg_value(i8 %i.ak, !976, !DIExpression(), !10028)
    #dbg_value(i8 %i.ak, !1000, !DIExpression(), !9991)
    #dbg_value(i8 %i.ak, !1015, !DIExpression(), !10030)
    #dbg_value(i8 %i.ak, !1012, !DIExpression(), !10032)
  %i.al = and i8 %i.ak, 31, !dbg !10830
  %i.am = zext nneg i8 %i.al to i32, !dbg !10830
    #dbg_value(i32 %i.am, !975, !DIExpression(), !10033)
    #dbg_value(i32 %i.am, !1013, !DIExpression(), !10035)
    #dbg_value(i32 %i.am, !1013, !DIExpression(), !10032)
    #dbg_value(i32 %i.am, !1013, !DIExpression(), !10020)
  %i.an = icmp slt i8 %i.ak, -64, !dbg !10831
  br i1 %i.an, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit32.i.i.i.i.i, label %bb.h, !dbg !10832

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = zext nneg i8 %i.ag to i32, !dbg !10833
  br label %bb.j, !dbg !10834

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit32.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit30.i.i.i.i.i
    #dbg_value(ptr undef, !964, !DIExpression(), !9976)
    #dbg_value(ptr undef, !993, !DIExpression(), !9975)
    #dbg_value(ptr undef, !981, !DIExpression(), !9974)
    #dbg_value(i64 1, !985, !DIExpression(), !9974)
    #dbg_value(i64 1, !1002, !DIExpression(), !10037)
    #dbg_value(i64 -1, !1006, !DIExpression(), !10039)
    #dbg_value(ptr %i.aj, !966, !DIExpression(), !10040)
    #dbg_value(ptr undef, !960, !DIExpression(), !9971)
    #dbg_value(ptr poison, !961, !DIExpression(), !10041)
  %i.ap = icmp ne ptr %i.ac, %i.aj, !dbg !10835
  call void @llvm.assume(i1 %i.ap), !dbg !10836
    #dbg_value(ptr undef, !988, !DIExpression(), !10042)
    #dbg_value(ptr %i.aj, !1004, !DIExpression(), !10037)
    #dbg_value(ptr %i.aj, !1010, !DIExpression(), !10039)
  %i.aq = getelementptr inbounds i8, ptr %.sroa.2.022.i.i.i, i64 -3, !dbg !10837 ; 3 uses
    #dbg_value(ptr %i.aq, !1004, !DIExpression(), !10037)
    #dbg_value(ptr %i.aq, !1010, !DIExpression(), !10039)
    #dbg_value(ptr %i.aq, !10532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9985)
  %i.ar = load i8, ptr %i.aq, align 1, !dbg !10838, !noalias !10544, !noundef !556 ; 3 uses
    #dbg_value(i8 %i.ar, !977, !DIExpression(), !10043)
    #dbg_value(i8 %i.ar, !1000, !DIExpression(), !9993)
    #dbg_value(i8 %i.ar, !1015, !DIExpression(), !10045)
    #dbg_value(i8 %i.ar, !1012, !DIExpression(), !10035)
  %i.as = and i8 %i.ar, 15, !dbg !10839
  %i.at = zext nneg i8 %i.as to i32, !dbg !10839
    #dbg_value(i32 %i.at, !975, !DIExpression(), !10033)
    #dbg_value(i32 %i.at, !1013, !DIExpression(), !10035)
    #dbg_value(i32 %i.at, !1013, !DIExpression(), !10032)
    #dbg_value(i32 %i.at, !1013, !DIExpression(), !10020)
  %i.au = icmp slt i8 %i.ar, -64, !dbg !10840
  br i1 %i.au, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit34.i.i.i.i.i, label %bb.i, !dbg !10841

bb.h:                                             ; preds = %bb.i, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit30.i.i.i.i.i
  %.sroa.2.1.i.i.i = phi ptr [ %.sroa.2.2.i.i.i, %bb.i ], [ %i.aj, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit30.i.i.i.i.i ], !dbg !10842
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.bl, %bb.i ], [ %i.am, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit30.i.i.i.i.i ], !dbg !10843
    #dbg_value(ptr %.sroa.2.1.i.i.i, !10532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9985)
    #dbg_value(i32 %.sroa.010.0.i.i.i.i.i, !1013, !DIExpression(), !10035)
    #dbg_value(i32 %.sroa.010.0.i.i.i.i.i, !975, !DIExpression(), !10033)
  %i.av = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6, !dbg !10844
  %i.aw = and i8 %i.ag, 63, !dbg !10845
  %i.ax = zext nneg i8 %i.aw to i32, !dbg !10845
  %i.ay = or disjoint i32 %i.av, %i.ax, !dbg !10844
    #dbg_value(i32 %i.ay, !975, !DIExpression(), !10033)
    #dbg_value(i32 %i.ay, !1013, !DIExpression(), !10035)
    #dbg_value(i32 %i.ay, !1013, !DIExpression(), !10032)
    #dbg_value(i32 %i.ay, !1013, !DIExpression(), !10020)
  br label %bb.j, !dbg !10846

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit34.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit32.i.i.i.i.i
    #dbg_value(ptr undef, !964, !DIExpression(), !9968)
    #dbg_value(ptr undef, !993, !DIExpression(), !9967)
    #dbg_value(ptr undef, !981, !DIExpression(), !9966)
    #dbg_value(i64 1, !985, !DIExpression(), !9966)
    #dbg_value(i64 1, !1002, !DIExpression(), !10050)
    #dbg_value(i64 -1, !1006, !DIExpression(), !10052)
    #dbg_value(ptr %i.aq, !966, !DIExpression(), !10053)
    #dbg_value(ptr undef, !960, !DIExpression(), !9963)
    #dbg_value(ptr poison, !961, !DIExpression(), !10054)
  %i.az = icmp ne ptr %i.ac, %i.aq, !dbg !10847
  call void @llvm.assume(i1 %i.az), !dbg !10848
    #dbg_value(ptr undef, !988, !DIExpression(), !10055)
    #dbg_value(ptr %i.aq, !1004, !DIExpression(), !10050)
    #dbg_value(ptr %i.aq, !1010, !DIExpression(), !10052)
  %i.ba = getelementptr inbounds i8, ptr %.sroa.2.022.i.i.i, i64 -4, !dbg !10849 ; 2 uses
    #dbg_value(ptr %i.ba, !1004, !DIExpression(), !10050)
    #dbg_value(ptr %i.ba, !1010, !DIExpression(), !10052)
    #dbg_value(ptr %i.ba, !10532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9985)
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !10850, !noalias !10544, !noundef !556
    #dbg_value(i8 %i.bb, !978, !DIExpression(), !10056)
    #dbg_value(i8 %i.bb, !1000, !DIExpression(), !9995)
  %i.bc = and i8 %i.bb, 7, !dbg !10851
  %i.bd = zext nneg i8 %i.bc to i32, !dbg !10851
    #dbg_value(i32 %i.bd, !975, !DIExpression(), !10033)
    #dbg_value(i32 %i.bd, !1013, !DIExpression(), !10035)
    #dbg_value(i32 %i.bd, !1013, !DIExpression(), !10032)
    #dbg_value(i32 %i.bd, !1013, !DIExpression(), !10020)
  %i.be = shl nuw nsw i32 %i.bd, 6, !dbg !10852
  %i.bf = and i8 %i.ar, 63, !dbg !10853
  %i.bg = zext nneg i8 %i.bf to i32, !dbg !10853
  %i.bh = or disjoint i32 %i.be, %i.bg, !dbg !10852
    #dbg_value(i32 %i.bh, !975, !DIExpression(), !10033)
    #dbg_value(i32 %i.bh, !1013, !DIExpression(), !10035)
    #dbg_value(i32 %i.bh, !1013, !DIExpression(), !10032)
    #dbg_value(i32 %i.bh, !1013, !DIExpression(), !10020)
  br label %bb.i, !dbg !10854

bb.i:                                             ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit34.i.i.i.i.i, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit32.i.i.i.i.i
  %.sroa.2.2.i.i.i = phi ptr [ %i.ba, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit34.i.i.i.i.i ], [ %i.aq, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit32.i.i.i.i.i ], !dbg !10855
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.bh, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit34.i.i.i.i.i ], [ %i.at, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit32.i.i.i.i.i ], !dbg !10856
    #dbg_value(ptr %.sroa.2.2.i.i.i, !10532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9985)
    #dbg_value(i32 %.sroa.010.1.i.i.i.i.i, !1013, !DIExpression(), !10035)
    #dbg_value(i32 %.sroa.010.1.i.i.i.i.i, !975, !DIExpression(), !10033)
  %i.bi = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6, !dbg !10857
  %i.bj = and i8 %i.ak, 63, !dbg !10858
  %i.bk = zext nneg i8 %i.bj to i32, !dbg !10858
  %i.bl = or disjoint i32 %i.bi, %i.bk, !dbg !10857
    #dbg_value(i32 %i.bl, !975, !DIExpression(), !10033)
    #dbg_value(i32 %i.bl, !1013, !DIExpression(), !10035)
    #dbg_value(i32 %i.bl, !1013, !DIExpression(), !10032)
    #dbg_value(i32 %i.bl, !1013, !DIExpression(), !10020)
  br label %bb.h, !dbg !10859

bb.j:                                             ; preds = %bb.h, %bb.g
  %.sroa.2.3.ph.i.i.i = phi ptr [ %.sroa.2.1.i.i.i, %bb.h ], [ %i.af, %bb.g ] ; 2 uses
  %spec.select.i.ph.i.i.i = phi i32 [ %i.ay, %bb.h ], [ %i.ao, %bb.g ] ; 80 uses
    #dbg_value(ptr %.sroa.2.3.ph.i.i.i, !10532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9985)
    #dbg_value(i32 %spec.select.i.ph.i.i.i, !10535, !DIExpression(), !10060)
    #dbg_value(ptr poison, !10546, !DIExpression(), !10065)
    #dbg_value(i64 poison, !10554, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10065)
    #dbg_value(i16 %.sroa.6.023.i.i.i, !10554, !DIExpression(DW_OP_LLVM_fragment, 64, 16), !10065)
    #dbg_value(i32 %spec.select.i.ph.i.i.i, !10549, !DIExpression(), !10065)
    #dbg_value(i64 poison, !10550, !DIExpression(), !10066)
    #dbg_value(i64 poison, !10556, !DIExpression(), !10069)
    #dbg_value(i16 %.sroa.6.023.i.i.i, !10551, !DIExpression(), !10066)
    #dbg_value(ptr poison, !10563, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !10077)
    #dbg_value(ptr poison, !10563, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !10081)
    #dbg_value(ptr poison, !10579, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !10082)
    #dbg_value(i16 %.sroa.6.023.i.i.i, !10575, !DIExpression(), !10083)
    #dbg_value(i32 %spec.select.i.ph.i.i.i, !10574, !DIExpression(), !10083)
    #dbg_value(ptr poison, !10567, !DIExpression(), !10084)
    #dbg_value(ptr poison, !10580, !DIExpression(), !10085)
    #dbg_value(ptr poison, !10567, !DIExpression(), !10086)
    #dbg_value(ptr poison, !10567, !DIExpression(), !10088)
    #dbg_value(i16 %.sroa.6.023.i.i.i, !10585, !DIExpression(), !10091)
  %.not.i.i.i.i.i = icmp sgt i16 %.sroa.6.023.i.i.i, -1, !dbg !10860
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.k, !dbg !10861

bb.k:                                             ; preds = %bb.j
    #dbg_value(i32 %spec.select.i.ph.i.i.i, !10590, !DIExpression(), !10099)
    #dbg_value(i32 %spec.select.i.ph.i.i.i, !10592, !DIExpression(), !10100)
  %i.bm = lshr i32 %spec.select.i.ph.i.i.i, 10, !dbg !10862
    #dbg_value(i32 %i.bm, !10593, !DIExpression(), !10101)
  switch i32 %i.bm, label %_RNvNtCs5Tjqocmbzhi_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i.i.i.i [
    i32 0, label %_RNvNtCs5Tjqocmbzhi_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i.i.i
    i32 8, label %bb.l
    i32 9, label %bb.m
    i32 10, label %bb.n
    i32 12, label %bb.o
    i32 124, label %bb.p
    i32 125, label %bb.q
  ], !dbg !10863

bb.l:                                             ; preds = %bb.k
    #dbg_value(i64 1, !10594, !DIExpression(), !10102)
  br label %_RNvNtCs5Tjqocmbzhi_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i.i.i, !dbg !10864

bb.m:                                             ; preds = %bb.k
    #dbg_value(i64 2, !10594, !DIExpression(), !10102)
  br label %_RNvNtCs5Tjqocmbzhi_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i.i.i, !dbg !10865

bb.n:                                             ; preds = %bb.k
    #dbg_value(i64 3, !10594, !DIExpression(), !10102)
  br label %_RNvNtCs5Tjqocmbzhi_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i.i.i, !dbg !10866

bb.o:                                             ; preds = %bb.k
    #dbg_value(i64 4, !10594, !DIExpression(), !10102)
  br label %_RNvNtCs5Tjqocmbzhi_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i.i.i, !dbg !10867

bb.p:                                             ; preds = %bb.k
    #dbg_value(i64 5, !10594, !DIExpression(), !10102)
  br label %_RNvNtCs5Tjqocmbzhi_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i.i.i, !dbg !10868

bb.q:                                             ; preds = %bb.k
    #dbg_value(i64 6, !10594, !DIExpression(), !10102)
  br label %_RNvNtCs5Tjqocmbzhi_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i.i.i, !dbg !10869

_RNvNtCs5Tjqocmbzhi_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ 6, %bb.q ], [ 1, %bb.l ], [ 2, %bb.m ], [ 3, %bb.n ], [ 4, %bb.o ], [ 5, %bb.p ], [ 0, %bb.k ], !dbg !10870
    #dbg_value(i64 %.sroa.01.0.i.i.i.i.i.i, !10594, !DIExpression(), !10102)
  %i.bn = lshr i32 %spec.select.i.ph.i.i.i, 3, !dbg !10871
  %i.bo = and i32 %i.bn, 127, !dbg !10871
    #dbg_value(i32 %i.bo, !10598, !DIExpression(), !10109)
  %i.bp = zext nneg i32 %i.bo to i64, !dbg !10872
    #dbg_value(i64 %i.bp, !10595, !DIExpression(), !10110)
  %i.bq = getelementptr inbounds nuw [128 x i8], ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables25EMOJI_PRESENTATION_LEAVES, i64 %.sroa.01.0.i.i.i.i.i.i, !dbg !10873
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp, !dbg !10873
  %i.bs = load i8, ptr %i.br, align 1, !dbg !10873, !noalias !10615, !noundef !556
    #dbg_value(i8 %i.bs, !10596, !DIExpression(), !10111)
  %i.bt = trunc i32 %spec.select.i.ph.i.i.i to i8, !dbg !10874
  %i.bu = and i8 %i.bt, 7, !dbg !10874
  %i.bv = lshr i8 %i.bs, %i.bu, !dbg !10874
  %i.bw = trunc i8 %i.bv to i1, !dbg !10875
  br i1 %i.bw, label %bb.s, label %_RNvNtCs5Tjqocmbzhi_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i.i.i.i, !dbg !10876

bb.r:                                             ; preds = %bb.t, %bb.j
  %.sroa.0.0.i.i.i.i.i = phi i16 [ %i.cb, %bb.t ], [ %.sroa.6.023.i.i.i, %bb.j ] ; 13 uses
    #dbg_value(i16 %.sroa.0.0.i.i.i.i.i, !10575, !DIExpression(), !10083)
  %i.bx = icmp samesign ult i32 %spec.select.i.ph.i.i.i, 161, !dbg !10877
  br i1 %i.bx, label %bb.w, label %bb.v, !dbg !10877

_RNvNtCs5Tjqocmbzhi_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i.i.i.i: ; preds = %_RNvNtCs5Tjqocmbzhi_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i.i.i, %bb.k
    #dbg_value(i16 %.sroa.6.023.i.i.i, !10616, !DIExpression(), !10114)
  %i.by = and i16 %.sroa.6.023.i.i.i, 8192, !dbg !10878
  %.not99.i.i.i.i.i = icmp eq i16 %i.by, 0, !dbg !10878
  br i1 %.not99.i.i.i.i.i, label %bb.u, label %bb.t, !dbg !10878

bb.s:                                             ; preds = %_RNvNtCs5Tjqocmbzhi_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i.i.i.i
    #dbg_value(i16 %.sroa.6.023.i.i.i, !10621, !DIExpression(), !10117)
  %i.bz = and i16 %.sroa.6.023.i.i.i, -20480, !dbg !10879
  %i.ca = icmp eq i16 %i.bz, -28672, !dbg !10879
  %..i.i.i.i.i = select i1 %i.ca, i8 0, i8 2, !dbg !10880
  br label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, !dbg !10881

bb.t:                                             ; preds = %_RNvNtCs5Tjqocmbzhi_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i.i.i.i
  %i.cb = and i16 %.sroa.6.023.i.i.i, 32767, !dbg !10882
    #dbg_value(i16 %i.cb, !10575, !DIExpression(), !10083)
  br label %bb.r, !dbg !10883

bb.u:                                             ; preds = %_RNvNtCs5Tjqocmbzhi_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i.i.i.i
    #dbg_value(i16 0, !10575, !DIExpression(), !10083)
  %i.cc = icmp samesign ult i32 %spec.select.i.ph.i.i.i, 161, !dbg !10877
  br i1 %i.cc, label %bb.cu, label %.thread139.i.i.i.i.i, !dbg !10877

bb.v:                                             ; preds = %bb.r
    #dbg_value(ptr undef, !10579, !DIExpression(), !10082)
    #dbg_value(ptr undef, !10563, !DIExpression(), !10081)
  %.not100.i.i.i.i.i = icmp eq i16 %.sroa.0.0.i.i.i.i.i, 0, !dbg !10884
  br i1 %.not100.i.i.i.i.i, label %.thread139.i.i.i.i.i, label %bb.x, !dbg !10885

bb.w:                                             ; preds = %bb.r
  %trunc.i.i.i.i.i = trunc nuw i32 %spec.select.i.ph.i.i.i to i8, !dbg !10886
  switch i8 %trunc.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i [
    i8 10, label %bb.cs
    i8 13, label %bb.ct
  ], !dbg !10886

.thread139.i.i.i.i.i:                             ; preds = %bb.cn, %bb.cr, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %.thread155.i.i.i.i.i, %bb.cg, %bb.bs, %bb.bc, %bb.bc, %bb.bc, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.v, %bb.u
  %spec.select.i19.i.i.i = phi i32 [ %spec.select.i.ph.i.i.i, %bb.cr ], [ %spec.select.i.ph.i.i.i, %bb.cn ], [ %spec.select.i.ph.i.i.i, %bb.cm ], [ 127988, %bb.cl ], [ %spec.select.i.ph.i.i.i, %bb.ck ], [ %spec.select.i.ph.i.i.i, %bb.cj ], [ %spec.select.i.ph.i.i.i, %bb.ci ], [ %spec.select.i.ph.i.i.i, %.thread155.i.i.i.i.i ], [ %spec.select.i.ph.i.i.i, %bb.cg ], [ %spec.select.i.ph.i.i.i, %bb.bs ], [ 11647, %bb.bc ], [ 11647, %bb.bc ], [ 11647, %bb.bc ], [ %spec.select.i.ph.i.i.i, %bb.az ], [ %spec.select.i.ph.i.i.i, %bb.ay ], [ %spec.select.i.ph.i.i.i, %bb.ax ], [ %spec.select.i.ph.i.i.i, %bb.aw ], [ %spec.select.i.ph.i.i.i, %bb.v ], [ %spec.select.i.ph.i.i.i, %bb.u ]
  %i.cd = call fastcc { i8, i16 } @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables12lookup_width(i32 noundef range(i32 0, 1114112) %spec.select.i19.i.i.i) #18, !dbg !10887, !noalias !10429 ; 2 uses
  %i.ce = extractvalue { i8, i16 } %i.cd, 0, !dbg !10887
  %i.cf = extractvalue { i8, i16 } %i.cd, 1, !dbg !10887
  br label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, !dbg !10888

bb.x:                                             ; preds = %bb.v
  switch i32 %spec.select.i.ph.i.i.i, label %bb.ab [
    i32 65039, label %bb.y
    i32 65025, label %bb.z
    i32 65038, label %bb.aa
  ], !dbg !10889

bb.y:                                             ; preds = %bb.x
    #dbg_value(i16 %.sroa.0.0.i.i.i.i.i, !10625, !DIExpression(), !10120)
  %i.cg = and i16 %.sroa.0.0.i.i.i.i.i, 12288, !dbg !10890
  %or.cond27.not.i.i.i.i.i = icmp eq i16 %i.cg, 0, !dbg !10890
  %i.ch = or disjoint i16 %.sroa.0.0.i.i.i.i.i, -32768, !dbg !10890
  %.sroa.050.0.i.i.i.i.i = select i1 %or.cond27.not.i.i.i.i.i, i16 -32768, i16 %i.ch, !dbg !10890
  br label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, !dbg !10881

bb.z:                                             ; preds = %bb.x
    #dbg_value(i16 %.sroa.0.0.i.i.i.i.i, !10628, !DIExpression(), !10123)
  %i.ci = and i16 %.sroa.0.0.i.i.i.i.i, 8192, !dbg !10891
  %.not102.i.i.i.i.i = icmp eq i16 %i.ci, 0, !dbg !10891
  %i.cj = or i16 %.sroa.0.0.i.i.i.i.i, 512, !dbg !10891
  %.sroa.051.0.i.i.i.i.i = select i1 %.not102.i.i.i.i.i, i16 512, i16 %i.cj, !dbg !10891
  br label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, !dbg !10881

bb.aa:                                            ; preds = %bb.x
    #dbg_value(i16 %.sroa.0.0.i.i.i.i.i, !10631, !DIExpression(), !10126)
  %i.ck = and i16 %.sroa.0.0.i.i.i.i.i, 8192, !dbg !10892
  %.not101.i.i.i.i.i = icmp eq i16 %i.ck, 0, !dbg !10892
  %i.cl = or i16 %.sroa.0.0.i.i.i.i.i, 16384, !dbg !10892
  %.sroa.052.0.i.i.i.i.i = select i1 %.not101.i.i.i.i.i, i16 16384, i16 %i.cl, !dbg !10892
  br label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, !dbg !10881

bb.ab:                                            ; preds = %bb.x
    #dbg_value(i16 %.sroa.0.0.i.i.i.i.i, !10634, !DIExpression(), !10129)
  %.not103.i.i.i.i.i = icmp samesign ult i16 %.sroa.0.0.i.i.i.i.i, 16384, !dbg !10893
  br i1 %.not103.i.i.i.i.i, label %bb.ac, label %bb.ad, !dbg !10894

bb.ac:                                            ; preds = %bb.ab
    #dbg_value(i16 %.sroa.0.0.i.i.i.i.i, !10637, !DIExpression(), !10132)
  %i.cm = and i16 %.sroa.0.0.i.i.i.i.i, 512, !dbg !10895
  %.not104.i.i.i.i.i = icmp eq i16 %i.cm, 0, !dbg !10895
  br i1 %.not104.i.i.i.i.i, label %bb.ap, label %bb.an, !dbg !10896

bb.ad:                                            ; preds = %bb.ab
    #dbg_value(ptr poison, !10640, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !10149)
    #dbg_value(i32 %spec.select.i.ph.i.i.i, !10657, !DIExpression(), !10150)
    #dbg_value(i32 %spec.select.i.ph.i.i.i, !10658, !DIExpression(), !10151)
  %i.cn = lshr i32 %spec.select.i.ph.i.i.i, 8, !dbg !10897
    #dbg_value(i32 %i.cn, !10659, !DIExpression(), !10152)
  switch i32 %i.cn, label %_RNvNtCs5Tjqocmbzhi_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i.i.i.i [
    i32 35, label %bb.am
    i32 37, label %.thread.i.i.i.i.i.i
    i32 38, label %bb.ae
    i32 39, label %bb.af
    i32 43, label %bb.ag
    i32 496, label %bb.ah
    i32 499, label %bb.ai
    i32 500, label %bb.aj
    i32 501, label %bb.ak
    i32 502, label %bb.al
  ], !dbg !10898

bb.ae:                                            ; preds = %bb.ad
    #dbg_value(ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables24TEXT_PRESENTATION_LEAF_2, !10660, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10153)
    #dbg_value(i64 15, !10660, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10153)
  br label %bb.am, !dbg !10899

bb.af:                                            ; preds = %bb.ad
    #dbg_value(ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables24TEXT_PRESENTATION_LEAF_3, !10660, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10153)
    #dbg_value(i64 10, !10660, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10153)
  br label %bb.am, !dbg !10900

bb.ag:                                            ; preds = %bb.ad
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB5_7BackendNtNtNtB9_8terminal9crossterm18CrosstermKeyReaderNtBW_17CrosstermTerminalENtB5_13SelectBackend20render_select_promptCsjfnSKV9Rz3v_3h3i:bb.a
    #dbg_value(ptr %.sroa.01.0.i117.i.i.i.i.i, !10666, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10160)
    #dbg_value(ptr %.sroa.01.0.i117.i.i.i.i.i, !10663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10162)
    #dbg_value(ptr %.sroa.01.0.i117.i.i.i.i.i, !10666, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10164)
    #dbg_value(i64 %.sroa.11.0.i.i.i.i.i.i, !10646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10149)
    #dbg_value(i64 %.sroa.11.0.i.i.i.i.i.i, !10663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10157)
    #dbg_value(i64 %.sroa.11.0.i.i.i.i.i.i, !10666, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10160)
    #dbg_value(i64 %.sroa.11.0.i.i.i.i.i.i, !10663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10162)
    #dbg_value(i64 %.sroa.11.0.i.i.i.i.i.i, !10666, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10164)
    #dbg_value(i64 %.sroa.11.0.i.i.i.i.i.i, !10647, !DIExpression(), !10165)
    #dbg_value(i64 0, !10648, !DIExpression(), !10166)
  br label %.lr.ph.i.i.i.i.i.i.i, !dbg !10908

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  %i.cq = phi i8 [ %i.co, %.thread.i.i.i.i.i.i ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.01.08.i.i.i.i.i.i = phi ptr [ %.sroa.01.0.ph.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %.sroa.01.0.i117.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.05.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %.thread.i.i.i.i.i.i ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i ], !dbg !10910
    #dbg_value(i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i, !10664, !DIExpression(), !10162)
    #dbg_value(i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i, !10667, !DIExpression(), !10164)
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.08.i.i.i.i.i.i, i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i, !dbg !10911 ; 2 uses
  %.val27.i.i.i.i.i.i.i = load i8, ptr %i.cr, align 1, !dbg !10912, !alias.scope !10670, !noalias !10615, !noundef !556
  %i.cs = getelementptr i8, ptr %i.cr, i64 1, !dbg !10912
  %.val28.i.i.i.i.i.i.i = load i8, ptr %i.cs, align 1, !dbg !10912, !alias.scope !10670, !noalias !10615
    #dbg_value(ptr poison, !10671, !DIExpression(DW_OP_deref, DW_OP_deref), !10172)
    #dbg_value(ptr poison, !10677, !DIExpression(), !10172)
    #dbg_value(i8 %.val27.i.i.i.i.i.i.i, !10675, !DIExpression(), !10173)
    #dbg_value(i8 poison, !10676, !DIExpression(), !10173)
  %.not46 = icmp ult i8 %i.cq, %.val27.i.i.i.i.i.i.i, !dbg !10913
  %i.ct = icmp ugt i8 %i.cq, %.val28.i.i.i.i.i.i.i, !dbg !10913
    #dbg_value(i8 poison, !10652, !DIExpression(), !10174)
  %i.cu = select i1 %.not46, i1 true, i1 %i.ct, !dbg !10914
  br i1 %i.cu, label %_RNvNtCs5Tjqocmbzhi_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, !dbg !10914

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.am
  %.sroa.01.032.i.i.i.i.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.11.0.i.i.i.i.i.i, %bb.am ] ; 2 uses
  %.sroa.05.031.i.i.i.i.i.i.i = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.am ] ; 2 uses
    #dbg_value(i64 %.sroa.01.032.i.i.i.i.i.i.i, !10647, !DIExpression(), !10165)
    #dbg_value(i64 %.sroa.05.031.i.i.i.i.i.i.i, !10648, !DIExpression(), !10166)
  %i.cv = lshr i64 %.sroa.01.032.i.i.i.i.i.i.i, 1, !dbg !10915 ; 2 uses
    #dbg_value(i64 %i.cv, !10649, !DIExpression(), !10175)
  %i.cw = add nuw nsw i64 %i.cv, %.sroa.05.031.i.i.i.i.i.i.i, !dbg !10916 ; 3 uses
    #dbg_value(i64 %i.cw, !10650, !DIExpression(), !10176)
    #dbg_value(i64 %i.cw, !10664, !DIExpression(), !10157)
    #dbg_value(i64 %i.cw, !10667, !DIExpression(), !10160)
  %i.cx = icmp ult i64 %i.cw, %.sroa.11.0.i.i.i.i.i.i, !dbg !10917
  call void @llvm.assume(i1 %i.cx), !dbg !10918
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i117.i.i.i.i.i, i64 %i.cw, !dbg !10919
  %.val24.i.i.i.i.i.i.i = load i8, ptr %i.cy, align 1, !dbg !10920, !alias.scope !10670, !noalias !10615, !noundef !556
    #dbg_value(ptr poison, !10671, !DIExpression(DW_OP_deref, DW_OP_deref), !10178)
    #dbg_value(ptr poison, !10677, !DIExpression(), !10178)
    #dbg_value(i8 %.val24.i.i.i.i.i.i.i, !10675, !DIExpression(), !10179)
    #dbg_value(i8 poison, !10676, !DIExpression(), !10179)
  %i.cz = icmp ugt i8 %.val24.i.i.i.i.i.i.i, %i.cp, !dbg !10921
    #dbg_value(i8 poison, !10651, !DIExpression(), !10180)
    #dbg_value(i1 %i.cz, !928, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10182)
    #dbg_value(i64 %.sroa.05.031.i.i.i.i.i.i.i, !931, !DIExpression(), !10182)
    #dbg_value(i64 %i.cw, !932, !DIExpression(), !10182)
    #dbg_value(i64 %.sroa.05.031.i.i.i.i.i.i.i, !933, !DIExpression(), !10183)
    #dbg_value(i64 %i.cw, !934, !DIExpression(), !10184)
    #dbg_value(ptr undef, !936, !DIExpression(), !10185)
    #dbg_value(ptr undef, !937, !DIExpression(), !10186)
    #dbg_value(ptr poison, !938, !DIExpression(), !10187)
    #dbg_value(ptr poison, !939, !DIExpression(), !10188)
    #dbg_value(ptr poison, !940, !DIExpression(), !10189)
  %i.da = select i1 %i.cz, i64 %.sroa.05.031.i.i.i.i.i.i.i, i64 %i.cw, !dbg !10922, !unpredictable !556 ; 2 uses
    #dbg_value(i64 %i.da, !10648, !DIExpression(), !10166)
  %i.db = sub nuw nsw i64 %.sroa.01.032.i.i.i.i.i.i.i, %i.cv, !dbg !10923 ; 2 uses
    #dbg_value(i64 %i.db, !10647, !DIExpression(), !10165)
  %i.dc = icmp ugt i64 %i.db, 1, !dbg !10908
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !dbg !10908

bb.an:                                            ; preds = %bb.ac
  %switch.tableidx = add i32 %spec.select.i.ph.i.i.i, -8216, !dbg !10924 ; 2 uses
  %i.dd = icmp ult i32 %switch.tableidx, 6, !dbg !10924
  %switch.maskindex = trunc i32 %switch.tableidx to i8, !dbg !10924
  %switch.shifted = lshr i8 51, %switch.maskindex, !dbg !10924
  %switch.lobit = trunc i8 %switch.shifted to i1, !dbg !10924
  %or.cond = select i1 %i.dd, i1 %switch.lobit, i1 false, !dbg !10924
  br i1 %or.cond, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.ao, !dbg !10924

bb.ao:                                            ; preds = %bb.an
    #dbg_value(i16 %.sroa.0.0.i.i.i.i.i, !10679, !DIExpression(), !10192)
  %i.de = and i16 %.sroa.0.0.i.i.i.i.i, 15871, !dbg !10925
    #dbg_value(i16 %i.de, !10575, !DIExpression(), !10083)
  br label %bb.ap, !dbg !10926

bb.ap:                                            ; preds = %_RNvNtCs5Tjqocmbzhi_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i.i.i.i, %bb.ao, %bb.ac
  %.sroa.0.1.i.i.i.i.i = phi i16 [ %i.dg, %_RNvNtCs5Tjqocmbzhi_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i.i.i.i ], [ %i.de, %bb.ao ], [ %.sroa.0.0.i.i.i.i.i, %bb.ac ], !dbg !10927 ; 17 uses
    #dbg_value(i16 %.sroa.0.1.i.i.i.i.i, !10575, !DIExpression(), !10083)
    #dbg_value(i16 %.sroa.0.1.i.i.i.i.i, !10682, !DIExpression(), !10195)
  %i.df = and i16 %.sroa.0.1.i.i.i.i.i, 2048, !dbg !10928
  %.not105.i.i.i.i.i = icmp eq i16 %i.df, 0, !dbg !10928
  br i1 %.not105.i.i.i.i.i, label %bb.ar, label %bb.aq, !dbg !10929

_RNvNtCs5Tjqocmbzhi_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.ad
    #dbg_value(i16 %.sroa.0.0.i.i.i.i.i, !10685, !DIExpression(), !10198)
  %i.dg = and i16 %.sroa.0.0.i.i.i.i.i, 16383, !dbg !10930
    #dbg_value(i16 %i.dg, !10575, !DIExpression(), !10083)
  br label %bb.ap, !dbg !10931

bb.aq:                                            ; preds = %bb.ap
  switch i32 %spec.select.i.ph.i.i.i, label %bb.at [
    i32 8205, label %bb.as
    i32 847, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i32 6159, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
  ], !dbg !10932

bb.ar:                                            ; preds = %bb.at, %bb.ap
  switch i16 %.sroa.0.1.i.i.i.i.i, label %bb.au [
    i16 12543, label %bb.av
    i16 15360, label %bb.aw
    i16 15367, label %bb.ax
    i16 15361, label %bb.ay
    i16 15362, label %bb.az
  ], !dbg !10933

bb.as:                                            ; preds = %bb.aq
    #dbg_value(i16 %.sroa.0.1.i.i.i.i.i, !10688, !DIExpression(), !10201)
  %i.dh = or i16 %.sroa.0.1.i.i.i.i.i, 1024, !dbg !10934
  br label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, !dbg !10935

bb.at:                                            ; preds = %bb.aq
  %i.di = and i32 %spec.select.i.ph.i.i.i, 2097150, !dbg !10936
  %or.cond.i.i.i.i = icmp eq i32 %i.di, 6068, !dbg !10936
  %i.dj = add nsw i32 %spec.select.i.ph.i.i.i, -6155
  %or.cond1.i.i.i.i = icmp ult i32 %i.dj, 3
  %or.cond4.i.i.i.i = select i1 %or.cond.i.i.i.i, i1 true, i1 %or.cond1.i.i.i.i, !dbg !10936
  %i.dk = and i32 %spec.select.i.ph.i.i.i, 2097136
  %or.cond2.i.i.i.i = icmp eq i32 %i.dk, 65024
  %or.cond5.i.i.i.i = or i1 %or.cond2.i.i.i.i, %or.cond4.i.i.i.i, !dbg !10936
  %i.dl = add nsw i32 %spec.select.i.ph.i.i.i, -917760
  %spec.select.i11.i.i.i = icmp ult i32 %i.dl, 240
  %or.cond.i.i.i = select i1 %or.cond5.i.i.i.i, i1 true, i1 %spec.select.i11.i.i.i, !dbg !10936
  br i1 %or.cond.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.ar, !dbg !10936

bb.au:                                            ; preds = %bb.bb, %bb.ar
  %i.dm = icmp eq i32 %spec.select.i.ph.i.i.i, 11647, !dbg !10933
  br i1 %i.dm, label %bb.bc, label %bb.bd, !dbg !10933

bb.av:                                            ; preds = %bb.ar
  switch i32 %spec.select.i.ph.i.i.i, label %bb.ba [
    i32 1604, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i32 1898, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i32 2214, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i32 2247, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
  ], !dbg !10933

bb.aw:                                            ; preds = %bb.ar
  switch i32 %spec.select.i.ph.i.i.i, label %.thread123.i.i.i.i.i [
    i32 1488, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i32 11647, label %.thread139.i.i.i.i.i
  ], !dbg !10933

bb.ax:                                            ; preds = %bb.ar
  switch i32 %spec.select.i.ph.i.i.i, label %.thread123.i.i.i.i.i [
    i32 6098, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i32 11647, label %.thread139.i.i.i.i.i
  ], !dbg !10933

bb.ay:                                            ; preds = %bb.ar
  switch i32 %spec.select.i.ph.i.i.i, label %.thread123.i.i.i.i.i [
    i32 6679, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i32 11647, label %.thread139.i.i.i.i.i
  ], !dbg !10933

bb.az:                                            ; preds = %bb.ar
  switch i32 %spec.select.i.ph.i.i.i, label %.thread123.i.i.i.i.i [
    i32 6677, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i32 11647, label %.thread139.i.i.i.i.i
  ], !dbg !10933

bb.ba:                                            ; preds = %bb.av
  %i.dn = add nsw i32 %spec.select.i.ph.i.i.i, -1717, !dbg !10937
  %or.cond.i.i.i.i.i = icmp ult i32 %i.dn, 4, !dbg !10937
  br i1 %or.cond.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.bb, !dbg !10937

bb.bb:                                            ; preds = %bb.ba
  %i.do = call noundef zeroext i1 @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables25is_transparent_zero_width(i32 noundef range(i32 0, 1114112) %spec.select.i.ph.i.i.i), !dbg !10938, !noalias !10429
  br i1 %i.do, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.au, !dbg !10938

bb.bc:                                            ; preds = %bb.au
  switch i16 %.sroa.0.1.i.i.i.i.i, label %.thread136.i.i.i.i.i [
    i16 14339, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 15363, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 2, label %bb.bg
    i16 15364, label %.thread139.i.i.i.i.i
    i16 15365, label %.thread139.i.i.i.i.i
    i16 15366, label %.thread139.i.i.i.i.i
  ], !dbg !10933

bb.bd:                                            ; preds = %bb.au
  switch i16 %.sroa.0.1.i.i.i.i.i, label %.thread123.i.i.i.i.i [
    i16 15363, label %bb.bh
    i16 15364, label %bb.bi
    i16 15365, label %bb.be
    i16 15366, label %bb.bj
    i16 2, label %bb.bg
  ], !dbg !10933

.thread123.i.i.i.i.i:                             ; preds = %bb.bd, %bb.az, %bb.ay, %bb.ax, %bb.aw
  %i.dp = icmp samesign ugt i32 %spec.select.i.ph.i.i.i, 127461, !dbg !10939
  %i.dq = zext i1 %i.dp to i8, !dbg !10939        ; 4 uses
  %i.dr = add nsw i32 %spec.select.i.ph.i.i.i, -127462, !dbg !10939
  %or.cond109.i.i.i.i.i = icmp ult i32 %i.dr, 26, !dbg !10939
  br i1 %or.cond109.i.i.i.i.i, label %bb.bm, label %bb.bp, !dbg !10939

bb.be:                                            ; preds = %bb.bd
  %i.ds = and i32 %spec.select.i.ph.i.i.i, 2097148, !dbg !10940
  %or.cond6.i.i.i.i.i = icmp eq i32 %i.ds, 42232, !dbg !10940
  br i1 %or.cond6.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.bf, !dbg !10940

bb.bf:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.be
  %i.dt = icmp samesign ugt i32 %spec.select.i.ph.i.i.i, 127461, !dbg !10939
  %i.du = zext i1 %i.dt to i8, !dbg !10939        ; 2 uses
  %i.dv = add nsw i32 %spec.select.i.ph.i.i.i, -127462, !dbg !10939
  %or.cond107.i.i.i.i.i = icmp ult i32 %i.dv, 26, !dbg !10939
  br i1 %or.cond107.i.i.i.i.i, label %bb.bm, label %.thread130.i.i.i.i.i, !dbg !10939

bb.bg:                                            ; preds = %bb.bd, %bb.bc
  %i.dw = call fastcc noundef zeroext i1 @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables22is_emoji_modifier_base(i32 noundef range(i32 0, 1114112) %spec.select.i.ph.i.i.i) #18, !dbg !10941, !noalias !10429
  br i1 %i.dw, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.bo, !dbg !10941

bb.bh:                                            ; preds = %bb.bd
  %i.dx = icmp samesign ugt i32 %spec.select.i.ph.i.i.i, 11568, !dbg !10942
  br i1 %i.dx, label %bb.bk, label %.thread130.i.i.i.i.i, !dbg !10942

bb.bi:                                            ; preds = %bb.bd
  %i.dy = icmp samesign ugt i32 %spec.select.i.ph.i.i.i, 11568, !dbg !10943
  br i1 %i.dy, label %bb.bl, label %.thread130.i.i.i.i.i, !dbg !10943

bb.bj:                                            ; preds = %bb.bd
  %i.dz = icmp eq i32 %spec.select.i.ph.i.i.i, 68658, !dbg !10933
  br i1 %i.dz, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.bf, !dbg !10933

bb.bk:                                            ; preds = %bb.bh
  %i.ea = icmp samesign ult i32 %spec.select.i.ph.i.i.i, 11622, !dbg !10942
  %i.eb = icmp eq i32 %spec.select.i.ph.i.i.i, 11631
  %or.cond2.i.i.i.i.i = or i1 %i.ea, %i.eb, !dbg !10942
  br i1 %or.cond2.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.bf, !dbg !10942

bb.bl:                                            ; preds = %bb.bi
  %i.ec = icmp samesign ult i32 %spec.select.i.ph.i.i.i, 11622, !dbg !10943
  %i.ed = icmp eq i32 %spec.select.i.ph.i.i.i, 11631
  %or.cond4.i.i.i.i.i = or i1 %i.ec, %i.ed, !dbg !10943
  br i1 %or.cond4.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.bf, !dbg !10943

.thread130.i.i.i.i.i:                             ; preds = %bb.bi, %bb.bh, %bb.bf
  %i.ee = phi i8 [ %i.du, %bb.bf ], [ 0, %bb.bh ], [ 0, %bb.bi ] ; 2 uses
  %cond1.i.i.i.i.i = icmp eq i32 %spec.select.i.ph.i.i.i, 8205, !dbg !10933
  br i1 %cond1.i.i.i.i.i, label %bb.bn, label %.thread132.i.i.i.i.i, !dbg !10933

bb.bm:                                            ; preds = %bb.bf, %.thread123.i.i.i.i.i
  %.sroa.059.0.i.i.i.i.i = phi i8 [ %i.dq, %.thread123.i.i.i.i.i ], [ %i.du, %bb.bf ], !dbg !10939 ; 2 uses
  switch i16 %.sroa.0.1.i.i.i.i.i, label %.thread132.i.i.i.i.i [
    i16 3, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 4, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 4102, label %bb.br
  ], !dbg !10933

.thread136.i.i.i.i.i:                             ; preds = %bb.bp, %bb.bc
  %.sroa.059.1.i.i.i.i.i = phi i8 [ %i.dq, %bb.bp ], [ 0, %bb.bc ], !dbg !10939 ; 2 uses
  %cond143.i.i.i.i.i = icmp eq i16 %.sroa.0.1.i.i.i.i.i, 4102, !dbg !10933
  br i1 %cond143.i.i.i.i.i, label %bb.br, label %.thread132.i.i.i.i.i, !dbg !10933

bb.bn:                                            ; preds = %bb.bp, %.thread130.i.i.i.i.i
  %.sroa.059.2.i.i.i.i.i = phi i8 [ %i.dq, %bb.bp ], [ %i.ee, %.thread130.i.i.i.i.i ], !dbg !10939 ; 2 uses
  switch i16 %.sroa.0.1.i.i.i.i.i, label %.thread132.i.i.i.i.i [
    i16 5, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 4, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 10, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 11, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 2, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 4102, label %bb.br
  ], !dbg !10933

bb.bo:                                            ; preds = %bb.bg
  %i.ef = icmp samesign ugt i32 %spec.select.i.ph.i.i.i, 127461, !dbg !10939
  %i.eg = zext i1 %i.ef to i8, !dbg !10939
  %cond.i.i.i.i.i = icmp eq i32 %spec.select.i.ph.i.i.i, 8205
  br i1 %cond.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %.thread132.i.i.i.i.i, !dbg !10939

bb.bp:                                            ; preds = %.thread123.i.i.i.i.i
  switch i32 %spec.select.i.ph.i.i.i, label %.thread136.i.i.i.i.i [
    i32 8205, label %bb.bn
    i32 8419, label %bb.bq
  ], !dbg !10933

bb.bq:                                            ; preds = %bb.bp
  %cond144.i.i.i.i.i = icmp eq i16 %.sroa.0.1.i.i.i.i.i, 4102, !dbg !10933
  br i1 %cond144.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %.thread132.i.i.i.i.i, !dbg !10933

.thread132.i.i.i.i.i:                             ; preds = %bb.bq, %bb.bo, %bb.bn, %.thread136.i.i.i.i.i, %bb.bm, %.thread130.i.i.i.i.i
  %.sroa.059.3.i.i.i.i.i = phi i8 [ %.sroa.059.0.i.i.i.i.i, %bb.bm ], [ %i.eg, %bb.bo ], [ %i.dq, %bb.bq ], [ %.sroa.059.1.i.i.i.i.i, %.thread136.i.i.i.i.i ], [ %.sroa.059.2.i.i.i.i.i, %bb.bn ], [ %i.ee, %.thread130.i.i.i.i.i ], !dbg !10939
  %i.eh = trunc nuw i8 %.sroa.059.3.i.i.i.i.i to i1, !dbg !10944
  %i.ei = icmp samesign ult i32 %spec.select.i.ph.i.i.i, 127488, !dbg !10944
  %or.cond10.i.i.i.i.i = and i1 %i.ei, %i.eh, !dbg !10944
  br i1 %or.cond10.i.i.i.i.i, label %bb.bs, label %.thread132.thread.i.i.i.i.i, !dbg !10944

bb.br:                                            ; preds = %bb.bn, %.thread136.i.i.i.i.i, %bb.bm
  %.sroa.059.6.i.i.i.i.i = phi i8 [ %.sroa.059.0.i.i.i.i.i, %bb.bm ], [ %.sroa.059.1.i.i.i.i.i, %.thread136.i.i.i.i.i ], [ %.sroa.059.2.i.i.i.i.i, %bb.bn ], !dbg !10939
  %i.ej = trunc nuw i8 %.sroa.059.6.i.i.i.i.i to i1, !dbg !10945
  %i.ek = icmp samesign ult i32 %spec.select.i.ph.i.i.i, 127488, !dbg !10945
  %or.cond29.i.i.i.i.i = and i1 %i.ek, %i.ej, !dbg !10945
  br i1 %or.cond29.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %.thread137.i.i.i.i.i, !dbg !10945

.thread132.thread.i.i.i.i.i:                      ; preds = %.thread132.i.i.i.i.i
  switch i16 %.sroa.0.1.i.i.i.i.i, label %bb.bt [
    i16 4102, label %.thread137.i.i.i.i.i
    i16 16, label %bb.bu
    i16 25, label %bb.bv
    i16 26, label %bb.bw
    i16 27, label %bb.bx
    i16 28, label %bb.by
    i16 29, label %bb.bz
  ], !dbg !10933

bb.bs:                                            ; preds = %.thread132.i.i.i.i.i
  switch i16 %.sroa.0.1.i.i.i.i.i, label %.thread139.i.i.i.i.i [
    i16 9, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 11, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 10, label %bb.cq
    i16 4102, label %bb.cm
    i16 32, label %bb.cn
    i16 33, label %bb.cr
  ], !dbg !10933

bb.bt:                                            ; preds = %bb.ca, %.thread132.thread.i.i.i.i.i
  %i.el = add nsw i32 %spec.select.i.ph.i.i.i, -917552, !dbg !10946
  %or.cond116.i.i.i.i.i = icmp ult i32 %i.el, 10, !dbg !10946
  br i1 %or.cond116.i.i.i.i.i, label %bb.ck, label %bb.cc, !dbg !10946

.thread137.i.i.i.i.i:                             ; preds = %.thread132.thread.i.i.i.i.i, %bb.br
  %i.em = add nsw i32 %spec.select.i.ph.i.i.i, -127995, !dbg !10947
  %or.cond12.i.i.i.i.i = icmp ult i32 %i.em, 5, !dbg !10947
  br i1 %or.cond12.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.ca, !dbg !10947

bb.bu:                                            ; preds = %.thread132.thread.i.i.i.i.i
  %i.en = add nsw i32 %spec.select.i.ph.i.i.i, -917601, !dbg !10948
  %or.cond14.i.i.i.i.i = icmp ult i32 %i.en, 26, !dbg !10948
  br i1 %or.cond14.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.cb, !dbg !10948

bb.bv:                                            ; preds = %.thread132.thread.i.i.i.i.i
  %i.eo = add nsw i32 %spec.select.i.ph.i.i.i, -917601, !dbg !10949
  %or.cond16.i.i.i.i.i = icmp ult i32 %i.eo, 26, !dbg !10949
  br i1 %or.cond16.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.cd, !dbg !10949

bb.bw:                                            ; preds = %.thread132.thread.i.i.i.i.i
  %i.ep = add nsw i32 %spec.select.i.ph.i.i.i, -917601, !dbg !10950
  %or.cond18.i.i.i.i.i = icmp ult i32 %i.ep, 26, !dbg !10950
  br i1 %or.cond18.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.ce, !dbg !10950

bb.bx:                                            ; preds = %.thread132.thread.i.i.i.i.i
  %i.eq = add nsw i32 %spec.select.i.ph.i.i.i, -917601, !dbg !10951
  %or.cond20.i.i.i.i.i = icmp ult i32 %i.eq, 26, !dbg !10951
  br i1 %or.cond20.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.cf, !dbg !10951

bb.by:                                            ; preds = %.thread132.thread.i.i.i.i.i
  %i.er = add nsw i32 %spec.select.i.ph.i.i.i, -917601, !dbg !10952
  %or.cond22.i.i.i.i.i = icmp ult i32 %i.er, 26, !dbg !10952
  br i1 %or.cond22.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.ch, !dbg !10952

bb.bz:                                            ; preds = %.thread132.thread.i.i.i.i.i
  %i.es = add nsw i32 %spec.select.i.ph.i.i.i, -917601, !dbg !10953
  %or.cond24.i.i.i.i.i = icmp ult i32 %i.es, 26, !dbg !10953
  br i1 %or.cond24.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.cj, !dbg !10953

bb.ca:                                            ; preds = %.thread137.i.i.i.i.i
  %i.et = icmp eq i32 %spec.select.i.ph.i.i.i, 917631, !dbg !10933
  br i1 %i.et, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.bt, !dbg !10933

bb.cb:                                            ; preds = %bb.bu
  %i.eu = add nsw i32 %spec.select.i.ph.i.i.i, -917552, !dbg !10946
  %or.cond110.i.i.i.i.i = icmp ult i32 %i.eu, 10, !dbg !10946
  br i1 %or.cond110.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.cc, !dbg !10946

bb.cc:                                            ; preds = %bb.ce, %bb.cd, %bb.cb, %bb.bt
  %i.ev = icmp eq i32 %spec.select.i.ph.i.i.i, 127988, !dbg !10933
  br i1 %i.ev, label %bb.cl, label %.thread155.i.i.i.i.i, !dbg !10933

bb.cd:                                            ; preds = %bb.bv
  %i.ew = add nsw i32 %spec.select.i.ph.i.i.i, -917552, !dbg !10946
  %or.cond111.i.i.i.i.i = icmp ult i32 %i.ew, 10, !dbg !10946
  br i1 %or.cond111.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.cc, !dbg !10946

bb.ce:                                            ; preds = %bb.bw
  %i.ex = add nsw i32 %spec.select.i.ph.i.i.i, -917552, !dbg !10946
  %or.cond112.i.i.i.i.i = icmp ult i32 %i.ex, 10, !dbg !10946
  br i1 %or.cond112.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.cc, !dbg !10946

bb.cf:                                            ; preds = %bb.bx
  %i.ey = add nsw i32 %spec.select.i.ph.i.i.i, -917552, !dbg !10946
  %or.cond113.i.i.i.i.i = icmp ult i32 %i.ey, 10, !dbg !10946
  br i1 %or.cond113.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.cg, !dbg !10946

bb.cg:                                            ; preds = %bb.cf
  %i.ez = icmp eq i32 %spec.select.i.ph.i.i.i, 127988, !dbg !10933
  br i1 %i.ez, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %.thread139.i.i.i.i.i, !dbg !10933

.thread155.i.i.i.i.i:                             ; preds = %bb.cc
  switch i16 %.sroa.0.1.i.i.i.i.i, label %.thread139.i.i.i.i.i [
    i16 4102, label %bb.cm
    i16 32, label %bb.cn
    i16 33, label %bb.cr
  ], !dbg !10933

bb.ch:                                            ; preds = %bb.by
  %i.fa = add nsw i32 %spec.select.i.ph.i.i.i, -917552, !dbg !10946
  %or.cond114.i.i.i.i.i = icmp ult i32 %i.fa, 10, !dbg !10946
  br i1 %or.cond114.i.i.i.i.i, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %bb.ci, !dbg !10946

bb.ci:                                            ; preds = %bb.ch
  %i.fb = icmp eq i32 %spec.select.i.ph.i.i.i, 127988, !dbg !10933
  br i1 %i.fb, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %.thread139.i.i.i.i.i, !dbg !10933

bb.cj:                                            ; preds = %bb.bz
  %i.fc = icmp eq i32 %spec.select.i.ph.i.i.i, 127988
  br i1 %i.fc, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %.thread139.i.i.i.i.i, !dbg !10946

bb.ck:                                            ; preds = %bb.bt
  switch i16 %.sroa.0.1.i.i.i.i.i, label %.thread139.i.i.i.i.i [
    i16 16, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 25, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 26, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 27, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 28, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 17, label %bb.co
    i16 18, label %bb.cp
    i16 4102, label %bb.cm
    i16 32, label %bb.cn
  ], !dbg !10933

bb.cl:                                            ; preds = %bb.cc
  switch i16 %.sroa.0.1.i.i.i.i.i, label %.thread139.i.i.i.i.i [
    i16 27, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 28, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 29, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 30, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 19, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i
    i16 4102, label %bb.cm
  ], !dbg !10933

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %.thread155.i.i.i.i.i, %bb.bs
  %i.fd = call fastcc { i8, i16 } @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables12lookup_width(i32 noundef range(i32 0, 1114112) %spec.select.i.ph.i.i.i) #18, !dbg !10954, !noalias !10429
  %i.fe = extractvalue { i8, i16 } %i.fd, 1, !dbg !10954
    #dbg_value(ptr poison, !10563, !DIExpression(), !10204)
  %i.ff = icmp eq i16 %i.fe, 5, !dbg !10955
  br i1 %i.ff, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %.thread139.i.i.i.i.i, !dbg !10954

bb.cn:                                            ; preds = %bb.ck, %.thread155.i.i.i.i.i, %bb.bs
  %switch.tableidx47 = add i32 %spec.select.i.ph.i.i.i, -93539, !dbg !10933 ; 4 uses
  %i.fg = icmp ult i32 %switch.tableidx47, 7, !dbg !10933
  %switch.maskindex51 = trunc i32 %switch.tableidx47 to i8, !dbg !10933
  %switch.shifted52 = lshr i8 113, %switch.maskindex51, !dbg !10933
  %switch.lobit53 = trunc i8 %switch.shifted52 to i1, !dbg !10933
  %or.cond54 = select i1 %i.fg, i1 %switch.lobit53, i1 false, !dbg !10933
  br i1 %or.cond54, label %switch.lookup50, label %.thread139.i.i.i.i.i, !dbg !10933

bb.co:                                            ; preds = %bb.ck
  br label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, !dbg !10956

bb.cp:                                            ; preds = %bb.ck
  br label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, !dbg !10957

bb.cq:                                            ; preds = %bb.bs
  br label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, !dbg !10958

bb.cr:                                            ; preds = %.thread155.i.i.i.i.i, %bb.bs
  %i.fh = icmp eq i32 %spec.select.i.ph.i.i.i, 93539, !dbg !10933
  br i1 %i.fh, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, label %.thread139.i.i.i.i.i, !dbg !10933

bb.cs:                                            ; preds = %bb.cu, %bb.w
  br label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, !dbg !10959

bb.ct:                                            ; preds = %bb.w
    #dbg_value(ptr undef, !10563, !DIExpression(), !10077)
  %i.fi = icmp ne i16 %.sroa.0.0.i.i.i.i.i, 1, !dbg !10960
  %spec.select.i.i.i.i.i = zext i1 %i.fi to i8, !dbg !10961
  br label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, !dbg !10961

bb.cu:                                            ; preds = %bb.u
  %cond30.i.i.i.i.i = icmp eq i32 %spec.select.i.ph.i.i.i, 10, !dbg !10886
  br i1 %cond30.i.i.i.i.i, label %bb.cs, label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, !dbg !10886

switch.lookup50:                                  ; preds = %bb.cn
  %i.fj = zext nneg i32 %switch.tableidx47 to i64, !dbg !10933
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB5_7BackendNtNtNtB9_8terminal9crossterm18CrosstermKeyReaderNtBW_17CrosstermTerminalENtB5_13SelectBackend20render_select_promptCsjfnSKV9Rz3v_3h3i, i64 %i.fj, !dbg !10933
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !10933
  %switch.ext = zext i8 %switch.load to i16, !dbg !10933
  %i.fk = shl nuw nsw i32 %switch.tableidx47, 3, !dbg !10933
  %switch.shiftamt = zext nneg i32 %i.fk to i56, !dbg !10933
  %switch.downshift = lshr i56 1099511627776, %switch.shiftamt, !dbg !10933
  %switch.masked = trunc i56 %switch.downshift to i8, !dbg !10933
  br label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, !dbg !10933

_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i: ; preds = %bb.an, %switch.lookup50, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cm, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.ck, %bb.ck, %bb.ck, %bb.ck, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %.thread137.i.i.i.i.i, %bb.bs, %bb.bs, %bb.br, %bb.bq, %bb.bo, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bm, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bg, %bb.be, %bb.bc, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.av, %bb.av, %bb.av, %bb.at, %bb.as, %bb.aq, %bb.aq, %._crit_edge.i.i.i.i.i.i.i, %bb.aa, %bb.z, %bb.y, %.thread139.i.i.i.i.i, %bb.w, %bb.s
  %.sroa.51.1.i.i.i.i.i = phi i16 [ 5, %bb.s ], [ 0, %bb.cr ], [ 5, %bb.ci ], [ %i.dh, %bb.as ], [ 0, %bb.cu ], [ 30, %bb.bz ], [ 11, %bb.cq ], [ 10, %bb.bs ], [ 5, %bb.cm ], [ %i.cf, %.thread139.i.i.i.i.i ], [ 10, %bb.bs ], [ %switch.ext, %switch.lookup50 ], [ 1, %bb.cs ], [ 25, %bb.bu ], [ 18, %bb.co ], [ 19, %bb.cp ], [ 28, %bb.bx ], [ 9, %bb.br ], [ 2, %.thread137.i.i.i.i.i ], [ 16, %bb.ca ], [ 17, %bb.cd ], [ 26, %bb.bv ], [ 27, %bb.bw ], [ 5, %bb.cg ], [ 29, %bb.by ], [ 4103, %bb.bq ], [ 4, %bb.bm ], [ %.sroa.052.0.i.i.i.i.i, %bb.aa ], [ 0, %._crit_edge.i.i.i.i.i.i.i ], [ 5, %bb.bg ], [ 4102, %bb.bo ], [ 0, %bb.az ], [ 0, %bb.bj ], [ 0, %bb.bk ], [ 0, %bb.bl ], [ 15364, %bb.bc ], [ 0, %bb.be ], [ %.sroa.0.1.i.i.i.i.i, %bb.aq ], [ 0, %bb.av ], [ 12543, %bb.bb ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 15362, %bb.ay ], [ %.sroa.051.0.i.i.i.i.i, %bb.z ], [ %.sroa.050.0.i.i.i.i.i, %bb.y ], [ %.sroa.0.1.i.i.i.i.i, %bb.aq ], [ %.sroa.0.1.i.i.i.i.i, %bb.at ], [ 0, %bb.w ], [ 0, %bb.ba ], [ 0, %bb.av ], [ 0, %bb.av ], [ 0, %bb.av ], [ 15364, %bb.bc ], [ 0, %bb.ct ], [ 4102, %bb.bn ], [ 4102, %bb.bn ], [ 4102, %bb.bn ], [ 4102, %bb.bn ], [ 4102, %bb.bn ], [ 4, %bb.bm ], [ 17, %bb.cb ], [ 17, %bb.ck ], [ 17, %bb.ck ], [ 17, %bb.ck ], [ 17, %bb.ck ], [ 17, %bb.ck ], [ 17, %bb.ch ], [ 17, %bb.cf ], [ 17, %bb.ce ], [ 5, %bb.cl ], [ 5, %bb.cl ], [ 5, %bb.cl ], [ 5, %bb.cl ], [ 5, %bb.cl ], [ 5, %bb.cj ], [ 0, %bb.an ], !dbg !10927
  %.sroa.046.1.i.i.i.i.i = phi i8 [ %..i.i.i.i.i, %bb.s ], [ 0, %bb.cr ], [ 0, %bb.ci ], [ 0, %bb.as ], [ 1, %bb.cu ], [ 0, %bb.bz ], [ 3, %bb.cq ], [ -1, %bb.bs ], [ 0, %bb.cm ], [ %i.ce, %.thread139.i.i.i.i.i ], [ -1, %bb.bs ], [ %switch.masked, %switch.lookup50 ], [ 1, %bb.cs ], [ 0, %bb.bu ], [ 0, %bb.co ], [ 0, %bb.cp ], [ 0, %bb.bx ], [ 1, %bb.br ], [ 0, %.thread137.i.i.i.i.i ], [ 0, %bb.ca ], [ 0, %bb.cd ], [ 0, %bb.bv ], [ 0, %bb.bw ], [ 0, %bb.cg ], [ 0, %bb.by ], [ 0, %bb.bq ], [ 1, %bb.bm ], [ 0, %bb.aa ], [ 1, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.bg ], [ 0, %bb.bo ], [ 0, %bb.az ], [ 0, %bb.bj ], [ 0, %bb.bk ], [ -1, %bb.bl ], [ 1, %bb.bc ], [ 0, %bb.be ], [ 0, %bb.aq ], [ 0, %bb.av ], [ 0, %bb.bb ], [ 0, %bb.aw ], [ -1, %bb.ax ], [ 0, %bb.ay ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.aq ], [ 0, %bb.at ], [ 1, %bb.w ], [ 0, %bb.ba ], [ 0, %bb.av ], [ 0, %bb.av ], [ 0, %bb.av ], [ 1, %bb.bc ], [ %spec.select.i.i.i.i.i, %bb.ct ], [ 0, %bb.bn ], [ 0, %bb.bn ], [ 0, %bb.bn ], [ 0, %bb.bn ], [ 0, %bb.bn ], [ 1, %bb.bm ], [ 0, %bb.cb ], [ 0, %bb.ck ], [ 0, %bb.ck ], [ 0, %bb.ck ], [ 0, %bb.ck ], [ 0, %bb.ck ], [ 0, %bb.ch ], [ 0, %bb.cf ], [ 0, %bb.ce ], [ 0, %bb.cl ], [ 0, %bb.cl ], [ 0, %bb.cl ], [ 0, %bb.cl ], [ 0, %bb.cl ], [ 0, %bb.cj ], [ 2, %bb.an ], !dbg !10927
    #dbg_value(i8 %.sroa.046.1.i.i.i.i.i, !10552, !DIExpression(), !10205)
    #dbg_value(i8 %.sroa.046.1.i.i.i.i.i, !10693, !DIExpression(), !10208)
    #dbg_value(i16 %.sroa.51.1.i.i.i.i.i, !10553, !DIExpression(), !10205)
end_hunk_1
