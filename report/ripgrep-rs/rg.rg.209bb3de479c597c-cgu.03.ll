Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.03?download=true
inline.NumInlined: 937
inline.NumDeleted: 447
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYBW_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg:bb.a
  br i1 %.not43.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc6borrow3CowShE7reverseCs2NzvFoTxuAy_2rg.exit.i, label %.lr.ph.i, !dbg !638

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not43.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph38.i, !dbg !639

.lr.ph.i:                                         ; preds = %.preheader32.i, %bb.l
  %.sroa.01.0.i34.i = phi i64 [ %i.ac, %bb.l ], [ 2, %.preheader32.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.0.i34.i, !dbg !640 ; 4 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8, !dbg !647
  %.val10.i = load ptr, ptr %i.w, align 8, !dbg !647, !alias.scope !597, !noalias !600, !nonnull !14, !noundef !14
  %i.x = getelementptr i8, ptr %i.v, i64 16, !dbg !647
  %.val11.i = load i64, ptr %i.x, align 8, !dbg !647, !alias.scope !597, !noalias !600, !noundef !14
  %i.y = getelementptr i8, ptr %i.v, i64 -16, !dbg !647
  %.val12.i = load ptr, ptr %i.y, align 8, !dbg !647, !alias.scope !604, !noalias !605, !nonnull !14, !noundef !14
  %i.z = getelementptr i8, ptr %i.v, i64 -8, !dbg !647
  %.val13.i = load i64, ptr %i.z, align 8, !dbg !647, !alias.scope !604, !noalias !605, !noundef !14
  %i.aa = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val10.i, i64 noundef range(i64 0, -9223372036854775808) %.val11.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val12.i, i64 noundef range(i64 0, -9223372036854775808) %.val13.i), !dbg !648, !noalias !653 ; 2 uses
  %.not.i.i18.i = icmp ne i8 %i.aa, -2, !dbg !657
  %i.ab = icmp slt i8 %i.aa, 0, !dbg !659
  %.sroa.0.0.i.i19.i = and i1 %.not.i.i18.i, %i.ab, !dbg !659
  br i1 %.sroa.0.0.i.i19.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB12_NtNtB8_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit.i, label %bb.l, !dbg !647

bb.l:                                             ; preds = %.lr.ph.i
  %i.ac = add nuw nsw i64 %.sroa.01.0.i34.i, 1, !dbg !660 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %i.m, !dbg !638
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB12_NtNtB8_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit.i, label %.lr.ph.i, !dbg !638

.lr.ph38.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i37.i = phi i64 [ %i.ak, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.1.i37.i, !dbg !661 ; 4 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8, !dbg !665
  %.val.i = load ptr, ptr %i.ae, align 8, !dbg !665, !alias.scope !597, !noalias !600, !nonnull !14, !noundef !14
  %i.af = getelementptr i8, ptr %i.ad, i64 16, !dbg !665
  %.val7.i = load i64, ptr %i.af, align 8, !dbg !665, !alias.scope !597, !noalias !600, !noundef !14
  %i.ag = getelementptr i8, ptr %i.ad, i64 -16, !dbg !665
  %.val8.i = load ptr, ptr %i.ag, align 8, !dbg !665, !alias.scope !604, !noalias !605, !nonnull !14, !noundef !14
  %i.ah = getelementptr i8, ptr %i.ad, i64 -8, !dbg !665
  %.val9.i = load i64, ptr %i.ah, align 8, !dbg !665, !alias.scope !604, !noalias !605, !noundef !14
  %i.ai = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCskKLDkoKarTP_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef range(i64 0, -9223372036854775808) %.val7.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val8.i, i64 noundef range(i64 0, -9223372036854775808) %.val9.i), !dbg !666, !noalias !671 ; 2 uses
  %.not.i.i20.i = icmp ne i8 %i.ai, -2, !dbg !675
  %i.aj = icmp slt i8 %i.ai, 0, !dbg !677
  %.sroa.0.0.i.i21.i = and i1 %.not.i.i20.i, %i.aj, !dbg !677
  br i1 %.sroa.0.0.i.i21.i, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB12_NtNtB8_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit.i, !dbg !665

bb.m:                                             ; preds = %.lr.ph38.i
  %i.ak = add nuw nsw i64 %.sroa.01.1.i37.i, 1, !dbg !678 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %i.ak, %i.m, !dbg !639
  br i1 %exitcond46.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB12_NtNtB8_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit.i, label %.lr.ph38.i, !dbg !639

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB12_NtNtB8_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.m, %.lr.ph38.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i34.i, %.lr.ph.i ], [ %.sroa.01.1.i37.i, %.lr.ph38.i ], [ %i.m, %bb.m ], !dbg !679 ; 5 uses
  %i.al = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m, !dbg !680
  tail call void @llvm.assume(i1 %i.al), !dbg !682
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !683
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !683

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB12_NtNtB8_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit.i
  %i.am = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i23.i = icmp eq i64 %i.am, 0
  %or.cond.i = or i1 %.sroa.0.0.i.i.not70.i, %.not.i.i23.i, !dbg !684
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc6borrow3CowShE7reverseCs2NzvFoTxuAy_2rg.exit.i, label %.lr.ph.preheader.i.i.i, !dbg !684

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 %.sroa.01.0), !dbg !685
  %i.an = shl nuw nsw i64 %..i.i, 1, !dbg !689
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB13_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit, !dbg !693

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 32), !dbg !694 ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB15_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #17, !dbg !697
  %i.ao = shl nuw nsw i64 %..i22.i, 1, !dbg !699
  %i.ap = or disjoint i64 %i.ao, 1, !dbg !699
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB13_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit, !dbg !693

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc6borrow3CowShE7reverseCs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg.exit.i.i.i, %.preheader32.i, %bb.n, %bb.j
  %.sroa.0.0.i29.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader32.i ], [ %.sroa.0.0.i556266.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg.exit.i.i.i ]
  %i.aq = shl nuw nsw i64 %.sroa.0.0.i29.i, 1, !dbg !702
  %i.ar = or disjoint i64 %i.aq, 1, !dbg !702
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB13_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit, !dbg !704

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.as = phi i64 [ %i.am, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i556266.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.0.i556266.i, !dbg !705
  br label %.lr.ph.i.i.i, !dbg !714

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.ay, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.au = xor i64 %.sroa.0.017.i.i.i, -1, !dbg !746
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i, !dbg !747
  %i.aw = getelementptr [24 x i8], ptr %i.at, i64 %i.au, !dbg !748
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2NzvFoTxuAy_2rg(ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, i64 noundef 3)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.q, !dbg !714, !noalias !749

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #18, !dbg !750, !noalias !749
  unreachable, !dbg !750

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ay = add nuw nsw i64 %.sroa.0.017.i.i.i, 1, !dbg !751 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, %i.as, !dbg !752
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc6borrow3CowShE7reverseCs2NzvFoTxuAy_2rg.exit.i, label %.lr.ph.i.i.i, !dbg !752

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB13_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc6borrow3CowShE7reverseCs2NzvFoTxuAy_2rg.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ar, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc6borrow3CowShE7reverseCs2NzvFoTxuAy_2rg.exit.i ], [ %i.ap, %bb.p ], [ %i.an, %bb.o ], !dbg !753 ; 2 uses
  %i.az = lshr i64 %.sroa.023.0, 1, !dbg !754
  %i.ba = lshr i64 %.sroa.0.0.i32, 1, !dbg !757
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !759 ; 2 uses
  %i.bb = sub nsw i64 %factor, %i.az, !dbg !759
  %i.bc = add nuw i64 %i.ba, %factor, !dbg !762
  %i.bd = mul i64 %i.bb, %.sroa.0.0, !dbg !764
  %i.be = mul i64 %i.bc, %.sroa.0.0, !dbg !766
  %i.bf = xor i64 %i.be, %i.bd, !dbg !767
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 false), !dbg !768
  %i.bh = trunc nuw nsw i64 %i.bg to i8, !dbg !767
  br label %bb.g, !dbg !771

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit
  %.sroa.02.136 = phi i64 [ %i.bi, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bi = add i64 %.sroa.02.136, -1, !dbg !772    ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi, !dbg !773
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !776, !noundef !14
  %.not28 = icmp ult i8 %i.bk, %.sroa.021.0, !dbg !776
  br i1 %.not28, label %._crit_edge, label %bb.r, !dbg !776

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit ], !dbg !559 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit ], !dbg !561 ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !777
  store i64 %.sroa.023.1.lcssa, ptr %i.bl, align 8, !dbg !780
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !781
  store i8 %.sroa.021.0, ptr %i.bm, align 1, !dbg !783
  br i1 %i.k, label %bb.y, label %bb.z, !dbg !784

bb.r:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi, !dbg !785
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !787, !noundef !14 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1, !dbg !788            ; 5 uses
  %i.bq = lshr i64 %.sroa.023.135, 1, !dbg !791   ; 3 uses
  %i.br = add nuw i64 %i.bp, %i.bq, !dbg !793     ; 5 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br, !dbg !794
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bs, !dbg !796 ; 3 uses
  %i.bu = icmp samesign ugt i64 %i.br, %3, !dbg !806
  %i.bv = trunc i64 %.sroa.023.135 to i1
  %i.bw = or i64 %i.bo, %.sroa.023.135, !dbg !811
  %i.bx = trunc i64 %i.bw to i1, !dbg !811
  %or.cond3.i = or i1 %i.bu, %i.bx, !dbg !811
  br i1 %or.cond3.i, label %bb.s, label %bb.t, !dbg !811

bb.s:                                             ; preds = %bb.r
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.u, label %bb.v, !dbg !813

bb.t:                                             ; preds = %bb.r
  %i.bz = shl nuw nsw i64 %i.br, 1, !dbg !814
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit, !dbg !817

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bv, label %bb.x, label %bb.w, !dbg !818

bb.v:                                             ; preds = %bb.s
  %i.ca = or i64 %i.bp, 1, !dbg !819
  %i.cb = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true), !dbg !822
  %i.cc = trunc nuw nsw i64 %i.cb to i32, !dbg !822
  %i.cd = shl nuw nsw i32 %i.cc, 1, !dbg !837
  %i.ce = xor i32 %i.cd, 126, !dbg !837
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB15_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 384307168202282326) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #17, !dbg !838
  br label %bb.u, !dbg !840

bb.w:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.bp, !dbg !841
  %i.cg = or i64 %i.bq, 1, !dbg !851
  %i.ch = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true), !dbg !853
  %i.ci = trunc nuw nsw i64 %i.ch to i32, !dbg !853
  %i.cj = shl nuw nsw i32 %i.ci, 1, !dbg !858
  %i.ck = xor i32 %i.cj, 126, !dbg !858
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB15_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 384307168202282326) %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #17, !dbg !859
  br label %bb.x, !dbg !860

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYBX_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 384307168202282326) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i64 noundef %i.bp, ptr noalias nofree noundef nonnull %5), !dbg !861
  %i.cl = shl nuw nsw i64 %i.br, 1, !dbg !862
  %i.cm = or disjoint i64 %i.cl, 1, !dbg !862
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit, !dbg !817

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cm, %bb.x ], [ %i.bz, %bb.t ], !dbg !865 ; 2 uses
  %i.cn = icmp ugt i64 %i.bi, 1, !dbg !565
  br i1 %i.cn, label %.lr.ph, label %._crit_edge, !dbg !565

bb.y:                                             ; preds = %._crit_edge
  %i.co = add i64 %.sroa.02.1.lcssa, 1, !dbg !866
  %i.cp = lshr i64 %.sroa.018.0, 1, !dbg !867
  %i.cq = add nuw i64 %i.cp, %.sroa.09.0, !dbg !869
  br label %bb.f, !dbg !554

bb.z:                                             ; preds = %._crit_edge
  %6 = and i64 %.sroa.023.1.lcssa, 1, !dbg !870
  %.not30 = icmp eq i64 %6, 0, !dbg !870
  br i1 %.not30, label %bb.aa, label %bb.ab, !dbg !873

bb.aa:                                            ; preds = %bb.z
  %i.cr = or i64 %1, 1, !dbg !874
  %i.cs = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cr, i1 true), !dbg !876
  %i.ct = trunc nuw nsw i64 %i.cs to i32, !dbg !876
  %i.cu = shl nuw nsw i32 %i.ct, 1, !dbg !881
  %i.cv = xor i32 %i.cu, 126, !dbg !881
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENvYB15_NtNtBa_3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #17, !dbg !882
  br label %bb.ab, !dbg !883

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !885
  br label %bb.ac, !dbg !886

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !886
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCINvMNtNtB10_5flags6hiargsNtB2p_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB10_5files0EE0E0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !887 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [66 x i8], align 1                ; 4 uses
  %i.h = alloca [528 x i8], align 8               ; 4 uses
  %i.i = icmp samesign ult i64 %1, 2, !dbg !888
  br i1 %i.i, label %bb.ac, label %bb.b, !dbg !888

bb.b:                                             ; preds = %bb.a
  %i.j = udiv i64 4611686018427387904, %1, !dbg !890
  %i.k = urem i64 4611686018427387904, %1, !dbg !895
  %.not = icmp ne i64 %i.k, 0, !dbg !897
  %i.l = zext i1 %.not to i64, !dbg !897
  %.sroa.0.0 = add nuw nsw i64 %i.j, %i.l, !dbg !897 ; 2 uses
  %i.m = icmp samesign ult i64 %1, 4097, !dbg !899
  br i1 %i.m, label %bb.d, label %bb.c, !dbg !899

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !901
  br label %bb.e, !dbg !901

bb.d:                                             ; preds = %bb.b
  %i.o = lshr i64 %1, 1, !dbg !902
  %i.p = sub nuw nsw i64 %1, %i.o, !dbg !903
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.p, i64 64), !dbg !904
  br label %bb.e, !dbg !908

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.n, %bb.c ], !dbg !909 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !913
  br label %bb.f, !dbg !916

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !921 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.df, %bb.y ], !dbg !922 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dd, %bb.y ], !dbg !923 ; 3 uses
  %i.q = icmp ult i64 %.sroa.09.0, %1, !dbg !924  ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.g, !dbg !924

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EE0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.bw, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EE0E0EB17_.exit ], [ 0, %bb.f ], !dbg !926 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EE0E0EB17_.exit ], [ 1, %bb.f ], !dbg !926 ; 2 uses
  %i.r = icmp ugt i64 %.sroa.02.0, 1, !dbg !927
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !dbg !927

bb.h:                                             ; preds = %bb.f
  %i.s = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !928 ; 11 uses
  %i.t = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.09.0, !dbg !933 ; 7 uses
  %.not.i31 = icmp ult i64 %i.s, %.sroa.01.0, !dbg !938
  br i1 %.not.i31, label %bb.i, label %bb.j, !dbg !938

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_5files0EE0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !942

bb.j:                                             ; preds = %bb.h
  %i.u = icmp samesign ult i64 %i.s, 2, !dbg !943
  br i1 %i.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i, label %bb.k, !dbg !943

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 120, !dbg !947
  %i.w = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.v), !dbg !953, !noalias !969 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0, !dbg !953
  %i.y = extractvalue { ptr, i64 } %i.w, 1, !dbg !953
  %i.z = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.t), !dbg !977, !noalias !978 ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0, !dbg !977
  %i.ab = extractvalue { ptr, i64 } %i.z, 1, !dbg !977
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !979, !noalias !985
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.y), !dbg !989, !noalias !978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !990, !noalias !985
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab), !dbg !991, !noalias !978
  %i.ac = call noundef i8 @_RNvNtCsG258MDvU3F_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.e), !dbg !992, !noalias !978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !993, !noalias !985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !993, !noalias !985
  %i.ad = icmp ne i8 %i.ac, 1, !dbg !994          ; 2 uses
  %.not27.i = icmp eq i64 %i.s, 2, !dbg !1000     ; 2 uses
  br i1 %i.ad, label %.preheader16.i, label %.preheader.i, !dbg !1002

.preheader16.i:                                   ; preds = %bb.k
  br i1 %.not27.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i, label %.lr.ph.i, !dbg !1003

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not27.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph22.i, !dbg !1004

.lr.ph.i:                                         ; preds = %.preheader16.i, %bb.l
  %.sroa.01.0.i18.i = phi i64 [ %i.ao, %bb.l ], [ 2, %.preheader16.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %.sroa.01.0.i18.i, !dbg !1005 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -120, !dbg !1009
  %i.ag = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ae), !dbg !1013, !noalias !1016 ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.ag, 0, !dbg !1013
  %i.ai = extractvalue { ptr, i64 } %i.ag, 1, !dbg !1013
  %i.aj = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.af), !dbg !1021, !noalias !978 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0, !dbg !1021
  %i.al = extractvalue { ptr, i64 } %i.aj, 1, !dbg !1021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1022, !noalias !1024
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.ai), !dbg !1027, !noalias !978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1028, !noalias !1024
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.al), !dbg !1029, !noalias !978
  %i.am = call noundef i8 @_RNvNtCsG258MDvU3F_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.c), !dbg !1030, !noalias !978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1031, !noalias !1024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1031, !noalias !1024
  %i.an = icmp eq i8 %i.am, 1, !dbg !1032
  br i1 %i.an, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_5files0EE0E0EB16_.exit.i, label %bb.l, !dbg !1034

bb.l:                                             ; preds = %.lr.ph.i
  %i.ao = add nuw nsw i64 %.sroa.01.0.i18.i, 1, !dbg !1035 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %i.s, !dbg !1003
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_5files0EE0E0EB16_.exit.i, label %.lr.ph.i, !dbg !1003

.lr.ph22.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i21.i = phi i64 [ %i.az, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %.sroa.01.1.i21.i, !dbg !1036 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -120, !dbg !1040
  %i.ar = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ap), !dbg !1044, !noalias !1047 ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.ar, 0, !dbg !1044
  %i.at = extractvalue { ptr, i64 } %i.ar, 1, !dbg !1044
  %i.au = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aq), !dbg !1052, !noalias !978 ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.au, 0, !dbg !1052
  %i.aw = extractvalue { ptr, i64 } %i.au, 1, !dbg !1052
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1053, !noalias !1055
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %i.at), !dbg !1058, !noalias !978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1059, !noalias !1055
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.aw), !dbg !1060, !noalias !978
  %i.ax = call noundef i8 @_RNvNtCsG258MDvU3F_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !dbg !1061, !noalias !978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1062, !noalias !1055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1062, !noalias !1055
  %i.ay = icmp eq i8 %i.ax, 1, !dbg !1063
  br i1 %i.ay, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_5files0EE0E0EB16_.exit.i, !dbg !1065

bb.m:                                             ; preds = %.lr.ph22.i
  %i.az = add nuw nsw i64 %.sroa.01.1.i21.i, 1, !dbg !1066 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %i.az, %i.s, !dbg !1004
  br i1 %exitcond30.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_5files0EE0E0EB16_.exit.i, label %.lr.ph22.i, !dbg !1004

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_5files0EE0E0EB16_.exit.i: ; preds = %bb.m, %.lr.ph22.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.s, %bb.l ], [ %.sroa.01.0.i18.i, %.lr.ph.i ], [ %.sroa.01.1.i21.i, %.lr.ph22.i ], [ %i.s, %bb.m ], !dbg !1067 ; 5 uses
  %i.ba = icmp samesign ule i64 %.sroa.0.0.i.i, %i.s, !dbg !1068
  call void @llvm.assume(i1 %i.ba), !dbg !1070
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !1071
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !1071

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_5files0EE0E0EB16_.exit.i
  %i.bb = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bb, 0
  %or.cond.i = or i1 %i.ad, %.not.i.i.i, !dbg !1072
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i, label %.lr.ph.preheader.i.i.i, !dbg !1072

bb.o:                                             ; preds = %bb.i
  %..i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 76861433640456466) %i.s, i64 %.sroa.01.0), !dbg !1073
  %i.bc = shl nuw nsw i64 %..i.i, 1, !dbg !1077
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EE0E0EB17_.exit, !dbg !1080

bb.p:                                             ; preds = %bb.i
  %..i7.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 76861433640456466) %i.s, i64 32), !dbg !1081 ; 2 uses
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB19_5flags6hiargsNtB2z_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB19_5files0EE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef %..i7.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !1084
  %i.bd = shl nuw nsw i64 %..i7.i, 1, !dbg !1086
  %i.be = or disjoint i64 %i.bd, 1, !dbg !1086
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EE0E0EB17_.exit, !dbg !1080

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i, %.preheader16.i, %bb.n, %bb.j
  %.sroa.0.0.i13.i = phi i64 [ %i.s, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader16.i ], [ %.sroa.0.0.i394650.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i ]
  %i.bf = shl nuw nsw i64 %.sroa.0.0.i13.i, 1, !dbg !1089
  %i.bg = or disjoint i64 %i.bf, 1, !dbg !1089
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EE0E0EB17_.exit, !dbg !1091

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.bh = phi i64 [ %i.bb, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i394650.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %.sroa.0.0.i394650.i, !dbg !1092
  br label %.lr.ph.i.i.i, !dbg !1101

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bn, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bj = xor i64 %.sroa.0.017.i.i.i, -1, !dbg !1122
  %i.bk = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %.sroa.0.017.i.i.i, !dbg !1123
  %i.bl = getelementptr [120 x i8], ptr %i.bi, i64 %i.bj, !dbg !1124
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2NzvFoTxuAy_2rg(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, i64 noundef 15)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i unwind label %bb.q, !dbg !1101, !noalias !978

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #18, !dbg !1125, !noalias !978
  unreachable, !dbg !1125

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bn = add nuw nsw i64 %.sroa.0.017.i.i.i, 1, !dbg !1126 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bn, %i.bh, !dbg !1127
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i, label %.lr.ph.i.i.i, !dbg !1127

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EE0E0EB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.bg, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i ], [ %i.be, %bb.p ], [ %i.bc, %bb.o ], !dbg !1128 ; 2 uses
  %i.bo = lshr i64 %.sroa.023.0, 1, !dbg !1129
  %i.bp = lshr i64 %.sroa.0.0.i32, 1, !dbg !1132
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !1134 ; 2 uses
  %i.bq = sub nsw i64 %factor, %i.bo, !dbg !1134
  %i.br = add nuw i64 %i.bp, %factor, !dbg !1137
  %i.bs = mul i64 %i.bq, %.sroa.0.0, !dbg !1139
  %i.bt = mul i64 %i.br, %.sroa.0.0, !dbg !1141
  %i.bu = xor i64 %i.bt, %i.bs, !dbg !1142
  %i.bv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 false), !dbg !1143
  %i.bw = trunc nuw nsw i64 %i.bv to i8, !dbg !1142
  br label %bb.g, !dbg !1146

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EE0E0EB1a_.exit
  %.sroa.02.136 = phi i64 [ %i.bx, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EE0E0EB1a_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EE0E0EB1a_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bx = add i64 %.sroa.02.136, -1, !dbg !1147   ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bx, !dbg !1148
  %i.bz = load i8, ptr %i.by, align 1, !dbg !1151, !noundef !14
  %.not28 = icmp ult i8 %i.bz, %.sroa.021.0, !dbg !1151
  br i1 %.not28, label %._crit_edge, label %bb.r, !dbg !1151

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EE0E0EB1a_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EE0E0EB1a_.exit ], !dbg !921 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EE0E0EB1a_.exit ], !dbg !923 ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.02.1.lcssa, !dbg !1152
  store i64 %.sroa.023.1.lcssa, ptr %i.ca, align 8, !dbg !1155
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.1.lcssa, !dbg !1156
  store i8 %.sroa.021.0, ptr %i.cb, align 1, !dbg !1158
  br i1 %i.q, label %bb.y, label %bb.z, !dbg !1159

bb.r:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bx, !dbg !1160
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !1162, !noundef !14 ; 3 uses
  %i.ce = lshr i64 %i.cd, 1, !dbg !1163           ; 5 uses
  %i.cf = lshr i64 %.sroa.023.135, 1, !dbg !1166  ; 3 uses
  %i.cg = add nuw i64 %i.ce, %i.cf, !dbg !1168    ; 5 uses
  %i.ch = sub i64 %.sroa.09.0, %i.cg, !dbg !1169
  %i.ci = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.ch, !dbg !1171 ; 3 uses
  %i.cj = icmp samesign ugt i64 %i.cg, %3, !dbg !1180
  %i.ck = trunc i64 %.sroa.023.135 to i1
  %i.cl = or i64 %i.cd, %.sroa.023.135, !dbg !1185
  %i.cm = trunc i64 %i.cl to i1, !dbg !1185
  %or.cond3.i = or i1 %i.cj, %i.cm, !dbg !1185
  br i1 %or.cond3.i, label %bb.s, label %bb.t, !dbg !1185

bb.s:                                             ; preds = %bb.r
  %i.cn = trunc i64 %i.cd to i1
  br i1 %i.cn, label %bb.u, label %bb.v, !dbg !1187

bb.t:                                             ; preds = %bb.r
  %i.co = shl nuw nsw i64 %i.cg, 1, !dbg !1188
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EE0E0EB1a_.exit, !dbg !1191

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ck, label %bb.x, label %bb.w, !dbg !1192

bb.v:                                             ; preds = %bb.s
  %i.cp = or i64 %i.ce, 1, !dbg !1193
  %i.cq = call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true), !dbg !1196
  %i.cr = trunc nuw nsw i64 %i.cq to i32, !dbg !1196
  %i.cs = shl nuw nsw i32 %i.cr, 1, !dbg !1207
  %i.ct = xor i32 %i.cs, 126, !dbg !1207
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB19_5flags6hiargsNtB2z_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB19_5files0EE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 76861433640456466) %i.ce, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !1208
  br label %bb.u, !dbg !1210

bb.w:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw [120 x i8], ptr %i.ci, i64 %i.ce, !dbg !1211
  %i.cv = or i64 %i.cf, 1, !dbg !1221
  %i.cw = call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true), !dbg !1223
  %i.cx = trunc nuw nsw i64 %i.cw to i32, !dbg !1223
  %i.cy = shl nuw nsw i32 %i.cx, 1, !dbg !1228
  %i.cz = xor i32 %i.cy, 126, !dbg !1228
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB19_5flags6hiargsNtB2z_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB19_5files0EE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.cu, i64 noundef range(i64 0, 76861433640456466) %i.cf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !1229
  br label %bb.x, !dbg !1230

bb.x:                                             ; preds = %bb.w, %bb.u
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCINvMNtNtB11_5flags6hiargsNtB2q_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB11_5files0EE0E0EB11_(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 76861433640456466) %i.cg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i64 noundef %i.ce, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !1231
  %i.da = shl nuw nsw i64 %i.cg, 1, !dbg !1232
  %i.db = or disjoint i64 %i.da, 1, !dbg !1232
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EE0E0EB1a_.exit, !dbg !1191

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EE0E0EB1a_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.db, %bb.x ], [ %i.co, %bb.t ], !dbg !1235 ; 2 uses
  %i.dc = icmp ugt i64 %i.bx, 1, !dbg !927
  br i1 %i.dc, label %.lr.ph, label %._crit_edge, !dbg !927

bb.y:                                             ; preds = %._crit_edge
  %i.dd = add i64 %.sroa.02.1.lcssa, 1, !dbg !1236
  %i.de = lshr i64 %.sroa.018.0, 1, !dbg !1237
  %i.df = add nuw i64 %i.de, %.sroa.09.0, !dbg !1239
  br label %bb.f, !dbg !916

bb.z:                                             ; preds = %._crit_edge
  %6 = and i64 %.sroa.023.1.lcssa, 1, !dbg !1240
  %.not30 = icmp eq i64 %6, 0, !dbg !1240
  br i1 %.not30, label %bb.aa, label %bb.ab, !dbg !1243

bb.aa:                                            ; preds = %bb.z
  %i.dg = or i64 %1, 1, !dbg !1244
  %i.dh = call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.dg, i1 true), !dbg !1246
  %i.di = trunc nuw nsw i64 %i.dh to i32, !dbg !1246
  %i.dj = shl nuw nsw i32 %i.di, 1, !dbg !1251
  %i.dk = xor i32 %i.dj, 126, !dbg !1251
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB19_5flags6hiargsNtB2z_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB19_5files0EE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %i.dk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !1252
  br label %bb.ab, !dbg !1253

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !1254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !1255
  br label %bb.ac, !dbg !1256

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !1256
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCINvMNtNtB10_5flags6hiargsNtB2p_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB10_6search0EE0E0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1257 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [66 x i8], align 1                ; 4 uses
  %i.h = alloca [528 x i8], align 8               ; 4 uses
  %i.i = icmp samesign ult i64 %1, 2, !dbg !1258
  br i1 %i.i, label %bb.ac, label %bb.b, !dbg !1258

bb.b:                                             ; preds = %bb.a
  %i.j = udiv i64 4611686018427387904, %1, !dbg !1260
  %i.k = urem i64 4611686018427387904, %1, !dbg !1265
  %.not = icmp ne i64 %i.k, 0, !dbg !1267
  %i.l = zext i1 %.not to i64, !dbg !1267
  %.sroa.0.0 = add nuw nsw i64 %i.j, %i.l, !dbg !1267 ; 2 uses
  %i.m = icmp samesign ult i64 %1, 4097, !dbg !1269
  br i1 %i.m, label %bb.d, label %bb.c, !dbg !1269

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !1271
  br label %bb.e, !dbg !1271

bb.d:                                             ; preds = %bb.b
  %i.o = lshr i64 %1, 1, !dbg !1272
  %i.p = sub nuw nsw i64 %1, %i.o, !dbg !1273
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.p, i64 64), !dbg !1274
  br label %bb.e, !dbg !1278

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.n, %bb.c ], !dbg !1279 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !1280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !1283
  br label %bb.f, !dbg !1286

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !1291 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.df, %bb.y ], !dbg !1292 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dd, %bb.y ], !dbg !1293 ; 3 uses
  %i.q = icmp ult i64 %.sroa.09.0, %1, !dbg !1294 ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.g, !dbg !1294

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EE0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.bw, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EE0E0EB17_.exit ], [ 0, %bb.f ], !dbg !1296 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EE0E0EB17_.exit ], [ 1, %bb.f ], !dbg !1296 ; 2 uses
  %i.r = icmp ugt i64 %.sroa.02.0, 1, !dbg !1297
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !dbg !1297

bb.h:                                             ; preds = %bb.f
  %i.s = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !1298 ; 11 uses
  %i.t = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.09.0, !dbg !1303 ; 7 uses
  %.not.i31 = icmp ult i64 %i.s, %.sroa.01.0, !dbg !1308
  br i1 %.not.i31, label %bb.i, label %bb.j, !dbg !1308

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_6search0EE0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !1312

bb.j:                                             ; preds = %bb.h
  %i.u = icmp samesign ult i64 %i.s, 2, !dbg !1313
  br i1 %i.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i, label %bb.k, !dbg !1313

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 120, !dbg !1317
  %i.w = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.v), !dbg !1323, !noalias !1329 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0, !dbg !1323
  %i.y = extractvalue { ptr, i64 } %i.w, 1, !dbg !1323
  %i.z = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.t), !dbg !1337, !noalias !1338 ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0, !dbg !1337
  %i.ab = extractvalue { ptr, i64 } %i.z, 1, !dbg !1337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !1339, !noalias !1342
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.y), !dbg !1346, !noalias !1338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !1347, !noalias !1342
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab), !dbg !1348, !noalias !1338
  %i.ac = call noundef i8 @_RNvNtCsG258MDvU3F_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.e), !dbg !1349, !noalias !1338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1350, !noalias !1342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !1350, !noalias !1342
  %i.ad = icmp ne i8 %i.ac, 1, !dbg !1351         ; 2 uses
  %.not27.i = icmp eq i64 %i.s, 2, !dbg !1356     ; 2 uses
  br i1 %i.ad, label %.preheader16.i, label %.preheader.i, !dbg !1358

.preheader16.i:                                   ; preds = %bb.k
  br i1 %.not27.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i, label %.lr.ph.i, !dbg !1359

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not27.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph22.i, !dbg !1360

.lr.ph.i:                                         ; preds = %.preheader16.i, %bb.l
  %.sroa.01.0.i18.i = phi i64 [ %i.ao, %bb.l ], [ 2, %.preheader16.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %.sroa.01.0.i18.i, !dbg !1361 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -120, !dbg !1365
  %i.ag = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ae), !dbg !1369, !noalias !1372 ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.ag, 0, !dbg !1369
  %i.ai = extractvalue { ptr, i64 } %i.ag, 1, !dbg !1369
  %i.aj = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.af), !dbg !1377, !noalias !1338 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0, !dbg !1377
  %i.al = extractvalue { ptr, i64 } %i.aj, 1, !dbg !1377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1378, !noalias !1380
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.ai), !dbg !1383, !noalias !1338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1384, !noalias !1380
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.al), !dbg !1385, !noalias !1338
  %i.am = call noundef i8 @_RNvNtCsG258MDvU3F_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.c), !dbg !1386, !noalias !1338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1387, !noalias !1380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1387, !noalias !1380
  %i.an = icmp eq i8 %i.am, 1, !dbg !1388
  br i1 %i.an, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_6search0EE0E0EB16_.exit.i, label %bb.l, !dbg !1390

bb.l:                                             ; preds = %.lr.ph.i
  %i.ao = add nuw nsw i64 %.sroa.01.0.i18.i, 1, !dbg !1391 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %i.s, !dbg !1359
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_6search0EE0E0EB16_.exit.i, label %.lr.ph.i, !dbg !1359

.lr.ph22.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i21.i = phi i64 [ %i.az, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %.sroa.01.1.i21.i, !dbg !1392 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -120, !dbg !1396
  %i.ar = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ap), !dbg !1400, !noalias !1403 ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.ar, 0, !dbg !1400
  %i.at = extractvalue { ptr, i64 } %i.ar, 1, !dbg !1400
  %i.au = call { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aq), !dbg !1408, !noalias !1338 ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.au, 0, !dbg !1408
  %i.aw = extractvalue { ptr, i64 } %i.au, 1, !dbg !1408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1409, !noalias !1411
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %i.at), !dbg !1414, !noalias !1338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1415, !noalias !1411
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.aw), !dbg !1416, !noalias !1338
  %i.ax = call noundef i8 @_RNvNtCsG258MDvU3F_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !dbg !1417, !noalias !1338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1418, !noalias !1411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1418, !noalias !1411
  %i.ay = icmp eq i8 %i.ax, 1, !dbg !1419
  br i1 %i.ay, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_6search0EE0E0EB16_.exit.i, !dbg !1421

bb.m:                                             ; preds = %.lr.ph22.i
  %i.az = add nuw nsw i64 %.sroa.01.1.i21.i, 1, !dbg !1422 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %i.az, %i.s, !dbg !1360
  br i1 %exitcond30.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_6search0EE0E0EB16_.exit.i, label %.lr.ph22.i, !dbg !1360

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_6search0EE0E0EB16_.exit.i: ; preds = %bb.m, %.lr.ph22.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.s, %bb.l ], [ %.sroa.01.0.i18.i, %.lr.ph.i ], [ %.sroa.01.1.i21.i, %.lr.ph22.i ], [ %i.s, %bb.m ], !dbg !1423 ; 5 uses
  %i.ba = icmp samesign ule i64 %.sroa.0.0.i.i, %i.s, !dbg !1424
  call void @llvm.assume(i1 %i.ba), !dbg !1426
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !1427
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !1427

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB16_5flags6hiargsNtB2w_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB16_6search0EE0E0EB16_.exit.i
  %i.bb = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bb, 0
  %or.cond.i = or i1 %i.ad, %.not.i.i.i, !dbg !1428
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i, label %.lr.ph.preheader.i.i.i, !dbg !1428

bb.o:                                             ; preds = %bb.i
  %..i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 76861433640456466) %i.s, i64 %.sroa.01.0), !dbg !1429
  %i.bc = shl nuw nsw i64 %..i.i, 1, !dbg !1433
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EE0E0EB17_.exit, !dbg !1436

bb.p:                                             ; preds = %bb.i
  %..i7.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 76861433640456466) %i.s, i64 32), !dbg !1437 ; 2 uses
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB19_5flags6hiargsNtB2z_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB19_6search0EE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef %..i7.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !1440
  %i.bd = shl nuw nsw i64 %..i7.i, 1, !dbg !1442
  %i.be = or disjoint i64 %i.bd, 1, !dbg !1442
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EE0E0EB17_.exit, !dbg !1436

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i, %.preheader16.i, %bb.n, %bb.j
  %.sroa.0.0.i13.i = phi i64 [ %i.s, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader16.i ], [ %.sroa.0.0.i394650.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i ]
  %i.bf = shl nuw nsw i64 %.sroa.0.0.i13.i, 1, !dbg !1445
  %i.bg = or disjoint i64 %i.bf, 1, !dbg !1445
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EE0E0EB17_.exit, !dbg !1447

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.bh = phi i64 [ %i.bb, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i394650.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %.sroa.0.0.i394650.i, !dbg !1448
  br label %.lr.ph.i.i.i, !dbg !1452

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bn, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bj = xor i64 %.sroa.0.017.i.i.i, -1, !dbg !1459
  %i.bk = getelementptr inbounds nuw [120 x i8], ptr %i.t, i64 %.sroa.0.017.i.i.i, !dbg !1460
  %i.bl = getelementptr [120 x i8], ptr %i.bi, i64 %i.bj, !dbg !1461
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2NzvFoTxuAy_2rg(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, i64 noundef 15)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i unwind label %bb.q, !dbg !1452, !noalias !1338

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #18, !dbg !1462, !noalias !1338
  unreachable, !dbg !1462

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEB14_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bn = add nuw nsw i64 %.sroa.0.017.i.i.i, 1, !dbg !1463 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bn, %i.bh, !dbg !1464
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i, label %.lr.ph.i.i.i, !dbg !1464

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB17_5flags6hiargsNtB2x_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EE0E0EB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.bg, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2NzvFoTxuAy_2rg8haystack8Haystack7reverseBy_.exit.i ], [ %i.be, %bb.p ], [ %i.bc, %bb.o ], !dbg !1465 ; 2 uses
  %i.bo = lshr i64 %.sroa.023.0, 1, !dbg !1466
  %i.bp = lshr i64 %.sroa.0.0.i32, 1, !dbg !1469
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !1471 ; 2 uses
  %i.bq = sub nsw i64 %factor, %i.bo, !dbg !1471
  %i.br = add nuw i64 %i.bp, %factor, !dbg !1474
  %i.bs = mul i64 %i.bq, %.sroa.0.0, !dbg !1476
  %i.bt = mul i64 %i.br, %.sroa.0.0, !dbg !1478
  %i.bu = xor i64 %i.bt, %i.bs, !dbg !1479
  %i.bv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 false), !dbg !1480
  %i.bw = trunc nuw nsw i64 %i.bv to i8, !dbg !1479
  br label %bb.g, !dbg !1483

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EE0E0EB1a_.exit
  %.sroa.02.136 = phi i64 [ %i.bx, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EE0E0EB1a_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EE0E0EB1a_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bx = add i64 %.sroa.02.136, -1, !dbg !1484   ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bx, !dbg !1485
  %i.bz = load i8, ptr %i.by, align 1, !dbg !1488, !noundef !14
  %.not28 = icmp ult i8 %i.bz, %.sroa.021.0, !dbg !1488
  br i1 %.not28, label %._crit_edge, label %bb.r, !dbg !1488

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EE0E0EB1a_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EE0E0EB1a_.exit ], !dbg !1291 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EE0E0EB1a_.exit ], !dbg !1293 ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.02.1.lcssa, !dbg !1489
  store i64 %.sroa.023.1.lcssa, ptr %i.ca, align 8, !dbg !1492
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.1.lcssa, !dbg !1493
  store i8 %.sroa.021.0, ptr %i.cb, align 1, !dbg !1495
  br i1 %i.q, label %bb.y, label %bb.z, !dbg !1496

bb.r:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bx, !dbg !1497
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !1499, !noundef !14 ; 3 uses
  %i.ce = lshr i64 %i.cd, 1, !dbg !1500           ; 5 uses
  %i.cf = lshr i64 %.sroa.023.135, 1, !dbg !1503  ; 3 uses
  %i.cg = add nuw i64 %i.ce, %i.cf, !dbg !1505    ; 5 uses
  %i.ch = sub i64 %.sroa.09.0, %i.cg, !dbg !1506
  %i.ci = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.ch, !dbg !1508 ; 3 uses
  %i.cj = icmp samesign ugt i64 %i.cg, %3, !dbg !1517
  %i.ck = trunc i64 %.sroa.023.135 to i1
  %i.cl = or i64 %i.cd, %.sroa.023.135, !dbg !1522
  %i.cm = trunc i64 %i.cl to i1, !dbg !1522
  %or.cond3.i = or i1 %i.cj, %i.cm, !dbg !1522
  br i1 %or.cond3.i, label %bb.s, label %bb.t, !dbg !1522

bb.s:                                             ; preds = %bb.r
  %i.cn = trunc i64 %i.cd to i1
  br i1 %i.cn, label %bb.u, label %bb.v, !dbg !1524

bb.t:                                             ; preds = %bb.r
  %i.co = shl nuw nsw i64 %i.cg, 1, !dbg !1525
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EE0E0EB1a_.exit, !dbg !1528

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ck, label %bb.x, label %bb.w, !dbg !1529

bb.v:                                             ; preds = %bb.s
  %i.cp = or i64 %i.ce, 1, !dbg !1530
  %i.cq = call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true), !dbg !1533
  %i.cr = trunc nuw nsw i64 %i.cq to i32, !dbg !1533
  %i.cs = shl nuw nsw i32 %i.cr, 1, !dbg !1544
  %i.ct = xor i32 %i.cs, 126, !dbg !1544
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB19_5flags6hiargsNtB2z_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB19_6search0EE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 76861433640456466) %i.ce, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !1545
  br label %bb.u, !dbg !1547

bb.w:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw [120 x i8], ptr %i.ci, i64 %i.ce, !dbg !1548
  %i.cv = or i64 %i.cf, 1, !dbg !1558
  %i.cw = call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true), !dbg !1560
  %i.cx = trunc nuw nsw i64 %i.cw to i32, !dbg !1560
  %i.cy = shl nuw nsw i32 %i.cx, 1, !dbg !1565
  %i.cz = xor i32 %i.cy, 126, !dbg !1565
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB19_5flags6hiargsNtB2z_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB19_6search0EE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.cu, i64 noundef range(i64 0, 76861433640456466) %i.cf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !1566
  br label %bb.x, !dbg !1567

bb.x:                                             ; preds = %bb.w, %bb.u
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCINvMNtNtB11_5flags6hiargsNtB2q_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB11_6search0EE0E0EB11_(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 76861433640456466) %i.cg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i64 noundef %i.ce, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !1568
  %i.da = shl nuw nsw i64 %i.cg, 1, !dbg !1569
  %i.db = or disjoint i64 %i.da, 1, !dbg !1569
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EE0E0EB1a_.exit, !dbg !1528

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB2A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EE0E0EB1a_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.db, %bb.x ], [ %i.co, %bb.t ], !dbg !1572 ; 2 uses
  %i.dc = icmp ugt i64 %i.bx, 1, !dbg !1297
  br i1 %i.dc, label %.lr.ph, label %._crit_edge, !dbg !1297

bb.y:                                             ; preds = %._crit_edge
  %i.dd = add i64 %.sroa.02.1.lcssa, 1, !dbg !1573
  %i.de = lshr i64 %.sroa.018.0, 1, !dbg !1574
  %i.df = add nuw i64 %i.de, %.sroa.09.0, !dbg !1576
  br label %bb.f, !dbg !1286

bb.z:                                             ; preds = %._crit_edge
  %6 = and i64 %.sroa.023.1.lcssa, 1, !dbg !1577
  %.not30 = icmp eq i64 %6, 0, !dbg !1577
  br i1 %.not30, label %bb.aa, label %bb.ab, !dbg !1580

bb.aa:                                            ; preds = %bb.z
  %i.dg = or i64 %1, 1, !dbg !1581
  %i.dh = call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.dg, i1 true), !dbg !1583
  %i.di = trunc nuw nsw i64 %i.dh to i32, !dbg !1583
  %i.dj = shl nuw nsw i32 %i.di, 1, !dbg !1588
  %i.dk = xor i32 %i.dj, 126, !dbg !1588
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB19_5flags6hiargsNtB2z_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB19_6search0EE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %i.dk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !1589
  br label %bb.ab, !dbg !1590

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !1591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !1592
  br label %bb.ac, !dbg !1593

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !1593
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB2U_15HyperlinkFormatNtB2W_4Flag11doc_choices7CHOICES00E0EB2Y_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1594 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !1595
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !1595

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !1597
  %i.e = urem i64 4611686018427387904, %1, !dbg !1602
  %.not = icmp ne i64 %i.e, 0, !dbg !1604
  %i.f = zext i1 %.not to i64, !dbg !1604
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !1604 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !1606
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !1606

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !1608
  br label %bb.e, !dbg !1608

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !1609
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !1610
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !1611
  br label %bb.e, !dbg !1615

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ], !dbg !1616 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1620
  br label %bb.f, !dbg !1623

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !1628 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cr, %bb.y ], !dbg !1629 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cp, %bb.y ], !dbg !1630 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !1631 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !1631

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag11doc_choices7CHOICES00E0EB36_.exit
  %.sroa.021.0 = phi i8 [ %i.bi, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag11doc_choices7CHOICES00E0EB36_.exit ], [ 0, %bb.f ], !dbg !1633 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag11doc_choices7CHOICES00E0EB36_.exit ], [ 1, %bb.f ], !dbg !1633 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !1634
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !dbg !1634

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !1635 ; 11 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0, !dbg !1640 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0, !dbg !1645
  br i1 %.not.i31, label %bb.i, label %bb.j, !dbg !1645

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag11doc_choices7CHOICES00E0EB35_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !1649

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2, !dbg !1650
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i, label %bb.k, !dbg !1650

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 104, !dbg !1654
  %.val14.i = load i16, ptr %i.p, align 8, !dbg !1654, !range !1656, !alias.scope !1657, !noalias !1660, !noundef !14 ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 106, !dbg !1654
  %.val15.i = load i16, ptr %i.q, align 2, !dbg !1654, !alias.scope !1657, !noalias !1660 ; 3 uses
  %i.r = getelementptr i8, ptr %i.n, i64 48, !dbg !1654
  %.val16.i = load i16, ptr %i.r, align 8, !dbg !1654, !range !1656, !alias.scope !1657, !noalias !1660, !noundef !14
  %i.s = getelementptr i8, ptr %i.n, i64 50, !dbg !1654
  %.val17.i = load i16, ptr %i.s, align 2, !dbg !1654, !alias.scope !1657, !noalias !1660
  %i.t = trunc nuw i16 %.val14.i to i1, !dbg !1663
  %i.u = trunc nuw i16 %.val16.i to i1, !dbg !1677
  %.sroa.0.0.i4.i.i = select i1 %i.u, i16 %.val17.i, i16 32767, !dbg !1677
  %i.v = icmp slt i16 %.val15.i, %.sroa.0.0.i4.i.i, !dbg !1680
  %i.w = select i1 %i.t, i1 %i.v, i1 false, !dbg !1663 ; 2 uses
  %.not40.i = icmp eq i64 %i.m, 2, !dbg !1685     ; 2 uses
  br i1 %i.w, label %.preheader.i, label %.preheader29.i, !dbg !1687

.preheader29.i:                                   ; preds = %bb.k
  br i1 %.not40.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i, label %.lr.ph.i, !dbg !1688

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not40.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph35.i, !dbg !1689

.lr.ph.i:                                         ; preds = %.preheader29.i, %bb.l
  %.val13.i = phi i16 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader29.i ], !dbg !1690
  %.val12.i = phi i16 [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader29.i ], !dbg !1690
  %.sroa.01.0.i31.i = phi i64 [ %i.ae, %bb.l ], [ 2, %.preheader29.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.0.i31.i, !dbg !1691 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 48, !dbg !1690
  %.val10.i = load i16, ptr %i.y, align 8, !dbg !1690, !range !1656, !alias.scope !1657, !noalias !1660, !noundef !14 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 50, !dbg !1690
  %.val11.i = load i16, ptr %i.z, align 2, !dbg !1690, !alias.scope !1657, !noalias !1660 ; 2 uses
  %i.aa = trunc nuw i16 %.val10.i to i1, !dbg !1697
  %i.ab = trunc nuw i16 %.val12.i to i1, !dbg !1701
  %.sroa.0.0.i4.i18.i = select i1 %i.ab, i16 %.val13.i, i16 32767, !dbg !1701
  %i.ac = icmp slt i16 %.val11.i, %.sroa.0.0.i4.i18.i, !dbg !1704
  %i.ad = select i1 %i.aa, i1 %i.ac, i1 false, !dbg !1697
  br i1 %i.ad, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag11doc_choices7CHOICES00E0EB35_.exit.i, label %bb.l, !dbg !1690

bb.l:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw nsw i64 %.sroa.01.0.i31.i, 1, !dbg !1706 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %i.m, !dbg !1688
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag11doc_choices7CHOICES00E0EB35_.exit.i, label %.lr.ph.i, !dbg !1688

.lr.ph35.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i16 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ], !dbg !1707
  %.sroa.01.1.i34.i = phi i64 [ %i.al, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.1.i34.i, !dbg !1708 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 48, !dbg !1707
  %.val.i = load i16, ptr %i.ag, align 8, !dbg !1707, !range !1656, !alias.scope !1657, !noalias !1660, !noundef !14
  %i.ah = getelementptr i8, ptr %i.af, i64 50, !dbg !1707
  %.val7.i = load i16, ptr %i.ah, align 2, !dbg !1707, !alias.scope !1657, !noalias !1660 ; 2 uses
  %i.ai = trunc nuw i16 %.val.i to i1, !dbg !1712
  %i.aj = icmp slt i16 %.val7.i, %.val9.i, !dbg !1716
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false, !dbg !1712
  br i1 %i.ak, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag11doc_choices7CHOICES00E0EB35_.exit.i, !dbg !1707

bb.m:                                             ; preds = %.lr.ph35.i
  %i.al = add nuw nsw i64 %.sroa.01.1.i34.i, 1, !dbg !1718 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %i.al, %i.m, !dbg !1689
  br i1 %exitcond43.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag11doc_choices7CHOICES00E0EB35_.exit.i, label %.lr.ph35.i, !dbg !1689

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag11doc_choices7CHOICES00E0EB35_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph35.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i34.i, %.lr.ph35.i ], [ %.sroa.01.0.i31.i, %.lr.ph.i ], [ %i.m, %bb.l ], !dbg !1719 ; 5 uses
  %i.am = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m, !dbg !1720
  tail call void @llvm.assume(i1 %i.am), !dbg !1722
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !1723
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !1723

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag11doc_choices7CHOICES00E0EB35_.exit.i
  %i.an = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.an, 0
  %or.cond.not.i = and i1 %i.w, %.not.i.i.i, !dbg !1724
  br i1 %or.cond.not.i, label %.lr.ph.preheader.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i, !dbg !1724

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 %.sroa.01.0), !dbg !1725
  %i.ao = shl nuw nsw i64 %..i.i, 1, !dbg !1729
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag11doc_choices7CHOICES00E0EB36_.exit, !dbg !1732

bb.p:                                             ; preds = %bb.i
  %..i20.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 32), !dbg !1733 ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB34_15HyperlinkFormatNtB36_4Flag11doc_choices7CHOICES00E0EB38_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i20.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !1736
  %i.ap = shl nuw nsw i64 %..i20.i, 1, !dbg !1738
  %i.aq = or disjoint i64 %i.ap, 1, !dbg !1738
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag11doc_choices7CHOICES00E0EB36_.exit, !dbg !1732

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i, %.preheader29.i, %bb.n, %bb.j
  %.sroa.0.0.i26.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader29.i ], [ %.sroa.0.0.i616872.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i ]
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i26.i, 1, !dbg !1741
  %i.as = or disjoint i64 %i.ar, 1, !dbg !1741
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag11doc_choices7CHOICES00E0EB36_.exit, !dbg !1743

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.at = phi i64 [ %i.an, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i616872.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.0.i616872.i, !dbg !1744
  br label %.lr.ph.i.i.i, !dbg !1753

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.az, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.av = xor i64 %.sroa.0.017.i.i.i, -1, !dbg !1774
  %i.aw = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i, !dbg !1775
  %i.ax = getelementptr [56 x i8], ptr %i.au, i64 %i.av, !dbg !1776
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2NzvFoTxuAy_2rg(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax, i64 noundef 7)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.q, !dbg !1753, !noalias !1660

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #18, !dbg !1777, !noalias !1660
  unreachable, !dbg !1777

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.az = add nuw nsw i64 %.sroa.0.017.i.i.i, 1, !dbg !1778 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.az, %i.at, !dbg !1779
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i, label %.lr.ph.i.i.i, !dbg !1779

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag11doc_choices7CHOICES00E0EB36_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.as, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i ], [ %i.aq, %bb.p ], [ %i.ao, %bb.o ], !dbg !1780 ; 2 uses
  %i.ba = lshr i64 %.sroa.023.0, 1, !dbg !1781
  %i.bb = lshr i64 %.sroa.0.0.i32, 1, !dbg !1784
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !1786 ; 2 uses
  %i.bc = sub nsw i64 %factor, %i.ba, !dbg !1786
  %i.bd = add nuw nsw i64 %i.bb, %factor, !dbg !1789
  %i.be = mul i64 %i.bc, %.sroa.0.0, !dbg !1791
  %i.bf = mul i64 %i.bd, %.sroa.0.0, !dbg !1793
  %i.bg = xor i64 %i.bf, %i.be, !dbg !1794
  %i.bh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 false), !dbg !1795
  %i.bi = trunc nuw nsw i64 %i.bh to i8, !dbg !1794
  br label %bb.g, !dbg !1798

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag11doc_choices7CHOICES00E0EB39_.exit
  %.sroa.02.136 = phi i64 [ %i.bj, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag11doc_choices7CHOICES00E0EB39_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag11doc_choices7CHOICES00E0EB39_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bj = add i64 %.sroa.02.136, -1, !dbg !1799   ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj, !dbg !1800
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !1803, !noundef !14
  %.not28 = icmp ult i8 %i.bl, %.sroa.021.0, !dbg !1803
  br i1 %.not28, label %._crit_edge, label %bb.r, !dbg !1803

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag11doc_choices7CHOICES00E0EB39_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag11doc_choices7CHOICES00E0EB39_.exit ], !dbg !1628 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag11doc_choices7CHOICES00E0EB39_.exit ], !dbg !1630 ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !1804
  store i64 %.sroa.023.1.lcssa, ptr %i.bm, align 8, !dbg !1807
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !1808
  store i8 %.sroa.021.0, ptr %i.bn, align 1, !dbg !1810
  br i1 %i.k, label %bb.y, label %bb.z, !dbg !1811

bb.r:                                             ; preds = %.lr.ph
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bj, !dbg !1812
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !1814, !noundef !14 ; 3 uses
  %i.bq = lshr i64 %i.bp, 1, !dbg !1815           ; 5 uses
  %i.br = lshr i64 %.sroa.023.135, 1, !dbg !1818  ; 3 uses
  %i.bs = add nuw i64 %i.bq, %i.br, !dbg !1820    ; 5 uses
  %i.bt = sub i64 %.sroa.09.0, %i.bs, !dbg !1821
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bt, !dbg !1823 ; 3 uses
  %i.bv = icmp samesign ugt i64 %i.bs, %3, !dbg !1832
  %i.bw = trunc i64 %.sroa.023.135 to i1
  %i.bx = or i64 %i.bp, %.sroa.023.135, !dbg !1837
  %i.by = trunc i64 %i.bx to i1, !dbg !1837
  %or.cond3.i = or i1 %i.bv, %i.by, !dbg !1837
  br i1 %or.cond3.i, label %bb.s, label %bb.t, !dbg !1837

bb.s:                                             ; preds = %bb.r
  %i.bz = trunc i64 %i.bp to i1
  br i1 %i.bz, label %bb.u, label %bb.v, !dbg !1839

bb.t:                                             ; preds = %bb.r
  %i.ca = shl nuw nsw i64 %i.bs, 1, !dbg !1840
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag11doc_choices7CHOICES00E0EB39_.exit, !dbg !1843

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bw, label %bb.x, label %bb.w, !dbg !1844

bb.v:                                             ; preds = %bb.s
  %i.cb = or i64 %i.bq, 1, !dbg !1845
  %i.cc = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true), !dbg !1848
  %i.cd = trunc nuw nsw i64 %i.cc to i32, !dbg !1848
  %i.ce = shl nuw nsw i32 %i.cd, 1, !dbg !1859
  %i.cf = xor i32 %i.ce, 126, !dbg !1859
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB34_15HyperlinkFormatNtB36_4Flag11doc_choices7CHOICES00E0EB38_(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 164703072086692426) %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !1860
  br label %bb.u, !dbg !1862

bb.w:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw [56 x i8], ptr %i.bu, i64 %i.bq, !dbg !1863
  %i.ch = or i64 %i.br, 1, !dbg !1873
  %i.ci = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true), !dbg !1875
  %i.cj = trunc nuw nsw i64 %i.ci to i32, !dbg !1875
  %i.ck = shl nuw nsw i32 %i.cj, 1, !dbg !1880
  %i.cl = xor i32 %i.ck, 126, !dbg !1880
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB34_15HyperlinkFormatNtB36_4Flag11doc_choices7CHOICES00E0EB38_(ptr noalias nofree noundef nonnull align 8 %i.cg, i64 noundef range(i64 0, 164703072086692426) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !1881
  br label %bb.x, !dbg !1882

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB2V_15HyperlinkFormatNtB2X_4Flag11doc_choices7CHOICES00E0EB2Z_(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 164703072086692426) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.bq, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !1883
  %i.cm = shl nuw nsw i64 %i.bs, 1, !dbg !1884
  %i.cn = or disjoint i64 %i.cm, 1, !dbg !1884
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag11doc_choices7CHOICES00E0EB39_.exit, !dbg !1843

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag11doc_choices7CHOICES00E0EB39_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cn, %bb.x ], [ %i.ca, %bb.t ], !dbg !1887 ; 2 uses
  %i.co = icmp ugt i64 %i.bj, 1, !dbg !1634
  br i1 %i.co, label %.lr.ph, label %._crit_edge, !dbg !1634

bb.y:                                             ; preds = %._crit_edge
  %i.cp = add i64 %.sroa.02.1.lcssa, 1, !dbg !1888
  %i.cq = lshr i64 %.sroa.018.0, 1, !dbg !1889
  %i.cr = add nuw i64 %i.cq, %.sroa.09.0, !dbg !1891
  br label %bb.f, !dbg !1623

bb.z:                                             ; preds = %._crit_edge
  %6 = and i64 %.sroa.023.1.lcssa, 1, !dbg !1892
  %.not30 = icmp eq i64 %6, 0, !dbg !1892
  br i1 %.not30, label %bb.aa, label %bb.ab, !dbg !1895

bb.aa:                                            ; preds = %bb.z
  %i.cs = or i64 %1, 1, !dbg !1896
  %i.ct = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true), !dbg !1898
  %i.cu = trunc nuw nsw i64 %i.ct to i32, !dbg !1898
  %i.cv = shl nuw nsw i32 %i.cu, 1, !dbg !1903
  %i.cw = xor i32 %i.cv, 126, !dbg !1903
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB34_15HyperlinkFormatNtB36_4Flag11doc_choices7CHOICES00E0EB38_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !1904
  br label %bb.ab, !dbg !1905

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1907
  br label %bb.ac, !dbg !1908

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !1908
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB2U_15HyperlinkFormatNtB2W_4Flag8doc_long3DOC00E0EB2Y_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1909 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !1910
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !1910

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !1912
  %i.e = urem i64 4611686018427387904, %1, !dbg !1917
  %.not = icmp ne i64 %i.e, 0, !dbg !1919
  %i.f = zext i1 %.not to i64, !dbg !1919
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !1919 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !1921
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !1921

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !1923
  br label %bb.e, !dbg !1923

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !1924
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !1925
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !1926
  br label %bb.e, !dbg !1930

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ], !dbg !1931 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1935
  br label %bb.f, !dbg !1938

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !1943 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cr, %bb.y ], !dbg !1944 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cp, %bb.y ], !dbg !1945 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !1946 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !1946

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag8doc_long3DOC00E0EB36_.exit
  %.sroa.021.0 = phi i8 [ %i.bi, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag8doc_long3DOC00E0EB36_.exit ], [ 0, %bb.f ], !dbg !1948 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag8doc_long3DOC00E0EB36_.exit ], [ 1, %bb.f ], !dbg !1948 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !1949
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !dbg !1949

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !1950 ; 11 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0, !dbg !1955 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0, !dbg !1960
  br i1 %.not.i31, label %bb.i, label %bb.j, !dbg !1960

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag8doc_long3DOC00E0EB35_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !1964

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2, !dbg !1965
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i, label %bb.k, !dbg !1965

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 104, !dbg !1969
  %.val14.i = load i16, ptr %i.p, align 8, !dbg !1969, !range !1656, !alias.scope !1971, !noalias !1974, !noundef !14 ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 106, !dbg !1969
  %.val15.i = load i16, ptr %i.q, align 2, !dbg !1969, !alias.scope !1971, !noalias !1974 ; 3 uses
  %i.r = getelementptr i8, ptr %i.n, i64 48, !dbg !1969
  %.val16.i = load i16, ptr %i.r, align 8, !dbg !1969, !range !1656, !alias.scope !1971, !noalias !1974, !noundef !14
  %i.s = getelementptr i8, ptr %i.n, i64 50, !dbg !1969
  %.val17.i = load i16, ptr %i.s, align 2, !dbg !1969, !alias.scope !1971, !noalias !1974
  %i.t = trunc nuw i16 %.val14.i to i1, !dbg !1977
  %i.u = trunc nuw i16 %.val16.i to i1, !dbg !1987
  %.sroa.0.0.i4.i.i = select i1 %i.u, i16 %.val17.i, i16 32767, !dbg !1987
  %i.v = icmp slt i16 %.val15.i, %.sroa.0.0.i4.i.i, !dbg !1990
  %i.w = select i1 %i.t, i1 %i.v, i1 false, !dbg !1977 ; 2 uses
  %.not40.i = icmp eq i64 %i.m, 2, !dbg !1992     ; 2 uses
  br i1 %i.w, label %.preheader.i, label %.preheader29.i, !dbg !1994

.preheader29.i:                                   ; preds = %bb.k
  br i1 %.not40.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i, label %.lr.ph.i, !dbg !1995

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not40.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph35.i, !dbg !1996

.lr.ph.i:                                         ; preds = %.preheader29.i, %bb.l
  %.val13.i = phi i16 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader29.i ], !dbg !1997
  %.val12.i = phi i16 [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader29.i ], !dbg !1997
  %.sroa.01.0.i31.i = phi i64 [ %i.ae, %bb.l ], [ 2, %.preheader29.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.0.i31.i, !dbg !1998 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 48, !dbg !1997
  %.val10.i = load i16, ptr %i.y, align 8, !dbg !1997, !range !1656, !alias.scope !1971, !noalias !1974, !noundef !14 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 50, !dbg !1997
  %.val11.i = load i16, ptr %i.z, align 2, !dbg !1997, !alias.scope !1971, !noalias !1974 ; 2 uses
  %i.aa = trunc nuw i16 %.val10.i to i1, !dbg !2004
  %i.ab = trunc nuw i16 %.val12.i to i1, !dbg !2008
  %.sroa.0.0.i4.i18.i = select i1 %i.ab, i16 %.val13.i, i16 32767, !dbg !2008
  %i.ac = icmp slt i16 %.val11.i, %.sroa.0.0.i4.i18.i, !dbg !2011
  %i.ad = select i1 %i.aa, i1 %i.ac, i1 false, !dbg !2004
  br i1 %i.ad, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag8doc_long3DOC00E0EB35_.exit.i, label %bb.l, !dbg !1997

bb.l:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw nsw i64 %.sroa.01.0.i31.i, 1, !dbg !2013 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %i.m, !dbg !1995
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag8doc_long3DOC00E0EB35_.exit.i, label %.lr.ph.i, !dbg !1995

.lr.ph35.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i16 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ], !dbg !2014
  %.sroa.01.1.i34.i = phi i64 [ %i.al, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.1.i34.i, !dbg !2015 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 48, !dbg !2014
  %.val.i = load i16, ptr %i.ag, align 8, !dbg !2014, !range !1656, !alias.scope !1971, !noalias !1974, !noundef !14
  %i.ah = getelementptr i8, ptr %i.af, i64 50, !dbg !2014
  %.val7.i = load i16, ptr %i.ah, align 2, !dbg !2014, !alias.scope !1971, !noalias !1974 ; 2 uses
  %i.ai = trunc nuw i16 %.val.i to i1, !dbg !2019
  %i.aj = icmp slt i16 %.val7.i, %.val9.i, !dbg !2023
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false, !dbg !2019
  br i1 %i.ak, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag8doc_long3DOC00E0EB35_.exit.i, !dbg !2014

bb.m:                                             ; preds = %.lr.ph35.i
  %i.al = add nuw nsw i64 %.sroa.01.1.i34.i, 1, !dbg !2025 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %i.al, %i.m, !dbg !1996
  br i1 %exitcond43.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag8doc_long3DOC00E0EB35_.exit.i, label %.lr.ph35.i, !dbg !1996

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag8doc_long3DOC00E0EB35_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph35.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i34.i, %.lr.ph35.i ], [ %.sroa.01.0.i31.i, %.lr.ph.i ], [ %i.m, %bb.l ], !dbg !2026 ; 5 uses
  %i.am = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m, !dbg !2027
  tail call void @llvm.assume(i1 %i.am), !dbg !2029
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !2030
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !2030

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB31_15HyperlinkFormatNtB33_4Flag8doc_long3DOC00E0EB35_.exit.i
  %i.an = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.an, 0
  %or.cond.not.i = and i1 %i.w, %.not.i.i.i, !dbg !2031
  br i1 %or.cond.not.i, label %.lr.ph.preheader.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i, !dbg !2031

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 %.sroa.01.0), !dbg !2032
  %i.ao = shl nuw nsw i64 %..i.i, 1, !dbg !2036
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag8doc_long3DOC00E0EB36_.exit, !dbg !2039

bb.p:                                             ; preds = %bb.i
  %..i20.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 32), !dbg !2040 ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB34_15HyperlinkFormatNtB36_4Flag8doc_long3DOC00E0EB38_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i20.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2043
  %i.ap = shl nuw nsw i64 %..i20.i, 1, !dbg !2045
  %i.aq = or disjoint i64 %i.ap, 1, !dbg !2045
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag8doc_long3DOC00E0EB36_.exit, !dbg !2039

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i, %.preheader29.i, %bb.n, %bb.j
  %.sroa.0.0.i26.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader29.i ], [ %.sroa.0.0.i616872.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i ]
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i26.i, 1, !dbg !2048
  %i.as = or disjoint i64 %i.ar, 1, !dbg !2048
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag8doc_long3DOC00E0EB36_.exit, !dbg !2050

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.at = phi i64 [ %i.an, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i616872.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.0.i616872.i, !dbg !2051
  br label %.lr.ph.i.i.i, !dbg !2055

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.az, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.av = xor i64 %.sroa.0.017.i.i.i, -1, !dbg !2062
  %i.aw = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i, !dbg !2063
  %i.ax = getelementptr [56 x i8], ptr %i.au, i64 %i.av, !dbg !2064
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2NzvFoTxuAy_2rg(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax, i64 noundef 7)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.q, !dbg !2055, !noalias !1974

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #18, !dbg !2065, !noalias !1974
  unreachable, !dbg !2065

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.az = add nuw nsw i64 %.sroa.0.017.i.i.i, 1, !dbg !2066 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.az, %i.at, !dbg !2067
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i, label %.lr.ph.i.i.i, !dbg !2067

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB32_15HyperlinkFormatNtB34_4Flag8doc_long3DOC00E0EB36_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.as, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseCs2NzvFoTxuAy_2rg.exit.i ], [ %i.aq, %bb.p ], [ %i.ao, %bb.o ], !dbg !2068 ; 2 uses
  %i.ba = lshr i64 %.sroa.023.0, 1, !dbg !2069
  %i.bb = lshr i64 %.sroa.0.0.i32, 1, !dbg !2072
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !2074 ; 2 uses
  %i.bc = sub nsw i64 %factor, %i.ba, !dbg !2074
  %i.bd = add nuw nsw i64 %i.bb, %factor, !dbg !2077
  %i.be = mul i64 %i.bc, %.sroa.0.0, !dbg !2079
  %i.bf = mul i64 %i.bd, %.sroa.0.0, !dbg !2081
  %i.bg = xor i64 %i.bf, %i.be, !dbg !2082
  %i.bh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 false), !dbg !2083
  %i.bi = trunc nuw nsw i64 %i.bh to i8, !dbg !2082
  br label %bb.g, !dbg !2086

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag8doc_long3DOC00E0EB39_.exit
  %.sroa.02.136 = phi i64 [ %i.bj, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag8doc_long3DOC00E0EB39_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag8doc_long3DOC00E0EB39_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bj = add i64 %.sroa.02.136, -1, !dbg !2087   ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj, !dbg !2088
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !2091, !noundef !14
  %.not28 = icmp ult i8 %i.bl, %.sroa.021.0, !dbg !2091
  br i1 %.not28, label %._crit_edge, label %bb.r, !dbg !2091

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag8doc_long3DOC00E0EB39_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag8doc_long3DOC00E0EB39_.exit ], !dbg !1943 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag8doc_long3DOC00E0EB39_.exit ], !dbg !1945 ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !2092
  store i64 %.sroa.023.1.lcssa, ptr %i.bm, align 8, !dbg !2095
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !2096
  store i8 %.sroa.021.0, ptr %i.bn, align 1, !dbg !2098
  br i1 %i.k, label %bb.y, label %bb.z, !dbg !2099

bb.r:                                             ; preds = %.lr.ph
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bj, !dbg !2100
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !2102, !noundef !14 ; 3 uses
  %i.bq = lshr i64 %i.bp, 1, !dbg !2103           ; 5 uses
  %i.br = lshr i64 %.sroa.023.135, 1, !dbg !2106  ; 3 uses
  %i.bs = add nuw i64 %i.bq, %i.br, !dbg !2108    ; 5 uses
  %i.bt = sub i64 %.sroa.09.0, %i.bs, !dbg !2109
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bt, !dbg !2111 ; 3 uses
  %i.bv = icmp samesign ugt i64 %i.bs, %3, !dbg !2120
  %i.bw = trunc i64 %.sroa.023.135 to i1
  %i.bx = or i64 %i.bp, %.sroa.023.135, !dbg !2125
  %i.by = trunc i64 %i.bx to i1, !dbg !2125
  %or.cond3.i = or i1 %i.bv, %i.by, !dbg !2125
  br i1 %or.cond3.i, label %bb.s, label %bb.t, !dbg !2125

bb.s:                                             ; preds = %bb.r
  %i.bz = trunc i64 %i.bp to i1
  br i1 %i.bz, label %bb.u, label %bb.v, !dbg !2127

bb.t:                                             ; preds = %bb.r
  %i.ca = shl nuw nsw i64 %i.bs, 1, !dbg !2128
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag8doc_long3DOC00E0EB39_.exit, !dbg !2131

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bw, label %bb.x, label %bb.w, !dbg !2132

bb.v:                                             ; preds = %bb.s
  %i.cb = or i64 %i.bq, 1, !dbg !2133
  %i.cc = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true), !dbg !2136
  %i.cd = trunc nuw nsw i64 %i.cc to i32, !dbg !2136
  %i.ce = shl nuw nsw i32 %i.cd, 1, !dbg !2147
  %i.cf = xor i32 %i.ce, 126, !dbg !2147
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB34_15HyperlinkFormatNtB36_4Flag8doc_long3DOC00E0EB38_(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 164703072086692426) %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2148
  br label %bb.u, !dbg !2150

bb.w:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw [56 x i8], ptr %i.bu, i64 %i.bq, !dbg !2151
  %i.ch = or i64 %i.br, 1, !dbg !2161
  %i.ci = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true), !dbg !2163
  %i.cj = trunc nuw nsw i64 %i.ci to i32, !dbg !2163
  %i.ck = shl nuw nsw i32 %i.cj, 1, !dbg !2168
  %i.cl = xor i32 %i.ck, 126, !dbg !2168
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB34_15HyperlinkFormatNtB36_4Flag8doc_long3DOC00E0EB38_(ptr noalias nofree noundef nonnull align 8 %i.cg, i64 noundef range(i64 0, 164703072086692426) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2169
  br label %bb.x, !dbg !2170

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB2V_15HyperlinkFormatNtB2X_4Flag8doc_long3DOC00E0EB2Z_(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 164703072086692426) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.bq, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !2171
  %i.cm = shl nuw nsw i64 %i.bs, 1, !dbg !2172
  %i.cn = or disjoint i64 %i.cm, 1, !dbg !2172
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag8doc_long3DOC00E0EB39_.exit, !dbg !2131

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB35_15HyperlinkFormatNtB37_4Flag8doc_long3DOC00E0EB39_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cn, %bb.x ], [ %i.ca, %bb.t ], !dbg !2175 ; 2 uses
  %i.co = icmp ugt i64 %i.bj, 1, !dbg !1949
  br i1 %i.co, label %.lr.ph, label %._crit_edge, !dbg !1949

bb.y:                                             ; preds = %._crit_edge
  %i.cp = add i64 %.sroa.02.1.lcssa, 1, !dbg !2176
  %i.cq = lshr i64 %.sroa.018.0, 1, !dbg !2177
  %i.cr = add nuw i64 %i.cq, %.sroa.09.0, !dbg !2179
  br label %bb.f, !dbg !1938

bb.z:                                             ; preds = %._crit_edge
  %6 = and i64 %.sroa.023.1.lcssa, 1, !dbg !2180
  %.not30 = icmp eq i64 %6, 0, !dbg !2180
  br i1 %.not30, label %bb.aa, label %bb.ab, !dbg !2183

bb.aa:                                            ; preds = %bb.z
  %i.cs = or i64 %1, 1, !dbg !2184
  %i.ct = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true), !dbg !2186
  %i.cu = trunc nuw nsw i64 %i.ct to i32, !dbg !2186
  %i.cv = shl nuw nsw i32 %i.cu, 1, !dbg !2191
  %i.cw = xor i32 %i.cv, 126, !dbg !2191
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB34_15HyperlinkFormatNtB36_4Flag8doc_long3DOC00E0EB38_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2192
  br label %bb.ab, !dbg !2193

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2195
  br label %bb.ac, !dbg !2196

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !2196
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCINvMNtNtB11_5flags6hiargsNtB3q_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB11_5files0EEs2_0E0EB11_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2197 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !2198
  br i1 %i.c, label %bb.an, label %bb.b, !dbg !2198

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !2200
  %i.e = urem i64 4611686018427387904, %1, !dbg !2205
  %.not = icmp ne i64 %i.e, 0, !dbg !2207
  %i.f = zext i1 %.not to i64, !dbg !2207
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !2207 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !2209
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !2209

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !2211
  br label %bb.e, !dbg !2211

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !2212
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !2213
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !2214
  br label %bb.e, !dbg !2218

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ], !dbg !2219 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2223
  br label %bb.f, !dbg !2226

bb.f:                                             ; preds = %bb.aj, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aj ], !dbg !2231 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.aj ], !dbg !2232 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.do, %bb.aj ], !dbg !2233 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !2234 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !2234

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_5files0EEs2_0E0EB18_.exit
  %.sroa.021.0 = phi i8 [ %i.ch, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_5files0EEs2_0E0EB18_.exit ], [ 0, %bb.f ], !dbg !2236 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_5files0EEs2_0E0EB18_.exit ], [ 1, %bb.f ], !dbg !2236 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !2237
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !dbg !2237

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !2238 ; 14 uses
  %i.n = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.09.0, !dbg !2243 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2248), !dbg !2251
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2252), !dbg !2251
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0, !dbg !2254
  br i1 %.not.i31, label %bb.i, label %bb.j, !dbg !2254

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, %bb.h
  br i1 %4, label %bb.z, label %bb.y, !dbg !2258

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2, !dbg !2259
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i, label %bb.k, !dbg !2259

bb.k:                                             ; preds = %bb.j
  %.val16.i = load ptr, ptr %5, align 8, !dbg !2263, !alias.scope !2252, !noalias !2265, !nonnull !14, !align !16, !noundef !14
  %i.p = getelementptr i8, ptr %i.n, i64 256, !dbg !2263
  %.val17.i = load i64, ptr %i.p, align 8, !dbg !2263, !alias.scope !2248, !noalias !2267 ; 4 uses
  %i.q = getelementptr i8, ptr %i.n, i64 264, !dbg !2263
  %.val18.i = load i32, ptr %i.q, align 8, !dbg !2263, !range !2268, !alias.scope !2248, !noalias !2267, !noundef !14 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 120, !dbg !2263
  %.val19.i = load i64, ptr %i.r, align 8, !dbg !2263, !alias.scope !2248, !noalias !2267 ; 2 uses
  %i.s = getelementptr i8, ptr %i.n, i64 128, !dbg !2263
  %.val20.i = load i32, ptr %i.s, align 8, !dbg !2263, !range !2268, !alias.scope !2248, !noalias !2267, !noundef !14 ; 2 uses
  %.val.i.i = load ptr, ptr %.val16.i, align 8, !dbg !2269, !noalias !2272 ; 15 uses
  %.not.i.i.i = icmp eq i32 %.val18.i, -1, !dbg !2273
  %.not19.i.i.i = icmp eq i32 %.val20.i, -1, !dbg !2273 ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.l, !dbg !2277

bb.l:                                             ; preds = %bb.k
  br i1 %.not19.i.i.i, label %bb.o, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i, !dbg !2277

bb.m:                                             ; preds = %bb.k
  br i1 %.not19.i.i.i, label %.preheader65.i, label %bb.n, !dbg !2277

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.t = load i8, ptr %.val.i.i, align 1, !dbg !2278, !range !2280, !noalias !2272, !noundef !14
  %i.u = trunc nuw i8 %i.t to i1, !dbg !2278
  br i1 %i.u, label %.preheader.i, label %.preheader65.i, !dbg !2278

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i: ; preds = %bb.l
  %i.v = tail call i8 @llvm.scmp.i8.i64(i64 %.val17.i, i64 %.val19.i), !dbg !2281
  %i.w = icmp eq i64 %.val17.i, %.val19.i, !dbg !2304
  %i.x = tail call i8 @llvm.ucmp.i8.i32(i32 %.val18.i, i32 %.val20.i), !dbg !2304
  %.sroa.0.0.i.i.i = select i1 %i.w, i8 %i.x, i8 %i.v, !dbg !2304 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.y = load i8, ptr %.val.i.i, align 1, !dbg !2278, !range !2280, !noalias !2272, !noundef !14 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1, !dbg !2278
  %switch.offset.i.i.i = sub nsw i8 0, %.sroa.0.0.i.i.i
  %spec.select.i.i = select i1 %i.z, i8 %switch.offset.i.i.i, i8 %.sroa.0.0.i.i.i, !dbg !2278
  %i.aa = icmp eq i8 %spec.select.i.i, -1, !dbg !2305
  br i1 %i.aa, label %.preheader.i, label %.preheader65.i, !dbg !2310

bb.o:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ab = load i8, ptr %.val.i.i, align 1, !dbg !2278, !range !2280, !noalias !2272, !noundef !14
  %i.ac = trunc nuw i8 %i.ab to i1, !dbg !2278
  br i1 %i.ac, label %.preheader65.i, label %.preheader.i, !dbg !2278

.preheader65.i:                                   ; preds = %bb.o, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i, %bb.n, %bb.m
  %.not83.i = icmp eq i64 %i.m, 2, !dbg !2312
  br i1 %.not83.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, label %.lr.ph.i, !dbg !2312

.preheader.i:                                     ; preds = %bb.o, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i, %bb.n
  %i.ad = phi i8 [ 0, %bb.o ], [ %i.y, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i ], [ 1, %bb.n ] ; 3 uses
  %.not84.i = icmp eq i64 %i.m, 2, !dbg !2313
  br i1 %.not84.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, label %.lr.ph74.i.preheader, !dbg !2313

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.ae = trunc nuw i8 %i.ad to i1
  br label %.lr.ph74.i, !dbg !2314

.lr.ph.i:                                         ; preds = %.preheader65.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i
  %.val15.i = phi i32 [ %.val13.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i ], [ %.val18.i, %.preheader65.i ], !dbg !2317 ; 2 uses
  %.val14.i = phi i64 [ %.val12.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i ], [ %.val17.i, %.preheader65.i ], !dbg !2317 ; 2 uses
  %.sroa.01.0.i67.i = phi i64 [ %i.au, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i ], [ 2, %.preheader65.i ] ; 6 uses
  %i.af = getelementptr inbounds nuw [136 x i8], ptr %i.n, i64 %.sroa.01.0.i67.i, !dbg !2318 ; 2 uses
  %i.ag = add nsw i64 %.sroa.01.0.i67.i, -1, !dbg !2324
  %i.ah = icmp samesign ult i64 %i.ag, %i.m, !dbg !2325
  tail call void @llvm.assume(i1 %i.ah), !dbg !2329
  %i.ai = getelementptr i8, ptr %i.af, i64 120, !dbg !2317
  %.val12.i = load i64, ptr %i.ai, align 8, !dbg !2317, !alias.scope !2248, !noalias !2267 ; 3 uses
  %i.aj = getelementptr i8, ptr %i.af, i64 128, !dbg !2317
  %.val13.i = load i32, ptr %i.aj, align 8, !dbg !2317, !range !2268, !alias.scope !2248, !noalias !2267, !noundef !14 ; 3 uses
  %.not.i.i22.i = icmp eq i32 %.val13.i, -1, !dbg !2330
  %.not19.i.i23.i = icmp eq i32 %.val15.i, -1, !dbg !2330 ; 2 uses
  br i1 %.not.i.i22.i, label %bb.q, label %bb.p, !dbg !2333

bb.p:                                             ; preds = %.lr.ph.i
  br i1 %.not19.i.i23.i, label %bb.s, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.i, !dbg !2333

bb.q:                                             ; preds = %.lr.ph.i
  br i1 %.not19.i.i23.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i, label %bb.r, !dbg !2333

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ak = load i8, ptr %.val.i.i, align 1, !dbg !2334, !range !2280, !noalias !2272, !noundef !14
  %i.al = trunc nuw i8 %i.ak to i1, !dbg !2334
  br i1 %i.al, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i, !dbg !2334

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.i: ; preds = %bb.p
  %i.am = tail call i8 @llvm.scmp.i8.i64(i64 %.val12.i, i64 %.val14.i), !dbg !2335
  %i.an = icmp eq i64 %.val12.i, %.val14.i, !dbg !2340
  %i.ao = tail call i8 @llvm.ucmp.i8.i32(i32 %.val13.i, i32 %.val15.i), !dbg !2340
  %.sroa.0.0.i.i24.i = select i1 %i.an, i8 %i.ao, i8 %i.am, !dbg !2340 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ap = load i8, ptr %.val.i.i, align 1, !dbg !2334, !range !2280, !noalias !2272, !noundef !14
  %i.aq = trunc nuw i8 %i.ap to i1, !dbg !2334
  %switch.offset.i.i25.i = sub nsw i8 0, %.sroa.0.0.i.i24.i
  %spec.select.i26.i = select i1 %i.aq, i8 %switch.offset.i.i25.i, i8 %.sroa.0.0.i.i24.i, !dbg !2334
  %i.ar = icmp eq i8 %spec.select.i26.i, -1, !dbg !2341
  br i1 %i.ar, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i, !dbg !2317

bb.s:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.as = load i8, ptr %.val.i.i, align 1, !dbg !2334, !range !2280, !noalias !2272, !noundef !14
  %i.at = trunc nuw i8 %i.as to i1, !dbg !2334
  br i1 %i.at, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, !dbg !2334

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i: ; preds = %bb.s, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.i, %bb.r, %bb.q
  %i.au = add nuw nsw i64 %.sroa.01.0.i67.i, 1, !dbg !2343 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, %i.m, !dbg !2312
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, label %.lr.ph.i, !dbg !2312

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i
  %i.av = phi i8 [ %i.bi, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i ], [ %i.ad, %.lr.ph74.i.preheader ] ; 2 uses
  %i.aw = phi i8 [ %i.bj, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i ], [ %i.ad, %.lr.ph74.i.preheader ] ; 2 uses
  %.val10.i = phi i32 [ %.val8.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i ], [ %.val18.i, %.lr.ph74.i.preheader ], !dbg !2344 ; 2 uses
  %.val9.i = phi i64 [ %.val7.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i ], [ %.val17.i, %.lr.ph74.i.preheader ], !dbg !2344 ; 2 uses
  %.sroa.01.1.i73.i = phi i64 [ %i.bk, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i ], [ 2, %.lr.ph74.i.preheader ] ; 7 uses
  %i.ax = getelementptr inbounds nuw [136 x i8], ptr %i.n, i64 %.sroa.01.1.i73.i, !dbg !2345 ; 2 uses
  %i.ay = add nsw i64 %.sroa.01.1.i73.i, -1, !dbg !2349
  %i.az = icmp samesign ult i64 %i.ay, %i.m, !dbg !2350
  tail call void @llvm.assume(i1 %i.az), !dbg !2354
  %i.ba = getelementptr i8, ptr %i.ax, i64 120, !dbg !2344
  %.val7.i = load i64, ptr %i.ba, align 8, !dbg !2344, !alias.scope !2248, !noalias !2267 ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 128, !dbg !2344
  %.val8.i = load i32, ptr %i.bb, align 8, !dbg !2344, !range !2268, !alias.scope !2248, !noalias !2267, !noundef !14 ; 3 uses
  %.not.i.i32.i = icmp eq i32 %.val8.i, -1, !dbg !2355
  %.not19.i.i33.i = icmp eq i32 %.val10.i, -1, !dbg !2355 ; 2 uses
  br i1 %.not.i.i32.i, label %bb.u, label %bb.t, !dbg !2314

bb.t:                                             ; preds = %.lr.ph74.i
  br i1 %.not19.i.i33.i, label %bb.w, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.i, !dbg !2314

bb.u:                                             ; preds = %.lr.ph74.i
  br i1 %.not19.i.i33.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, label %bb.v, !dbg !2314

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  br i1 %i.ae, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, !dbg !2356

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.i: ; preds = %bb.t
  %i.bc = tail call i8 @llvm.scmp.i8.i64(i64 %.val7.i, i64 %.val9.i), !dbg !2357
  %i.bd = icmp eq i64 %.val7.i, %.val9.i, !dbg !2362
  %i.be = tail call i8 @llvm.ucmp.i8.i32(i32 %.val8.i, i32 %.val10.i), !dbg !2362
  %.sroa.0.0.i.i34.i = select i1 %i.bd, i8 %i.be, i8 %i.bc, !dbg !2362 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.bf = trunc nuw i8 %i.aw to i1, !dbg !2356
  %switch.offset.i.i35.i = sub nsw i8 0, %.sroa.0.0.i.i34.i
  %spec.select.i36.i = select i1 %i.bf, i8 %switch.offset.i.i35.i, i8 %.sroa.0.0.i.i34.i, !dbg !2356
  %i.bg = icmp eq i8 %spec.select.i36.i, -1, !dbg !2363
  br i1 %i.bg, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, !dbg !2344

bb.w:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.bh = trunc nuw i8 %i.av to i1, !dbg !2356
  br i1 %i.bh, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i, !dbg !2356

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i: ; preds = %bb.w, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.i, %bb.v
  %i.bi = phi i8 [ 0, %bb.w ], [ %i.av, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.i ], [ 1, %bb.v ]
  %i.bj = phi i8 [ 0, %bb.w ], [ %i.aw, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.i ], [ 1, %bb.v ]
  %i.bk = add nuw nsw i64 %.sroa.01.1.i73.i, 1, !dbg !2365 ; 2 uses
  %exitcond88.not.i = icmp eq i64 %i.bk, %i.m, !dbg !2313
  br i1 %exitcond88.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i, label %.lr.ph74.i, !dbg !2313

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i, %bb.w, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.i, %bb.v, %bb.u, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i, %bb.s, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.i, %bb.r, %.preheader.i, %.preheader65.i
  %i.bl = phi i1 [ false, %.preheader65.i ], [ true, %.preheader.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i ], [ false, %bb.r ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.i ], [ false, %bb.s ], [ true, %bb.u ], [ true, %bb.v ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.i ], [ true, %bb.w ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader65.i ], [ 2, %.preheader.i ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.thread.i ], [ %.sroa.01.0.i67.i, %bb.s ], [ %.sroa.01.0.i67.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit30.i ], [ %.sroa.01.0.i67.i, %bb.r ], [ %.sroa.01.1.i73.i, %bb.u ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.thread54.i ], [ %.sroa.01.1.i73.i, %bb.w ], [ %.sroa.01.1.i73.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit40.i ], [ %.sroa.01.1.i73.i, %bb.v ], !dbg !2366 ; 7 uses
  %i.bm = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m, !dbg !2367
  tail call void @llvm.assume(i1 %i.bm), !dbg !2369
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !2370
  br i1 %.not5.i, label %bb.i, label %bb.x, !dbg !2370

bb.x:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_5files0EEs2_0E0EB17_.exit.i
  br i1 %i.bl, label %bb.aa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i, !dbg !2371

bb.y:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 67818912035696881) %i.m, i64 %.sroa.01.0), !dbg !2372
  %i.bn = shl nuw nsw i64 %..i.i, 1, !dbg !2376
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_5files0EEs2_0E0EB18_.exit, !dbg !2379

bb.z:                                             ; preds = %bb.i
  %..i41.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 67818912035696881) %i.m, i64 32), !dbg !2380 ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB3A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EEs2_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i41.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2383
  %i.bo = shl nuw nsw i64 %..i41.i, 1, !dbg !2385
  %i.bp = or disjoint i64 %i.bo, 1, !dbg !2385
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_5files0EEs2_0E0EB18_.exit, !dbg !2379

_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i, %bb.aa, %bb.x, %bb.j
  %.sroa.0.0.i61.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.x ], [ %.sroa.0.0.i.i, %bb.aa ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i ]
  %i.bq = shl nuw nsw i64 %.sroa.0.0.i61.i, 1, !dbg !2388
  %i.br = or disjoint i64 %i.bq, 1, !dbg !2388
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_5files0EEs2_0E0EB18_.exit, !dbg !2390

bb.aa:                                            ; preds = %bb.x
  %i.bs = lshr i64 %.sroa.0.0.i.i, 1, !dbg !2391  ; 2 uses
  %.not.i.i42.i = icmp eq i64 %i.bs, 0, !dbg !2394
  br i1 %.not.i.i42.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i, label %.lr.ph.preheader.i.i.i, !dbg !2394

.lr.ph.preheader.i.i.i:                           ; preds = %bb.aa
  %i.bt = getelementptr inbounds nuw [136 x i8], ptr %i.n, i64 %.sroa.0.0.i.i, !dbg !2403
  br label %.lr.ph.i.i.i, !dbg !2409

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.by, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bu = xor i64 %.sroa.0.017.i.i.i, -1, !dbg !2423
  %i.bv = getelementptr inbounds nuw [136 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i, !dbg !2424
  %i.bw = getelementptr [136 x i8], ptr %i.bt, i64 %i.bu, !dbg !2425
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2NzvFoTxuAy_2rg(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bw, i64 noundef 17)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i unwind label %bb.ab, !dbg !2409, !noalias !2267

bb.ab:                                            ; preds = %.lr.ph.i.i.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #18, !dbg !2426, !noalias !2267
  unreachable, !dbg !2426

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.by = add nuw nsw i64 %.sroa.0.017.i.i.i, 1, !dbg !2427 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.by, %i.bs, !dbg !2394
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i, label %.lr.ph.i.i.i, !dbg !2394

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_5files0EEs2_0E0EB18_.exit: ; preds = %bb.y, %bb.z, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.br, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i ], [ %i.bp, %bb.z ], [ %i.bn, %bb.y ], !dbg !2428 ; 2 uses
  %i.bz = lshr i64 %.sroa.023.0, 1, !dbg !2429
  %i.ca = lshr i64 %.sroa.0.0.i32, 1, !dbg !2432
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !2434 ; 2 uses
  %i.cb = sub nsw i64 %factor, %i.bz, !dbg !2434
  %i.cc = add nuw nsw i64 %i.ca, %factor, !dbg !2437
  %i.cd = mul i64 %i.cb, %.sroa.0.0, !dbg !2439
  %i.ce = mul i64 %i.cc, %.sroa.0.0, !dbg !2441
  %i.cf = xor i64 %i.ce, %i.cd, !dbg !2442
  %i.cg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 false), !dbg !2443
  %i.ch = trunc nuw nsw i64 %i.cg to i8, !dbg !2442
  br label %bb.g, !dbg !2446

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_5files0EEs2_0E0EB1b_.exit
  %.sroa.02.136 = phi i64 [ %i.ci, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_5files0EEs2_0E0EB1b_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_5files0EEs2_0E0EB1b_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ci = add i64 %.sroa.02.136, -1, !dbg !2447   ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ci, !dbg !2448
  %i.ck = load i8, ptr %i.cj, align 1, !dbg !2451, !noundef !14
  %.not28 = icmp ult i8 %i.ck, %.sroa.021.0, !dbg !2451
  br i1 %.not28, label %._crit_edge, label %bb.ac, !dbg !2451

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_5files0EEs2_0E0EB1b_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_5files0EEs2_0E0EB1b_.exit ], !dbg !2231 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_5files0EEs2_0E0EB1b_.exit ], !dbg !2233 ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !2452
  store i64 %.sroa.023.1.lcssa, ptr %i.cl, align 8, !dbg !2455
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !2456
  store i8 %.sroa.021.0, ptr %i.cm, align 1, !dbg !2458
  br i1 %i.k, label %bb.aj, label %bb.ak, !dbg !2459

bb.ac:                                            ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ci, !dbg !2460
  %i.co = load i64, ptr %i.cn, align 8, !dbg !2462, !noundef !14 ; 3 uses
  %i.cp = lshr i64 %i.co, 1, !dbg !2463           ; 5 uses
  %i.cq = lshr i64 %.sroa.023.135, 1, !dbg !2466  ; 3 uses
  %i.cr = add nuw i64 %i.cp, %i.cq, !dbg !2468    ; 5 uses
  %i.cs = sub i64 %.sroa.09.0, %i.cr, !dbg !2469
  %i.ct = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %i.cs, !dbg !2471 ; 3 uses
  %i.cu = icmp samesign ugt i64 %i.cr, %3, !dbg !2480
  %i.cv = trunc i64 %.sroa.023.135 to i1
  %i.cw = or i64 %i.co, %.sroa.023.135, !dbg !2485
  %i.cx = trunc i64 %i.cw to i1, !dbg !2485
  %or.cond3.i = or i1 %i.cu, %i.cx, !dbg !2485
  br i1 %or.cond3.i, label %bb.ad, label %bb.ae, !dbg !2485

bb.ad:                                            ; preds = %bb.ac
  %i.cy = trunc i64 %i.co to i1
  br i1 %i.cy, label %bb.af, label %bb.ag, !dbg !2487

bb.ae:                                            ; preds = %bb.ac
  %i.cz = shl nuw nsw i64 %i.cr, 1, !dbg !2488
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_5files0EEs2_0E0EB1b_.exit, !dbg !2491

bb.af:                                            ; preds = %bb.ag, %bb.ad
  br i1 %i.cv, label %bb.ai, label %bb.ah, !dbg !2492

bb.ag:                                            ; preds = %bb.ad
  %i.da = or i64 %i.cp, 1, !dbg !2493
  %i.db = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true), !dbg !2496
  %i.dc = trunc nuw nsw i64 %i.db to i32, !dbg !2496
  %i.dd = shl nuw nsw i32 %i.dc, 1, !dbg !2507
  %i.de = xor i32 %i.dd, 126, !dbg !2507
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB3A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EEs2_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 67818912035696881) %i.cp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2508
  br label %bb.af, !dbg !2510

bb.ah:                                            ; preds = %bb.af
  %i.df = getelementptr inbounds nuw [136 x i8], ptr %i.ct, i64 %i.cp, !dbg !2511
  %i.dg = or i64 %i.cq, 1, !dbg !2521
  %i.dh = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.dg, i1 true), !dbg !2523
  %i.di = trunc nuw nsw i64 %i.dh to i32, !dbg !2523
  %i.dj = shl nuw nsw i32 %i.di, 1, !dbg !2528
  %i.dk = xor i32 %i.dj, 126, !dbg !2528
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB3A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EEs2_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.df, i64 noundef range(i64 0, 67818912035696881) %i.cq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.dk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2529
  br label %bb.ai, !dbg !2530

bb.ai:                                            ; preds = %bb.ah, %bb.af
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCINvMNtNtB12_5flags6hiargsNtB3r_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB12_5files0EEs2_0E0EB12_(ptr noalias nofree noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 67818912035696881) %i.cr, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i64 noundef %i.cp, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !2531
  %i.dl = shl nuw nsw i64 %i.cr, 1, !dbg !2532
  %i.dm = or disjoint i64 %i.dl, 1, !dbg !2532
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_5files0EEs2_0E0EB1b_.exit, !dbg !2491

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_5files0EEs2_0E0EB1b_.exit: ; preds = %bb.ae, %bb.ai
  %.sroa.0.0.i = phi i64 [ %i.dm, %bb.ai ], [ %i.cz, %bb.ae ], !dbg !2535 ; 2 uses
  %i.dn = icmp ugt i64 %i.ci, 1, !dbg !2237
  br i1 %i.dn, label %.lr.ph, label %._crit_edge, !dbg !2237

bb.aj:                                            ; preds = %._crit_edge
  %i.do = add i64 %.sroa.02.1.lcssa, 1, !dbg !2536
  %i.dp = lshr i64 %.sroa.018.0, 1, !dbg !2537
  %i.dq = add nuw i64 %i.dp, %.sroa.09.0, !dbg !2539
  br label %bb.f, !dbg !2226

bb.ak:                                            ; preds = %._crit_edge
  %6 = and i64 %.sroa.023.1.lcssa, 1, !dbg !2540
  %.not30 = icmp eq i64 %6, 0, !dbg !2540
  br i1 %.not30, label %bb.al, label %bb.am, !dbg !2543

bb.al:                                            ; preds = %bb.ak
  %i.dr = or i64 %1, 1, !dbg !2544
  %i.ds = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.dr, i1 true), !dbg !2546
  %i.dt = trunc nuw nsw i64 %i.ds to i32, !dbg !2546
  %i.du = shl nuw nsw i32 %i.dt, 1, !dbg !2551
  %i.dv = xor i32 %i.du, 126, !dbg !2551
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB3A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_5files0EEs2_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.dv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2552
  br label %bb.am, !dbg !2553

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2555
  br label %bb.an, !dbg !2556

bb.an:                                            ; preds = %bb.a, %bb.am
  ret void, !dbg !2556
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCINvMNtNtB11_5flags6hiargsNtB3q_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB11_6search0EEs2_0E0EB11_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2557 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !2558
  br i1 %i.c, label %bb.an, label %bb.b, !dbg !2558

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !2560
  %i.e = urem i64 4611686018427387904, %1, !dbg !2565
  %.not = icmp ne i64 %i.e, 0, !dbg !2567
  %i.f = zext i1 %.not to i64, !dbg !2567
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !2567 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !2569
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !2569

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !2571
  br label %bb.e, !dbg !2571

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !2572
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !2573
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !2574
  br label %bb.e, !dbg !2578

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ], !dbg !2579 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2580
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2583
  br label %bb.f, !dbg !2586

bb.f:                                             ; preds = %bb.aj, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aj ], !dbg !2591 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.aj ], !dbg !2592 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.do, %bb.aj ], !dbg !2593 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !2594 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !2594

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_6search0EEs2_0E0EB18_.exit
  %.sroa.021.0 = phi i8 [ %i.ch, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_6search0EEs2_0E0EB18_.exit ], [ 0, %bb.f ], !dbg !2596 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_6search0EEs2_0E0EB18_.exit ], [ 1, %bb.f ], !dbg !2596 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !2597
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !dbg !2597

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !2598 ; 14 uses
  %i.n = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.09.0, !dbg !2603 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608), !dbg !2611
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2612), !dbg !2611
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0, !dbg !2614
  br i1 %.not.i31, label %bb.i, label %bb.j, !dbg !2614

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, %bb.h
  br i1 %4, label %bb.z, label %bb.y, !dbg !2618

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2, !dbg !2619
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i, label %bb.k, !dbg !2619

bb.k:                                             ; preds = %bb.j
  %.val16.i = load ptr, ptr %5, align 8, !dbg !2623, !alias.scope !2612, !noalias !2625, !nonnull !14, !align !16, !noundef !14
  %i.p = getelementptr i8, ptr %i.n, i64 256, !dbg !2623
  %.val17.i = load i64, ptr %i.p, align 8, !dbg !2623, !alias.scope !2608, !noalias !2627 ; 4 uses
  %i.q = getelementptr i8, ptr %i.n, i64 264, !dbg !2623
  %.val18.i = load i32, ptr %i.q, align 8, !dbg !2623, !range !2268, !alias.scope !2608, !noalias !2627, !noundef !14 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 120, !dbg !2623
  %.val19.i = load i64, ptr %i.r, align 8, !dbg !2623, !alias.scope !2608, !noalias !2627 ; 2 uses
  %i.s = getelementptr i8, ptr %i.n, i64 128, !dbg !2623
  %.val20.i = load i32, ptr %i.s, align 8, !dbg !2623, !range !2268, !alias.scope !2608, !noalias !2627, !noundef !14 ; 2 uses
  %.val.i.i = load ptr, ptr %.val16.i, align 8, !dbg !2628, !noalias !2631 ; 15 uses
  %.not.i.i.i = icmp eq i32 %.val18.i, -1, !dbg !2632
  %.not19.i.i.i = icmp eq i32 %.val20.i, -1, !dbg !2632 ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.l, !dbg !2636

bb.l:                                             ; preds = %bb.k
  br i1 %.not19.i.i.i, label %bb.o, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i, !dbg !2636

bb.m:                                             ; preds = %bb.k
  br i1 %.not19.i.i.i, label %.preheader65.i, label %bb.n, !dbg !2636

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.t = load i8, ptr %.val.i.i, align 1, !dbg !2637, !range !2280, !noalias !2631, !noundef !14
  %i.u = trunc nuw i8 %i.t to i1, !dbg !2637
  br i1 %i.u, label %.preheader.i, label %.preheader65.i, !dbg !2637

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i: ; preds = %bb.l
  %i.v = tail call i8 @llvm.scmp.i8.i64(i64 %.val17.i, i64 %.val19.i), !dbg !2639
  %i.w = icmp eq i64 %.val17.i, %.val19.i, !dbg !2649
  %i.x = tail call i8 @llvm.ucmp.i8.i32(i32 %.val18.i, i32 %.val20.i), !dbg !2649
  %.sroa.0.0.i.i.i = select i1 %i.w, i8 %i.x, i8 %i.v, !dbg !2649 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.y = load i8, ptr %.val.i.i, align 1, !dbg !2637, !range !2280, !noalias !2631, !noundef !14 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1, !dbg !2637
  %switch.offset.i.i.i = sub nsw i8 0, %.sroa.0.0.i.i.i
  %spec.select.i.i = select i1 %i.z, i8 %switch.offset.i.i.i, i8 %.sroa.0.0.i.i.i, !dbg !2637
  %i.aa = icmp eq i8 %spec.select.i.i, -1, !dbg !2650
  br i1 %i.aa, label %.preheader.i, label %.preheader65.i, !dbg !2655

bb.o:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ab = load i8, ptr %.val.i.i, align 1, !dbg !2637, !range !2280, !noalias !2631, !noundef !14
  %i.ac = trunc nuw i8 %i.ab to i1, !dbg !2637
  br i1 %i.ac, label %.preheader65.i, label %.preheader.i, !dbg !2637

.preheader65.i:                                   ; preds = %bb.o, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i, %bb.n, %bb.m
  %.not83.i = icmp eq i64 %i.m, 2, !dbg !2657
  br i1 %.not83.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, label %.lr.ph.i, !dbg !2657

.preheader.i:                                     ; preds = %bb.o, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i, %bb.n
  %i.ad = phi i8 [ 0, %bb.o ], [ %i.y, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i ], [ 1, %bb.n ] ; 3 uses
  %.not84.i = icmp eq i64 %i.m, 2, !dbg !2658
  br i1 %.not84.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, label %.lr.ph74.i.preheader, !dbg !2658

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.ae = trunc nuw i8 %i.ad to i1
  br label %.lr.ph74.i, !dbg !2659

.lr.ph.i:                                         ; preds = %.preheader65.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i
  %.val15.i = phi i32 [ %.val13.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i ], [ %.val18.i, %.preheader65.i ], !dbg !2662 ; 2 uses
  %.val14.i = phi i64 [ %.val12.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i ], [ %.val17.i, %.preheader65.i ], !dbg !2662 ; 2 uses
  %.sroa.01.0.i67.i = phi i64 [ %i.au, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i ], [ 2, %.preheader65.i ] ; 6 uses
  %i.af = getelementptr inbounds nuw [136 x i8], ptr %i.n, i64 %.sroa.01.0.i67.i, !dbg !2663 ; 2 uses
  %i.ag = add nsw i64 %.sroa.01.0.i67.i, -1, !dbg !2669
  %i.ah = icmp samesign ult i64 %i.ag, %i.m, !dbg !2670
  tail call void @llvm.assume(i1 %i.ah), !dbg !2674
  %i.ai = getelementptr i8, ptr %i.af, i64 120, !dbg !2662
  %.val12.i = load i64, ptr %i.ai, align 8, !dbg !2662, !alias.scope !2608, !noalias !2627 ; 3 uses
  %i.aj = getelementptr i8, ptr %i.af, i64 128, !dbg !2662
  %.val13.i = load i32, ptr %i.aj, align 8, !dbg !2662, !range !2268, !alias.scope !2608, !noalias !2627, !noundef !14 ; 3 uses
  %.not.i.i22.i = icmp eq i32 %.val13.i, -1, !dbg !2675
  %.not19.i.i23.i = icmp eq i32 %.val15.i, -1, !dbg !2675 ; 2 uses
  br i1 %.not.i.i22.i, label %bb.q, label %bb.p, !dbg !2678

bb.p:                                             ; preds = %.lr.ph.i
  br i1 %.not19.i.i23.i, label %bb.s, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.i, !dbg !2678

bb.q:                                             ; preds = %.lr.ph.i
  br i1 %.not19.i.i23.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i, label %bb.r, !dbg !2678

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ak = load i8, ptr %.val.i.i, align 1, !dbg !2679, !range !2280, !noalias !2631, !noundef !14
  %i.al = trunc nuw i8 %i.ak to i1, !dbg !2679
  br i1 %i.al, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i, !dbg !2679

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.i: ; preds = %bb.p
  %i.am = tail call i8 @llvm.scmp.i8.i64(i64 %.val12.i, i64 %.val14.i), !dbg !2680
  %i.an = icmp eq i64 %.val12.i, %.val14.i, !dbg !2685
  %i.ao = tail call i8 @llvm.ucmp.i8.i32(i32 %.val13.i, i32 %.val15.i), !dbg !2685
  %.sroa.0.0.i.i24.i = select i1 %i.an, i8 %i.ao, i8 %i.am, !dbg !2685 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ap = load i8, ptr %.val.i.i, align 1, !dbg !2679, !range !2280, !noalias !2631, !noundef !14
  %i.aq = trunc nuw i8 %i.ap to i1, !dbg !2679
  %switch.offset.i.i25.i = sub nsw i8 0, %.sroa.0.0.i.i24.i
  %spec.select.i26.i = select i1 %i.aq, i8 %switch.offset.i.i25.i, i8 %.sroa.0.0.i.i24.i, !dbg !2679
  %i.ar = icmp eq i8 %spec.select.i26.i, -1, !dbg !2686
  br i1 %i.ar, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i, !dbg !2662

bb.s:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.as = load i8, ptr %.val.i.i, align 1, !dbg !2679, !range !2280, !noalias !2631, !noundef !14
  %i.at = trunc nuw i8 %i.as to i1, !dbg !2679
  br i1 %i.at, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, !dbg !2679

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i: ; preds = %bb.s, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.i, %bb.r, %bb.q
  %i.au = add nuw nsw i64 %.sroa.01.0.i67.i, 1, !dbg !2688 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, %i.m, !dbg !2657
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, label %.lr.ph.i, !dbg !2657

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i
  %i.av = phi i8 [ %i.bi, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i ], [ %i.ad, %.lr.ph74.i.preheader ] ; 2 uses
  %i.aw = phi i8 [ %i.bj, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i ], [ %i.ad, %.lr.ph74.i.preheader ] ; 2 uses
  %.val10.i = phi i32 [ %.val8.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i ], [ %.val18.i, %.lr.ph74.i.preheader ], !dbg !2689 ; 2 uses
  %.val9.i = phi i64 [ %.val7.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i ], [ %.val17.i, %.lr.ph74.i.preheader ], !dbg !2689 ; 2 uses
  %.sroa.01.1.i73.i = phi i64 [ %i.bk, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i ], [ 2, %.lr.ph74.i.preheader ] ; 7 uses
  %i.ax = getelementptr inbounds nuw [136 x i8], ptr %i.n, i64 %.sroa.01.1.i73.i, !dbg !2690 ; 2 uses
  %i.ay = add nsw i64 %.sroa.01.1.i73.i, -1, !dbg !2694
  %i.az = icmp samesign ult i64 %i.ay, %i.m, !dbg !2695
  tail call void @llvm.assume(i1 %i.az), !dbg !2699
  %i.ba = getelementptr i8, ptr %i.ax, i64 120, !dbg !2689
  %.val7.i = load i64, ptr %i.ba, align 8, !dbg !2689, !alias.scope !2608, !noalias !2627 ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 128, !dbg !2689
  %.val8.i = load i32, ptr %i.bb, align 8, !dbg !2689, !range !2268, !alias.scope !2608, !noalias !2627, !noundef !14 ; 3 uses
  %.not.i.i32.i = icmp eq i32 %.val8.i, -1, !dbg !2700
  %.not19.i.i33.i = icmp eq i32 %.val10.i, -1, !dbg !2700 ; 2 uses
  br i1 %.not.i.i32.i, label %bb.u, label %bb.t, !dbg !2659

bb.t:                                             ; preds = %.lr.ph74.i
  br i1 %.not19.i.i33.i, label %bb.w, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.i, !dbg !2659

bb.u:                                             ; preds = %.lr.ph74.i
  br i1 %.not19.i.i33.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, label %bb.v, !dbg !2659

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  br i1 %i.ae, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, !dbg !2701

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.i: ; preds = %bb.t
  %i.bc = tail call i8 @llvm.scmp.i8.i64(i64 %.val7.i, i64 %.val9.i), !dbg !2702
  %i.bd = icmp eq i64 %.val7.i, %.val9.i, !dbg !2707
  %i.be = tail call i8 @llvm.ucmp.i8.i32(i32 %.val8.i, i32 %.val10.i), !dbg !2707
  %.sroa.0.0.i.i34.i = select i1 %i.bd, i8 %i.be, i8 %i.bc, !dbg !2707 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.bf = trunc nuw i8 %i.aw to i1, !dbg !2701
  %switch.offset.i.i35.i = sub nsw i8 0, %.sroa.0.0.i.i34.i
  %spec.select.i36.i = select i1 %i.bf, i8 %switch.offset.i.i35.i, i8 %.sroa.0.0.i.i34.i, !dbg !2701
  %i.bg = icmp eq i8 %spec.select.i36.i, -1, !dbg !2708
  br i1 %i.bg, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, !dbg !2689

bb.w:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.bh = trunc nuw i8 %i.av to i1, !dbg !2701
  br i1 %i.bh, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i, !dbg !2701

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i: ; preds = %bb.w, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.i, %bb.v
  %i.bi = phi i8 [ 0, %bb.w ], [ %i.av, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.i ], [ 1, %bb.v ]
  %i.bj = phi i8 [ 0, %bb.w ], [ %i.aw, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.i ], [ 1, %bb.v ]
  %i.bk = add nuw nsw i64 %.sroa.01.1.i73.i, 1, !dbg !2710 ; 2 uses
  %exitcond88.not.i = icmp eq i64 %i.bk, %i.m, !dbg !2658
  br i1 %exitcond88.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i, label %.lr.ph74.i, !dbg !2658

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i, %bb.w, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.i, %bb.v, %bb.u, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i, %bb.s, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.i, %bb.r, %.preheader.i, %.preheader65.i
  %i.bl = phi i1 [ false, %.preheader65.i ], [ true, %.preheader.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i ], [ false, %bb.r ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.i ], [ false, %bb.s ], [ true, %bb.u ], [ true, %bb.v ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.i ], [ true, %bb.w ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader65.i ], [ 2, %.preheader.i ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.thread.i ], [ %.sroa.01.0.i67.i, %bb.s ], [ %.sroa.01.0.i67.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit30.i ], [ %.sroa.01.0.i67.i, %bb.r ], [ %.sroa.01.1.i73.i, %bb.u ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.thread54.i ], [ %.sroa.01.1.i73.i, %bb.w ], [ %.sroa.01.1.i73.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit40.i ], [ %.sroa.01.1.i73.i, %bb.v ], !dbg !2711 ; 7 uses
  %i.bm = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m, !dbg !2712
  tail call void @llvm.assume(i1 %i.bm), !dbg !2714
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !2715
  br i1 %.not5.i, label %bb.i, label %bb.x, !dbg !2715

bb.x:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvMNtNtB17_5flags6hiargsNtB3x_6HiArgs4sortINtNtNtNtB8_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB17_6search0EEs2_0E0EB17_.exit.i
  br i1 %i.bl, label %bb.aa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i, !dbg !2716

bb.y:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 67818912035696881) %i.m, i64 %.sroa.01.0), !dbg !2717
  %i.bn = shl nuw nsw i64 %..i.i, 1, !dbg !2721
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_6search0EEs2_0E0EB18_.exit, !dbg !2724

bb.z:                                             ; preds = %bb.i
  %..i41.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 67818912035696881) %i.m, i64 32), !dbg !2725 ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB3A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EEs2_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i41.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2728
  %i.bo = shl nuw nsw i64 %..i41.i, 1, !dbg !2730
  %i.bp = or disjoint i64 %i.bo, 1, !dbg !2730
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_6search0EEs2_0E0EB18_.exit, !dbg !2724

_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i, %bb.aa, %bb.x, %bb.j
  %.sroa.0.0.i61.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.x ], [ %.sroa.0.0.i.i, %bb.aa ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i ]
  %i.bq = shl nuw nsw i64 %.sroa.0.0.i61.i, 1, !dbg !2733
  %i.br = or disjoint i64 %i.bq, 1, !dbg !2733
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_6search0EEs2_0E0EB18_.exit, !dbg !2735

bb.aa:                                            ; preds = %bb.x
  %i.bs = lshr i64 %.sroa.0.0.i.i, 1, !dbg !2736  ; 2 uses
  %.not.i.i42.i = icmp eq i64 %i.bs, 0, !dbg !2738
  br i1 %.not.i.i42.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i, label %.lr.ph.preheader.i.i.i, !dbg !2738

.lr.ph.preheader.i.i.i:                           ; preds = %bb.aa
  %i.bt = getelementptr inbounds nuw [136 x i8], ptr %i.n, i64 %.sroa.0.0.i.i, !dbg !2740
  br label %.lr.ph.i.i.i, !dbg !2743

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.by, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bu = xor i64 %.sroa.0.017.i.i.i, -1, !dbg !2749
  %i.bv = getelementptr inbounds nuw [136 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i, !dbg !2750
  %i.bw = getelementptr [136 x i8], ptr %i.bt, i64 %i.bu, !dbg !2751
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2NzvFoTxuAy_2rg(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bw, i64 noundef 17)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i unwind label %bb.ab, !dbg !2743, !noalias !2627

bb.ab:                                            ; preds = %.lr.ph.i.i.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #18, !dbg !2752, !noalias !2627
  unreachable, !dbg !2752

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEEB15_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.by = add nuw nsw i64 %.sroa.0.017.i.i.i, 1, !dbg !2753 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.by, %i.bs, !dbg !2738
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i, label %.lr.ph.i.i.i, !dbg !2738

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvMNtNtB18_5flags6hiargsNtB3y_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB18_6search0EEs2_0E0EB18_.exit: ; preds = %bb.y, %bb.z, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.br, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7reverseBz_.exit.i ], [ %i.bp, %bb.z ], [ %i.bn, %bb.y ], !dbg !2754 ; 2 uses
  %i.bz = lshr i64 %.sroa.023.0, 1, !dbg !2755
  %i.ca = lshr i64 %.sroa.0.0.i32, 1, !dbg !2758
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !2760 ; 2 uses
  %i.cb = sub nsw i64 %factor, %i.bz, !dbg !2760
  %i.cc = add nuw nsw i64 %i.ca, %factor, !dbg !2763
  %i.cd = mul i64 %i.cb, %.sroa.0.0, !dbg !2765
  %i.ce = mul i64 %i.cc, %.sroa.0.0, !dbg !2767
  %i.cf = xor i64 %i.ce, %i.cd, !dbg !2768
  %i.cg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 false), !dbg !2769
  %i.ch = trunc nuw nsw i64 %i.cg to i8, !dbg !2768
  br label %bb.g, !dbg !2772

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_6search0EEs2_0E0EB1b_.exit
  %.sroa.02.136 = phi i64 [ %i.ci, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_6search0EEs2_0E0EB1b_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_6search0EEs2_0E0EB1b_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ci = add i64 %.sroa.02.136, -1, !dbg !2773   ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ci, !dbg !2774
  %i.ck = load i8, ptr %i.cj, align 1, !dbg !2777, !noundef !14
  %.not28 = icmp ult i8 %i.ck, %.sroa.021.0, !dbg !2777
  br i1 %.not28, label %._crit_edge, label %bb.ac, !dbg !2777

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_6search0EEs2_0E0EB1b_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_6search0EEs2_0E0EB1b_.exit ], !dbg !2591 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_6search0EEs2_0E0EB1b_.exit ], !dbg !2593 ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !2778
  store i64 %.sroa.023.1.lcssa, ptr %i.cl, align 8, !dbg !2781
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !2782
  store i8 %.sroa.021.0, ptr %i.cm, align 1, !dbg !2784
  br i1 %i.k, label %bb.aj, label %bb.ak, !dbg !2785

bb.ac:                                            ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ci, !dbg !2786
  %i.co = load i64, ptr %i.cn, align 8, !dbg !2788, !noundef !14 ; 3 uses
  %i.cp = lshr i64 %i.co, 1, !dbg !2789           ; 5 uses
  %i.cq = lshr i64 %.sroa.023.135, 1, !dbg !2792  ; 3 uses
  %i.cr = add nuw i64 %i.cp, %i.cq, !dbg !2794    ; 5 uses
  %i.cs = sub i64 %.sroa.09.0, %i.cr, !dbg !2795
  %i.ct = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %i.cs, !dbg !2797 ; 3 uses
  %i.cu = icmp samesign ugt i64 %i.cr, %3, !dbg !2806
  %i.cv = trunc i64 %.sroa.023.135 to i1
  %i.cw = or i64 %i.co, %.sroa.023.135, !dbg !2811
  %i.cx = trunc i64 %i.cw to i1, !dbg !2811
  %or.cond3.i = or i1 %i.cu, %i.cx, !dbg !2811
  br i1 %or.cond3.i, label %bb.ad, label %bb.ae, !dbg !2811

bb.ad:                                            ; preds = %bb.ac
  %i.cy = trunc i64 %i.co to i1
  br i1 %i.cy, label %bb.af, label %bb.ag, !dbg !2813

bb.ae:                                            ; preds = %bb.ac
  %i.cz = shl nuw nsw i64 %i.cr, 1, !dbg !2814
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_6search0EEs2_0E0EB1b_.exit, !dbg !2817

bb.af:                                            ; preds = %bb.ag, %bb.ad
  br i1 %i.cv, label %bb.ai, label %bb.ah, !dbg !2818

bb.ag:                                            ; preds = %bb.ad
  %i.da = or i64 %i.cp, 1, !dbg !2819
  %i.db = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true), !dbg !2822
  %i.dc = trunc nuw nsw i64 %i.db to i32, !dbg !2822
  %i.dd = shl nuw nsw i32 %i.dc, 1, !dbg !2833
  %i.de = xor i32 %i.dd, 126, !dbg !2833
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB3A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EEs2_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 67818912035696881) %i.cp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2834
  br label %bb.af, !dbg !2836

bb.ah:                                            ; preds = %bb.af
  %i.df = getelementptr inbounds nuw [136 x i8], ptr %i.ct, i64 %i.cp, !dbg !2837
  %i.dg = or i64 %i.cq, 1, !dbg !2847
  %i.dh = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.dg, i1 true), !dbg !2849
  %i.di = trunc nuw nsw i64 %i.dh to i32, !dbg !2849
  %i.dj = shl nuw nsw i32 %i.di, 1, !dbg !2854
  %i.dk = xor i32 %i.dj, 126, !dbg !2854
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB3A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EEs2_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.df, i64 noundef range(i64 0, 67818912035696881) %i.cq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.dk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2855
  br label %bb.ai, !dbg !2856

bb.ai:                                            ; preds = %bb.ah, %bb.af
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCINvMNtNtB12_5flags6hiargsNtB3r_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB12_6search0EEs2_0E0EB12_(ptr noalias nofree noundef nonnull align 8 %i.ct, i64 noundef range(i64 0, 67818912035696881) %i.cr, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i64 noundef %i.cp, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !2857
  %i.dl = shl nuw nsw i64 %i.cr, 1, !dbg !2858
  %i.dm = or disjoint i64 %i.dl, 1, !dbg !2858
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_6search0EEs2_0E0EB1b_.exit, !dbg !2817

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMNtNtB1b_5flags6hiargsNtB3B_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1b_6search0EEs2_0E0EB1b_.exit: ; preds = %bb.ae, %bb.ai
  %.sroa.0.0.i = phi i64 [ %i.dm, %bb.ai ], [ %i.cz, %bb.ae ], !dbg !2861 ; 2 uses
  %i.dn = icmp ugt i64 %i.ci, 1, !dbg !2597
  br i1 %i.dn, label %.lr.ph, label %._crit_edge, !dbg !2597

bb.aj:                                            ; preds = %._crit_edge
  %i.do = add i64 %.sroa.02.1.lcssa, 1, !dbg !2862
  %i.dp = lshr i64 %.sroa.018.0, 1, !dbg !2863
  %i.dq = add nuw i64 %i.dp, %.sroa.09.0, !dbg !2865
  br label %bb.f, !dbg !2586

bb.ak:                                            ; preds = %._crit_edge
  %6 = and i64 %.sroa.023.1.lcssa, 1, !dbg !2866
  %.not30 = icmp eq i64 %6, 0, !dbg !2866
  br i1 %.not30, label %bb.al, label %bb.am, !dbg !2869

bb.al:                                            ; preds = %bb.ak
  %i.dr = or i64 %1, 1, !dbg !2870
  %i.ds = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.dr, i1 true), !dbg !2872
  %i.dt = trunc nuw nsw i64 %i.ds to i32, !dbg !2872
  %i.du = shl nuw nsw i32 %i.dt, 1, !dbg !2877
  %i.dv = xor i32 %i.du, 126, !dbg !2877
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB3A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EEs2_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i32 noundef %i.dv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2878
  br label %bb.am, !dbg !2879

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2881
  br label %bb.an, !dbg !2882

bb.an:                                            ; preds = %bb.a, %bb.am
  ret void, !dbg !2882
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXNtNtCsgixc6xHyZOO_10serde_json5value3serNtB5_5ValueNtNtCs696aDvbrEFJ_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2883 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 13 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = load i8, ptr %0, align 8, !dbg !2888, !range !2889, !noundef !14
  switch i8 %i.c, label %default.unreachable63 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.i
    i8 5, label %bb.j
  ], !dbg !2890

default.unreachable63:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !2891, !nonnull !14, !align !16, !noundef !14
  %.val.i.i.i = load ptr, ptr %.val, align 8, !dbg !2892, !noalias !2899, !nonnull !14, !align !16, !noundef !14
  %i.d = tail call noundef ptr @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef range(i64 0, -9223372036854775808) 4), !dbg !2902 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null, !dbg !2904
  br i1 %.not.i, label %_RNvXs1_NtCsgixc6xHyZOO_10serde_json3serQINtB5_10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer14serialize_unitCs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !2910, !prof !2911

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsgixc6xHyZOO_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.d), !dbg !2912
  br label %_RNvXs1_NtCsgixc6xHyZOO_10serde_json3serQINtB5_10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer14serialize_unitCs2NzvFoTxuAy_2rg.exit, !dbg !2917

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !2918
  %i.g = load i8, ptr %i.f, align 1, !dbg !2918, !range !2280, !noundef !14
  %i.h = trunc nuw i8 %i.g to i1, !dbg !2918
  %.val41 = load ptr, ptr %1, align 8, !dbg !2920, !nonnull !14, !noundef !14
  %.val.i4.i.i = load ptr, ptr %.val41, align 8, !dbg !2921, !noalias !14, !nonnull !14, !align !16, !noundef !14 ; 2 uses
  br i1 %i.h, label %.split.i.i, label %.split2.i.i, !dbg !2928

.split2.i.i:                                      ; preds = %bb.d
  %i.i = tail call noundef ptr @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val.i4.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 5), !dbg !2929
  br label %_RINvYNtNtCsgixc6xHyZOO_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_boolQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg.exit.i, !dbg !2932

.split.i.i:                                       ; preds = %bb.d
  %i.j = tail call noundef ptr @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val.i4.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef range(i64 0, -9223372036854775808) 4), !dbg !2933
  br label %_RINvYNtNtCsgixc6xHyZOO_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_boolQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg.exit.i, !dbg !2932

_RINvYNtNtCsgixc6xHyZOO_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_boolQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg.exit.i: ; preds = %.split.i.i, %.split2.i.i
  %phi.call.i.i = phi ptr [ %i.j, %.split.i.i ], [ %i.i, %.split2.i.i ], !dbg !2936 ; 2 uses
  %.not.i43 = icmp eq ptr %phi.call.i.i, null, !dbg !2937
  br i1 %.not.i43, label %_RNvXs1_NtCsgixc6xHyZOO_10serde_json3serQINtB5_10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer14serialize_unitCs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !2940, !prof !2911

bb.e:                                             ; preds = %_RINvYNtNtCsgixc6xHyZOO_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_boolQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg.exit.i
  %i.k = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsgixc6xHyZOO_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %phi.call.i.i), !dbg !2941
  br label %_RNvXs1_NtCsgixc6xHyZOO_10serde_json3serQINtB5_10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer14serialize_unitCs2NzvFoTxuAy_2rg.exit, !dbg !2945

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2946
  %i.m = tail call noundef align 8 ptr @_RINvXs4_NtCsgixc6xHyZOO_10serde_json6numberNtB6_6NumberNtNtCs696aDvbrEFJ_10serde_core3ser9Serialize9serializeQINtNtB8_3ser10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !dbg !2947
  br label %_RNvXs1_NtCsgixc6xHyZOO_10serde_json3serQINtB5_10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer14serialize_unitCs2NzvFoTxuAy_2rg.exit, !dbg !2949

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2950
  %i.o = load ptr, ptr %i.n, align 8, !dbg !2950, !nonnull !14, !noundef !14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2977
  %i.q = load i64, ptr %i.p, align 8, !dbg !2977, !noundef !14
  %i.r = tail call noundef ptr @_RINvNtCsgixc6xHyZOO_10serde_json3ser18format_escaped_strQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtB2_16CompactFormatterECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q), !dbg !2978 ; 2 uses
  %.not.i45 = icmp eq ptr %i.r, null, !dbg !2981
  br i1 %.not.i45, label %_RNvXs1_NtCsgixc6xHyZOO_10serde_json3serQINtB5_10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer14serialize_unitCs2NzvFoTxuAy_2rg.exit, label %bb.h, !dbg !2984, !prof !2911

bb.h:                                             ; preds = %bb.g
  %i.s = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsgixc6xHyZOO_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.r), !dbg !2985, !noalias !2989
  br label %_RNvXs1_NtCsgixc6xHyZOO_10serde_json3serQINtB5_10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer14serialize_unitCs2NzvFoTxuAy_2rg.exit, !dbg !2992

bb.i:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2993
  %i.u = tail call noundef align 8 ptr @_RINvYQINtNtCsgixc6xHyZOO_10serde_json3ser10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer11collect_seqRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB9_5value5ValueEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t), !dbg !2994
  br label %_RNvXs1_NtCsgixc6xHyZOO_10serde_json3serQINtB5_10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer14serialize_unitCs2NzvFoTxuAy_2rg.exit, !dbg !3003

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3004
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3006
  %i.w = load i64, ptr %i.v, align 8, !dbg !3006, !noundef !14 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3019), !dbg !3022
  %.val.i = load ptr, ptr %1, align 8, !dbg !3023, !alias.scope !3019, !noalias !3026, !nonnull !14, !align !16, !noundef !14 ; 2 uses
  %.val.i.i.i47 = load ptr, ptr %.val.i, align 8, !dbg !3028, !noalias !3032, !nonnull !14, !align !16, !noundef !14
  %i.x = tail call noundef ptr @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val.i.i.i47, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !3035, !noalias !3037 ; 2 uses
  %.not.i48 = icmp eq ptr %i.x, null, !dbg !3038
  br i1 %.not.i48, label %bb.k, label %bb.m, !dbg !3041, !prof !2911

bb.k:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %bb.l, label %bb.n, !dbg !3042

bb.l:                                             ; preds = %bb.k
  %.val.i.i12.i = load ptr, ptr %.val.i, align 8, !dbg !3046, !noalias !3050, !nonnull !14, !align !16, !noundef !14
  %i.z = tail call noundef ptr @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val.i.i12.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !3053, !noalias !3037 ; 2 uses
  %.not10.i = icmp eq ptr %i.z, null, !dbg !3055
  br i1 %.not10.i, label %bb.n, label %bb.m, !dbg !3057, !prof !2911

_RNvXs1_NtCsgixc6xHyZOO_10serde_json3serQINtB5_10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer14serialize_unitCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.h, %bb.g, %bb.e, %_RINvYNtNtCsgixc6xHyZOO_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_boolQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg.exit.i, %bb.c, %bb.b, %bb.u, %_RNvXs6_NtCsgixc6xHyZOO_10serde_json3serINtB5_8CompoundQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtB5_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap3endCs2NzvFoTxuAy_2rg.exit, %bb.i, %bb.f
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i51, %_RNvXs6_NtCsgixc6xHyZOO_10serde_json3serINtB5_8CompoundQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtB5_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap3endCs2NzvFoTxuAy_2rg.exit ], [ null, %bb.b ], [ %i.m, %bb.f ], [ null, %_RINvYNtNtCsgixc6xHyZOO_10serde_json3ser16CompactFormatterNtB5_9Formatter10write_boolQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg.exit.i ], [ %i.u, %bb.i ], [ %.sroa.0.1, %bb.u ], [ %i.e, %bb.c ], [ %i.k, %bb.e ], [ %i.s, %bb.h ], [ null, %bb.g ], !dbg !3058
  ret ptr %.sroa.0.0, !dbg !3059

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sink16.i = phi ptr [ %i.x, %bb.j ], [ %i.z, %bb.l ]
  %i.aa = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsgixc6xHyZOO_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sink16.i), !dbg !3060, !noalias !3037
  br label %bb.u, !dbg !3064

bb.n:                                             ; preds = %bb.l, %bb.k
  %.sink.i.ph = phi i8 [ 1, %bb.k ], [ 0, %bb.l ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3006
  store ptr %1, ptr %i.b, align 8, !dbg !3067
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !3067 ; 2 uses
  store i8 %.sink.i.ph, ptr %i.ac, align 8, !dbg !3067
  %i.ad = load ptr, ptr %i.ab, align 8, !dbg !3069, !noundef !14 ; 3 uses
  %.not = icmp ne ptr %i.ad, null, !dbg !3069     ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3077
  %i.af = load i64, ptr %i.ae, align 8, !dbg !3077
  %.sroa.07.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.af, i64 undef, !dbg !3077 ; 2 uses
  %.sroa.07.sroa.0.0 = zext i1 %.not to i64, !dbg !3077 ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.w, i64 0, !dbg !3077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3075
  store i64 %.sroa.07.sroa.0.0, ptr %i.a, align 8, !dbg !3075
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3075
  store ptr null, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8, !dbg !3075
  %.sroa.08.sroa.5.sroa.5.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3075
  store ptr %i.ad, ptr %.sroa.08.sroa.5.sroa.5.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !3075
  %.sroa.08.sroa.5.sroa.6.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !3075
  store i64 %.sroa.07.sroa.5.sroa.6.0, ptr %.sroa.08.sroa.5.sroa.6.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !3075
  %.sroa.08.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !3075
  store i64 %.sroa.07.sroa.0.0, ptr %.sroa.08.sroa.6.0..sroa_idx, align 8, !dbg !3075
  %.sroa.08.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !3075
  store ptr null, ptr %.sroa.08.sroa.7.0..sroa_idx, align 8, !dbg !3075
  %.sroa.08.sroa.7.sroa.5.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !3075
  store ptr %i.ad, ptr %.sroa.08.sroa.7.sroa.5.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !3075
  %.sroa.08.sroa.7.sroa.6.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !3075
  store i64 %.sroa.07.sroa.5.sroa.6.0, ptr %.sroa.08.sroa.7.sroa.6.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !3075
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !3075
  store i64 %.sroa.5.0, ptr %.sroa.59.0..sroa_idx, align 8, !dbg !3075
  br label %bb.o, !dbg !3078

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.ag = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCsgixc6xHyZOO_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !dbg !3080 ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0, !dbg !3080 ; 2 uses
  %.not39 = icmp eq ptr %i.ah, null, !dbg !3085
  br i1 %.not39, label %bb.q, label %bb.p, !dbg !3085

bb.p:                                             ; preds = %bb.o
  %i.ai = extractvalue { ptr, ptr } %i.ag, 1, !dbg !3080 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = call noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtB8_5value5ValueECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai), !dbg !3086 ; 2 uses
  %.not40 = icmp eq ptr %i.aj, null, !dbg !3088
  br i1 %.not40, label %bb.o, label %bb.t, !dbg !3089

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3091
  %i.ak = load i8, ptr %i.ac, align 8, !dbg !3092, !range !3093, !noundef !14
  %i.al = icmp eq i8 %i.ak, 0, !dbg !3094
  br i1 %i.al, label %_RNvXs6_NtCsgixc6xHyZOO_10serde_json3serINtB5_8CompoundQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtB5_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap3endCs2NzvFoTxuAy_2rg.exit, label %bb.r, !dbg !3094

bb.r:                                             ; preds = %bb.q
  %i.am = load ptr, ptr %i.b, align 8, !dbg !3092, !nonnull !14, !align !16, !noundef !14
  %.val42 = load ptr, ptr %i.am, align 8, !dbg !3099, !nonnull !14, !noundef !14
  %.val.i.i.i49 = load ptr, ptr %.val42, align 8, !dbg !3100, !noalias !3103, !nonnull !14, !align !16, !noundef !14
  %i.an = call noundef ptr @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val.i.i.i49, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !3106 ; 2 uses
  %.not.i50 = icmp eq ptr %i.an, null, !dbg !3108
  br i1 %.not.i50, label %_RNvXs6_NtCsgixc6xHyZOO_10serde_json3serINtB5_8CompoundQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtB5_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap3endCs2NzvFoTxuAy_2rg.exit, label %bb.s, !dbg !3111, !prof !2911

bb.s:                                             ; preds = %bb.r
  %i.ao = call noundef nonnull align 8 ptr @_RNvMs0_NtCsgixc6xHyZOO_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.an), !dbg !3112
  br label %_RNvXs6_NtCsgixc6xHyZOO_10serde_json3serINtB5_8CompoundQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtB5_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap3endCs2NzvFoTxuAy_2rg.exit, !dbg !3116

_RNvXs6_NtCsgixc6xHyZOO_10serde_json3serINtB5_8CompoundQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamNtB5_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap3endCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.q, %bb.r, %bb.s
  %.sroa.0.0.i51 = phi ptr [ null, %bb.q ], [ %i.ao, %bb.s ], [ null, %bb.r ], !dbg !3117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3118
  br label %_RNvXs1_NtCsgixc6xHyZOO_10serde_json3serQINtB5_10SerializerQQNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtCs696aDvbrEFJ_10serde_core3ser10Serializer14serialize_unitCs2NzvFoTxuAy_2rg.exit, !dbg !3119

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3091
  br label %bb.u, !dbg !3118

bb.u:                                             ; preds = %bb.t, %bb.m
end_hunk_0
