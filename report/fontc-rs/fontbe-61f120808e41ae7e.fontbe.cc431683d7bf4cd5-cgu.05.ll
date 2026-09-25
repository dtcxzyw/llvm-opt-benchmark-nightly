Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.05?download=true
inline.NumInlined: 1595
inline.NumDeleted: 857
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_RNvMsg_NtNtCs8n5UXKvQVD9_10read_fonts11collections7int_setINtB5_4IterINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtB1a_6filter6FilterIB16_INtNtNtB1e_5slice4iter4IterNtNtB5_6bitset8PageInfoEINtNtB1e_6option6OptionTmRNtNtB5_7bitpage7BitPageEENCNvMs1_B2W_NtB2W_6U32Set10iter_pages0ENCNvB4b_20iter_non_empty_pages0EINtNtB1a_3map3MapIB16_IB22_INtNtB1a_9enumerate9EnumerateIB2u_yEENCNvMB3K_B3I_4iter0EIB5h_NtB3K_4IterNCNCB6k_s_00ENCB6k_s_0ENCNCNvB4b_4iter00ENCB7j_0EINtNtNtB1e_3ops5range14RangeInclusivemEE17new_bidirectionalCshxhuDJfZv4T_6fontbe:bb.a
  %.sroa.1029.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.pre.i.i = load i64, ptr %i.u, align 8, !range !12, !alias.scope !4087
  %i.w = icmp eq i64 %.pre.i.i, 2
  br i1 %i.w, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.thread34.i.peel.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit
  %i.x = tail call fastcc { i32, i32 } @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2G_7BitPage4iter0EIBN_NtB2G_4IterNCNCB2D_s_00ENCB2D_s_0ENCNCNvMs1_NtB2I_6bitsetNtB4M_6U32Set4iter00ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.u) #40 ; 3 uses
  %i.y = extractvalue { i32, i32 } %i.x, 0        ; 2 uses
  %.not4.i.i.peel.i = icmp eq i32 %i.y, 1
  br i1 %.not4.i.i.peel.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.thread.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.i.peel.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.i.peel.i: ; preds = %bb.f
  store i64 2, ptr %i.u, align 8, !alias.scope !4087
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe.exit, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.thread34.i.peel.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.thread34.i.peel.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.i.peel.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit
  %i.aa = load i64, ptr %1, align 8, !range !12, !alias.scope !4088, !noalias !4089, !noundef !10
  %.not.i1.i.peel.i = icmp eq i64 %i.aa, 2
  %i.ab = load ptr, ptr %i.v, align 8, !alias.scope !4090
  %.not.i.i.i.i.i.i.i.i.peel.i = icmp eq ptr %i.ab, null
  %or.cond.i.peel.i = select i1 %.not.i1.i.peel.i, i1 true, i1 %.not.i.i.i.i.i.i.i.i.peel.i
  br i1 %or.cond.i.peel.i, label %.loopexit.i, label %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe.exit.i.i.i.peel.i

_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe.exit.i.i.i.peel.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.thread34.i.peel.i
  %i.ac = tail call { i32, ptr } @_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoENCNvMs1_B1p_NtB1p_6U32Set10iter_pages0ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtB8_7flatten15try_flatten_oneINtNtBc_6option6OptionTmRNtNtB1r_7bitpage7BitPageEEuINtNtNtBc_3ops12control_flow11ControlFlowB55_ENCINvNvB3a_5rfind5checkB55_QNCNvB2B_20iter_non_empty_pages0E0E0B5z_ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull %i.c), !noalias !4091 ; 2 uses
  %i.ad = extractvalue { i32, ptr } %i.ac, 1      ; 2 uses
  %.not.i.i.i.i.i.peel.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.peel.i, label %.loopexit.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe.exit.i.i.i.peel.i, %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe.exit.i.i.i.i
  %.pn9.i = phi ptr [ %i.am, %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe.exit.i.i.i.i ], [ %i.ad, %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe.exit.i.i.i.peel.i ] ; 2 uses
  %.pn.i = phi { i32, ptr } [ %i.al, %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe.exit.i.i.i.i ], [ %i.ac, %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe.exit.i.i.i.peel.i ]
  store i64 0, ptr %i.u, align 8, !alias.scope !4090
  store i64 0, ptr %.sroa.524.0..sroa_idx.i.i, align 8, !alias.scope !4090
  store ptr %.pn9.i, ptr %.sroa.726.0..sroa_idx.i.i, align 8, !alias.scope !4090
  %storemerge8.i = getelementptr inbounds nuw i8, ptr %.pn9.i, i64 64
  store ptr %storemerge8.i, ptr %.sroa.827.0..sroa_idx.i.i, align 8, !alias.scope !4090
  store i64 0, ptr %.sroa.928.0..sroa_idx.i.i, align 8, !alias.scope !4090
  %storemerge.in.i = extractvalue { i32, ptr } %.pn.i, 0
  %storemerge.i = shl i32 %storemerge.in.i, 9
  store i32 %storemerge.i, ptr %.sroa.1029.0..sroa_idx.i.i, align 8, !alias.scope !4090
  %i.ae = tail call fastcc { i32, i32 } @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2G_7BitPage4iter0EIBN_NtB2G_4IterNCNCB2D_s_00ENCB2D_s_0ENCNCNvMs1_NtB2I_6bitsetNtB4M_6U32Set4iter00ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.u) #40 ; 3 uses
  %i.af = extractvalue { i32, i32 } %i.ae, 0      ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.af, 1
  br i1 %.not4.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.thread.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.thread.i.i: ; preds = %.peel.next.i, %bb.f
  %.lcssa.i = phi { i32, i32 } [ %i.x, %bb.f ], [ %i.ae, %.peel.next.i ]
  %i.ag = extractvalue { i32, i32 } %.lcssa.i, 1
  %i.ah = insertvalue { i32, i32 } { i32 1, i32 poison }, i32 %i.ag, 1
  br label %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe.exit

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.i.i: ; preds = %.peel.next.i
  store i64 2, ptr %i.u, align 8, !alias.scope !4087
  %i.ai = trunc i32 %i.af to i1
  br i1 %i.ai, label %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe.exit, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.thread34.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.thread34.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.i.i
  %i.aj = load i64, ptr %1, align 8, !range !12, !alias.scope !4088, !noalias !4089, !noundef !10
  %.not.i1.i.i = icmp eq i64 %i.aj, 2
  %i.ak = load ptr, ptr %i.v, align 8, !alias.scope !4090
  %.not.i.i.i.i.i.i.i.i.i1 = icmp eq ptr %i.ak, null
  %or.cond.i.i2 = select i1 %.not.i1.i.i, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i1
  br i1 %or.cond.i.i2, label %.loopexit.i, label %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe.exit.i.i.i.i

_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe.exit.i.i.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.thread34.i.i
  %i.al = tail call { i32, ptr } @_RINvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoENCNvMs1_B1p_NtB1p_6U32Set10iter_pages0ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtB8_7flatten15try_flatten_oneINtNtBc_6option6OptionTmRNtNtB1r_7bitpage7BitPageEEuINtNtNtBc_3ops12control_flow11ControlFlowB55_ENCINvNvB3a_5rfind5checkB55_QNCNvB2B_20iter_non_empty_pages0E0E0B5z_ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull %i.c), !noalias !4091 ; 2 uses
  %i.am = extractvalue { i32, ptr } %i.al, 1      ; 2 uses
  %.not.i.i.i.i.i.i3 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i3, label %.loopexit.i, label %.peel.next.i, !llvm.loop !4080

.loopexit.i:                                      ; preds = %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe.exit.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.thread34.i.i, %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1U_7bitpage7BitPageEENCNvMs1_B1S_NtB1S_6U32Set10iter_pages0ENCNvB3T_20iter_non_empty_pages0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe.exit.i.i.i.peel.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.thread34.i.peel.i
  %i.an = load i64, ptr %i.c, align 8, !range !12, !alias.scope !4092, !noundef !10
  %.not.i2.i.i = icmp eq i64 %i.an, 2
  br i1 %.not.i2.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_backs_0ECshxhuDJfZv4T_6fontbe.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.loopexit.i
  %i.ao = tail call fastcc { i32, i32 } @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2G_7BitPage4iter0EIBN_NtB2G_4IterNCNCB2D_s_00ENCB2D_s_0ENCNCNvMs1_NtB2I_6bitsetNtB4M_6U32Set4iter00ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c) #40 ; 2 uses
  %i.ap = extractvalue { i32, i32 } %i.ao, 0      ; 2 uses
  %i.aq = extractvalue { i32, i32 } %i.ao, 1      ; 2 uses
  %.not4.i3.i.i = icmp eq i32 %i.ap, 1
  br i1 %.not4.i3.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_backs_0ECshxhuDJfZv4T_6fontbe.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 2, ptr %i.c, align 8, !alias.scope !4092
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_backs_0ECshxhuDJfZv4T_6fontbe.exit.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_backs_0ECshxhuDJfZv4T_6fontbe.exit.i.i: ; preds = %bb.h, %bb.g, %.loopexit.i
  %.sroa.3.0.i4.i.i = phi i32 [ undef, %.loopexit.i ], [ %i.aq, %bb.h ], [ %i.aq, %bb.g ]
  %.sroa.0.0.i5.i.i = phi i32 [ 0, %.loopexit.i ], [ %i.ap, %bb.h ], [ 1, %bb.g ]
  %i.ar = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i5.i.i, 0
  %i.as = insertvalue { i32, i32 } %i.ar, i32 %.sroa.3.0.i4.i.i, 1
  br label %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe.exit

_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe.exit: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.i.peel.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.thread.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_backs_0ECshxhuDJfZv4T_6fontbe.exit.i.i
  %.merged.i.i = phi { i32, i32 } [ %i.as, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_backs_0ECshxhuDJfZv4T_6fontbe.exit.i.i ], [ %i.ah, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.thread.i.i ], [ %i.x, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.i.peel.i ], [ %i.ae, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNCNvXsj_B2_INtB2_13FlattenCompatIB17_IB1B_IB1n_IB2p_NtB53_8PageInfoEINtNtB8_6option6OptionTmRB3V_EENCNvB4Z_10iter_pages0ENCNvB4Z_20iter_non_empty_pages0ENCB4X_0EB16_ENtNtNtB6_6traits12double_ended19DoubleEndedIterator9next_back0ECshxhuDJfZv4T_6fontbe.exit.i.i ] ; 2 uses
  %i.at = extractvalue { i32, i32 } %.merged.i.i, 0
  %i.au = extractvalue { i32, i32 } %.merged.i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %1, i64 264, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.av, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 %.sroa.0.0.i.i, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 %.sroa.3.0.i.i, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.at, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 %i.au, ptr %i.az, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %1, i64 264, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ba, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 0, ptr %i.bc, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoEINtNtBb_6option6OptionTmRNtNtB1Y_7bitpage7BitPageEENCNvMs1_B1W_NtB1W_6U32Set10iter_pages0ENCNvB3X_20iter_non_empty_pages0EINtNtB7_3map3MapIBR_IB15_INtNtB7_9enumerate9EnumerateIB1v_yEENCNvMB3v_B3t_4iter0EIB53_NtB3v_4IterNCNCB63_s_00ENCB63_s_0ENCNCNvB3X_4iter00ENCB72_0ENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshxhuDJfZv4T_6fontbe.exit, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvNtNtCshxhuDJfZv4T_6fontbe8features10properties16ot_tag_to_script(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 7 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  store i32 %0, ptr %i.d, align 4
  %i.e = icmp eq i32 %0, 1414284868
  br i1 %i.e, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = load ptr, ptr @_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags14SCRIPT_ALIASES, align 8, !noalias !4108, !nonnull !10, !noundef !10 ; 4 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags14SCRIPT_ALIASES, i64 8), align 8, !noalias !4108, !noundef !10 ; 4 uses
  switch i64 %i.g, label %.lr.ph.i.i [
    i64 0, label %_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features10propertiesRSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagBS_EINtB5_17BinarySearchExactBS_BS_E19binary_search_exactB9_.exit
    i64 1, label %._crit_edge.i.thread.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad ; 2 uses
  %i.i = load i32, ptr %i.h, align 1
  %i.j = load i32, ptr %i.d, align 4
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %i.l = tail call i32 @llvm.bswap.i32(i32 %i.j)
  %i.m = tail call i32 @llvm.ucmp.i32.i32(i32 %i.k, i32 %i.l) ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.thread.i, label %bb.c

._crit_edge.i.thread.i:                           ; preds = %bb.b
  %i.o = load i32, ptr %i.f, align 1
  %i.p = load i32, ptr %i.d, align 4
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.o)
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.p)
  %i.s = tail call i32 @llvm.ucmp.i32.i32(i32 %i.q, i32 %i.r) ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.thread.i, label %bb.c

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.01.014.i.i = phi i64 [ %i.ae, %.lr.ph.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %.sroa.05.013.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.u = lshr i64 %.sroa.01.014.i.i, 1            ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %.sroa.05.013.i.i  ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.g
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.y = load i32, ptr %i.x, align 1
  %i.z = load i32, ptr %i.d, align 4
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %i.ac = icmp ugt i32 %i.aa, %i.ab
  %i.ad = select i1 %i.ac, i64 %.sroa.05.013.i.i, i64 %i.v, !unpredictable !10 ; 3 uses
  %i.ae = sub nuw nsw i64 %.sroa.01.014.i.i, %i.u ; 2 uses
  %i.af = icmp ugt i64 %i.ae, 1
  br i1 %i.af, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.c:                                             ; preds = %._crit_edge.i.thread.i, %._crit_edge.i.i
  %i.ag = phi i32 [ %i.s, %._crit_edge.i.thread.i ], [ %i.m, %._crit_edge.i.i ]
  %.sroa.05.0.lcssa.i5.i = phi i64 [ 0, %._crit_edge.i.thread.i ], [ %i.ad, %._crit_edge.i.i ]
  %.lobit.i.i = lshr i32 %i.ag, 31
  %i.ah = zext nneg i32 %.lobit.i.i to i64
  %i.ai = add nuw nsw i64 %.sroa.05.0.lcssa.i5.i, %i.ah
  %i.aj = icmp ule i64 %i.ai, %i.g
  tail call void @llvm.assume(i1 %i.aj)
  br label %_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features10propertiesRSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagBS_EINtB5_17BinarySearchExactBS_BS_E19binary_search_exactB9_.exit

.thread.i:                                        ; preds = %._crit_edge.i.i, %._crit_edge.i.thread.i
  %i.ak = phi ptr [ %i.f, %._crit_edge.i.thread.i ], [ %i.h, %._crit_edge.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.val.i = load i32, ptr %i.al, align 1, !noalias !4108
  br label %_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features10propertiesRSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagBS_EINtB5_17BinarySearchExactBS_BS_E19binary_search_exactB9_.exit

_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features10propertiesRSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagBS_EINtB5_17BinarySearchExactBS_BS_E19binary_search_exactB9_.exit: ; preds = %bb.b, %bb.c, %.thread.i
  %.sroa.0.0.i = phi i32 [ %.val.i, %.thread.i ], [ %0, %bb.b ], [ %0, %bb.c ] ; 7 uses
  store i32 %.sroa.0.0.i, ptr %i.c, align 4
  %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags26SCRIPT_EXCEPTIONS_REVERSED.val = load ptr, ptr @_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags26SCRIPT_EXCEPTIONS_REVERSED, align 8, !nonnull !10, !align !19, !noundef !10 ; 2 uses
  %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags26SCRIPT_EXCEPTIONS_REVERSED.val22 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags26SCRIPT_EXCEPTIONS_REVERSED, i64 8), align 8, !noundef !10 ; 6 uses
  switch i64 %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags26SCRIPT_EXCEPTIONS_REVERSED.val22, label %.lr.ph.i.i27 [
    i64 0, label %bb.g
    i64 1, label %._crit_edge.i.i23
  ]

._crit_edge.i.i23:                                ; preds = %.lr.ph.i.i27, %_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features10propertiesRSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagBS_EINtB5_17BinarySearchExactBS_BS_E19binary_search_exactB9_.exit
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features10propertiesRSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagBS_EINtB5_17BinarySearchExactBS_BS_E19binary_search_exactB9_.exit ], [ %i.bc, %.lr.ph.i.i27 ] ; 4 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags26SCRIPT_EXCEPTIONS_REVERSED.val, i64 %.sroa.05.0.lcssa.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = load i32, ptr %i.c, align 4
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %i.an)
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ao)
  %i.ar = tail call i32 @llvm.ucmp.i32.i32(i32 %i.ap, i32 %i.aq) ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.e, label %bb.d

.lr.ph.i.i27:                                     ; preds = %_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features10propertiesRSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagBS_EINtB5_17BinarySearchExactBS_BS_E19binary_search_exactB9_.exit, %.lr.ph.i.i27
  %.sroa.01.014.i.i28 = phi i64 [ %i.bd, %.lr.ph.i.i27 ], [ %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags26SCRIPT_EXCEPTIONS_REVERSED.val22, %_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features10propertiesRSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagBS_EINtB5_17BinarySearchExactBS_BS_E19binary_search_exactB9_.exit ] ; 2 uses
  %.sroa.05.013.i.i29 = phi i64 [ %i.bc, %.lr.ph.i.i27 ], [ 0, %_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features10propertiesRSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagBS_EINtB5_17BinarySearchExactBS_BS_E19binary_search_exactB9_.exit ] ; 2 uses
  %i.at = lshr i64 %.sroa.01.014.i.i28, 1         ; 2 uses
  %i.au = add nuw nsw i64 %i.at, %.sroa.05.013.i.i29 ; 3 uses
  %i.av = icmp ult i64 %i.au, %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags26SCRIPT_EXCEPTIONS_REVERSED.val22
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags26SCRIPT_EXCEPTIONS_REVERSED.val, i64 %i.au
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = load i32, ptr %i.c, align 4
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.ax)
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  %i.bb = icmp ugt i32 %i.az, %i.ba
  %i.bc = select i1 %i.bb, i64 %.sroa.05.013.i.i29, i64 %i.au, !unpredictable !10 ; 2 uses
  %i.bd = sub nuw nsw i64 %.sroa.01.014.i.i28, %i.at ; 2 uses
  %i.be = icmp ugt i64 %i.bd, 1
  br i1 %i.be, label %.lr.ph.i.i27, label %._crit_edge.i.i23

bb.d:                                             ; preds = %._crit_edge.i.i23
  %.lobit.i.i24 = lshr i32 %i.ar, 31
  %i.bf = zext nneg i32 %.lobit.i.i24 to i64
  %i.bg = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.bf
  %i.bh = icmp ule i64 %i.bg, %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags26SCRIPT_EXCEPTIONS_REVERSED.val22
  tail call void @llvm.assume(i1 %i.bh)
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge.i.i23
  %i.bi = icmp ult i64 %.sroa.05.0.lcssa.i.i, %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags26SCRIPT_EXCEPTIONS_REVERSED.val22
  br i1 %i.bi, label %_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features10propertiesRSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagReEINtB5_17BinarySearchExactBS_B1u_E19binary_search_exactB9_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags26SCRIPT_EXCEPTIONS_REVERSED.val22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #39, !noalias !4109
  unreachable

bb.g:                                             ; preds = %_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features10propertiesRSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagBS_EINtB5_17BinarySearchExactBS_BS_E19binary_search_exactB9_.exit, %bb.d
  %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags11NEW_SCRIPTS.val.i.i = load ptr, ptr @_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags11NEW_SCRIPTS, align 8, !noalias !4110, !nonnull !10, !align !19, !noundef !10 ; 2 uses
  %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags11NEW_SCRIPTS.val1.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags11NEW_SCRIPTS, i64 8), align 8, !noalias !4110, !noundef !10 ; 6 uses
  switch i64 %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags11NEW_SCRIPTS.val1.i.i, label %.lr.ph.i.i.i.i [
    i64 0, label %bb.w
    i64 1, label %._crit_edge.i.i.i.i
  ]

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.bz, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags11NEW_SCRIPTS.val.i.i, i64 %.sroa.05.0.lcssa.i.i.i.i ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = load i32, ptr %i.c, align 4
  %i.bm = tail call i32 @llvm.bswap.i32(i32 %i.bk)
  %i.bn = tail call i32 @llvm.bswap.i32(i32 %i.bl)
  %i.bo = tail call i32 @llvm.ucmp.i32.i32(i32 %i.bm, i32 %i.bn) ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.i, label %bb.h

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.sroa.01.014.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i ], [ %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags11NEW_SCRIPTS.val1.i.i, %bb.g ] ; 2 uses
  %.sroa.05.013.i.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.bq = lshr i64 %.sroa.01.014.i.i.i.i, 1       ; 2 uses
  %i.br = add nuw nsw i64 %i.bq, %.sroa.05.013.i.i.i.i ; 3 uses
  %i.bs = icmp ult i64 %i.br, %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags11NEW_SCRIPTS.val1.i.i
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags11NEW_SCRIPTS.val.i.i, i64 %i.br
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = load i32, ptr %i.c, align 4
  %i.bw = tail call i32 @llvm.bswap.i32(i32 %i.bu)
  %i.bx = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  %i.by = icmp ugt i32 %i.bw, %i.bx
  %i.bz = select i1 %i.by, i64 %.sroa.05.013.i.i.i.i, i64 %i.br, !unpredictable !10 ; 2 uses
  %i.ca = sub nuw nsw i64 %.sroa.01.014.i.i.i.i, %i.bq ; 2 uses
  %i.cb = icmp ugt i64 %i.ca, 1
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %.lobit.i.i.i.i = lshr i32 %i.bo, 31
  %i.cc = zext nneg i32 %.lobit.i.i.i.i to i64
  %i.cd = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i.i, %i.cc
  %i.ce = icmp ule i64 %i.cd, %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags11NEW_SCRIPTS.val1.i.i
  tail call void @llvm.assume(i1 %i.ce)
  br label %bb.w

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cf = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i, %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags11NEW_SCRIPTS.val1.i.i
  br i1 %i.cf, label %_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features10propertiesRSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagReEINtB5_17BinarySearchExactBS_B1u_E19binary_search_exactB9_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i.i.i, i64 noundef %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags11NEW_SCRIPTS.val1.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #39, !noalias !4111
  unreachable

_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features10propertiesRSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagReEINtB5_17BinarySearchExactBS_B1u_E19binary_search_exactB9_.exit: ; preds = %bb.i, %bb.e
  %.pn = phi ptr [ %i.am, %bb.e ], [ %i.bj, %bb.i ] ; 2 uses
  %.pn2.i.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %.pn2.i = load i64, ptr %.pn2.i.in, align 8, !noalias !10, !noundef !10 ; 6 uses
  %.pn4.i.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.pn4.i = load ptr, ptr %.pn4.i.in, align 8, !noalias !10, !nonnull !10, !noundef !10 ; 4 uses
  %i.cg = icmp samesign ugt i64 %.pn2.i, 4
  br i1 %i.cg, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features10propertiesRSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagReEINtB5_17BinarySearchExactBS_B1u_E19binary_search_exactB9_.exit
  %.not22.i = icmp eq i64 %.pn2.i, 0
  br i1 %.not22.i, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtBM_5error10ParseErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.v, %bb.s, %bb.p, %bb.m
  %.sroa.8.0 = phi i32 [ 0, %bb.m ], [ 0, %bb.p ], [ 0, %bb.s ], [ %i.db, %bb.v ]
  %.sroa.7.0 = phi i8 [ 0, %bb.m ], [ 0, %bb.p ], [ %i.cr, %bb.s ], [ %i.cr, %bb.v ]
  %.sroa.6.0 = phi i8 [ 0, %bb.m ], [ %i.cm, %bb.p ], [ %i.cm, %bb.s ], [ %i.cm, %bb.v ]
  %.sroa.06.1.i.lcssa = phi i8 [ %.sroa.06.1.i, %bb.m ], [ %.sroa.06.1.i.1, %bb.p ], [ %.sroa.06.1.i.2, %bb.s ], [ %.sroa.06.1.i.3, %bb.v ]
  %i.ch = trunc nuw i8 %.sroa.06.1.i.lcssa to i1
  br i1 %i.ch, label %.loopexit, label %._crit_edge.i._RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtBM_5error10ParseErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit_crit_edge

._crit_edge.i._RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtBM_5error10ParseErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit_crit_edge: ; preds = %._crit_edge.i
  %.sroa.7.0.insert.ext = zext i8 %.sroa.7.0 to i32
  %.sroa.7.0.insert.shift = shl nuw nsw i32 %.sroa.7.0.insert.ext, 16
  %.sroa.7.0.insert.insert = or disjoint i32 %.sroa.8.0, %.sroa.7.0.insert.shift
  %.sroa.6.0.insert.ext = zext i8 %.sroa.6.0 to i32
  %.sroa.6.0.insert.shift = shl nuw nsw i32 %.sroa.6.0.insert.ext, 8
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.insert, %.sroa.6.0.insert.shift
  %.sroa.0.0.insert.ext = zext i8 %i.ci to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.0.0.insert.ext
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtBM_5error10ParseErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit

.lr.ph.i:                                         ; preds = %bb.k
  %i.ci = load i8, ptr %.pn4.i, align 1, !alias.scope !4112, !noalias !4113, !noundef !10 ; 3 uses
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ck = icmp slt i8 %i.ci, 0
  br i1 %i.ck, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %.sroa.06.1.i = phi i8 [ 1, %.lr.ph.i ], [ 0, %bb.l ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %.pn2.i, 1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn4.i, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !4112, !noalias !4113, !noundef !10 ; 5 uses
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.1
  %i.co = icmp slt i8 %i.cm, 0
  br i1 %i.co, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = trunc nuw i8 %.sroa.06.1.i to i1
  br i1 %i.cp, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.1
  %.sroa.06.1.i.1 = phi i8 [ 0, %bb.o ], [ 1, %.lr.ph.i.1 ] ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %.pn2.i, 2
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn4.i, i64 2
  %i.cr = load i8, ptr %i.cq, align 1, !alias.scope !4112, !noalias !4113, !noundef !10 ; 4 uses
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.2
  %i.ct = icmp slt i8 %i.cr, 0
  br i1 %i.ct, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = trunc nuw i8 %.sroa.06.1.i.1 to i1
  br i1 %i.cu, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.2
  %.sroa.06.1.i.2 = phi i8 [ 0, %bb.r ], [ 1, %.lr.ph.i.2 ] ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %.pn2.i, 3
  br i1 %exitcond.not.i.2, label %._crit_edge.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn4.i, i64 3
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !4112, !noalias !4113, !noundef !10 ; 3 uses
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.3
  %i.cy = icmp slt i8 %i.cw, 0
  br i1 %i.cy, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = trunc nuw i8 %.sroa.06.1.i.2 to i1
  br i1 %i.cz, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.3
  %.sroa.06.1.i.3 = phi i8 [ 0, %bb.u ], [ 1, %.lr.ph.i.3 ]
  %i.da = zext i8 %i.cw to i32
  %i.db = shl nuw i32 %i.da, 24
  br label %._crit_edge.i

.loopexit:                                        ; preds = %._crit_edge.i, %bb.u, %bb.t, %bb.r, %bb.q, %bb.o, %bb.n, %bb.l, %_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features10propertiesRSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagReEINtB5_17BinarySearchExactBS_B1u_E19binary_search_exactB9_.exit
  %.sroa.0.0.ph = phi i64 [ 0, %_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features10propertiesRSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagReEINtB5_17BinarySearchExactBS_B1u_E19binary_search_exactB9_.exit ], [ 1, %._crit_edge.i ], [ 2, %bb.l ], [ 1, %bb.u ], [ 2, %bb.n ], [ 1, %bb.o ], [ 2, %bb.q ], [ 1, %bb.r ], [ 2, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4114
  store i64 %.sroa.0.0.ph, ptr %i.b, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 4, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.pn2.i, ptr %.sroa.10.0..sroa_idx, align 8
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #39, !noalias !4114
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtBM_5error10ParseErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit: ; preds = %._crit_edge.i._RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtBM_5error10ParseErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit_crit_edge, %bb.k
  %.sroa.016.0.copyload.i = phi i32 [ %.sroa.0.0.insert.insert, %._crit_edge.i._RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtBM_5error10ParseErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit_crit_edge ], [ 0, %bb.k ] ; 2 uses
  %.sroa.418.0.extract.shift = and i32 %.sroa.016.0.copyload.i, -256
  br label %.sink.split

bb.w:                                             ; preds = %bb.g, %bb.h
  %.sroa.028.0.extract.trunc.i = trunc i32 %.sroa.0.0.i to i8
  %.sroa.2.0.extract.shift.i = lshr i32 %.sroa.0.0.i, 8
  %.sroa.2.0.extract.trunc.i = trunc i32 %.sroa.2.0.extract.shift.i to i8 ; 3 uses
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.0.0.i, 16
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8 ; 2 uses
  %.sroa.530.0.extract.shift.i = lshr i32 %.sroa.0.0.i, 24 ; 2 uses
  %i.dc = add i8 %.sroa.028.0.extract.trunc.i, -97
  %i.dd = icmp ult i8 %i.dc, 26
  %i.de = select i1 %i.dd, i32 32, i32 0
  %i.df = icmp eq i8 %.sroa.4.0.extract.trunc.i, 32
  %spec.select.i = select i1 %i.df, i8 %.sroa.2.0.extract.trunc.i, i8 %.sroa.4.0.extract.trunc.i ; 4 uses
  %i.dg = icmp eq i32 %.sroa.530.0.extract.shift.i, 32
  %i.dh = trunc nuw i32 %.sroa.530.0.extract.shift.i to i8
  %.sroa.9.0.i = select i1 %i.dg, i8 %spec.select.i, i8 %i.dh ; 3 uses
  %.sroa.0.0.insert.ext.i32 = xor i32 %i.de, %.sroa.0.0.i ; 2 uses
  %.sroa.025.0.extract.trunc.i = trunc i32 %.sroa.0.0.insert.ext.i32 to i8 ; 2 uses
  %1 = icmp slt i8 %.sroa.025.0.extract.trunc.i, 0
  br i1 %1, label %.thread.i33, label %.lr.ph.i.1.i

.lr.ph.i.1.i:                                     ; preds = %bb.w
  %i.di = icmp eq i8 %.sroa.025.0.extract.trunc.i, 0
  %i.dj = icmp eq i8 %.sroa.2.0.extract.trunc.i, 0 ; 2 uses
  %.not.1.i = xor i1 %i.dj, true
  %i.dk = icmp slt i8 %.sroa.2.0.extract.trunc.i, 0 ; 2 uses
  %brmerge.1.i = or i1 %i.dk, %i.di
  %or.cond.1.i = and i1 %brmerge.1.i, %.not.1.i
  br i1 %or.cond.1.i, label %bb.x, label %.lr.ph.i.2.i

.lr.ph.i.2.i:                                     ; preds = %.lr.ph.i.1.i
  %i.dl = icmp eq i8 %spec.select.i, 0            ; 2 uses
  %.not.2.i = xor i1 %i.dl, true
  %i.dm = icmp slt i8 %spec.select.i, 0           ; 2 uses
  %brmerge.2.i = or i1 %i.dj, %i.dm
  %or.cond.2.i = and i1 %brmerge.2.i, %.not.2.i
  br i1 %or.cond.2.i, label %bb.x, label %.lr.ph.i.3.i

.lr.ph.i.3.i:                                     ; preds = %.lr.ph.i.2.i
  %i.dn = icmp ne i8 %.sroa.9.0.i, 0
  %i.do = icmp slt i8 %.sroa.9.0.i, 0             ; 2 uses
  %brmerge.3.i = or i1 %i.dl, %i.do
  %or.cond.3.i = and i1 %i.dn, %brmerge.3.i
  br i1 %or.cond.3.i, label %bb.x, label %_RNvNtNtCshxhuDJfZv4T_6fontbe8features10properties28ot_tag_to_unicode_short_name.exit

bb.x:                                             ; preds = %.lr.ph.i.3.i, %.lr.ph.i.2.i, %.lr.ph.i.1.i
  %.lcssa.i = phi i1 [ %i.do, %.lr.ph.i.3.i ], [ %i.dk, %.lr.ph.i.1.i ], [ %i.dm, %.lr.ph.i.2.i ]
  %cond.fr.i = freeze i1 %.lcssa.i
  br i1 %cond.fr.i, label %.thread.i33, label %bb.y

.thread.i33:                                      ; preds = %bb.x, %bb.w
  br label %bb.y

bb.y:                                             ; preds = %.thread.i33, %bb.x
  %i.dp = phi i64 [ 2, %.thread.i33 ], [ 1, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4115
  store i64 %i.dp, ptr %i.a, align 8
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 48, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #39, !noalias !4115
  unreachable

_RNvNtNtCshxhuDJfZv4T_6fontbe8features10properties28ot_tag_to_unicode_short_name.exit: ; preds = %.lr.ph.i.3.i
  %.sroa.8.0.insert.ext.i = zext nneg i8 %.sroa.9.0.i to i32
  %.sroa.8.0.insert.shift.i = shl nuw nsw i32 %.sroa.8.0.insert.ext.i, 24
  %.sroa.733.0.insert.ext.i = zext nneg i8 %spec.select.i to i32
  %.sroa.733.0.insert.shift.i = shl nuw nsw i32 %.sroa.733.0.insert.ext.i, 16
  %.sroa.733.0.insert.insert.i = or disjoint i32 %.sroa.8.0.insert.shift.i, %.sroa.733.0.insert.shift.i
  %.sroa.632.0.insert.shift.i = and i32 %.sroa.0.0.i, 32512
  %.sroa.632.0.insert.insert.i = or disjoint i32 %.sroa.733.0.insert.insert.i, %.sroa.632.0.insert.shift.i ; 2 uses
  %.sroa.031.0.insert.ext.i = and i32 %.sroa.0.0.insert.ext.i32, 127
  %.sroa.031.0.insert.insert.i = or disjoint i32 %.sroa.632.0.insert.insert.i, %.sroa.031.0.insert.ext.i
  br label %.sink.split

.sink.split:                                      ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtBM_5error10ParseErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit, %_RNvNtNtCshxhuDJfZv4T_6fontbe8features10properties28ot_tag_to_unicode_short_name.exit
  %.sroa.4.sroa.0.0.ph = phi i32 [ %.sroa.418.0.extract.shift, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtBM_5error10ParseErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit ], [ %.sroa.632.0.insert.insert.i, %_RNvNtNtCshxhuDJfZv4T_6fontbe8features10properties28ot_tag_to_unicode_short_name.exit ]
  %.sroa.01.0.ph = phi i32 [ %.sroa.016.0.copyload.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtBM_5error10ParseErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit ], [ %.sroa.031.0.insert.insert.i, %_RNvNtNtCshxhuDJfZv4T_6fontbe8features10properties28ot_tag_to_unicode_short_name.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %2 = and i32 %.sroa.01.0.ph, 255
  %3 = or disjoint i32 %2, %.sroa.4.sroa.0.0.ph
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.a
  %.sroa.01.0.insert.insert = phi i32 [ 255, %bb.a ], [ %3, %.sink.split ]
  ret i32 %.sroa.01.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCshxhuDJfZv4T_6fontbe8features10properties17script_to_ot_tags(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 34), (40, 41), (45, 46)) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %1) unnamed_addr #0 {
bb.a:
  %.val85 = load i32, ptr %1, align 1, !alias.scope !26 ; 4 uses
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.val85, i1 false)
  %i.b = lshr i32 %i.a, 3
  %i.c = sub nuw nsw i32 4, %i.b
  %i.d = zext nneg i32 %i.c to i64                ; 3 uses
  %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags17SCRIPT_EXCEPTIONS.val = load ptr, ptr @_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags17SCRIPT_EXCEPTIONS, align 8, !nonnull !10, !align !19, !noundef !10
  %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags17SCRIPT_EXCEPTIONS.val89 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags17SCRIPT_EXCEPTIONS, i64 8), align 8, !noundef !10
  %i.e = tail call fastcc i40 @_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features10propertiesRSTReNtNtCsbZq13ASDQ8l_10font_types3tag3TagEINtB5_17BinarySearchExactBS_BU_E19binary_search_exactB9_(ptr nonnull %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags17SCRIPT_EXCEPTIONS.val, i64 %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags17SCRIPT_EXCEPTIONS.val89, ptr nonnull %1, i64 %i.d) ; 3 uses
  %i.f = trunc i40 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.078.0.extract.trunc = trunc i40 %i.e to i8
  %.sroa.078.1.extract.shift = lshr i40 %i.e, 8
  %.sroa.078.1.extract.trunc = trunc nuw i40 %.sroa.078.1.extract.shift to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call { i16, i16 } @_RNvNtCs6ycZ7hHN0vs_14icu_properties5names14get_strict_u16(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, 5) %i.d)
  %i.h = extractvalue { i16, i16 } %i.g, 0
  %.sroa.0.0.i = and i16 %i.h, 1
  %.not.not = icmp eq i16 %.sroa.0.0.i, 0
  br i1 %.not.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.e, %bb.b
  %.sroa.8.0 = phi i32 [ undef, %bb.b ], [ %i.o, %bb.e ], [ undef, %bb.c ]
  %.sroa.6.0 = phi i8 [ 0, %bb.b ], [ 1, %bb.e ], [ 0, %bb.c ]
  %.sroa.58.0 = phi i32 [ %.sroa.078.1.extract.trunc, %bb.b ], [ %.sroa.080.1.extract.trunc, %bb.e ], [ 1414284868, %bb.c ]
  %.sroa.04.0 = phi i8 [ %.sroa.078.0.extract.trunc, %bb.b ], [ %.sroa.080.0.extract.trunc, %bb.e ], [ 1, %bb.c ]
  store i64 1, ptr %0, align 8
  %.sroa.057.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.057.sroa.4.0..sroa_idx, align 8
  %.sroa.057.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %.sroa.057.sroa.5.0..sroa_idx, align 8
  %.sroa.057.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.04.0, ptr %.sroa.057.sroa.6.0..sroa_idx, align 8
  %.sroa.057.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i32 %.sroa.58.0, ptr %.sroa.057.sroa.7.0..sroa_idx, align 1
  %.sroa.057.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %.sroa.6.0, ptr %.sroa.057.sroa.8.0..sroa_idx, align 1
  %.sroa.057.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i32 %.sroa.8.0, ptr %.sroa.057.sroa.9.0..sroa_idx, align 2
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 2, ptr %.sroa.660.0..sroa_idx, align 1
  ret void

bb.e:                                             ; preds = %bb.c
  %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags15NEW_SCRIPT_TAGS.val = load ptr, ptr @_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags15NEW_SCRIPT_TAGS, align 8, !nonnull !10, !align !19, !noundef !10
  %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags15NEW_SCRIPT_TAGS.val86 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags15NEW_SCRIPT_TAGS, i64 8), align 8, !noundef !10
  %i.i = tail call fastcc i40 @_RNvXs0_NtNtCshxhuDJfZv4T_6fontbe8features10propertiesRSTReNtNtCsbZq13ASDQ8l_10font_types3tag3TagEINtB5_17BinarySearchExactBS_BU_E19binary_search_exactB9_(ptr nonnull %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags15NEW_SCRIPT_TAGS.val, i64 %_RNvNtNtCshxhuDJfZv4T_6fontbe8features7ot_tags15NEW_SCRIPT_TAGS.val86, ptr nonnull %1, i64 %i.d) ; 2 uses
  %.sroa.080.0.extract.trunc = trunc i40 %i.i to i8
  %.sroa.080.1.extract.shift = lshr i40 %i.i, 8
  %.sroa.080.1.extract.trunc = trunc nuw i40 %.sroa.080.1.extract.shift to i32
  %i.j = add i32 %.val85, 1061109567
  %i.k = sub i32 -623191334, %.val85
  %i.l = and i32 %i.j, %i.k
  %i.m = lshr i32 %i.l, 2
  %i.n = and i32 %i.m, 538976288
  %i.o = or i32 %i.n, %.val85
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define i32 @_RNvNtNtCshxhuDJfZv4T_6fontbe8features10properties21get_script_short_name(i16 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %0 to i32
  %i.b = tail call { ptr, i64 } @_RNvXsk_NtCs6ycZ7hHN0vs_14icu_properties5namesNtNtNtB7_8provider5names28PropertyScriptToIcuScriptMapNtB5_29PropertyEnumToValueNameLookup3get(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36, i32 noundef %i.a) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_RNvMNtCs2sOuOmxaxiH_7tinystr5asciiINtB2_12TinyAsciiStrKj4_E19try_from_utf8_innerCshxhuDJfZv4T_6fontbe.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 5 uses
  %i.e = icmp samesign ugt i64 %i.d, 4
  br i1 %i.e, label %_RNvMNtCs2sOuOmxaxiH_7tinystr5asciiINtB2_12TinyAsciiStrKj4_E19try_from_utf8_innerCshxhuDJfZv4T_6fontbe.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not22.i = icmp eq i64 %i.d, 0
  br i1 %.not22.i, label %_RNvMNtCs2sOuOmxaxiH_7tinystr5asciiINtB2_12TinyAsciiStrKj4_E19try_from_utf8_innerCshxhuDJfZv4T_6fontbe.exit.thread, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.k, %bb.i, %bb.g, %bb.e
  %.sroa.7.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ %i.z, %bb.k ]
  %.sroa.6.0 = phi i8 [ 0, %bb.e ], [ 0, %bb.g ], [ %i.p, %bb.i ], [ %i.p, %bb.k ]
  %.sroa.5.0 = phi i8 [ 0, %bb.e ], [ %i.k, %bb.g ], [ %i.k, %bb.i ], [ %i.k, %bb.k ]
  %.sroa.06.1.i.lcssa = phi i8 [ %.sroa.06.1.i, %bb.e ], [ %.sroa.06.1.i.1, %bb.g ], [ %.sroa.06.1.i.2, %bb.i ], [ %.sroa.06.1.i.3, %bb.k ]
  %i.f = trunc nuw i8 %.sroa.06.1.i.lcssa to i1
  %.sroa.6.0.insert.ext = zext i8 %.sroa.6.0 to i32
  %.sroa.6.0.insert.shift = shl nuw nsw i32 %.sroa.6.0.insert.ext, 16
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.7.0, %.sroa.6.0.insert.shift
  %.sroa.5.0.insert.ext = zext i8 %.sroa.5.0 to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.5.0.insert.ext, 8
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.0.0.insert.ext = zext i8 %i.g to i32
  %.sroa.0.0.insert.insert14 = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.0.0.insert.ext
  %spec.select = select i1 %i.f, i32 255, i32 %.sroa.0.0.insert.insert14
  br label %_RNvMNtCs2sOuOmxaxiH_7tinystr5asciiINtB2_12TinyAsciiStrKj4_E19try_from_utf8_innerCshxhuDJfZv4T_6fontbe.exit.thread

.lr.ph.i:                                         ; preds = %bb.c
  %i.g = load i8, ptr %i.c, align 1, !alias.scope !4119, !noalias !4120, !noundef !10 ; 3 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.i = icmp slt i8 %i.g, 0
  br i1 %i.i, label %_RNvMNtCs2sOuOmxaxiH_7tinystr5asciiINtB2_12TinyAsciiStrKj4_E19try_from_utf8_innerCshxhuDJfZv4T_6fontbe.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.06.1.i = phi i8 [ 0, %bb.d ], [ 1, %.lr.ph.i ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.d, 1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !4119, !noalias !4120, !noundef !10 ; 5 uses
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.m = icmp slt i8 %i.k, 0
  %i.n = trunc nuw i8 %.sroa.06.1.i to i1
  %or.cond.1 = or i1 %i.m, %i.n
  br i1 %or.cond.1, label %_RNvMNtCs2sOuOmxaxiH_7tinystr5asciiINtB2_12TinyAsciiStrKj4_E19try_from_utf8_innerCshxhuDJfZv4T_6fontbe.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.1
  %.sroa.06.1.i.1 = phi i8 [ 0, %bb.f ], [ 1, %.lr.ph.i.1 ] ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.d, 2
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !4119, !noalias !4120, !noundef !10 ; 4 uses
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.r = icmp slt i8 %i.p, 0
  %i.s = trunc nuw i8 %.sroa.06.1.i.1 to i1
  %or.cond.2 = or i1 %i.r, %i.s
  br i1 %or.cond.2, label %_RNvMNtCs2sOuOmxaxiH_7tinystr5asciiINtB2_12TinyAsciiStrKj4_E19try_from_utf8_innerCshxhuDJfZv4T_6fontbe.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.2
  %.sroa.06.1.i.2 = phi i8 [ 0, %bb.h ], [ 1, %.lr.ph.i.2 ] ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %i.d, 3
  br i1 %exitcond.not.i.2, label %._crit_edge.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !4119, !noalias !4120, !noundef !10 ; 3 uses
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.3
  %i.w = icmp slt i8 %i.u, 0
  %i.x = trunc nuw i8 %.sroa.06.1.i.2 to i1
  %or.cond.3 = or i1 %i.w, %i.x
  br i1 %or.cond.3, label %_RNvMNtCs2sOuOmxaxiH_7tinystr5asciiINtB2_12TinyAsciiStrKj4_E19try_from_utf8_innerCshxhuDJfZv4T_6fontbe.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.3
  %.sroa.06.1.i.3 = phi i8 [ 0, %bb.j ], [ 1, %.lr.ph.i.3 ]
  %i.y = zext i8 %i.u to i32
  %i.z = shl nuw i32 %i.y, 24
  br label %._crit_edge.i

_RNvMNtCs2sOuOmxaxiH_7tinystr5asciiINtB2_12TinyAsciiStrKj4_E19try_from_utf8_innerCshxhuDJfZv4T_6fontbe.exit.thread: ; preds = %bb.c, %._crit_edge.i, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.a
  %.sroa.0.0.insert.insert = phi i32 [ 255, %bb.a ], [ 255, %bb.b ], [ 0, %bb.c ], [ %spec.select, %._crit_edge.i ], [ 255, %bb.j ], [ 255, %bb.h ], [ 255, %bb.f ], [ 255, %bb.d ]
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCshxhuDJfZv4T_6fontbe8features10properties25unicode_script_extensions(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 25)) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs5_NtCs6ycZ7hHN0vs_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed27get_script_extensions_val32(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) @34, i32 noundef %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  store ptr %i.b, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 254, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 254, ptr %.sroa.64.0..sroa_idx, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCshxhuDJfZv4T_6fontbe8features10properties28dist_feature_enabled_scripts(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
end_hunk_0
