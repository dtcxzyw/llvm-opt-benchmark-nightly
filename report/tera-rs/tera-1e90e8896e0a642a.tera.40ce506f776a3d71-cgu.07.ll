Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.07?download=true
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCNvNtB10_7filters4sorts1_0E0EB10_:bb.a
    #dbg_value(i64 3, !2060, !DIExpression(), !7221)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, i64 noundef 3)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs5yXxDE1DkoT_4tera5value5ValueEB14_.exit.i.i unwind label %bb.q, !dbg !7673, !noalias !7456

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #18, !dbg !7677, !noalias !7456
  unreachable, !dbg !7677

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs5yXxDE1DkoT_4tera5value5ValueEB14_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.au = add nuw nsw i64 %.sroa.0.027.i.i, 1, !dbg !7678 ; 2 uses
    #dbg_value(i64 %i.au, !7484, !DIExpression(), !7188)
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.ao, !dbg !7679
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5yXxDE1DkoT_4tera5value5Value7reverseBy_.exit, label %.lr.ph.i.i, !dbg !7679

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtB17_7filters4sorts1_0E0EB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5yXxDE1DkoT_4tera5value5Value7reverseBy_.exit
  %.sroa.0.0.i81 = phi i64 [ %i.an, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5yXxDE1DkoT_4tera5value5Value7reverseBy_.exit ], [ %i.al, %bb.p ], [ %i.ai, %bb.o ], !dbg !7680 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i81, !7326, !DIExpression(), !7400)
    #dbg_value(i64 %.sroa.023.0, !7515, !DIExpression(), !7518)
  %i.av = lshr i64 %.sroa.023.0, 1, !dbg !7681
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 0, i64 %i.av), !7519, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7527)
    #dbg_value(i64 %.sroa.09.0, !7520, !DIExpression(), !7527)
    #dbg_value(i64 %.sroa.0.0.i81, !7515, !DIExpression(), !7529)
  %i.aw = lshr i64 %.sroa.0.0.i81, 1, !dbg !7682
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %i.aw), !7521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7527)
    #dbg_value(i64 %.sroa.0.0, !7522, !DIExpression(), !7527)
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !7683 ; 2 uses
  %i.ax = sub nsw i64 %factor, %i.av, !dbg !7683
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %.sroa.09.0, i64 0, i64 %i.av), !7523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !7530)
  %i.ay = add nuw nsw i64 %i.aw, %factor, !dbg !7684
    #dbg_value(i64 %i.ay, !7524, !DIExpression(), !7531)
  %i.az = mul i64 %i.ax, %.sroa.0.0, !dbg !7685
  %i.ba = mul i64 %i.ay, %.sroa.0.0, !dbg !7686
  %i.bb = xor i64 %i.ba, %i.az, !dbg !7687
    #dbg_value(i64 %i.bb, !7532, !DIExpression(), !7535)
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 false), !dbg !7688
  %i.bd = trunc nuw nsw i64 %i.bc to i8, !dbg !7687
    #dbg_value(i8 %i.bd, !7327, !DIExpression(), !7400)
  br label %bb.g, !dbg !7689

.lr.ph102:                                        ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1a_7filters4sorts1_0E0EB1a_.exit
  %.sroa.02.1101 = phi i64 [ %i.be, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1a_7filters4sorts1_0E0EB1a_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.1100 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1a_7filters4sorts1_0E0EB1a_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
    #dbg_value(i64 %.sroa.02.1101, !7319, !DIExpression(), !7381)
    #dbg_value(i64 %.sroa.023.1100, !7325, !DIExpression(), !7399)
  %i.be = add i64 %.sroa.02.1101, -1, !dbg !7690  ; 4 uses
    #dbg_value(i64 %i.be, !7392, !DIExpression(), !7395)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be, !dbg !7691
  %i.bg = load i8, ptr %i.bf, align 1, !dbg !7692, !noundef !558
  %.not77 = icmp ult i8 %i.bg, %.sroa.021.0, !dbg !7692
  br i1 %.not77, label %._crit_edge, label %bb.r, !dbg !7692

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1a_7filters4sorts1_0E0EB1a_.exit, %.lr.ph102, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1100, %.lr.ph102 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1a_7filters4sorts1_0E0EB1a_.exit ], !dbg !7398 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1101, %.lr.ph102 ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1a_7filters4sorts1_0E0EB1a_.exit ], !dbg !7380 ; 3 uses
    #dbg_value(i64 %.sroa.02.1.lcssa, !7384, !DIExpression(), !7389)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !7693
  store i64 %.sroa.023.1.lcssa, ptr %i.bh, align 8, !dbg !7694
    #dbg_value(i64 %.sroa.02.1.lcssa, !7392, !DIExpression(), !7397)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !7695
  store i8 %.sroa.021.0, ptr %i.bi, align 1, !dbg !7696
    #dbg_value(i64 %.sroa.02.1.lcssa, !7319, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7381)
  br i1 %i.l, label %bb.y, label %bb.z, !dbg !7697

bb.r:                                             ; preds = %.lr.ph102
    #dbg_value(i64 %i.be, !7384, !DIExpression(), !7387)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.be, !dbg !7698
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !7699, !noundef !558 ; 3 uses
    #dbg_value(i64 %i.bk, !7328, !DIExpression(), !7536)
    #dbg_value(i64 %i.bk, !7515, !DIExpression(), !7538)
  %i.bl = lshr i64 %i.bk, 1, !dbg !7700           ; 5 uses
    #dbg_value(i64 %.sroa.023.1100, !7515, !DIExpression(), !7540)
  %i.bm = lshr i64 %.sroa.023.1100, 1, !dbg !7701 ; 3 uses
  %i.bn = add nuw i64 %i.bl, %i.bm, !dbg !7702    ; 5 uses
    #dbg_value(i64 %i.bn, !7329, !DIExpression(), !7541)
  %i.bo = sub i64 %.sroa.09.0, %i.bn, !dbg !7703
    #dbg_value(i64 %i.bo, !7330, !DIExpression(), !7542)
    #dbg_value(i64 %i.bo, !7348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7352)
    #dbg_value(i64 %i.bo, !7543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7550)
    #dbg_value(i64 %i.bo, !7401, !DIExpression(), !7552)
    #dbg_value(i64 %.sroa.09.0, !7348, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7352)
    #dbg_value(i64 %.sroa.09.0, !7543, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7550)
    #dbg_value(ptr %0, !7546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7550)
    #dbg_value(ptr %0, !7402, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7552)
    #dbg_value(i64 %1, !7546, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7550)
    #dbg_value(i64 %1, !7402, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7552)
    #dbg_value(i64 %i.bn, !7547, !DIExpression(), !7553)
    #dbg_value(i64 %i.bn, !7403, !DIExpression(), !7552)
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bo, !dbg !7704 ; 3 uses
    #dbg_value(ptr %i.bp, !7331, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7554)
    #dbg_value(i64 %i.bn, !7331, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7554)
    #dbg_value(ptr %i.bp, !7555, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7233)
    #dbg_value(ptr %i.bp, !7565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7236)
    #dbg_value(ptr %i.bp, !7568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7240)
    #dbg_value(i64 %i.bn, !7555, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7233)
    #dbg_value(i64 %i.bn, !7565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7236)
    #dbg_value(i64 %i.bn, !7568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7240)
    #dbg_value(ptr %2, !7558, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7233)
    #dbg_value(i64 %3, !7558, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7233)
    #dbg_value(i64 %i.bk, !7559, !DIExpression(), !7233)
    #dbg_value(i64 %.sroa.023.1100, !7560, !DIExpression(), !7233)
    #dbg_value(ptr %5, !7561, !DIExpression(), !7233)
    #dbg_value(i64 0, !7573, !DIExpression(), !7249)
    #dbg_value(i64 %i.bn, !7562, !DIExpression(), !7250)
    #dbg_value(i64 %i.bn, !7595, !DIExpression(), !7253)
    #dbg_value(i64 %i.bn, !7597, !DIExpression(), !7256)
  %.not.i = icmp samesign ule i64 %i.bn, %3, !dbg !7705
    #dbg_value(i1 %.not.i, !7563, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7257)
  %i.bq = and i64 %.sroa.023.1100, 1
  %.not28.i = icmp eq i64 %i.bq, 0
  %i.br = or i64 %i.bk, %.sroa.023.1100, !dbg !7706
  %i.bs = and i64 %i.br, 1, !dbg !7706
  %i.bt = icmp eq i64 %i.bs, 0, !dbg !7706
  %or.cond32.i = and i1 %.not.i, %i.bt, !dbg !7706
  br i1 %or.cond32.i, label %bb.t, label %bb.s, !dbg !7706

bb.s:                                             ; preds = %bb.r
  %i.bu = and i64 %i.bk, 1
  %.not27.i = icmp eq i64 %i.bu, 0
  br i1 %.not27.i, label %bb.v, label %bb.u, !dbg !7707

bb.t:                                             ; preds = %bb.r
  %i.bv = shl nuw nsw i64 %i.bn, 1, !dbg !7708
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1a_7filters4sorts1_0E0EB1a_.exit, !dbg !7709

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %.not28.i, label %bb.w, label %bb.x, !dbg !7710

bb.v:                                             ; preds = %bb.s
    #dbg_value(i64 %i.bl, !7575, !DIExpression(), !7249)
    #dbg_value(ptr %i.bp, !7574, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7249)
    #dbg_value(i64 %i.bn, !7574, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7249)
    #dbg_value(ptr %i.bp, !7599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7261)
    #dbg_value(i64 %i.bl, !7599, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7261)
    #dbg_value(ptr %2, !7600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7261)
    #dbg_value(i64 %3, !7600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7261)
    #dbg_value(ptr %5, !7601, !DIExpression(), !7261)
    #dbg_value(i64 %i.bl, !7604, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !7265)
    #dbg_value(i64 %i.bl, !7607, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !7269)
  %i.bw = or i64 %i.bl, 1, !dbg !7711
    #dbg_value(i64 %i.bw, !7604, !DIExpression(), !7265)
    #dbg_value(i64 %i.bw, !7607, !DIExpression(), !7269)
    #dbg_value(i64 %i.bw, !7608, !DIExpression(), !7270)
    #dbg_value(i64 %i.bw, !7610, !DIExpression(), !7273)
    #dbg_value(i64 %i.bw, !7612, !DIExpression(), !7276)
  %i.bx = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true), !dbg !7712
  %i.by = trunc nuw nsw i64 %i.bx to i32, !dbg !7712
    #dbg_value(i32 %i.by, !7605, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !7277)
  %i.bz = shl nuw nsw i32 %i.by, 1, !dbg !7713
  %i.ca = xor i32 %i.bz, 126, !dbg !7713
    #dbg_value(i32 %i.ca, !7602, !DIExpression(), !7278)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvNtB19_7filters4sorts1_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 384307168202282326) %i.bl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !7714, !inline_history !7279
  br label %bb.u, !dbg !7715

bb.w:                                             ; preds = %bb.u
    #dbg_value(i64 %i.bl, !7566, !DIExpression(), !7236)
    #dbg_value(i64 %i.bl, !7569, !DIExpression(), !7240)
    #dbg_value(i64 %i.bl, !7576, !DIExpression(), !7281)
    #dbg_value(i64 %i.bm, !7570, !DIExpression(), !7282)
    #dbg_value(i64 %i.bm, !7575, !DIExpression(), !7281)
    #dbg_value(ptr %i.bp, !7574, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7281)
    #dbg_value(i64 %i.bn, !7574, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7281)
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.bl, !dbg !7716
    #dbg_value(ptr %i.cb, !7599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7284)
    #dbg_value(i64 %i.bm, !7599, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7284)
    #dbg_value(ptr %2, !7600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7284)
    #dbg_value(i64 %3, !7600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7284)
    #dbg_value(ptr %5, !7601, !DIExpression(), !7284)
    #dbg_value(i64 %i.bm, !7604, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !7286)
    #dbg_value(i64 %i.bm, !7607, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !7288)
  %i.cc = or i64 %i.bm, 1, !dbg !7717
    #dbg_value(i64 %i.cc, !7604, !DIExpression(), !7286)
    #dbg_value(i64 %i.cc, !7607, !DIExpression(), !7288)
    #dbg_value(i64 %i.cc, !7608, !DIExpression(), !7289)
    #dbg_value(i64 %i.cc, !7610, !DIExpression(), !7291)
    #dbg_value(i64 %i.cc, !7612, !DIExpression(), !7293)
  %i.cd = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true), !dbg !7718
  %i.ce = trunc nuw nsw i64 %i.cd to i32, !dbg !7718
    #dbg_value(i32 %i.ce, !7605, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !7294)
  %i.cf = shl nuw nsw i32 %i.ce, 1, !dbg !7719
  %i.cg = xor i32 %i.cf, 126, !dbg !7719
    #dbg_value(i32 %i.cg, !7602, !DIExpression(), !7295)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvNtB19_7filters4sorts1_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 384307168202282326) %i.bm, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !7720, !inline_history !7279
  br label %bb.x, !dbg !7721

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvNtB11_7filters4sorts1_0E0EB11_(ptr noalias nofree noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 384307168202282326) %i.bn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i64 noundef %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !7722
  %i.ch = shl nuw nsw i64 %i.bn, 1, !dbg !7723
  %i.ci = or disjoint i64 %i.ch, 1, !dbg !7723
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1a_7filters4sorts1_0E0EB1a_.exit, !dbg !7709

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1a_7filters4sorts1_0E0EB1a_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.ci, %bb.x ], [ %i.bv, %bb.t ], !dbg !7724 ; 2 uses
    #dbg_value(i64 %i.be, !7319, !DIExpression(), !7381)
    #dbg_value(i64 %.sroa.0.0.i, !7325, !DIExpression(), !7399)
  %i.cj = icmp ugt i64 %i.be, 1, !dbg !7634
  br i1 %i.cj, label %.lr.ph102, label %._crit_edge, !dbg !7634

bb.y:                                             ; preds = %._crit_edge
  %i.ck = add nsw i64 %.sroa.02.1.lcssa, 1, !dbg !7725
    #dbg_value(i64 %i.ck, !7319, !DIExpression(), !7381)
    #dbg_value(i64 %.sroa.018.0, !7515, !DIExpression(), !7615)
  %i.cl = lshr i64 %.sroa.018.0, 1, !dbg !7726
  %i.cm = add nuw nsw i64 %i.cl, %.sroa.09.0, !dbg !7727
    #dbg_value(i64 %i.cm, !7324, !DIExpression(), !7398)
    #dbg_value(i64 %.sroa.018.0, !7325, !DIExpression(), !7399)
  br label %bb.f, !dbg !7632

bb.z:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.023.1.lcssa, !7616, !DIExpression(), !7619)
  %i.cn = and i64 %.sroa.023.1.lcssa, 1, !dbg !7728
  %.not79 = icmp eq i64 %i.cn, 0, !dbg !7728
  br i1 %.not79, label %bb.aa, label %bb.ab, !dbg !7729

bb.aa:                                            ; preds = %bb.z
    #dbg_value(ptr %0, !7599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7298)
    #dbg_value(i64 %1, !7599, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7298)
    #dbg_value(ptr %2, !7600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7298)
    #dbg_value(i64 %3, !7600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7298)
    #dbg_value(ptr %5, !7601, !DIExpression(), !7298)
    #dbg_value(i64 %1, !7604, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !7300)
    #dbg_value(i64 %1, !7607, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !7302)
  %i.co = or i64 %1, 1, !dbg !7730
    #dbg_value(i64 %i.co, !7604, !DIExpression(), !7300)
    #dbg_value(i64 %i.co, !7607, !DIExpression(), !7302)
    #dbg_value(i64 %i.co, !7608, !DIExpression(), !7303)
    #dbg_value(i64 %i.co, !7610, !DIExpression(), !7305)
    #dbg_value(i64 %i.co, !7612, !DIExpression(), !7307)
  %i.cp = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true), !dbg !7731
  %i.cq = trunc nuw nsw i64 %i.cp to i32, !dbg !7731
    #dbg_value(i32 %i.cq, !7605, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !7308)
  %i.cr = shl nuw nsw i32 %i.cq, 1, !dbg !7732
  %i.cs = xor i32 %i.cr, 126, !dbg !7732
    #dbg_value(i32 %i.cs, !7602, !DIExpression(), !7309)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvNtB19_7filters4sorts1_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !7733, !inline_history !7279
  br label %bb.ab, !dbg !7734

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7736
  br label %bb.ac, !dbg !7737

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !7737
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCsgCecv3eZDcN_5alloc6string6StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7753 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
    #dbg_value(ptr %0, !8047, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8068)
    #dbg_value(ptr %0, !8069, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8073)
    #dbg_value(ptr %0, !8074, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8079)
    #dbg_value(ptr %0, !8080, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8087)
    #dbg_value(i64 %1, !8047, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8068)
    #dbg_value(i64 %1, !8069, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8073)
    #dbg_value(i64 %1, !8074, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8079)
    #dbg_value(i64 %1, !8080, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8087)
    #dbg_value(ptr %2, !8048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8068)
    #dbg_value(i64 %3, !8048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8068)
    #dbg_value(i1 %4, !8049, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8068)
    #dbg_value(ptr %5, !8050, !DIExpression(), !8068)
    #dbg_declare(ptr %i.b, !8055, !DIExpression(), !8088)
    #dbg_declare(ptr %i.a, !8057, !DIExpression(), !8089)
    #dbg_value(i64 4611686018427387904, !8090, !DIExpression(), !8097)
    #dbg_value(i64 64, !8100, !DIExpression(), !8104)
    #dbg_value(i64 64, !8105, !DIExpression(), !8109)
    #dbg_value(i64 %1, !8051, !DIExpression(), !8110)
    #dbg_value(i64 %1, !8098, !DIExpression(), !8111)
  %i.c = icmp samesign ult i64 %1, 2, !dbg !8360
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !8360

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %1, !8091, !DIExpression(), !8097)
  %i.d = udiv i64 4611686018427387904, %1, !dbg !8361
    #dbg_value(i64 %i.d, !8092, !DIExpression(), !8112)
  %i.e = urem i64 4611686018427387904, %1, !dbg !8362
    #dbg_value(i64 %i.e, !8093, !DIExpression(), !8113)
  %.not = icmp ne i64 %i.e, 0, !dbg !8363
  %i.f = zext i1 %.not to i64, !dbg !8363
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !8363 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !8052, !DIExpression(), !8114)
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !8364
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !8364

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !8365
    #dbg_value(i64 %i.h, !8053, !DIExpression(), !8115)
  br label %bb.e, !dbg !8365

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !8366
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !8367
    #dbg_value(i64 %i.j, !8101, !DIExpression(), !8104)
    #dbg_value(i64 %i.j, !8106, !DIExpression(), !8109)
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !8368
    #dbg_value(i64 %i.k, !8053, !DIExpression(), !8115)
  br label %bb.e, !dbg !8369

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ], !dbg !8114 ; 5 uses
    #dbg_value(i64 %.sroa.01.0, !8053, !DIExpression(), !8115)
    #dbg_value(i64 0, !8054, !DIExpression(), !8116)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8370
    #dbg_value(ptr %i.b, !8056, !DIExpression(), !8117)
    #dbg_value(ptr %i.b, !8118, !DIExpression(), !8122)
    #dbg_value(ptr %i.b, !8118, !DIExpression(), !8124)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8371
    #dbg_value(ptr %i.a, !8058, !DIExpression(), !8125)
    #dbg_value(ptr %i.a, !8126, !DIExpression(), !8130)
    #dbg_value(ptr %i.a, !8126, !DIExpression(), !8132)
    #dbg_value(i64 0, !8059, !DIExpression(), !8133)
    #dbg_value(i64 1, !8060, !DIExpression(), !8134)
  %.not25.i135 = icmp ugt i64 %.sroa.01.0, 2
  %.not25.i140 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !8372

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !8133 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cy, %bb.y ], !dbg !8125 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cw, %bb.y ], !dbg !8115 ; 3 uses
    #dbg_value(i64 %.sroa.02.0, !8054, !DIExpression(), !8116)
    #dbg_value(i64 %.sroa.09.0, !8059, !DIExpression(), !8133)
    #dbg_value(i64 %.sroa.023.0, !8060, !DIExpression(), !8134)
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1, !dbg !8373 ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g, !dbg !8373

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit
  %.sroa.021.0 = phi i8 [ %i.bp, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], [ 0, %bb.f ], !dbg !8135 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i81, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], [ 1, %bb.f ], !dbg !8135 ; 2 uses
    #dbg_value(i64 %.sroa.018.0, !8061, !DIExpression(), !8135)
    #dbg_value(i8 %.sroa.021.0, !8062, !DIExpression(), !8135)
    #dbg_value(i64 %.sroa.02.0, !8054, !DIExpression(), !8116)
    #dbg_value(i64 %.sroa.023.0, !8060, !DIExpression(), !8134)
  %i.m = icmp ugt i64 %.sroa.02.0, 1, !dbg !8374
  br i1 %i.m, label %.lr.ph106, label %._crit_edge, !dbg !8374

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.09.0, !8070, !DIExpression(), !8073)
    #dbg_value(i64 %.sroa.09.0, !8075, !DIExpression(), !8079)
    #dbg_value(i64 %.sroa.09.0, !8136, !DIExpression(), !8141)
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !8375 ; 11 uses
    #dbg_value(i64 %i.n, !8076, !DIExpression(), !8142)
    #dbg_value(i64 %i.n, !8138, !DIExpression(), !8141)
    #dbg_value(ptr %0, !8137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8141)
    #dbg_value(i64 %1, !8137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8141)
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0, !dbg !8376 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8143), !dbg !8377
    #dbg_value(ptr %i.o, !8144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7774)
    #dbg_value(i64 %i.n, !8144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7774)
    #dbg_value(ptr %2, !8147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7774)
    #dbg_value(i64 %3, !8147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7774)
    #dbg_value(i64 %.sroa.01.0, !8148, !DIExpression(), !7774)
    #dbg_value(i64 %.sroa.01.0, !8156, !DIExpression(), !7777)
    #dbg_value(i64 %.sroa.01.0, !8159, !DIExpression(), !7780)
    #dbg_value(i1 %4, !8149, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7774)
    #dbg_value(ptr %5, !8150, !DIExpression(), !7774)
    #dbg_value(i64 %i.n, !8151, !DIExpression(), !7781)
    #dbg_value(i64 %i.n, !8157, !DIExpression(), !7783)
    #dbg_value(i64 %i.n, !8160, !DIExpression(), !7785)
    #dbg_value(i64 %i.n, !8157, !DIExpression(), !7777)
    #dbg_value(i64 %i.n, !8160, !DIExpression(), !7780)
  %.not.i80 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !8378
  br i1 %.not.i80, label %bb.i, label %bb.j, !dbg !8378

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread138, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !8379

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.o, !8163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7791)
    #dbg_value(ptr %i.o, !8171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7794)
    #dbg_value(ptr %i.o, !8178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7798)
    #dbg_value(ptr %i.o, !8171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7800)
    #dbg_value(ptr %i.o, !8178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7802)
    #dbg_value(ptr %i.o, !8171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7804)
    #dbg_value(ptr %i.o, !8178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7806)
    #dbg_value(ptr %i.o, !8171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7808)
    #dbg_value(ptr %i.o, !8178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7810)
    #dbg_value(ptr %i.o, !8171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7812)
    #dbg_value(ptr %i.o, !8178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7814)
    #dbg_value(ptr %i.o, !8171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7816)
    #dbg_value(ptr %i.o, !8178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7818)
    #dbg_value(i64 %i.n, !8163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7791)
    #dbg_value(i64 %i.n, !8171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7794)
    #dbg_value(i64 %i.n, !8178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7798)
    #dbg_value(i64 %i.n, !8171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7800)
    #dbg_value(i64 %i.n, !8178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7802)
    #dbg_value(i64 %i.n, !8171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7804)
    #dbg_value(i64 %i.n, !8178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7806)
    #dbg_value(i64 %i.n, !8171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7808)
    #dbg_value(i64 %i.n, !8178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7810)
    #dbg_value(i64 %i.n, !8171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7812)
    #dbg_value(i64 %i.n, !8178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7814)
    #dbg_value(i64 %i.n, !8171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7816)
    #dbg_value(i64 %i.n, !8178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7818)
    #dbg_value(ptr %5, !8166, !DIExpression(), !7791)
    #dbg_value(i64 1, !8174, !DIExpression(), !7794)
    #dbg_value(i64 1, !8184, !DIExpression(), !7798)
    #dbg_value(i64 0, !8174, !DIExpression(), !7800)
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCsgCecv3eZDcN_5alloc6string6StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera:bb.a
    #dbg_value(i64 3, !2060, !DIExpression(), !7956)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be, i64 noundef 3)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i unwind label %bb.q, !dbg !8421, !noalias !8192

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #18, !dbg !8425, !noalias !8192
  unreachable, !dbg !8425

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bg = add nuw nsw i64 %.sroa.0.027.i.i, 1, !dbg !8426 ; 2 uses
    #dbg_value(i64 %i.bg, !8224, !DIExpression(), !7923)
  %exitcond.not.i.i = icmp eq i64 %i.bg, %i.ba, !dbg !8427
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit, label %.lr.ph.i.i, !dbg !8427

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit
  %.sroa.0.0.i81 = phi i64 [ %i.az, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit ], [ %i.ax, %bb.p ], [ %i.au, %bb.o ], !dbg !8428 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i81, !8061, !DIExpression(), !8135)
    #dbg_value(i64 %.sroa.023.0, !8255, !DIExpression(), !8258)
  %i.bh = lshr i64 %.sroa.023.0, 1, !dbg !8429
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 0, i64 %i.bh), !8259, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8267)
    #dbg_value(i64 %.sroa.09.0, !8260, !DIExpression(), !8267)
    #dbg_value(i64 %.sroa.0.0.i81, !8255, !DIExpression(), !8269)
  %i.bi = lshr i64 %.sroa.0.0.i81, 1, !dbg !8430
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %i.bi), !8261, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8267)
    #dbg_value(i64 %.sroa.0.0, !8262, !DIExpression(), !8267)
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !8431 ; 2 uses
  %i.bj = sub nsw i64 %factor, %i.bh, !dbg !8431
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %.sroa.09.0, i64 0, i64 %i.bh), !8263, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !8270)
  %i.bk = add nuw nsw i64 %i.bi, %factor, !dbg !8432
    #dbg_value(i64 %i.bk, !8264, !DIExpression(), !8271)
  %i.bl = mul i64 %i.bj, %.sroa.0.0, !dbg !8433
  %i.bm = mul i64 %i.bk, %.sroa.0.0, !dbg !8434
  %i.bn = xor i64 %i.bm, %i.bl, !dbg !8435
    #dbg_value(i64 %i.bn, !8272, !DIExpression(), !8275)
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false), !dbg !8436
  %i.bp = trunc nuw nsw i64 %i.bo to i8, !dbg !8435
    #dbg_value(i8 %i.bp, !8062, !DIExpression(), !8135)
  br label %bb.g, !dbg !8437

.lr.ph106:                                        ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit
  %.sroa.02.1105 = phi i64 [ %i.bq, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.1104 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
    #dbg_value(i64 %.sroa.02.1105, !8054, !DIExpression(), !8116)
    #dbg_value(i64 %.sroa.023.1104, !8060, !DIExpression(), !8134)
  %i.bq = add i64 %.sroa.02.1105, -1, !dbg !8438  ; 4 uses
    #dbg_value(i64 %i.bq, !8127, !DIExpression(), !8130)
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq, !dbg !8439
  %i.bs = load i8, ptr %i.br, align 1, !dbg !8440, !noundef !558
  %.not77 = icmp ult i8 %i.bs, %.sroa.021.0, !dbg !8440
  br i1 %.not77, label %._crit_edge, label %bb.r, !dbg !8440

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit, %.lr.ph106, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1104, %.lr.ph106 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], !dbg !8133 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1105, %.lr.ph106 ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], !dbg !8115 ; 3 uses
    #dbg_value(i64 %.sroa.02.1.lcssa, !8119, !DIExpression(), !8124)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !8441
  store i64 %.sroa.023.1.lcssa, ptr %i.bt, align 8, !dbg !8442
    #dbg_value(i64 %.sroa.02.1.lcssa, !8127, !DIExpression(), !8132)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !8443
  store i8 %.sroa.021.0, ptr %i.bu, align 1, !dbg !8444
    #dbg_value(i64 %.sroa.02.1.lcssa, !8054, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8116)
  br i1 %i.l, label %bb.y, label %bb.z, !dbg !8445

bb.r:                                             ; preds = %.lr.ph106
    #dbg_value(i64 %i.bq, !8119, !DIExpression(), !8122)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bq, !dbg !8446
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !8447, !noundef !558 ; 3 uses
    #dbg_value(i64 %i.bw, !8063, !DIExpression(), !8276)
    #dbg_value(i64 %i.bw, !8255, !DIExpression(), !8278)
  %i.bx = lshr i64 %i.bw, 1, !dbg !8448           ; 5 uses
    #dbg_value(i64 %.sroa.023.1104, !8255, !DIExpression(), !8280)
  %i.by = lshr i64 %.sroa.023.1104, 1, !dbg !8449 ; 3 uses
  %i.bz = add nuw i64 %i.bx, %i.by, !dbg !8450    ; 5 uses
    #dbg_value(i64 %i.bz, !8064, !DIExpression(), !8281)
  %i.ca = sub i64 %.sroa.09.0, %i.bz, !dbg !8451
    #dbg_value(i64 %i.ca, !8065, !DIExpression(), !8282)
    #dbg_value(i64 %i.ca, !8083, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8087)
    #dbg_value(i64 %i.ca, !8283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8290)
    #dbg_value(i64 %i.ca, !8136, !DIExpression(), !8292)
    #dbg_value(i64 %.sroa.09.0, !8083, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8087)
    #dbg_value(i64 %.sroa.09.0, !8283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8290)
    #dbg_value(ptr %0, !8286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8290)
    #dbg_value(ptr %0, !8137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8292)
    #dbg_value(i64 %1, !8286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8290)
    #dbg_value(i64 %1, !8137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8292)
    #dbg_value(i64 %i.bz, !8287, !DIExpression(), !8293)
    #dbg_value(i64 %i.bz, !8138, !DIExpression(), !8292)
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ca, !dbg !8452 ; 3 uses
    #dbg_value(ptr %i.cb, !8066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8294)
    #dbg_value(i64 %i.bz, !8066, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8294)
    #dbg_value(ptr %i.cb, !8295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7968)
    #dbg_value(ptr %i.cb, !8305, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7971)
    #dbg_value(ptr %i.cb, !8308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7975)
    #dbg_value(i64 %i.bz, !8295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7968)
    #dbg_value(i64 %i.bz, !8305, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7971)
    #dbg_value(i64 %i.bz, !8308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7975)
    #dbg_value(ptr %2, !8298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7968)
    #dbg_value(i64 %3, !8298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7968)
    #dbg_value(i64 %i.bw, !8299, !DIExpression(), !7968)
    #dbg_value(i64 %.sroa.023.1104, !8300, !DIExpression(), !7968)
    #dbg_value(ptr %5, !8301, !DIExpression(), !7968)
    #dbg_value(i64 0, !8313, !DIExpression(), !7984)
    #dbg_value(i64 %i.bz, !8302, !DIExpression(), !7985)
    #dbg_value(i64 %i.bz, !8335, !DIExpression(), !7988)
    #dbg_value(i64 %i.bz, !8337, !DIExpression(), !7991)
  %.not.i = icmp samesign ule i64 %i.bz, %3, !dbg !8453
    #dbg_value(i1 %.not.i, !8303, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7992)
  %i.cc = and i64 %.sroa.023.1104, 1
  %.not28.i = icmp eq i64 %i.cc, 0
  %i.cd = or i64 %i.bw, %.sroa.023.1104, !dbg !8454
  %i.ce = and i64 %i.cd, 1, !dbg !8454
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !8454
  %or.cond32.i = and i1 %.not.i, %i.cf, !dbg !8454
  br i1 %or.cond32.i, label %bb.t, label %bb.s, !dbg !8454

bb.s:                                             ; preds = %bb.r
  %i.cg = and i64 %i.bw, 1
  %.not27.i = icmp eq i64 %i.cg, 0
  br i1 %.not27.i, label %bb.v, label %bb.u, !dbg !8455

bb.t:                                             ; preds = %bb.r
  %i.ch = shl nuw nsw i64 %i.bz, 1, !dbg !8456
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit, !dbg !8457

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %.not28.i, label %bb.w, label %bb.x, !dbg !8458

bb.v:                                             ; preds = %bb.s
    #dbg_value(i64 %i.bx, !8315, !DIExpression(), !7984)
    #dbg_value(ptr %i.cb, !8314, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7984)
    #dbg_value(i64 %i.bz, !8314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7984)
    #dbg_value(ptr %i.cb, !8339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7996)
    #dbg_value(i64 %i.bx, !8339, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7996)
    #dbg_value(ptr %2, !8340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7996)
    #dbg_value(i64 %3, !8340, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7996)
    #dbg_value(ptr %5, !8341, !DIExpression(), !7996)
    #dbg_value(i64 %i.bx, !8344, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !8000)
    #dbg_value(i64 %i.bx, !8347, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !8004)
  %i.ci = or i64 %i.bx, 1, !dbg !8459
    #dbg_value(i64 %i.ci, !8344, !DIExpression(), !8000)
    #dbg_value(i64 %i.ci, !8347, !DIExpression(), !8004)
    #dbg_value(i64 %i.ci, !8348, !DIExpression(), !8005)
    #dbg_value(i64 %i.ci, !8350, !DIExpression(), !8008)
    #dbg_value(i64 %i.ci, !8352, !DIExpression(), !8011)
  %i.cj = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true), !dbg !8460
  %i.ck = trunc nuw nsw i64 %i.cj to i32, !dbg !8460
    #dbg_value(i32 %i.ck, !8345, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !8012)
  %i.cl = shl nuw nsw i32 %i.ck, 1, !dbg !8461
  %i.cm = xor i32 %i.cl, 126, !dbg !8461
    #dbg_value(i32 %i.cm, !8342, !DIExpression(), !8013)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 384307168202282326) %i.bx, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #17, !dbg !8462, !inline_history !8014
  br label %bb.u, !dbg !8463

bb.w:                                             ; preds = %bb.u
    #dbg_value(i64 %i.bx, !8306, !DIExpression(), !7971)
    #dbg_value(i64 %i.bx, !8309, !DIExpression(), !7975)
    #dbg_value(i64 %i.bx, !8316, !DIExpression(), !8016)
    #dbg_value(i64 %i.by, !8310, !DIExpression(), !8017)
    #dbg_value(i64 %i.by, !8315, !DIExpression(), !8016)
    #dbg_value(ptr %i.cb, !8314, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8016)
    #dbg_value(i64 %i.bz, !8314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8016)
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %i.bx, !dbg !8464
    #dbg_value(ptr %i.cn, !8339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8019)
    #dbg_value(i64 %i.by, !8339, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8019)
    #dbg_value(ptr %2, !8340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8019)
    #dbg_value(i64 %3, !8340, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8019)
    #dbg_value(ptr %5, !8341, !DIExpression(), !8019)
    #dbg_value(i64 %i.by, !8344, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !8021)
    #dbg_value(i64 %i.by, !8347, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !8023)
  %i.co = or i64 %i.by, 1, !dbg !8465
    #dbg_value(i64 %i.co, !8344, !DIExpression(), !8021)
    #dbg_value(i64 %i.co, !8347, !DIExpression(), !8023)
    #dbg_value(i64 %i.co, !8348, !DIExpression(), !8024)
    #dbg_value(i64 %i.co, !8350, !DIExpression(), !8026)
    #dbg_value(i64 %i.co, !8352, !DIExpression(), !8028)
  %i.cp = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true), !dbg !8466
  %i.cq = trunc nuw nsw i64 %i.cp to i32, !dbg !8466
    #dbg_value(i32 %i.cq, !8345, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !8029)
  %i.cr = shl nuw nsw i32 %i.cq, 1, !dbg !8467
  %i.cs = xor i32 %i.cr, 126, !dbg !8467
    #dbg_value(i32 %i.cs, !8342, !DIExpression(), !8030)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 %i.cn, i64 noundef range(i64 0, 384307168202282326) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #17, !dbg !8468, !inline_history !8014
  br label %bb.x, !dbg !8469

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsgCecv3eZDcN_5alloc6string6StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 384307168202282326) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i64 noundef %i.bx, ptr noalias nofree noundef nonnull %5), !dbg !8470
  %i.ct = shl nuw nsw i64 %i.bz, 1, !dbg !8471
  %i.cu = or disjoint i64 %i.ct, 1, !dbg !8471
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit, !dbg !8457

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cu, %bb.x ], [ %i.ch, %bb.t ], !dbg !8472 ; 2 uses
    #dbg_value(i64 %i.bq, !8054, !DIExpression(), !8116)
    #dbg_value(i64 %.sroa.0.0.i, !8060, !DIExpression(), !8134)
  %i.cv = icmp ugt i64 %i.bq, 1, !dbg !8374
  br i1 %i.cv, label %.lr.ph106, label %._crit_edge, !dbg !8374

bb.y:                                             ; preds = %._crit_edge
  %i.cw = add nsw i64 %.sroa.02.1.lcssa, 1, !dbg !8473
    #dbg_value(i64 %i.cw, !8054, !DIExpression(), !8116)
    #dbg_value(i64 %.sroa.018.0, !8255, !DIExpression(), !8355)
  %i.cx = lshr i64 %.sroa.018.0, 1, !dbg !8474
  %i.cy = add nuw nsw i64 %i.cx, %.sroa.09.0, !dbg !8475
    #dbg_value(i64 %i.cy, !8059, !DIExpression(), !8133)
    #dbg_value(i64 %.sroa.018.0, !8060, !DIExpression(), !8134)
  br label %bb.f, !dbg !8372

bb.z:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.023.1.lcssa, !8356, !DIExpression(), !8359)
  %i.cz = and i64 %.sroa.023.1.lcssa, 1, !dbg !8476
  %.not79 = icmp eq i64 %i.cz, 0, !dbg !8476
  br i1 %.not79, label %bb.aa, label %bb.ab, !dbg !8477

bb.aa:                                            ; preds = %bb.z
    #dbg_value(ptr %0, !8339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8033)
    #dbg_value(i64 %1, !8339, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8033)
    #dbg_value(ptr %2, !8340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8033)
    #dbg_value(i64 %3, !8340, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8033)
    #dbg_value(ptr %5, !8341, !DIExpression(), !8033)
    #dbg_value(i64 %1, !8344, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !8035)
    #dbg_value(i64 %1, !8347, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !8037)
  %i.da = or i64 %1, 1, !dbg !8478
    #dbg_value(i64 %i.da, !8344, !DIExpression(), !8035)
    #dbg_value(i64 %i.da, !8347, !DIExpression(), !8037)
    #dbg_value(i64 %i.da, !8348, !DIExpression(), !8038)
    #dbg_value(i64 %i.da, !8350, !DIExpression(), !8040)
    #dbg_value(i64 %i.da, !8352, !DIExpression(), !8042)
  %i.db = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true), !dbg !8479
  %i.dc = trunc nuw nsw i64 %i.db to i32, !dbg !8479
    #dbg_value(i32 %i.dc, !8345, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !8043)
  %i.dd = shl nuw nsw i32 %i.dc, 1, !dbg !8480
  %i.de = xor i32 %i.dd, 126, !dbg !8480
    #dbg_value(i32 %i.de, !8342, !DIExpression(), !8044)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #17, !dbg !8481, !inline_history !8014
  br label %bb.ab, !dbg !8482

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8484
  br label %bb.ac, !dbg !8485

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !8485
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #1 !dbg !8501 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
    #dbg_value(ptr %0, !8787, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8808)
    #dbg_value(ptr %0, !8809, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8813)
    #dbg_value(ptr %0, !8814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8819)
    #dbg_value(ptr %0, !8820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8827)
    #dbg_value(i64 %1, !8787, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8808)
    #dbg_value(i64 %1, !8809, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8813)
    #dbg_value(i64 %1, !8814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8819)
    #dbg_value(i64 %1, !8820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8827)
    #dbg_value(ptr %2, !8788, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8808)
    #dbg_value(i64 %3, !8788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8808)
    #dbg_value(i1 %4, !8789, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8808)
    #dbg_value(ptr %5, !8790, !DIExpression(), !8808)
    #dbg_declare(ptr %i.b, !8795, !DIExpression(), !8828)
    #dbg_declare(ptr %i.a, !8797, !DIExpression(), !8829)
    #dbg_value(i64 4611686018427387904, !8830, !DIExpression(), !8837)
    #dbg_value(i64 64, !8840, !DIExpression(), !8844)
    #dbg_value(i64 64, !8845, !DIExpression(), !8849)
    #dbg_value(i64 %1, !8791, !DIExpression(), !8850)
    #dbg_value(i64 %1, !8838, !DIExpression(), !8851)
  %i.c = icmp samesign ult i64 %1, 2, !dbg !9087
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !9087

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %1, !8831, !DIExpression(), !8837)
  %i.d = udiv i64 4611686018427387904, %1, !dbg !9088
    #dbg_value(i64 %i.d, !8832, !DIExpression(), !8852)
  %i.e = urem i64 4611686018427387904, %1, !dbg !9089
    #dbg_value(i64 %i.e, !8833, !DIExpression(), !8853)
  %.not = icmp ne i64 %i.e, 0, !dbg !9090
  %i.f = zext i1 %.not to i64, !dbg !9090
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !9090 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !8792, !DIExpression(), !8854)
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !9091
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !9091

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !9092
    #dbg_value(i64 %i.h, !8793, !DIExpression(), !8855)
  br label %bb.e, !dbg !9092

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !9093
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !9094
    #dbg_value(i64 %i.j, !8841, !DIExpression(), !8844)
    #dbg_value(i64 %i.j, !8846, !DIExpression(), !8849)
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !9095
    #dbg_value(i64 %i.k, !8793, !DIExpression(), !8855)
  br label %bb.e, !dbg !9096

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ], !dbg !8854 ; 5 uses
    #dbg_value(i64 %.sroa.01.0, !8793, !DIExpression(), !8855)
    #dbg_value(i64 0, !8794, !DIExpression(), !8856)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9097
    #dbg_value(ptr %i.b, !8796, !DIExpression(), !8857)
    #dbg_value(ptr %i.b, !8858, !DIExpression(), !8862)
    #dbg_value(ptr %i.b, !8858, !DIExpression(), !8864)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9098
    #dbg_value(ptr %i.a, !8798, !DIExpression(), !8865)
    #dbg_value(ptr %i.a, !8866, !DIExpression(), !8870)
    #dbg_value(ptr %i.a, !8866, !DIExpression(), !8872)
    #dbg_value(i64 0, !8799, !DIExpression(), !8873)
    #dbg_value(i64 1, !8800, !DIExpression(), !8874)
  %.not25.i144 = icmp ugt i64 %.sroa.01.0, 2
  %.not25.i149 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !9099

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !8873 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dk, %bb.y ], !dbg !8865 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.di, %bb.y ], !dbg !8855 ; 3 uses
    #dbg_value(i64 %.sroa.02.0, !8794, !DIExpression(), !8856)
    #dbg_value(i64 %.sroa.09.0, !8799, !DIExpression(), !8873)
    #dbg_value(i64 %.sroa.023.0, !8800, !DIExpression(), !8874)
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1, !dbg !9100 ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g, !dbg !9100

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit
  %.sroa.021.0 = phi i8 [ %i.cb, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], [ 0, %bb.f ], !dbg !8875 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i81, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], [ 1, %bb.f ], !dbg !8875 ; 2 uses
    #dbg_value(i64 %.sroa.018.0, !8801, !DIExpression(), !8875)
    #dbg_value(i8 %.sroa.021.0, !8802, !DIExpression(), !8875)
    #dbg_value(i64 %.sroa.02.0, !8794, !DIExpression(), !8856)
    #dbg_value(i64 %.sroa.023.0, !8800, !DIExpression(), !8874)
  %i.m = icmp ugt i64 %.sroa.02.0, 1, !dbg !9101
  br i1 %i.m, label %.lr.ph114, label %._crit_edge, !dbg !9101

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.09.0, !8810, !DIExpression(), !8813)
    #dbg_value(i64 %.sroa.09.0, !8815, !DIExpression(), !8819)
    #dbg_value(i64 %.sroa.09.0, !8876, !DIExpression(), !8881)
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !9102 ; 11 uses
    #dbg_value(i64 %i.n, !8816, !DIExpression(), !8882)
    #dbg_value(i64 %i.n, !8878, !DIExpression(), !8881)
    #dbg_value(ptr %0, !8877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8881)
    #dbg_value(i64 %1, !8877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8881)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0, !dbg !9103 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8883), !dbg !9104
    #dbg_value(ptr %i.o, !8884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8522)
    #dbg_value(i64 %i.n, !8884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8522)
    #dbg_value(ptr %2, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8522)
    #dbg_value(i64 %3, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8522)
    #dbg_value(i64 %.sroa.01.0, !8888, !DIExpression(), !8522)
    #dbg_value(i64 %.sroa.01.0, !8896, !DIExpression(), !8525)
    #dbg_value(i64 %.sroa.01.0, !8899, !DIExpression(), !8528)
    #dbg_value(i1 %4, !8889, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8522)
    #dbg_value(ptr %5, !8890, !DIExpression(), !8522)
    #dbg_value(i64 %i.n, !8891, !DIExpression(), !8529)
    #dbg_value(i64 %i.n, !8897, !DIExpression(), !8531)
    #dbg_value(i64 %i.n, !8900, !DIExpression(), !8533)
    #dbg_value(i64 %i.n, !8897, !DIExpression(), !8525)
    #dbg_value(i64 %i.n, !8900, !DIExpression(), !8528)
  %.not.i80 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !9105
  br i1 %.not.i80, label %bb.i, label %bb.j, !dbg !9105

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread147, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !9106

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.o, !8903, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8539)
    #dbg_value(ptr %i.o, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8542)
    #dbg_value(ptr %i.o, !8918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8546)
    #dbg_value(ptr %i.o, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8548)
    #dbg_value(ptr %i.o, !8918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8550)
    #dbg_value(ptr %i.o, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8552)
    #dbg_value(ptr %i.o, !8918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8554)
    #dbg_value(ptr %i.o, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8556)
    #dbg_value(ptr %i.o, !8918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8558)
    #dbg_value(ptr %i.o, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8560)
    #dbg_value(ptr %i.o, !8918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8562)
    #dbg_value(ptr %i.o, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8564)
    #dbg_value(ptr %i.o, !8918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8566)
    #dbg_value(i64 %i.n, !8903, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8539)
    #dbg_value(i64 %i.n, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8542)
    #dbg_value(i64 %i.n, !8918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8546)
    #dbg_value(i64 %i.n, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8548)
    #dbg_value(i64 %i.n, !8918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8550)
    #dbg_value(i64 %i.n, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8552)
    #dbg_value(i64 %i.n, !8918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8554)
    #dbg_value(i64 %i.n, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8556)
    #dbg_value(i64 %i.n, !8918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8558)
    #dbg_value(i64 %i.n, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8560)
    #dbg_value(i64 %i.n, !8918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8562)
    #dbg_value(i64 %i.n, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8564)
    #dbg_value(i64 %i.n, !8918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8566)
    #dbg_value(ptr %5, !8906, !DIExpression(), !8539)
    #dbg_value(i64 1, !8914, !DIExpression(), !8542)
    #dbg_value(i64 1, !8924, !DIExpression(), !8546)
    #dbg_value(i64 0, !8914, !DIExpression(), !8548)
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera:bb.a
    #dbg_value(i64 %.sroa.0.026.i.i, !8969, !DIExpression(), !8687)
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i), !8975, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !8695)
  %i.bn = xor i64 %.sroa.0.026.i.i, -1, !dbg !9156
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.026.i.i, !dbg !9157 ; 2 uses
    #dbg_value(ptr %i.bo, !8975, !DIExpression(), !8695)
  %i.bp = getelementptr [8 x i8], ptr %i.bc, i64 %i.bn, !dbg !9158 ; 2 uses
    #dbg_value(ptr %i.bp, !8976, !DIExpression(), !8695)
  %i.bq = load ptr, ptr %i.bo, align 8, !dbg !9159, !alias.scope !8978, !noalias !8979, !nonnull !558, !align !747, !noundef !558
  %i.br = load i64, ptr %i.bp, align 8, !dbg !9159, !alias.scope !8980, !noalias !8981
  store i64 %i.br, ptr %i.bo, align 8, !dbg !9159, !alias.scope !8978, !noalias !8979
  store ptr %i.bq, ptr %i.bp, align 8, !dbg !9159, !alias.scope !8980, !noalias !8981
  %i.bs = add nuw nsw i64 %.sroa.0.026.i.i, 1, !dbg !9155 ; 2 uses
    #dbg_value(i64 %i.bs, !8969, !DIExpression(), !8687)
  %exitcond.not.i.i = icmp eq i64 %i.bs, %i.bb, !dbg !9153
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCs5yXxDE1DkoT_4tera.exit21.i.i, !dbg !9153, !llvm.loop !8696

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit
  %.sroa.0.0.i81 = phi i64 [ %i.az, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCs5yXxDE1DkoT_4tera.exit ], [ %i.ax, %bb.p ], [ %i.au, %bb.o ], !dbg !9160 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i81, !8801, !DIExpression(), !8875)
    #dbg_value(i64 %.sroa.023.0, !8982, !DIExpression(), !8985)
  %i.bt = lshr i64 %.sroa.023.0, 1, !dbg !9161
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 0, i64 %i.bt), !8986, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8994)
    #dbg_value(i64 %.sroa.09.0, !8987, !DIExpression(), !8994)
    #dbg_value(i64 %.sroa.0.0.i81, !8982, !DIExpression(), !8996)
  %i.bu = lshr i64 %.sroa.0.0.i81, 1, !dbg !9162
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %i.bu), !8988, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8994)
    #dbg_value(i64 %.sroa.0.0, !8989, !DIExpression(), !8994)
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !9163 ; 2 uses
  %i.bv = sub nsw i64 %factor, %i.bt, !dbg !9163
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %.sroa.09.0, i64 0, i64 %i.bt), !8990, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !8997)
  %i.bw = add nuw nsw i64 %i.bu, %factor, !dbg !9164
    #dbg_value(i64 %i.bw, !8991, !DIExpression(), !8998)
  %i.bx = mul i64 %i.bv, %.sroa.0.0, !dbg !9165
  %i.by = mul i64 %i.bw, %.sroa.0.0, !dbg !9166
  %i.bz = xor i64 %i.by, %i.bx, !dbg !9167
    #dbg_value(i64 %i.bz, !8999, !DIExpression(), !9002)
  %i.ca = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bz, i1 false), !dbg !9168
  %i.cb = trunc nuw nsw i64 %i.ca to i8, !dbg !9167
    #dbg_value(i8 %i.cb, !8802, !DIExpression(), !8875)
  br label %bb.g, !dbg !9169

.lr.ph114:                                        ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit
  %.sroa.02.1113 = phi i64 [ %i.cc, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.1112 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
    #dbg_value(i64 %.sroa.02.1113, !8794, !DIExpression(), !8856)
    #dbg_value(i64 %.sroa.023.1112, !8800, !DIExpression(), !8874)
  %i.cc = add i64 %.sroa.02.1113, -1, !dbg !9170  ; 4 uses
    #dbg_value(i64 %i.cc, !8867, !DIExpression(), !8870)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cc, !dbg !9171
  %i.ce = load i8, ptr %i.cd, align 1, !dbg !9172, !noundef !558
  %.not77 = icmp ult i8 %i.ce, %.sroa.021.0, !dbg !9172
  br i1 %.not77, label %._crit_edge, label %bb.r, !dbg !9172

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit, %.lr.ph114, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1112, %.lr.ph114 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], !dbg !8873 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1113, %.lr.ph114 ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit ], !dbg !8855 ; 3 uses
    #dbg_value(i64 %.sroa.02.1.lcssa, !8859, !DIExpression(), !8864)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !9173
  store i64 %.sroa.023.1.lcssa, ptr %i.cf, align 8, !dbg !9174
    #dbg_value(i64 %.sroa.02.1.lcssa, !8867, !DIExpression(), !8872)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !9175
  store i8 %.sroa.021.0, ptr %i.cg, align 1, !dbg !9176
    #dbg_value(i64 %.sroa.02.1.lcssa, !8794, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8856)
  br i1 %i.l, label %bb.y, label %bb.z, !dbg !9177

bb.r:                                             ; preds = %.lr.ph114
    #dbg_value(i64 %i.cc, !8859, !DIExpression(), !8862)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cc, !dbg !9178
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !9179, !noundef !558 ; 3 uses
    #dbg_value(i64 %i.ci, !8803, !DIExpression(), !9003)
    #dbg_value(i64 %i.ci, !8982, !DIExpression(), !9005)
  %i.cj = lshr i64 %i.ci, 1, !dbg !9180           ; 5 uses
    #dbg_value(i64 %.sroa.023.1112, !8982, !DIExpression(), !9007)
  %i.ck = lshr i64 %.sroa.023.1112, 1, !dbg !9181 ; 3 uses
  %i.cl = add nuw i64 %i.cj, %i.ck, !dbg !9182    ; 5 uses
    #dbg_value(i64 %i.cl, !8804, !DIExpression(), !9008)
  %i.cm = sub i64 %.sroa.09.0, %i.cl, !dbg !9183
    #dbg_value(i64 %i.cm, !8805, !DIExpression(), !9009)
    #dbg_value(i64 %i.cm, !8823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8827)
    #dbg_value(i64 %i.cm, !9010, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9017)
    #dbg_value(i64 %i.cm, !8876, !DIExpression(), !9019)
    #dbg_value(i64 %.sroa.09.0, !8823, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8827)
    #dbg_value(i64 %.sroa.09.0, !9010, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9017)
    #dbg_value(ptr %0, !9013, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9017)
    #dbg_value(ptr %0, !8877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9019)
    #dbg_value(i64 %1, !9013, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9017)
    #dbg_value(i64 %1, !8877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9019)
    #dbg_value(i64 %i.cl, !9014, !DIExpression(), !9020)
    #dbg_value(i64 %i.cl, !8878, !DIExpression(), !9019)
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cm, !dbg !9184 ; 3 uses
    #dbg_value(ptr %i.cn, !8806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9021)
    #dbg_value(i64 %i.cl, !8806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9021)
    #dbg_value(ptr %i.cn, !9022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8708)
    #dbg_value(ptr %i.cn, !9032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8711)
    #dbg_value(ptr %i.cn, !9035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8715)
    #dbg_value(i64 %i.cl, !9022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8708)
    #dbg_value(i64 %i.cl, !9032, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8711)
    #dbg_value(i64 %i.cl, !9035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8715)
    #dbg_value(ptr %2, !9025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8708)
    #dbg_value(i64 %3, !9025, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8708)
    #dbg_value(i64 %i.ci, !9026, !DIExpression(), !8708)
    #dbg_value(i64 %.sroa.023.1112, !9027, !DIExpression(), !8708)
    #dbg_value(ptr %5, !9028, !DIExpression(), !8708)
    #dbg_value(i64 0, !9040, !DIExpression(), !8724)
    #dbg_value(i64 %i.cl, !9029, !DIExpression(), !8725)
    #dbg_value(i64 %i.cl, !9062, !DIExpression(), !8728)
    #dbg_value(i64 %i.cl, !9064, !DIExpression(), !8731)
  %.not.i = icmp samesign ule i64 %i.cl, %3, !dbg !9185
    #dbg_value(i1 %.not.i, !9030, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8732)
  %i.co = and i64 %.sroa.023.1112, 1
  %.not28.i = icmp eq i64 %i.co, 0
  %i.cp = or i64 %i.ci, %.sroa.023.1112, !dbg !9186
  %i.cq = and i64 %i.cp, 1, !dbg !9186
  %i.cr = icmp eq i64 %i.cq, 0, !dbg !9186
  %or.cond32.i = and i1 %.not.i, %i.cr, !dbg !9186
  br i1 %or.cond32.i, label %bb.t, label %bb.s, !dbg !9186

bb.s:                                             ; preds = %bb.r
  %i.cs = and i64 %i.ci, 1
  %.not27.i = icmp eq i64 %i.cs, 0
  br i1 %.not27.i, label %bb.v, label %bb.u, !dbg !9187

bb.t:                                             ; preds = %bb.r
  %i.ct = shl nuw nsw i64 %i.cl, 1, !dbg !9188
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit, !dbg !9189

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %.not28.i, label %bb.w, label %bb.x, !dbg !9190

bb.v:                                             ; preds = %bb.s
    #dbg_value(i64 %i.cj, !9042, !DIExpression(), !8724)
    #dbg_value(ptr %i.cn, !9041, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8724)
    #dbg_value(i64 %i.cl, !9041, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8724)
    #dbg_value(ptr %i.cn, !9066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8736)
    #dbg_value(i64 %i.cj, !9066, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8736)
    #dbg_value(ptr %2, !9067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8736)
    #dbg_value(i64 %3, !9067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8736)
    #dbg_value(ptr %5, !9068, !DIExpression(), !8736)
    #dbg_value(i64 %i.cj, !9071, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !8740)
    #dbg_value(i64 %i.cj, !9074, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !8744)
  %i.cu = or i64 %i.cj, 1, !dbg !9191
    #dbg_value(i64 %i.cu, !9071, !DIExpression(), !8740)
    #dbg_value(i64 %i.cu, !9074, !DIExpression(), !8744)
    #dbg_value(i64 %i.cu, !9075, !DIExpression(), !8745)
    #dbg_value(i64 %i.cu, !9077, !DIExpression(), !8748)
    #dbg_value(i64 %i.cu, !9079, !DIExpression(), !8751)
  %i.cv = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cu, i1 true), !dbg !9192
  %i.cw = trunc nuw nsw i64 %i.cv to i32, !dbg !9192
    #dbg_value(i32 %i.cw, !9072, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !8752)
  %i.cx = shl nuw nsw i32 %i.cw, 1, !dbg !9193
  %i.cy = xor i32 %i.cx, 126, !dbg !9193
    #dbg_value(i32 %i.cy, !9069, !DIExpression(), !8753)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 %i.cn, i64 noundef range(i64 0, 1152921504606846976) %i.cj, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #17, !dbg !9194, !inline_history !8754
  br label %bb.u, !dbg !9195

bb.w:                                             ; preds = %bb.u
    #dbg_value(i64 %i.cj, !9033, !DIExpression(), !8711)
    #dbg_value(i64 %i.cj, !9036, !DIExpression(), !8715)
    #dbg_value(i64 %i.cj, !9043, !DIExpression(), !8756)
    #dbg_value(i64 %i.ck, !9037, !DIExpression(), !8757)
    #dbg_value(i64 %i.ck, !9042, !DIExpression(), !8756)
    #dbg_value(ptr %i.cn, !9041, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8756)
    #dbg_value(i64 %i.cl, !9041, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8756)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cj, !dbg !9196
    #dbg_value(ptr %i.cz, !9066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8759)
    #dbg_value(i64 %i.ck, !9066, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8759)
    #dbg_value(ptr %2, !9067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8759)
    #dbg_value(i64 %3, !9067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8759)
    #dbg_value(ptr %5, !9068, !DIExpression(), !8759)
    #dbg_value(i64 %i.ck, !9071, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !8761)
    #dbg_value(i64 %i.ck, !9074, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !8763)
  %i.da = or i64 %i.ck, 1, !dbg !9197
    #dbg_value(i64 %i.da, !9071, !DIExpression(), !8761)
    #dbg_value(i64 %i.da, !9074, !DIExpression(), !8763)
    #dbg_value(i64 %i.da, !9075, !DIExpression(), !8764)
    #dbg_value(i64 %i.da, !9077, !DIExpression(), !8766)
    #dbg_value(i64 %i.da, !9079, !DIExpression(), !8768)
  %i.db = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true), !dbg !9198
  %i.dc = trunc nuw nsw i64 %i.db to i32, !dbg !9198
    #dbg_value(i32 %i.dc, !9072, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !8769)
  %i.dd = shl nuw nsw i32 %i.dc, 1, !dbg !9199
  %i.de = xor i32 %i.dd, 126, !dbg !9199
    #dbg_value(i32 %i.de, !9069, !DIExpression(), !8770)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 %i.cz, i64 noundef range(i64 0, 1152921504606846976) %i.ck, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #17, !dbg !9200, !inline_history !8754
  br label %bb.x, !dbg !9201

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 %i.cn, i64 noundef range(i64 0, 1152921504606846976) %i.cl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.cj, ptr noalias nofree noundef nonnull %5), !dbg !9202
  %i.df = shl nuw nsw i64 %i.cl, 1, !dbg !9203
  %i.dg = or disjoint i64 %i.df, 1, !dbg !9203
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit, !dbg !9189

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.dg, %bb.x ], [ %i.ct, %bb.t ], !dbg !9204 ; 2 uses
    #dbg_value(i64 %i.cc, !8794, !DIExpression(), !8856)
    #dbg_value(i64 %.sroa.0.0.i, !8800, !DIExpression(), !8874)
  %i.dh = icmp ugt i64 %i.cc, 1, !dbg !9101
  br i1 %i.dh, label %.lr.ph114, label %._crit_edge, !dbg !9101

bb.y:                                             ; preds = %._crit_edge
  %i.di = add nsw i64 %.sroa.02.1.lcssa, 1, !dbg !9205
    #dbg_value(i64 %i.di, !8794, !DIExpression(), !8856)
    #dbg_value(i64 %.sroa.018.0, !8982, !DIExpression(), !9082)
  %i.dj = lshr i64 %.sroa.018.0, 1, !dbg !9206
  %i.dk = add nuw nsw i64 %i.dj, %.sroa.09.0, !dbg !9207
    #dbg_value(i64 %i.dk, !8799, !DIExpression(), !8873)
    #dbg_value(i64 %.sroa.018.0, !8800, !DIExpression(), !8874)
  br label %bb.f, !dbg !9099

bb.z:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.023.1.lcssa, !9083, !DIExpression(), !9086)
  %i.dl = and i64 %.sroa.023.1.lcssa, 1, !dbg !9208
  %.not79 = icmp eq i64 %i.dl, 0, !dbg !9208
  br i1 %.not79, label %bb.aa, label %bb.ab, !dbg !9209

bb.aa:                                            ; preds = %bb.z
    #dbg_value(ptr %0, !9066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8773)
    #dbg_value(i64 %1, !9066, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8773)
    #dbg_value(ptr %2, !9067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8773)
    #dbg_value(i64 %3, !9067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8773)
    #dbg_value(ptr %5, !9068, !DIExpression(), !8773)
    #dbg_value(i64 %1, !9071, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !8775)
    #dbg_value(i64 %1, !9074, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !8777)
  %i.dm = or i64 %1, 1, !dbg !9210
    #dbg_value(i64 %i.dm, !9071, !DIExpression(), !8775)
    #dbg_value(i64 %i.dm, !9074, !DIExpression(), !8777)
    #dbg_value(i64 %i.dm, !9075, !DIExpression(), !8778)
    #dbg_value(i64 %i.dm, !9077, !DIExpression(), !8780)
    #dbg_value(i64 %i.dm, !9079, !DIExpression(), !8782)
  %i.dn = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dm, i1 true), !dbg !9211
  %i.do = trunc nuw nsw i64 %i.dn to i32, !dbg !9211
    #dbg_value(i32 %i.do, !9072, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !8783)
  %i.dp = shl nuw nsw i32 %i.do, 1, !dbg !9212
  %i.dq = xor i32 %i.dp, 126, !dbg !9212
    #dbg_value(i32 %i.dq, !9069, !DIExpression(), !8784)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #17, !dbg !9213, !inline_history !8754
  br label %bb.ab, !dbg !9214

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9216
  br label %bb.ac, !dbg !9217

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !9217
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBX_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCNvNtB12_7filters4sort0E0EB12_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #1 !dbg !9233 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
    #dbg_value(ptr %0, !9472, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9493)
    #dbg_value(ptr %0, !9494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9498)
    #dbg_value(ptr %0, !9499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9504)
    #dbg_value(ptr %0, !9505, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9512)
    #dbg_value(i64 %1, !9472, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9493)
    #dbg_value(i64 %1, !9494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9498)
    #dbg_value(i64 %1, !9499, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9504)
    #dbg_value(i64 %1, !9505, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9512)
    #dbg_value(ptr %2, !9473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9493)
    #dbg_value(i64 %3, !9473, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9493)
    #dbg_value(i1 %4, !9474, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9493)
    #dbg_value(ptr %5, !9475, !DIExpression(), !9493)
    #dbg_declare(ptr %i.b, !9480, !DIExpression(), !9513)
    #dbg_declare(ptr %i.a, !9482, !DIExpression(), !9514)
    #dbg_value(i64 4611686018427387904, !9515, !DIExpression(), !9522)
    #dbg_value(i64 64, !9525, !DIExpression(), !9529)
    #dbg_value(i64 64, !9530, !DIExpression(), !9534)
    #dbg_value(i64 %1, !9476, !DIExpression(), !9535)
    #dbg_value(i64 %1, !9523, !DIExpression(), !9536)
  %i.c = icmp samesign ult i64 %1, 2, !dbg !9768
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !9768

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %1, !9516, !DIExpression(), !9522)
  %i.d = udiv i64 4611686018427387904, %1, !dbg !9769
    #dbg_value(i64 %i.d, !9517, !DIExpression(), !9537)
  %i.e = urem i64 4611686018427387904, %1, !dbg !9770
    #dbg_value(i64 %i.e, !9518, !DIExpression(), !9538)
  %.not = icmp ne i64 %i.e, 0, !dbg !9771
  %i.f = zext i1 %.not to i64, !dbg !9771
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !9771 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !9477, !DIExpression(), !9539)
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !9772
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !9772

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !9773
    #dbg_value(i64 %i.h, !9478, !DIExpression(), !9540)
  br label %bb.e, !dbg !9773

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !9774
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !9775
    #dbg_value(i64 %i.j, !9526, !DIExpression(), !9529)
    #dbg_value(i64 %i.j, !9531, !DIExpression(), !9534)
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !9776
    #dbg_value(i64 %i.k, !9478, !DIExpression(), !9540)
  br label %bb.e, !dbg !9777

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ], !dbg !9539 ; 5 uses
    #dbg_value(i64 %.sroa.01.0, !9478, !DIExpression(), !9540)
    #dbg_value(i64 0, !9479, !DIExpression(), !9541)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9778
    #dbg_value(ptr %i.b, !9481, !DIExpression(), !9542)
    #dbg_value(ptr %i.b, !9543, !DIExpression(), !9547)
    #dbg_value(ptr %i.b, !9543, !DIExpression(), !9549)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9779
    #dbg_value(ptr %i.a, !9483, !DIExpression(), !9550)
    #dbg_value(ptr %i.a, !9551, !DIExpression(), !9555)
    #dbg_value(ptr %i.a, !9551, !DIExpression(), !9557)
    #dbg_value(i64 0, !9484, !DIExpression(), !9558)
    #dbg_value(i64 1, !9485, !DIExpression(), !9559)
  %.not25.i124 = icmp ugt i64 %.sroa.01.0, 2
  %.not25.i129 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !9780

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !9558 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cs, %bb.y ], !dbg !9550 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.y ], !dbg !9540 ; 3 uses
    #dbg_value(i64 %.sroa.02.0, !9479, !DIExpression(), !9541)
    #dbg_value(i64 %.sroa.09.0, !9484, !DIExpression(), !9558)
    #dbg_value(i64 %.sroa.023.0, !9485, !DIExpression(), !9559)
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1, !dbg !9781 ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g, !dbg !9781

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB14_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtB19_7filters4sort0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bj, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB14_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtB19_7filters4sort0E0EB19_.exit ], [ 0, %bb.f ], !dbg !9560 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i81, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB14_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtB19_7filters4sort0E0EB19_.exit ], [ 1, %bb.f ], !dbg !9560 ; 2 uses
    #dbg_value(i64 %.sroa.018.0, !9486, !DIExpression(), !9560)
    #dbg_value(i8 %.sroa.021.0, !9487, !DIExpression(), !9560)
    #dbg_value(i64 %.sroa.02.0, !9479, !DIExpression(), !9541)
    #dbg_value(i64 %.sroa.023.0, !9485, !DIExpression(), !9559)
  %i.m = icmp ugt i64 %.sroa.02.0, 1, !dbg !9782
  br i1 %i.m, label %.lr.ph102, label %._crit_edge, !dbg !9782

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.09.0, !9495, !DIExpression(), !9498)
    #dbg_value(i64 %.sroa.09.0, !9500, !DIExpression(), !9504)
    #dbg_value(i64 %.sroa.09.0, !9561, !DIExpression(), !9566)
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !9783 ; 11 uses
    #dbg_value(i64 %i.n, !9501, !DIExpression(), !9567)
    #dbg_value(i64 %i.n, !9563, !DIExpression(), !9566)
    #dbg_value(ptr %0, !9562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9566)
    #dbg_value(i64 %1, !9562, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9566)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0, !dbg !9784 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9568), !dbg !9785
    #dbg_value(ptr %i.o, !9569, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9254)
    #dbg_value(i64 %i.n, !9569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9254)
    #dbg_value(ptr %2, !9572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9254)
    #dbg_value(i64 %3, !9572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9254)
    #dbg_value(i64 %.sroa.01.0, !9573, !DIExpression(), !9254)
    #dbg_value(i64 %.sroa.01.0, !9581, !DIExpression(), !9257)
    #dbg_value(i64 %.sroa.01.0, !9584, !DIExpression(), !9260)
    #dbg_value(i1 %4, !9574, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9254)
    #dbg_value(ptr %5, !9575, !DIExpression(), !9254)
    #dbg_value(i64 %i.n, !9576, !DIExpression(), !9261)
    #dbg_value(i64 %i.n, !9582, !DIExpression(), !9263)
    #dbg_value(i64 %i.n, !9585, !DIExpression(), !9265)
    #dbg_value(i64 %i.n, !9582, !DIExpression(), !9257)
    #dbg_value(i64 %i.n, !9585, !DIExpression(), !9260)
  %.not.i80 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !9786
  br i1 %.not.i80, label %bb.i, label %bb.j, !dbg !9786

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i.thread127, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB13_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtB18_7filters4sort0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !9787

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.o, !9588, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9271)
    #dbg_value(ptr %i.o, !9596, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9274)
    #dbg_value(ptr %i.o, !9603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9278)
    #dbg_value(ptr %i.o, !9596, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9280)
    #dbg_value(ptr %i.o, !9603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9282)
    #dbg_value(ptr %i.o, !9596, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9284)
    #dbg_value(ptr %i.o, !9603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9286)
    #dbg_value(ptr %i.o, !9596, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9288)
    #dbg_value(ptr %i.o, !9603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9290)
    #dbg_value(ptr %i.o, !9596, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9292)
    #dbg_value(ptr %i.o, !9603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9294)
    #dbg_value(ptr %i.o, !9596, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9296)
    #dbg_value(ptr %i.o, !9603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9298)
    #dbg_value(i64 %i.n, !9588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9271)
    #dbg_value(i64 %i.n, !9596, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9274)
    #dbg_value(i64 %i.n, !9603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9278)
    #dbg_value(i64 %i.n, !9596, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9280)
    #dbg_value(i64 %i.n, !9603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9282)
    #dbg_value(i64 %i.n, !9596, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9284)
    #dbg_value(i64 %i.n, !9603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9286)
    #dbg_value(i64 %i.n, !9596, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9288)
    #dbg_value(i64 %i.n, !9603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9290)
    #dbg_value(i64 %i.n, !9596, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9292)
    #dbg_value(i64 %i.n, !9603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9294)
    #dbg_value(i64 %i.n, !9596, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9296)
    #dbg_value(i64 %i.n, !9603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9298)
    #dbg_value(ptr %5, !9591, !DIExpression(), !9271)
    #dbg_value(i64 1, !9599, !DIExpression(), !9274)
    #dbg_value(i64 1, !9609, !DIExpression(), !9278)
    #dbg_value(i64 0, !9599, !DIExpression(), !9280)
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBX_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCNvNtB12_7filters4sort0E0EB12_:bb.a
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i), !9642, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_or, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !9364)
  %i.av = xor i64 %.sroa.0.026.i.i, -2, !dbg !9819
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.026.i.i, !dbg !9820
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !9820 ; 2 uses
    #dbg_value(ptr %i.ax, !9642, !DIExpression(), !9364)
  %i.ay = getelementptr [16 x i8], ptr %i.ap, i64 %i.av, !dbg !9821 ; 2 uses
    #dbg_value(ptr %i.ay, !9645, !DIExpression(), !9364)
  %i.az = load <2 x ptr>, ptr %i.ax, align 8, !dbg !9822, !alias.scope !9647, !noalias !9648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !dbg !9822, !alias.scope !9649, !noalias !9617
  store <2 x ptr> %i.az, ptr %i.ay, align 8, !dbg !9822, !alias.scope !9650, !noalias !9651
  %i.ba = add nuw nsw i64 %.sroa.0.026.i.i, 2, !dbg !9828 ; 2 uses
    #dbg_value(i64 %i.ba, !9630, !DIExpression(), !9361)
  %niter.next.1 = add i64 %niter, 2, !dbg !9818   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !9818
  br i1 %niter.ncmp.1, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E7reverseBA_.exit.loopexit.unr-lcssa, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E12split_at_mutBA_.exit21.i.i, !dbg !9818

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB14_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtB19_7filters4sort0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E7reverseBA_.exit
  %.sroa.0.0.i81 = phi i64 [ %i.am, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBv_E7reverseBA_.exit ], [ %i.ag, %bb.p ], [ %i.ad, %bb.o ], !dbg !9829 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i81, !9486, !DIExpression(), !9560)
    #dbg_value(i64 %.sroa.023.0, !9663, !DIExpression(), !9666)
  %i.bb = lshr i64 %.sroa.023.0, 1, !dbg !9830
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 0, i64 %i.bb), !9667, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !9675)
    #dbg_value(i64 %.sroa.09.0, !9668, !DIExpression(), !9675)
    #dbg_value(i64 %.sroa.0.0.i81, !9663, !DIExpression(), !9677)
  %i.bc = lshr i64 %.sroa.0.0.i81, 1, !dbg !9831
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %i.bc), !9669, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9675)
    #dbg_value(i64 %.sroa.0.0, !9670, !DIExpression(), !9675)
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !9832 ; 2 uses
  %i.bd = sub nsw i64 %factor, %i.bb, !dbg !9832
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %.sroa.09.0, i64 0, i64 %i.bb), !9671, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !9678)
  %i.be = add nuw nsw i64 %i.bc, %factor, !dbg !9833
    #dbg_value(i64 %i.be, !9672, !DIExpression(), !9679)
  %i.bf = mul i64 %i.bd, %.sroa.0.0, !dbg !9834
  %i.bg = mul i64 %i.be, %.sroa.0.0, !dbg !9835
  %i.bh = xor i64 %i.bg, %i.bf, !dbg !9836
    #dbg_value(i64 %i.bh, !9680, !DIExpression(), !9683)
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false), !dbg !9837
  %i.bj = trunc nuw nsw i64 %i.bi to i8, !dbg !9836
    #dbg_value(i8 %i.bj, !9487, !DIExpression(), !9560)
  br label %bb.g, !dbg !9838

.lr.ph102:                                        ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB17_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1c_7filters4sort0E0EB1c_.exit
  %.sroa.02.1101 = phi i64 [ %i.bk, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB17_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1c_7filters4sort0E0EB1c_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.1100 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB17_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1c_7filters4sort0E0EB1c_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
    #dbg_value(i64 %.sroa.02.1101, !9479, !DIExpression(), !9541)
    #dbg_value(i64 %.sroa.023.1100, !9485, !DIExpression(), !9559)
  %i.bk = add i64 %.sroa.02.1101, -1, !dbg !9839  ; 4 uses
    #dbg_value(i64 %i.bk, !9552, !DIExpression(), !9555)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk, !dbg !9840
  %i.bm = load i8, ptr %i.bl, align 1, !dbg !9841, !noundef !558
  %.not77 = icmp ult i8 %i.bm, %.sroa.021.0, !dbg !9841
  br i1 %.not77, label %._crit_edge, label %bb.r, !dbg !9841

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB17_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1c_7filters4sort0E0EB1c_.exit, %.lr.ph102, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1100, %.lr.ph102 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB17_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1c_7filters4sort0E0EB1c_.exit ], !dbg !9558 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1101, %.lr.ph102 ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB17_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1c_7filters4sort0E0EB1c_.exit ], !dbg !9540 ; 3 uses
    #dbg_value(i64 %.sroa.02.1.lcssa, !9544, !DIExpression(), !9549)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !9842
  store i64 %.sroa.023.1.lcssa, ptr %i.bn, align 8, !dbg !9843
    #dbg_value(i64 %.sroa.02.1.lcssa, !9552, !DIExpression(), !9557)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !9844
  store i8 %.sroa.021.0, ptr %i.bo, align 1, !dbg !9845
    #dbg_value(i64 %.sroa.02.1.lcssa, !9479, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9541)
  br i1 %i.l, label %bb.y, label %bb.z, !dbg !9846

bb.r:                                             ; preds = %.lr.ph102
    #dbg_value(i64 %i.bk, !9544, !DIExpression(), !9547)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bk, !dbg !9847
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !9848, !noundef !558 ; 3 uses
    #dbg_value(i64 %i.bq, !9488, !DIExpression(), !9684)
    #dbg_value(i64 %i.bq, !9663, !DIExpression(), !9686)
  %i.br = lshr i64 %i.bq, 1, !dbg !9849           ; 5 uses
    #dbg_value(i64 %.sroa.023.1100, !9663, !DIExpression(), !9688)
  %i.bs = lshr i64 %.sroa.023.1100, 1, !dbg !9850 ; 3 uses
  %i.bt = add nuw i64 %i.br, %i.bs, !dbg !9851    ; 5 uses
    #dbg_value(i64 %i.bt, !9489, !DIExpression(), !9689)
  %i.bu = sub i64 %.sroa.09.0, %i.bt, !dbg !9852
    #dbg_value(i64 %i.bu, !9490, !DIExpression(), !9690)
    #dbg_value(i64 %i.bu, !9508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9512)
    #dbg_value(i64 %i.bu, !9691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9698)
    #dbg_value(i64 %i.bu, !9561, !DIExpression(), !9700)
    #dbg_value(i64 %.sroa.09.0, !9508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9512)
    #dbg_value(i64 %.sroa.09.0, !9691, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9698)
    #dbg_value(ptr %0, !9694, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9698)
    #dbg_value(ptr %0, !9562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9700)
    #dbg_value(i64 %1, !9694, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9698)
    #dbg_value(i64 %1, !9562, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9700)
    #dbg_value(i64 %i.bt, !9695, !DIExpression(), !9701)
    #dbg_value(i64 %i.bt, !9563, !DIExpression(), !9700)
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bu, !dbg !9853 ; 3 uses
    #dbg_value(ptr %i.bv, !9491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9702)
    #dbg_value(i64 %i.bt, !9491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9702)
    #dbg_value(ptr %i.bv, !9703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9393)
    #dbg_value(ptr %i.bv, !9713, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9396)
    #dbg_value(ptr %i.bv, !9716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9400)
    #dbg_value(i64 %i.bt, !9703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9393)
    #dbg_value(i64 %i.bt, !9713, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9396)
    #dbg_value(i64 %i.bt, !9716, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9400)
    #dbg_value(ptr %2, !9706, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9393)
    #dbg_value(i64 %3, !9706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9393)
    #dbg_value(i64 %i.bq, !9707, !DIExpression(), !9393)
    #dbg_value(i64 %.sroa.023.1100, !9708, !DIExpression(), !9393)
    #dbg_value(ptr %5, !9709, !DIExpression(), !9393)
    #dbg_value(i64 0, !9721, !DIExpression(), !9409)
    #dbg_value(i64 %i.bt, !9710, !DIExpression(), !9410)
    #dbg_value(i64 %i.bt, !9743, !DIExpression(), !9413)
    #dbg_value(i64 %i.bt, !9745, !DIExpression(), !9416)
  %.not.i = icmp samesign ule i64 %i.bt, %3, !dbg !9854
    #dbg_value(i1 %.not.i, !9711, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9417)
  %i.bw = and i64 %.sroa.023.1100, 1
  %.not28.i = icmp eq i64 %i.bw, 0
  %i.bx = or i64 %i.bq, %.sroa.023.1100, !dbg !9855
  %i.by = and i64 %i.bx, 1, !dbg !9855
  %i.bz = icmp eq i64 %i.by, 0, !dbg !9855
  %or.cond32.i = and i1 %.not.i, %i.bz, !dbg !9855
  br i1 %or.cond32.i, label %bb.t, label %bb.s, !dbg !9855

bb.s:                                             ; preds = %bb.r
  %i.ca = and i64 %i.bq, 1
  %.not27.i = icmp eq i64 %i.ca, 0
  br i1 %.not27.i, label %bb.v, label %bb.u, !dbg !9856

bb.t:                                             ; preds = %bb.r
  %i.cb = shl nuw nsw i64 %i.bt, 1, !dbg !9857
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB17_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1c_7filters4sort0E0EB1c_.exit, !dbg !9858

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %.not28.i, label %bb.w, label %bb.x, !dbg !9859

bb.v:                                             ; preds = %bb.s
    #dbg_value(i64 %i.br, !9723, !DIExpression(), !9409)
    #dbg_value(ptr %i.bv, !9722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9409)
    #dbg_value(i64 %i.bt, !9722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9409)
    #dbg_value(ptr %i.bv, !9747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9421)
    #dbg_value(i64 %i.br, !9747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9421)
    #dbg_value(ptr %2, !9748, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9421)
    #dbg_value(i64 %3, !9748, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9421)
    #dbg_value(ptr %5, !9749, !DIExpression(), !9421)
    #dbg_value(i64 %i.br, !9752, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !9425)
    #dbg_value(i64 %i.br, !9755, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !9429)
  %i.cc = or i64 %i.br, 1, !dbg !9860
    #dbg_value(i64 %i.cc, !9752, !DIExpression(), !9425)
    #dbg_value(i64 %i.cc, !9755, !DIExpression(), !9429)
    #dbg_value(i64 %i.cc, !9756, !DIExpression(), !9430)
    #dbg_value(i64 %i.cc, !9758, !DIExpression(), !9433)
    #dbg_value(i64 %i.cc, !9760, !DIExpression(), !9436)
  %i.cd = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true), !dbg !9861
  %i.ce = trunc nuw nsw i64 %i.cd to i32, !dbg !9861
    #dbg_value(i32 %i.ce, !9753, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !9437)
  %i.cf = shl nuw nsw i32 %i.ce, 1, !dbg !9862
  %i.cg = xor i32 %i.cf, 126, !dbg !9862
    #dbg_value(i32 %i.cg, !9750, !DIExpression(), !9438)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB16_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvNtB1b_7filters4sort0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 576460752303423488) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !9863, !inline_history !9439
  br label %bb.u, !dbg !9864

bb.w:                                             ; preds = %bb.u
    #dbg_value(i64 %i.br, !9714, !DIExpression(), !9396)
    #dbg_value(i64 %i.br, !9717, !DIExpression(), !9400)
    #dbg_value(i64 %i.br, !9724, !DIExpression(), !9441)
    #dbg_value(i64 %i.bs, !9718, !DIExpression(), !9442)
    #dbg_value(i64 %i.bs, !9723, !DIExpression(), !9441)
    #dbg_value(ptr %i.bv, !9722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9441)
    #dbg_value(i64 %i.bt, !9722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9441)
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.br, !dbg !9865
    #dbg_value(ptr %i.ch, !9747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9444)
    #dbg_value(i64 %i.bs, !9747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9444)
    #dbg_value(ptr %2, !9748, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9444)
    #dbg_value(i64 %3, !9748, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9444)
    #dbg_value(ptr %5, !9749, !DIExpression(), !9444)
    #dbg_value(i64 %i.bs, !9752, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !9446)
    #dbg_value(i64 %i.bs, !9755, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !9448)
  %i.ci = or i64 %i.bs, 1, !dbg !9866
    #dbg_value(i64 %i.ci, !9752, !DIExpression(), !9446)
    #dbg_value(i64 %i.ci, !9755, !DIExpression(), !9448)
    #dbg_value(i64 %i.ci, !9756, !DIExpression(), !9449)
    #dbg_value(i64 %i.ci, !9758, !DIExpression(), !9451)
    #dbg_value(i64 %i.ci, !9760, !DIExpression(), !9453)
  %i.cj = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true), !dbg !9867
  %i.ck = trunc nuw nsw i64 %i.cj to i32, !dbg !9867
    #dbg_value(i32 %i.ck, !9753, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !9454)
  %i.cl = shl nuw nsw i32 %i.ck, 1, !dbg !9868
  %i.cm = xor i32 %i.cl, 126, !dbg !9868
    #dbg_value(i32 %i.cm, !9750, !DIExpression(), !9455)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB16_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvNtB1b_7filters4sort0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.ch, i64 noundef range(i64 0, 576460752303423488) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !9869, !inline_history !9439
  br label %bb.x, !dbg !9870

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRNtNtCs5yXxDE1DkoT_4tera5value5ValueBY_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvNtB13_7filters4sort0E0EB13_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 576460752303423488) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.br, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !9871
  %i.cn = shl nuw nsw i64 %i.bt, 1, !dbg !9872
  %i.co = or disjoint i64 %i.cn, 1, !dbg !9872
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB17_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1c_7filters4sort0E0EB1c_.exit, !dbg !9858

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB17_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtB1c_7filters4sort0E0EB1c_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.co, %bb.x ], [ %i.cb, %bb.t ], !dbg !9873 ; 2 uses
    #dbg_value(i64 %i.bk, !9479, !DIExpression(), !9541)
    #dbg_value(i64 %.sroa.0.0.i, !9485, !DIExpression(), !9559)
  %i.cp = icmp ugt i64 %i.bk, 1, !dbg !9782
  br i1 %i.cp, label %.lr.ph102, label %._crit_edge, !dbg !9782

bb.y:                                             ; preds = %._crit_edge
  %i.cq = add nsw i64 %.sroa.02.1.lcssa, 1, !dbg !9874
    #dbg_value(i64 %i.cq, !9479, !DIExpression(), !9541)
    #dbg_value(i64 %.sroa.018.0, !9663, !DIExpression(), !9763)
  %i.cr = lshr i64 %.sroa.018.0, 1, !dbg !9875
  %i.cs = add nuw nsw i64 %i.cr, %.sroa.09.0, !dbg !9876
    #dbg_value(i64 %i.cs, !9484, !DIExpression(), !9558)
    #dbg_value(i64 %.sroa.018.0, !9485, !DIExpression(), !9559)
  br label %bb.f, !dbg !9780

bb.z:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.023.1.lcssa, !9764, !DIExpression(), !9767)
  %i.ct = and i64 %.sroa.023.1.lcssa, 1, !dbg !9877
  %.not79 = icmp eq i64 %i.ct, 0, !dbg !9877
  br i1 %.not79, label %bb.aa, label %bb.ab, !dbg !9878

bb.aa:                                            ; preds = %bb.z
    #dbg_value(ptr %0, !9747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9458)
    #dbg_value(i64 %1, !9747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9458)
    #dbg_value(ptr %2, !9748, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9458)
    #dbg_value(i64 %3, !9748, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9458)
    #dbg_value(ptr %5, !9749, !DIExpression(), !9458)
    #dbg_value(i64 %1, !9752, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !9460)
    #dbg_value(i64 %1, !9755, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !9462)
  %i.cu = or i64 %1, 1, !dbg !9879
    #dbg_value(i64 %i.cu, !9752, !DIExpression(), !9460)
    #dbg_value(i64 %i.cu, !9755, !DIExpression(), !9462)
    #dbg_value(i64 %i.cu, !9756, !DIExpression(), !9463)
    #dbg_value(i64 %i.cu, !9758, !DIExpression(), !9465)
    #dbg_value(i64 %i.cu, !9760, !DIExpression(), !9467)
  %i.cv = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cu, i1 true), !dbg !9880
  %i.cw = trunc nuw nsw i64 %i.cv to i32, !dbg !9880
    #dbg_value(i32 %i.cw, !9753, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !9468)
  %i.cx = shl nuw nsw i32 %i.cw, 1, !dbg !9881
  %i.cy = xor i32 %i.cx, 126, !dbg !9881
    #dbg_value(i32 %i.cy, !9750, !DIExpression(), !9469)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCs5yXxDE1DkoT_4tera5value5ValueB16_ENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvNtB1b_7filters4sort0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !9882, !inline_history !9439
  br label %bb.ab, !dbg !9883

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9885
  br label %bb.ac, !dbg !9886

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !9886
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB12_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_11sort_by_keyBX_NCINvB12_10format_mapINtNtB1X_3vec3VechEE0E0EB14_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9902 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
    #dbg_value(ptr %0, !10119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10140)
    #dbg_value(ptr %0, !10141, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10145)
    #dbg_value(ptr %0, !10146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10151)
    #dbg_value(ptr %0, !10152, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10156)
    #dbg_value(i64 %1, !10119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10140)
    #dbg_value(i64 %1, !10141, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10145)
    #dbg_value(i64 %1, !10146, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10151)
    #dbg_value(i64 %1, !10152, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10156)
    #dbg_value(ptr %2, !10120, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10140)
    #dbg_value(i64 %3, !10120, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10140)
    #dbg_value(i1 %4, !10121, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10140)
    #dbg_value(ptr %5, !10122, !DIExpression(), !10140)
    #dbg_declare(ptr %i.b, !10127, !DIExpression(), !10157)
    #dbg_declare(ptr %i.a, !10129, !DIExpression(), !10158)
    #dbg_value(i64 4611686018427387904, !10159, !DIExpression(), !10166)
    #dbg_value(i64 64, !10169, !DIExpression(), !10173)
    #dbg_value(i64 64, !10174, !DIExpression(), !10178)
    #dbg_value(i64 %1, !10123, !DIExpression(), !10179)
    #dbg_value(i64 %1, !10167, !DIExpression(), !10180)
  %i.c = icmp samesign ult i64 %1, 2, !dbg !10362
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !10362

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %1, !10160, !DIExpression(), !10166)
  %i.d = udiv i64 4611686018427387904, %1, !dbg !10363
    #dbg_value(i64 %i.d, !10161, !DIExpression(), !10181)
  %i.e = urem i64 4611686018427387904, %1, !dbg !10364
    #dbg_value(i64 %i.e, !10162, !DIExpression(), !10182)
  %.not = icmp ne i64 %i.e, 0, !dbg !10365
  %i.f = zext i1 %.not to i64, !dbg !10365
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !10365 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !10124, !DIExpression(), !10183)
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !10366
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !10366

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !10367
    #dbg_value(i64 %i.h, !10125, !DIExpression(), !10184)
  br label %bb.e, !dbg !10367

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !10368
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !10369
    #dbg_value(i64 %i.j, !10170, !DIExpression(), !10173)
    #dbg_value(i64 %i.j, !10175, !DIExpression(), !10178)
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !10370
    #dbg_value(i64 %i.k, !10125, !DIExpression(), !10184)
  br label %bb.e, !dbg !10371

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ], !dbg !10183 ; 5 uses
    #dbg_value(i64 %.sroa.01.0, !10125, !DIExpression(), !10184)
    #dbg_value(i64 0, !10126, !DIExpression(), !10185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10372
    #dbg_value(ptr %i.b, !10128, !DIExpression(), !10186)
    #dbg_value(ptr %i.b, !10187, !DIExpression(), !10191)
    #dbg_value(ptr %i.b, !10187, !DIExpression(), !10193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10373
    #dbg_value(ptr %i.a, !10130, !DIExpression(), !10194)
    #dbg_value(ptr %i.a, !10195, !DIExpression(), !10199)
    #dbg_value(ptr %i.a, !10195, !DIExpression(), !10201)
    #dbg_value(i64 0, !10131, !DIExpression(), !10202)
    #dbg_value(i64 1, !10132, !DIExpression(), !10203)
  %.not25.i128 = icmp ugt i64 %.sroa.01.0, 2
  %.not25.i133 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !10374

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !10202 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cs, %bb.y ], !dbg !10194 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.y ], !dbg !10184 ; 3 uses
    #dbg_value(i64 %.sroa.02.0, !10126, !DIExpression(), !10185)
    #dbg_value(i64 %.sroa.09.0, !10131, !DIExpression(), !10202)
    #dbg_value(i64 %.sroa.023.0, !10132, !DIExpression(), !10203)
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1, !dbg !10375 ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g, !dbg !10375

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapINtNtB24_3vec3VechEE0E0EB1b_.exit
  %.sroa.021.0 = phi i8 [ %i.bj, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapINtNtB24_3vec3VechEE0E0EB1b_.exit ], [ 0, %bb.f ], !dbg !10204 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i81, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapINtNtB24_3vec3VechEE0E0EB1b_.exit ], [ 1, %bb.f ], !dbg !10204 ; 2 uses
    #dbg_value(i64 %.sroa.018.0, !10133, !DIExpression(), !10204)
    #dbg_value(i8 %.sroa.021.0, !10134, !DIExpression(), !10204)
    #dbg_value(i64 %.sroa.02.0, !10126, !DIExpression(), !10185)
    #dbg_value(i64 %.sroa.023.0, !10132, !DIExpression(), !10203)
  %i.m = icmp ugt i64 %.sroa.02.0, 1, !dbg !10376
  br i1 %i.m, label %.lr.ph106, label %._crit_edge, !dbg !10376

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.09.0, !10142, !DIExpression(), !10145)
    #dbg_value(i64 %.sroa.09.0, !10147, !DIExpression(), !10151)
    #dbg_value(i64 %.sroa.09.0, !10205, !DIExpression(), !10210)
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !10377 ; 11 uses
    #dbg_value(i64 %i.n, !10148, !DIExpression(), !10211)
    #dbg_value(i64 %i.n, !10207, !DIExpression(), !10210)
    #dbg_value(ptr %0, !10206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10210)
    #dbg_value(i64 %1, !10206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10210)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0, !dbg !10378 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10212), !dbg !10379
    #dbg_value(ptr %i.o, !10213, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9923)
    #dbg_value(i64 %i.n, !10213, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9923)
    #dbg_value(ptr %2, !10216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9923)
    #dbg_value(i64 %3, !10216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9923)
    #dbg_value(i64 %.sroa.01.0, !10217, !DIExpression(), !9923)
    #dbg_value(i64 %.sroa.01.0, !10225, !DIExpression(), !9926)
    #dbg_value(i64 %.sroa.01.0, !10228, !DIExpression(), !9929)
    #dbg_value(i1 %4, !10218, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9923)
    #dbg_value(ptr %5, !10219, !DIExpression(), !9923)
    #dbg_value(i64 %i.n, !10220, !DIExpression(), !9930)
    #dbg_value(i64 %i.n, !10226, !DIExpression(), !9932)
    #dbg_value(i64 %i.n, !10229, !DIExpression(), !9934)
    #dbg_value(i64 %i.n, !10226, !DIExpression(), !9926)
    #dbg_value(i64 %i.n, !10229, !DIExpression(), !9929)
  %.not.i80 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !10380
  br i1 %.not.i80, label %bb.i, label %bb.j, !dbg !10380

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread131, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapINtNtB23_3vec3VechEE0E0EB1a_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !10381

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.o, !10232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9940)
    #dbg_value(ptr %i.o, !10240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9943)
    #dbg_value(ptr %i.o, !10244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9946)
    #dbg_value(ptr %i.o, !10240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9948)
    #dbg_value(ptr %i.o, !10244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9950)
    #dbg_value(ptr %i.o, !10240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9952)
    #dbg_value(ptr %i.o, !10244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9954)
    #dbg_value(ptr %i.o, !10240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9956)
    #dbg_value(ptr %i.o, !10244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9958)
    #dbg_value(ptr %i.o, !10240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9960)
    #dbg_value(ptr %i.o, !10244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9962)
    #dbg_value(ptr %i.o, !10240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9964)
    #dbg_value(ptr %i.o, !10244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9966)
    #dbg_value(i64 %i.n, !10232, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9940)
    #dbg_value(i64 %i.n, !10240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9943)
    #dbg_value(i64 %i.n, !10244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9946)
    #dbg_value(i64 %i.n, !10240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9948)
    #dbg_value(i64 %i.n, !10244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9950)
    #dbg_value(i64 %i.n, !10240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9952)
    #dbg_value(i64 %i.n, !10244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9954)
    #dbg_value(i64 %i.n, !10240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9956)
    #dbg_value(i64 %i.n, !10244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9958)
    #dbg_value(i64 %i.n, !10240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9960)
    #dbg_value(i64 %i.n, !10244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9962)
    #dbg_value(i64 %i.n, !10240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9964)
    #dbg_value(i64 %i.n, !10244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9966)
    #dbg_value(ptr %5, !10235, !DIExpression(), !9940)
    #dbg_value(i64 1, !10241, !DIExpression(), !9943)
    #dbg_value(i64 1, !10245, !DIExpression(), !9946)
    #dbg_value(i64 0, !10241, !DIExpression(), !9948)
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB12_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_11sort_by_keyBX_NCINvB12_10format_mapINtNtB1X_3vec3VechEE0E0EB14_:bb.a
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i), !2221, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_or, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !10014)
  %i.av = xor i64 %.sroa.0.026.i.i, -2, !dbg !10416
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.026.i.i, !dbg !10417
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !10417 ; 2 uses
    #dbg_value(ptr %i.ax, !2221, !DIExpression(), !10014)
  %i.ay = getelementptr [16 x i8], ptr %i.ap, i64 %i.av, !dbg !10418 ; 2 uses
    #dbg_value(ptr %i.ay, !2224, !DIExpression(), !10014)
  %i.az = load <2 x ptr>, ptr %i.ax, align 8, !dbg !10419, !alias.scope !10259, !noalias !10260
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !dbg !10419, !alias.scope !10261, !noalias !10253
  store <2 x ptr> %i.az, ptr %i.ay, align 8, !dbg !10419, !alias.scope !10262, !noalias !10263
  %i.ba = add nuw nsw i64 %.sroa.0.026.i.i, 2, !dbg !10425 ; 2 uses
    #dbg_value(i64 %i.ba, !2209, !DIExpression(), !10012)
  %niter.next.1 = add i64 %niter, 2, !dbg !10415  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !10415
  br i1 %niter.ncmp.1, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i, !dbg !10415

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapINtNtB24_3vec3VechEE0E0EB1b_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit
  %.sroa.0.0.i81 = phi i64 [ %i.am, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit ], [ %i.ag, %bb.p ], [ %i.ad, %bb.o ], !dbg !10426 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i81, !10133, !DIExpression(), !10204)
    #dbg_value(i64 %.sroa.023.0, !10266, !DIExpression(), !10269)
  %i.bb = lshr i64 %.sroa.023.0, 1, !dbg !10427
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 0, i64 %i.bb), !10270, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !10278)
    #dbg_value(i64 %.sroa.09.0, !10271, !DIExpression(), !10278)
    #dbg_value(i64 %.sroa.0.0.i81, !10266, !DIExpression(), !10280)
  %i.bc = lshr i64 %.sroa.0.0.i81, 1, !dbg !10428
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %i.bc), !10272, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !10278)
    #dbg_value(i64 %.sroa.0.0, !10273, !DIExpression(), !10278)
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !10429 ; 2 uses
  %i.bd = sub nsw i64 %factor, %i.bb, !dbg !10429
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %.sroa.09.0, i64 0, i64 %i.bb), !10274, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !10281)
  %i.be = add nuw nsw i64 %i.bc, %factor, !dbg !10430
    #dbg_value(i64 %i.be, !10275, !DIExpression(), !10282)
  %i.bf = mul i64 %i.bd, %.sroa.0.0, !dbg !10431
  %i.bg = mul i64 %i.be, %.sroa.0.0, !dbg !10432
  %i.bh = xor i64 %i.bg, %i.bf, !dbg !10433
    #dbg_value(i64 %i.bh, !10283, !DIExpression(), !10286)
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false), !dbg !10434
  %i.bj = trunc nuw nsw i64 %i.bi to i8, !dbg !10433
    #dbg_value(i8 %i.bj, !10134, !DIExpression(), !10204)
  br label %bb.g, !dbg !10435

.lr.ph106:                                        ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapINtNtB27_3vec3VechEE0E0EB1e_.exit
  %.sroa.02.1105 = phi i64 [ %i.bk, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapINtNtB27_3vec3VechEE0E0EB1e_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.1104 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapINtNtB27_3vec3VechEE0E0EB1e_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
    #dbg_value(i64 %.sroa.02.1105, !10126, !DIExpression(), !10185)
    #dbg_value(i64 %.sroa.023.1104, !10132, !DIExpression(), !10203)
  %i.bk = add i64 %.sroa.02.1105, -1, !dbg !10436 ; 4 uses
    #dbg_value(i64 %i.bk, !10196, !DIExpression(), !10199)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk, !dbg !10437
  %i.bm = load i8, ptr %i.bl, align 1, !dbg !10438, !noundef !558
  %.not77 = icmp ult i8 %i.bm, %.sroa.021.0, !dbg !10438
  br i1 %.not77, label %._crit_edge, label %bb.r, !dbg !10438

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapINtNtB27_3vec3VechEE0E0EB1e_.exit, %.lr.ph106, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1104, %.lr.ph106 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapINtNtB27_3vec3VechEE0E0EB1e_.exit ], !dbg !10202 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1105, %.lr.ph106 ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapINtNtB27_3vec3VechEE0E0EB1e_.exit ], !dbg !10184 ; 3 uses
    #dbg_value(i64 %.sroa.02.1.lcssa, !10188, !DIExpression(), !10193)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !10439
  store i64 %.sroa.023.1.lcssa, ptr %i.bn, align 8, !dbg !10440
    #dbg_value(i64 %.sroa.02.1.lcssa, !10196, !DIExpression(), !10201)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !10441
  store i8 %.sroa.021.0, ptr %i.bo, align 1, !dbg !10442
    #dbg_value(i64 %.sroa.02.1.lcssa, !10126, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !10185)
  br i1 %i.l, label %bb.y, label %bb.z, !dbg !10443

bb.r:                                             ; preds = %.lr.ph106
    #dbg_value(i64 %i.bk, !10188, !DIExpression(), !10191)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bk, !dbg !10444
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !10445, !noundef !558 ; 3 uses
    #dbg_value(i64 %i.bq, !10135, !DIExpression(), !10287)
    #dbg_value(i64 %i.bq, !10266, !DIExpression(), !10289)
  %i.br = lshr i64 %i.bq, 1, !dbg !10446          ; 5 uses
    #dbg_value(i64 %.sroa.023.1104, !10266, !DIExpression(), !10291)
  %i.bs = lshr i64 %.sroa.023.1104, 1, !dbg !10447 ; 3 uses
  %i.bt = add nuw i64 %i.br, %i.bs, !dbg !10448   ; 5 uses
    #dbg_value(i64 %i.bt, !10136, !DIExpression(), !10292)
  %i.bu = sub i64 %.sroa.09.0, %i.bt, !dbg !10449
    #dbg_value(i64 %i.bu, !10137, !DIExpression(), !10293)
    #dbg_value(i64 %i.bu, !10153, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10156)
    #dbg_value(i64 %i.bu, !10294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10299)
    #dbg_value(i64 %i.bu, !10205, !DIExpression(), !10301)
    #dbg_value(i64 %.sroa.09.0, !10153, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10156)
    #dbg_value(i64 %.sroa.09.0, !10294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10299)
    #dbg_value(ptr %0, !10295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10299)
    #dbg_value(ptr %0, !10206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10301)
    #dbg_value(i64 %1, !10295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10299)
    #dbg_value(i64 %1, !10206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10301)
    #dbg_value(i64 %i.bt, !10296, !DIExpression(), !10302)
    #dbg_value(i64 %i.bt, !10207, !DIExpression(), !10301)
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bu, !dbg !10450 ; 3 uses
    #dbg_value(ptr %i.bv, !10138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10303)
    #dbg_value(i64 %i.bt, !10138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10303)
    #dbg_value(ptr %i.bv, !10304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10040)
    #dbg_value(ptr %i.bv, !10314, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10043)
    #dbg_value(ptr %i.bv, !10317, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10047)
    #dbg_value(i64 %i.bt, !10304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10040)
    #dbg_value(i64 %i.bt, !10314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10043)
    #dbg_value(i64 %i.bt, !10317, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10047)
    #dbg_value(ptr %2, !10307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10040)
    #dbg_value(i64 %3, !10307, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10040)
    #dbg_value(i64 %i.bq, !10308, !DIExpression(), !10040)
    #dbg_value(i64 %.sroa.023.1104, !10309, !DIExpression(), !10040)
    #dbg_value(ptr %5, !10310, !DIExpression(), !10040)
    #dbg_value(i64 0, !10322, !DIExpression(), !10056)
    #dbg_value(i64 %i.bt, !10311, !DIExpression(), !10057)
    #dbg_value(i64 %i.bt, !10337, !DIExpression(), !10060)
    #dbg_value(i64 %i.bt, !10339, !DIExpression(), !10063)
  %.not.i = icmp samesign ule i64 %i.bt, %3, !dbg !10451
    #dbg_value(i1 %.not.i, !10312, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10064)
  %i.bw = and i64 %.sroa.023.1104, 1
  %.not28.i = icmp eq i64 %i.bw, 0
  %i.bx = or i64 %i.bq, %.sroa.023.1104, !dbg !10452
  %i.by = and i64 %i.bx, 1, !dbg !10452
  %i.bz = icmp eq i64 %i.by, 0, !dbg !10452
  %or.cond32.i = and i1 %.not.i, %i.bz, !dbg !10452
  br i1 %or.cond32.i, label %bb.t, label %bb.s, !dbg !10452

bb.s:                                             ; preds = %bb.r
  %i.ca = and i64 %i.bq, 1
  %.not27.i = icmp eq i64 %i.ca, 0
  br i1 %.not27.i, label %bb.v, label %bb.u, !dbg !10453

bb.t:                                             ; preds = %bb.r
  %i.cb = shl nuw nsw i64 %i.bt, 1, !dbg !10454
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapINtNtB27_3vec3VechEE0E0EB1e_.exit, !dbg !10455

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %.not28.i, label %bb.w, label %bb.x, !dbg !10456

bb.v:                                             ; preds = %bb.s
    #dbg_value(i64 %i.br, !10324, !DIExpression(), !10056)
    #dbg_value(ptr %i.bv, !10323, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10056)
    #dbg_value(i64 %i.bt, !10323, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10056)
    #dbg_value(ptr %i.bv, !10341, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10068)
    #dbg_value(i64 %i.br, !10341, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10068)
    #dbg_value(ptr %2, !10342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10068)
    #dbg_value(i64 %3, !10342, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10068)
    #dbg_value(ptr %5, !10343, !DIExpression(), !10068)
    #dbg_value(i64 %i.br, !10346, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !10072)
    #dbg_value(i64 %i.br, !10349, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !10076)
  %i.cc = or i64 %i.br, 1, !dbg !10457
    #dbg_value(i64 %i.cc, !10346, !DIExpression(), !10072)
    #dbg_value(i64 %i.cc, !10349, !DIExpression(), !10076)
    #dbg_value(i64 %i.cc, !10350, !DIExpression(), !10077)
    #dbg_value(i64 %i.cc, !10352, !DIExpression(), !10080)
    #dbg_value(i64 %i.cc, !10354, !DIExpression(), !10083)
  %i.cd = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true), !dbg !10458
  %i.ce = trunc nuw nsw i64 %i.cd to i32, !dbg !10458
    #dbg_value(i32 %i.ce, !10347, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !10084)
  %i.cf = shl nuw nsw i32 %i.ce, 1, !dbg !10459
  %i.cg = xor i32 %i.cf, 126, !dbg !10459
    #dbg_value(i32 %i.cg, !10344, !DIExpression(), !10085)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1b_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCINvB1b_10format_mapINtNtB26_3vec3VechEE0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 576460752303423488) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !10460, !inline_history !10086
  br label %bb.u, !dbg !10461

bb.w:                                             ; preds = %bb.u
    #dbg_value(i64 %i.br, !10315, !DIExpression(), !10043)
    #dbg_value(i64 %i.br, !10318, !DIExpression(), !10047)
    #dbg_value(i64 %i.br, !10325, !DIExpression(), !10088)
    #dbg_value(i64 %i.bs, !10319, !DIExpression(), !10089)
    #dbg_value(i64 %i.bs, !10324, !DIExpression(), !10088)
    #dbg_value(ptr %i.bv, !10323, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10088)
    #dbg_value(i64 %i.bt, !10323, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10088)
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.br, !dbg !10462
    #dbg_value(ptr %i.ch, !10341, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10091)
    #dbg_value(i64 %i.bs, !10341, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10091)
    #dbg_value(ptr %2, !10342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10091)
    #dbg_value(i64 %3, !10342, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10091)
    #dbg_value(ptr %5, !10343, !DIExpression(), !10091)
    #dbg_value(i64 %i.bs, !10346, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !10093)
    #dbg_value(i64 %i.bs, !10349, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !10095)
  %i.ci = or i64 %i.bs, 1, !dbg !10463
    #dbg_value(i64 %i.ci, !10346, !DIExpression(), !10093)
    #dbg_value(i64 %i.ci, !10349, !DIExpression(), !10095)
    #dbg_value(i64 %i.ci, !10350, !DIExpression(), !10096)
    #dbg_value(i64 %i.ci, !10352, !DIExpression(), !10098)
    #dbg_value(i64 %i.ci, !10354, !DIExpression(), !10100)
  %i.cj = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true), !dbg !10464
  %i.ck = trunc nuw nsw i64 %i.cj to i32, !dbg !10464
    #dbg_value(i32 %i.ck, !10347, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !10101)
  %i.cl = shl nuw nsw i32 %i.ck, 1, !dbg !10465
  %i.cm = xor i32 %i.cl, 126, !dbg !10465
    #dbg_value(i32 %i.cm, !10344, !DIExpression(), !10102)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1b_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCINvB1b_10format_mapINtNtB26_3vec3VechEE0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.ch, i64 noundef range(i64 0, 576460752303423488) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !10466, !inline_history !10086
  br label %bb.x, !dbg !10467

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB13_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyBY_NCINvB13_10format_mapINtNtB1Y_3vec3VechEE0E0EB15_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 576460752303423488) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.br, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !10468
  %i.cn = shl nuw nsw i64 %i.bt, 1, !dbg !10469
  %i.co = or disjoint i64 %i.cn, 1, !dbg !10469
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapINtNtB27_3vec3VechEE0E0EB1e_.exit, !dbg !10455

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapINtNtB27_3vec3VechEE0E0EB1e_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.co, %bb.x ], [ %i.cb, %bb.t ], !dbg !10470 ; 2 uses
    #dbg_value(i64 %i.bk, !10126, !DIExpression(), !10185)
    #dbg_value(i64 %.sroa.0.0.i, !10132, !DIExpression(), !10203)
  %i.cp = icmp ugt i64 %i.bk, 1, !dbg !10376
  br i1 %i.cp, label %.lr.ph106, label %._crit_edge, !dbg !10376

bb.y:                                             ; preds = %._crit_edge
  %i.cq = add nsw i64 %.sroa.02.1.lcssa, 1, !dbg !10471
    #dbg_value(i64 %i.cq, !10126, !DIExpression(), !10185)
    #dbg_value(i64 %.sroa.018.0, !10266, !DIExpression(), !10357)
  %i.cr = lshr i64 %.sroa.018.0, 1, !dbg !10472
  %i.cs = add nuw nsw i64 %i.cr, %.sroa.09.0, !dbg !10473
    #dbg_value(i64 %i.cs, !10131, !DIExpression(), !10202)
    #dbg_value(i64 %.sroa.018.0, !10132, !DIExpression(), !10203)
  br label %bb.f, !dbg !10374

bb.z:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.023.1.lcssa, !10358, !DIExpression(), !10361)
  %i.ct = and i64 %.sroa.023.1.lcssa, 1, !dbg !10474
  %.not79 = icmp eq i64 %i.ct, 0, !dbg !10474
  br i1 %.not79, label %bb.aa, label %bb.ab, !dbg !10475

bb.aa:                                            ; preds = %bb.z
    #dbg_value(ptr %0, !10341, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10105)
    #dbg_value(i64 %1, !10341, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10105)
    #dbg_value(ptr %2, !10342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10105)
    #dbg_value(i64 %3, !10342, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10105)
    #dbg_value(ptr %5, !10343, !DIExpression(), !10105)
    #dbg_value(i64 %1, !10346, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !10107)
    #dbg_value(i64 %1, !10349, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !10109)
  %i.cu = or i64 %1, 1, !dbg !10476
    #dbg_value(i64 %i.cu, !10346, !DIExpression(), !10107)
    #dbg_value(i64 %i.cu, !10349, !DIExpression(), !10109)
    #dbg_value(i64 %i.cu, !10350, !DIExpression(), !10110)
    #dbg_value(i64 %i.cu, !10352, !DIExpression(), !10112)
    #dbg_value(i64 %i.cu, !10354, !DIExpression(), !10114)
  %i.cv = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cu, i1 true), !dbg !10477
  %i.cw = trunc nuw nsw i64 %i.cv to i32, !dbg !10477
    #dbg_value(i32 %i.cw, !10347, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !10115)
  %i.cx = shl nuw nsw i32 %i.cw, 1, !dbg !10478
  %i.cy = xor i32 %i.cx, 126, !dbg !10478
    #dbg_value(i32 %i.cy, !10344, !DIExpression(), !10116)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1b_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCINvB1b_10format_mapINtNtB26_3vec3VechEE0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !10479, !inline_history !10086
  br label %bb.ab, !dbg !10480

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10482
  br label %bb.ac, !dbg !10483

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !10483
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB12_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_11sort_by_keyBX_NCINvB12_10format_mapNtNtNtBa_2io4util4SinkE0E0EB14_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10499 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
    #dbg_value(ptr %0, !10716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10737)
    #dbg_value(ptr %0, !10738, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10742)
    #dbg_value(ptr %0, !10743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10748)
    #dbg_value(ptr %0, !10749, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10753)
    #dbg_value(i64 %1, !10716, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10737)
    #dbg_value(i64 %1, !10738, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10742)
    #dbg_value(i64 %1, !10743, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10748)
    #dbg_value(i64 %1, !10749, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10753)
    #dbg_value(ptr %2, !10717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10737)
    #dbg_value(i64 %3, !10717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10737)
    #dbg_value(i1 %4, !10718, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10737)
    #dbg_value(ptr %5, !10719, !DIExpression(), !10737)
    #dbg_declare(ptr %i.b, !10724, !DIExpression(), !10754)
    #dbg_declare(ptr %i.a, !10726, !DIExpression(), !10755)
    #dbg_value(i64 4611686018427387904, !10756, !DIExpression(), !10763)
    #dbg_value(i64 64, !10766, !DIExpression(), !10770)
    #dbg_value(i64 64, !10771, !DIExpression(), !10775)
    #dbg_value(i64 %1, !10720, !DIExpression(), !10776)
    #dbg_value(i64 %1, !10764, !DIExpression(), !10777)
  %i.c = icmp samesign ult i64 %1, 2, !dbg !10959
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !10959

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %1, !10757, !DIExpression(), !10763)
  %i.d = udiv i64 4611686018427387904, %1, !dbg !10960
    #dbg_value(i64 %i.d, !10758, !DIExpression(), !10778)
  %i.e = urem i64 4611686018427387904, %1, !dbg !10961
    #dbg_value(i64 %i.e, !10759, !DIExpression(), !10779)
  %.not = icmp ne i64 %i.e, 0, !dbg !10962
  %i.f = zext i1 %.not to i64, !dbg !10962
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !10962 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !10721, !DIExpression(), !10780)
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !10963
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !10963

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !10964
    #dbg_value(i64 %i.h, !10722, !DIExpression(), !10781)
  br label %bb.e, !dbg !10964

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !10965
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !10966
    #dbg_value(i64 %i.j, !10767, !DIExpression(), !10770)
    #dbg_value(i64 %i.j, !10772, !DIExpression(), !10775)
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !10967
    #dbg_value(i64 %i.k, !10722, !DIExpression(), !10781)
  br label %bb.e, !dbg !10968

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ], !dbg !10780 ; 5 uses
    #dbg_value(i64 %.sroa.01.0, !10722, !DIExpression(), !10781)
    #dbg_value(i64 0, !10723, !DIExpression(), !10782)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10969
    #dbg_value(ptr %i.b, !10725, !DIExpression(), !10783)
    #dbg_value(ptr %i.b, !10784, !DIExpression(), !10788)
    #dbg_value(ptr %i.b, !10784, !DIExpression(), !10790)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10970
    #dbg_value(ptr %i.a, !10727, !DIExpression(), !10791)
    #dbg_value(ptr %i.a, !10792, !DIExpression(), !10796)
    #dbg_value(ptr %i.a, !10792, !DIExpression(), !10798)
    #dbg_value(i64 0, !10728, !DIExpression(), !10799)
    #dbg_value(i64 1, !10729, !DIExpression(), !10800)
  %.not25.i128 = icmp ugt i64 %.sroa.01.0, 2
  %.not25.i133 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !10971

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !10799 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cs, %bb.y ], !dbg !10791 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.y ], !dbg !10781 ; 3 uses
    #dbg_value(i64 %.sroa.02.0, !10723, !DIExpression(), !10782)
    #dbg_value(i64 %.sroa.09.0, !10728, !DIExpression(), !10799)
    #dbg_value(i64 %.sroa.023.0, !10729, !DIExpression(), !10800)
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1, !dbg !10972 ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g, !dbg !10972

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1b_.exit
  %.sroa.021.0 = phi i8 [ %i.bj, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1b_.exit ], [ 0, %bb.f ], !dbg !10801 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i81, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1b_.exit ], [ 1, %bb.f ], !dbg !10801 ; 2 uses
    #dbg_value(i64 %.sroa.018.0, !10730, !DIExpression(), !10801)
    #dbg_value(i8 %.sroa.021.0, !10731, !DIExpression(), !10801)
    #dbg_value(i64 %.sroa.02.0, !10723, !DIExpression(), !10782)
    #dbg_value(i64 %.sroa.023.0, !10729, !DIExpression(), !10800)
  %i.m = icmp ugt i64 %.sroa.02.0, 1, !dbg !10973
  br i1 %i.m, label %.lr.ph106, label %._crit_edge, !dbg !10973

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.09.0, !10739, !DIExpression(), !10742)
    #dbg_value(i64 %.sroa.09.0, !10744, !DIExpression(), !10748)
    #dbg_value(i64 %.sroa.09.0, !10802, !DIExpression(), !10807)
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !10974 ; 11 uses
    #dbg_value(i64 %i.n, !10745, !DIExpression(), !10808)
    #dbg_value(i64 %i.n, !10804, !DIExpression(), !10807)
    #dbg_value(ptr %0, !10803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10807)
    #dbg_value(i64 %1, !10803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10807)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0, !dbg !10975 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10809), !dbg !10976
    #dbg_value(ptr %i.o, !10810, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10520)
    #dbg_value(i64 %i.n, !10810, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10520)
    #dbg_value(ptr %2, !10813, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10520)
    #dbg_value(i64 %3, !10813, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10520)
    #dbg_value(i64 %.sroa.01.0, !10814, !DIExpression(), !10520)
    #dbg_value(i64 %.sroa.01.0, !10822, !DIExpression(), !10523)
    #dbg_value(i64 %.sroa.01.0, !10825, !DIExpression(), !10526)
    #dbg_value(i1 %4, !10815, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10520)
    #dbg_value(ptr %5, !10816, !DIExpression(), !10520)
    #dbg_value(i64 %i.n, !10817, !DIExpression(), !10527)
    #dbg_value(i64 %i.n, !10823, !DIExpression(), !10529)
    #dbg_value(i64 %i.n, !10826, !DIExpression(), !10531)
    #dbg_value(i64 %i.n, !10823, !DIExpression(), !10523)
    #dbg_value(i64 %i.n, !10826, !DIExpression(), !10526)
  %.not.i80 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !10977
  br i1 %.not.i80, label %bb.i, label %bb.j, !dbg !10977

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i.thread131, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapNtNtNtB8_2io4util4SinkE0E0EB1a_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !10978

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.o, !10829, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10537)
    #dbg_value(ptr %i.o, !10837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10540)
    #dbg_value(ptr %i.o, !10841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10543)
    #dbg_value(ptr %i.o, !10837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10545)
    #dbg_value(ptr %i.o, !10841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10547)
    #dbg_value(ptr %i.o, !10837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10549)
    #dbg_value(ptr %i.o, !10841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10551)
    #dbg_value(ptr %i.o, !10837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10553)
    #dbg_value(ptr %i.o, !10841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10555)
    #dbg_value(ptr %i.o, !10837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10557)
    #dbg_value(ptr %i.o, !10841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10559)
    #dbg_value(ptr %i.o, !10837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10561)
    #dbg_value(ptr %i.o, !10841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10563)
    #dbg_value(i64 %i.n, !10829, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10537)
    #dbg_value(i64 %i.n, !10837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10540)
    #dbg_value(i64 %i.n, !10841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10543)
    #dbg_value(i64 %i.n, !10837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10545)
    #dbg_value(i64 %i.n, !10841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10547)
    #dbg_value(i64 %i.n, !10837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10549)
    #dbg_value(i64 %i.n, !10841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10551)
    #dbg_value(i64 %i.n, !10837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10553)
    #dbg_value(i64 %i.n, !10841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10555)
    #dbg_value(i64 %i.n, !10837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10557)
    #dbg_value(i64 %i.n, !10841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10559)
    #dbg_value(i64 %i.n, !10837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10561)
    #dbg_value(i64 %i.n, !10841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10563)
    #dbg_value(ptr %5, !10832, !DIExpression(), !10537)
    #dbg_value(i64 1, !10838, !DIExpression(), !10540)
    #dbg_value(i64 1, !10842, !DIExpression(), !10543)
    #dbg_value(i64 0, !10838, !DIExpression(), !10545)
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB12_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_11sort_by_keyBX_NCINvB12_10format_mapNtNtNtBa_2io4util4SinkE0E0EB14_:bb.a
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i), !2221, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_or, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !10611)
  %i.av = xor i64 %.sroa.0.026.i.i, -2, !dbg !11013
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.026.i.i, !dbg !11014
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !11014 ; 2 uses
    #dbg_value(ptr %i.ax, !2221, !DIExpression(), !10611)
  %i.ay = getelementptr [16 x i8], ptr %i.ap, i64 %i.av, !dbg !11015 ; 2 uses
    #dbg_value(ptr %i.ay, !2224, !DIExpression(), !10611)
  %i.az = load <2 x ptr>, ptr %i.ax, align 8, !dbg !11016, !alias.scope !10856, !noalias !10857
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !dbg !11016, !alias.scope !10858, !noalias !10850
  store <2 x ptr> %i.az, ptr %i.ay, align 8, !dbg !11016, !alias.scope !10859, !noalias !10860
  %i.ba = add nuw nsw i64 %.sroa.0.026.i.i, 2, !dbg !11022 ; 2 uses
    #dbg_value(i64 %i.ba, !2209, !DIExpression(), !10609)
  %niter.next.1 = add i64 %niter, 2, !dbg !11012  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !11012
  br i1 %niter.ncmp.1, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i, !dbg !11012

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1b_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit
  %.sroa.0.0.i81 = phi i64 [ %i.am, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit ], [ %i.ag, %bb.p ], [ %i.ad, %bb.o ], !dbg !11023 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i81, !10730, !DIExpression(), !10801)
    #dbg_value(i64 %.sroa.023.0, !10863, !DIExpression(), !10866)
  %i.bb = lshr i64 %.sroa.023.0, 1, !dbg !11024
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 0, i64 %i.bb), !10867, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !10875)
    #dbg_value(i64 %.sroa.09.0, !10868, !DIExpression(), !10875)
    #dbg_value(i64 %.sroa.0.0.i81, !10863, !DIExpression(), !10877)
  %i.bc = lshr i64 %.sroa.0.0.i81, 1, !dbg !11025
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %i.bc), !10869, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !10875)
    #dbg_value(i64 %.sroa.0.0, !10870, !DIExpression(), !10875)
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !11026 ; 2 uses
  %i.bd = sub nsw i64 %factor, %i.bb, !dbg !11026
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %.sroa.09.0, i64 0, i64 %i.bb), !10871, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !10878)
  %i.be = add nuw nsw i64 %i.bc, %factor, !dbg !11027
    #dbg_value(i64 %i.be, !10872, !DIExpression(), !10879)
  %i.bf = mul i64 %i.bd, %.sroa.0.0, !dbg !11028
  %i.bg = mul i64 %i.be, %.sroa.0.0, !dbg !11029
  %i.bh = xor i64 %i.bg, %i.bf, !dbg !11030
    #dbg_value(i64 %i.bh, !10880, !DIExpression(), !10883)
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false), !dbg !11031
  %i.bj = trunc nuw nsw i64 %i.bi to i8, !dbg !11030
    #dbg_value(i8 %i.bj, !10731, !DIExpression(), !10801)
  br label %bb.g, !dbg !11032

.lr.ph106:                                        ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1e_.exit
  %.sroa.02.1105 = phi i64 [ %i.bk, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1e_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.1104 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1e_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
    #dbg_value(i64 %.sroa.02.1105, !10723, !DIExpression(), !10782)
    #dbg_value(i64 %.sroa.023.1104, !10729, !DIExpression(), !10800)
  %i.bk = add i64 %.sroa.02.1105, -1, !dbg !11033 ; 4 uses
    #dbg_value(i64 %i.bk, !10793, !DIExpression(), !10796)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk, !dbg !11034
  %i.bm = load i8, ptr %i.bl, align 1, !dbg !11035, !noundef !558
  %.not77 = icmp ult i8 %i.bm, %.sroa.021.0, !dbg !11035
  br i1 %.not77, label %._crit_edge, label %bb.r, !dbg !11035

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1e_.exit, %.lr.ph106, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1104, %.lr.ph106 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1e_.exit ], !dbg !10799 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1105, %.lr.ph106 ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1e_.exit ], !dbg !10781 ; 3 uses
    #dbg_value(i64 %.sroa.02.1.lcssa, !10785, !DIExpression(), !10790)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !11036
  store i64 %.sroa.023.1.lcssa, ptr %i.bn, align 8, !dbg !11037
    #dbg_value(i64 %.sroa.02.1.lcssa, !10793, !DIExpression(), !10798)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !11038
  store i8 %.sroa.021.0, ptr %i.bo, align 1, !dbg !11039
    #dbg_value(i64 %.sroa.02.1.lcssa, !10723, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !10782)
  br i1 %i.l, label %bb.y, label %bb.z, !dbg !11040

bb.r:                                             ; preds = %.lr.ph106
    #dbg_value(i64 %i.bk, !10785, !DIExpression(), !10788)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bk, !dbg !11041
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !11042, !noundef !558 ; 3 uses
    #dbg_value(i64 %i.bq, !10732, !DIExpression(), !10884)
    #dbg_value(i64 %i.bq, !10863, !DIExpression(), !10886)
  %i.br = lshr i64 %i.bq, 1, !dbg !11043          ; 5 uses
    #dbg_value(i64 %.sroa.023.1104, !10863, !DIExpression(), !10888)
  %i.bs = lshr i64 %.sroa.023.1104, 1, !dbg !11044 ; 3 uses
  %i.bt = add nuw i64 %i.br, %i.bs, !dbg !11045   ; 5 uses
    #dbg_value(i64 %i.bt, !10733, !DIExpression(), !10889)
  %i.bu = sub i64 %.sroa.09.0, %i.bt, !dbg !11046
    #dbg_value(i64 %i.bu, !10734, !DIExpression(), !10890)
    #dbg_value(i64 %i.bu, !10750, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10753)
    #dbg_value(i64 %i.bu, !10891, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10896)
    #dbg_value(i64 %i.bu, !10802, !DIExpression(), !10898)
    #dbg_value(i64 %.sroa.09.0, !10750, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10753)
    #dbg_value(i64 %.sroa.09.0, !10891, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10896)
    #dbg_value(ptr %0, !10892, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10896)
    #dbg_value(ptr %0, !10803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10898)
    #dbg_value(i64 %1, !10892, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10896)
    #dbg_value(i64 %1, !10803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10898)
    #dbg_value(i64 %i.bt, !10893, !DIExpression(), !10899)
    #dbg_value(i64 %i.bt, !10804, !DIExpression(), !10898)
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bu, !dbg !11047 ; 3 uses
    #dbg_value(ptr %i.bv, !10735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10900)
    #dbg_value(i64 %i.bt, !10735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10900)
    #dbg_value(ptr %i.bv, !10901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10637)
    #dbg_value(ptr %i.bv, !10911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10640)
    #dbg_value(ptr %i.bv, !10914, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10644)
    #dbg_value(i64 %i.bt, !10901, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10637)
    #dbg_value(i64 %i.bt, !10911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10640)
    #dbg_value(i64 %i.bt, !10914, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10644)
    #dbg_value(ptr %2, !10904, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10637)
    #dbg_value(i64 %3, !10904, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10637)
    #dbg_value(i64 %i.bq, !10905, !DIExpression(), !10637)
    #dbg_value(i64 %.sroa.023.1104, !10906, !DIExpression(), !10637)
    #dbg_value(ptr %5, !10907, !DIExpression(), !10637)
    #dbg_value(i64 0, !10919, !DIExpression(), !10653)
    #dbg_value(i64 %i.bt, !10908, !DIExpression(), !10654)
    #dbg_value(i64 %i.bt, !10934, !DIExpression(), !10657)
    #dbg_value(i64 %i.bt, !10936, !DIExpression(), !10660)
  %.not.i = icmp samesign ule i64 %i.bt, %3, !dbg !11048
    #dbg_value(i1 %.not.i, !10909, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10661)
  %i.bw = and i64 %.sroa.023.1104, 1
  %.not28.i = icmp eq i64 %i.bw, 0
  %i.bx = or i64 %i.bq, %.sroa.023.1104, !dbg !11049
  %i.by = and i64 %i.bx, 1, !dbg !11049
  %i.bz = icmp eq i64 %i.by, 0, !dbg !11049
  %or.cond32.i = and i1 %.not.i, %i.bz, !dbg !11049
  br i1 %or.cond32.i, label %bb.t, label %bb.s, !dbg !11049

bb.s:                                             ; preds = %bb.r
  %i.ca = and i64 %i.bq, 1
  %.not27.i = icmp eq i64 %i.ca, 0
  br i1 %.not27.i, label %bb.v, label %bb.u, !dbg !11050

bb.t:                                             ; preds = %bb.r
  %i.cb = shl nuw nsw i64 %i.bt, 1, !dbg !11051
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1e_.exit, !dbg !11052

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %.not28.i, label %bb.w, label %bb.x, !dbg !11053

bb.v:                                             ; preds = %bb.s
    #dbg_value(i64 %i.br, !10921, !DIExpression(), !10653)
    #dbg_value(ptr %i.bv, !10920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10653)
    #dbg_value(i64 %i.bt, !10920, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10653)
    #dbg_value(ptr %i.bv, !10938, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10665)
    #dbg_value(i64 %i.br, !10938, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10665)
    #dbg_value(ptr %2, !10939, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10665)
    #dbg_value(i64 %3, !10939, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10665)
    #dbg_value(ptr %5, !10940, !DIExpression(), !10665)
    #dbg_value(i64 %i.br, !10943, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !10669)
    #dbg_value(i64 %i.br, !10946, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !10673)
  %i.cc = or i64 %i.br, 1, !dbg !11054
    #dbg_value(i64 %i.cc, !10943, !DIExpression(), !10669)
    #dbg_value(i64 %i.cc, !10946, !DIExpression(), !10673)
    #dbg_value(i64 %i.cc, !10947, !DIExpression(), !10674)
    #dbg_value(i64 %i.cc, !10949, !DIExpression(), !10677)
    #dbg_value(i64 %i.cc, !10951, !DIExpression(), !10680)
  %i.cd = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true), !dbg !11055
  %i.ce = trunc nuw nsw i64 %i.cd to i32, !dbg !11055
    #dbg_value(i32 %i.ce, !10944, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !10681)
  %i.cf = shl nuw nsw i32 %i.ce, 1, !dbg !11056
  %i.cg = xor i32 %i.cf, 126, !dbg !11056
    #dbg_value(i32 %i.cg, !10941, !DIExpression(), !10682)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1b_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCINvB1b_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 576460752303423488) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !11057, !inline_history !10683
  br label %bb.u, !dbg !11058

bb.w:                                             ; preds = %bb.u
    #dbg_value(i64 %i.br, !10912, !DIExpression(), !10640)
    #dbg_value(i64 %i.br, !10915, !DIExpression(), !10644)
    #dbg_value(i64 %i.br, !10922, !DIExpression(), !10685)
    #dbg_value(i64 %i.bs, !10916, !DIExpression(), !10686)
    #dbg_value(i64 %i.bs, !10921, !DIExpression(), !10685)
    #dbg_value(ptr %i.bv, !10920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10685)
    #dbg_value(i64 %i.bt, !10920, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10685)
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.br, !dbg !11059
    #dbg_value(ptr %i.ch, !10938, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10688)
    #dbg_value(i64 %i.bs, !10938, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10688)
    #dbg_value(ptr %2, !10939, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10688)
    #dbg_value(i64 %3, !10939, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10688)
    #dbg_value(ptr %5, !10940, !DIExpression(), !10688)
    #dbg_value(i64 %i.bs, !10943, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !10690)
    #dbg_value(i64 %i.bs, !10946, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !10692)
  %i.ci = or i64 %i.bs, 1, !dbg !11060
    #dbg_value(i64 %i.ci, !10943, !DIExpression(), !10690)
    #dbg_value(i64 %i.ci, !10946, !DIExpression(), !10692)
    #dbg_value(i64 %i.ci, !10947, !DIExpression(), !10693)
    #dbg_value(i64 %i.ci, !10949, !DIExpression(), !10695)
    #dbg_value(i64 %i.ci, !10951, !DIExpression(), !10697)
  %i.cj = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true), !dbg !11061
  %i.ck = trunc nuw nsw i64 %i.cj to i32, !dbg !11061
    #dbg_value(i32 %i.ck, !10944, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !10698)
  %i.cl = shl nuw nsw i32 %i.ck, 1, !dbg !11062
  %i.cm = xor i32 %i.cl, 126, !dbg !11062
    #dbg_value(i32 %i.cm, !10941, !DIExpression(), !10699)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1b_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCINvB1b_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.ch, i64 noundef range(i64 0, 576460752303423488) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !11063, !inline_history !10683
  br label %bb.x, !dbg !11064

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB13_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyBY_NCINvB13_10format_mapNtNtNtBa_2io4util4SinkE0E0EB15_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 576460752303423488) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.br, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !11065
  %i.cn = shl nuw nsw i64 %i.bt, 1, !dbg !11066
  %i.co = or disjoint i64 %i.cn, 1, !dbg !11066
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1e_.exit, !dbg !11052

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1e_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.co, %bb.x ], [ %i.cb, %bb.t ], !dbg !11067 ; 2 uses
    #dbg_value(i64 %i.bk, !10723, !DIExpression(), !10782)
    #dbg_value(i64 %.sroa.0.0.i, !10729, !DIExpression(), !10800)
  %i.cp = icmp ugt i64 %i.bk, 1, !dbg !10973
  br i1 %i.cp, label %.lr.ph106, label %._crit_edge, !dbg !10973

bb.y:                                             ; preds = %._crit_edge
  %i.cq = add nsw i64 %.sroa.02.1.lcssa, 1, !dbg !11068
    #dbg_value(i64 %i.cq, !10723, !DIExpression(), !10782)
    #dbg_value(i64 %.sroa.018.0, !10863, !DIExpression(), !10954)
  %i.cr = lshr i64 %.sroa.018.0, 1, !dbg !11069
  %i.cs = add nuw nsw i64 %i.cr, %.sroa.09.0, !dbg !11070
    #dbg_value(i64 %i.cs, !10728, !DIExpression(), !10799)
    #dbg_value(i64 %.sroa.018.0, !10729, !DIExpression(), !10800)
  br label %bb.f, !dbg !10971

bb.z:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.023.1.lcssa, !10955, !DIExpression(), !10958)
  %i.ct = and i64 %.sroa.023.1.lcssa, 1, !dbg !11071
  %.not79 = icmp eq i64 %i.ct, 0, !dbg !11071
  br i1 %.not79, label %bb.aa, label %bb.ab, !dbg !11072

bb.aa:                                            ; preds = %bb.z
    #dbg_value(ptr %0, !10938, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10702)
    #dbg_value(i64 %1, !10938, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10702)
    #dbg_value(ptr %2, !10939, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10702)
    #dbg_value(i64 %3, !10939, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10702)
    #dbg_value(ptr %5, !10940, !DIExpression(), !10702)
    #dbg_value(i64 %1, !10943, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !10704)
    #dbg_value(i64 %1, !10946, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !10706)
  %i.cu = or i64 %1, 1, !dbg !11073
    #dbg_value(i64 %i.cu, !10943, !DIExpression(), !10704)
    #dbg_value(i64 %i.cu, !10946, !DIExpression(), !10706)
    #dbg_value(i64 %i.cu, !10947, !DIExpression(), !10707)
    #dbg_value(i64 %i.cu, !10949, !DIExpression(), !10709)
    #dbg_value(i64 %i.cu, !10951, !DIExpression(), !10711)
  %i.cv = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cu, i1 true), !dbg !11074
  %i.cw = trunc nuw nsw i64 %i.cv to i32, !dbg !11074
    #dbg_value(i32 %i.cw, !10944, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !10712)
  %i.cx = shl nuw nsw i32 %i.cw, 1, !dbg !11075
  %i.cy = xor i32 %i.cx, 126, !dbg !11075
    #dbg_value(i32 %i.cy, !10941, !DIExpression(), !10713)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1b_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCINvB1b_10format_mapNtNtNtBa_2io4util4SinkE0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !11076, !inline_history !10683
  br label %bb.ab, !dbg !11077

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11079
  br label %bb.ac, !dbg !11080

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !11080
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB12_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_11sort_by_keyBX_NCINvB12_10format_mapQINtNtB1X_3vec3VechEE0E0EB14_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !11096 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
    #dbg_value(ptr %0, !11313, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11334)
    #dbg_value(ptr %0, !11335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11339)
    #dbg_value(ptr %0, !11340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11345)
    #dbg_value(ptr %0, !11346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11350)
    #dbg_value(i64 %1, !11313, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11334)
    #dbg_value(i64 %1, !11335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11339)
    #dbg_value(i64 %1, !11340, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11345)
    #dbg_value(i64 %1, !11346, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11350)
    #dbg_value(ptr %2, !11314, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11334)
    #dbg_value(i64 %3, !11314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11334)
    #dbg_value(i1 %4, !11315, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11334)
    #dbg_value(ptr %5, !11316, !DIExpression(), !11334)
    #dbg_declare(ptr %i.b, !11321, !DIExpression(), !11351)
    #dbg_declare(ptr %i.a, !11323, !DIExpression(), !11352)
    #dbg_value(i64 4611686018427387904, !11353, !DIExpression(), !11360)
    #dbg_value(i64 64, !11363, !DIExpression(), !11367)
    #dbg_value(i64 64, !11368, !DIExpression(), !11372)
    #dbg_value(i64 %1, !11317, !DIExpression(), !11373)
    #dbg_value(i64 %1, !11361, !DIExpression(), !11374)
  %i.c = icmp samesign ult i64 %1, 2, !dbg !11556
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !11556

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %1, !11354, !DIExpression(), !11360)
  %i.d = udiv i64 4611686018427387904, %1, !dbg !11557
    #dbg_value(i64 %i.d, !11355, !DIExpression(), !11375)
  %i.e = urem i64 4611686018427387904, %1, !dbg !11558
    #dbg_value(i64 %i.e, !11356, !DIExpression(), !11376)
  %.not = icmp ne i64 %i.e, 0, !dbg !11559
  %i.f = zext i1 %.not to i64, !dbg !11559
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !11559 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !11318, !DIExpression(), !11377)
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !11560
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !11560

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !11561
    #dbg_value(i64 %i.h, !11319, !DIExpression(), !11378)
  br label %bb.e, !dbg !11561

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !11562
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !11563
    #dbg_value(i64 %i.j, !11364, !DIExpression(), !11367)
    #dbg_value(i64 %i.j, !11369, !DIExpression(), !11372)
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !11564
    #dbg_value(i64 %i.k, !11319, !DIExpression(), !11378)
  br label %bb.e, !dbg !11565

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ], !dbg !11377 ; 5 uses
    #dbg_value(i64 %.sroa.01.0, !11319, !DIExpression(), !11378)
    #dbg_value(i64 0, !11320, !DIExpression(), !11379)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11566
    #dbg_value(ptr %i.b, !11322, !DIExpression(), !11380)
    #dbg_value(ptr %i.b, !11381, !DIExpression(), !11385)
    #dbg_value(ptr %i.b, !11381, !DIExpression(), !11387)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11567
    #dbg_value(ptr %i.a, !11324, !DIExpression(), !11388)
    #dbg_value(ptr %i.a, !11389, !DIExpression(), !11393)
    #dbg_value(ptr %i.a, !11389, !DIExpression(), !11395)
    #dbg_value(i64 0, !11325, !DIExpression(), !11396)
    #dbg_value(i64 1, !11326, !DIExpression(), !11397)
  %.not25.i128 = icmp ugt i64 %.sroa.01.0, 2
  %.not25.i133 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !11568

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !11396 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cs, %bb.y ], !dbg !11388 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.y ], !dbg !11378 ; 3 uses
    #dbg_value(i64 %.sroa.02.0, !11320, !DIExpression(), !11379)
    #dbg_value(i64 %.sroa.09.0, !11325, !DIExpression(), !11396)
    #dbg_value(i64 %.sroa.023.0, !11326, !DIExpression(), !11397)
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1, !dbg !11569 ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g, !dbg !11569

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapQINtNtB24_3vec3VechEE0E0EB1b_.exit
  %.sroa.021.0 = phi i8 [ %i.bj, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapQINtNtB24_3vec3VechEE0E0EB1b_.exit ], [ 0, %bb.f ], !dbg !11398 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i81, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapQINtNtB24_3vec3VechEE0E0EB1b_.exit ], [ 1, %bb.f ], !dbg !11398 ; 2 uses
    #dbg_value(i64 %.sroa.018.0, !11327, !DIExpression(), !11398)
    #dbg_value(i8 %.sroa.021.0, !11328, !DIExpression(), !11398)
    #dbg_value(i64 %.sroa.02.0, !11320, !DIExpression(), !11379)
    #dbg_value(i64 %.sroa.023.0, !11326, !DIExpression(), !11397)
  %i.m = icmp ugt i64 %.sroa.02.0, 1, !dbg !11570
  br i1 %i.m, label %.lr.ph106, label %._crit_edge, !dbg !11570

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.09.0, !11336, !DIExpression(), !11339)
    #dbg_value(i64 %.sroa.09.0, !11341, !DIExpression(), !11345)
    #dbg_value(i64 %.sroa.09.0, !11399, !DIExpression(), !11404)
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !11571 ; 11 uses
    #dbg_value(i64 %i.n, !11342, !DIExpression(), !11405)
    #dbg_value(i64 %i.n, !11401, !DIExpression(), !11404)
    #dbg_value(ptr %0, !11400, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11404)
    #dbg_value(i64 %1, !11400, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11404)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0, !dbg !11572 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11406), !dbg !11573
    #dbg_value(ptr %i.o, !11407, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11117)
    #dbg_value(i64 %i.n, !11407, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11117)
    #dbg_value(ptr %2, !11410, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11117)
    #dbg_value(i64 %3, !11410, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11117)
    #dbg_value(i64 %.sroa.01.0, !11411, !DIExpression(), !11117)
    #dbg_value(i64 %.sroa.01.0, !11419, !DIExpression(), !11120)
    #dbg_value(i64 %.sroa.01.0, !11422, !DIExpression(), !11123)
    #dbg_value(i1 %4, !11412, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11117)
    #dbg_value(ptr %5, !11413, !DIExpression(), !11117)
    #dbg_value(i64 %i.n, !11414, !DIExpression(), !11124)
    #dbg_value(i64 %i.n, !11420, !DIExpression(), !11126)
    #dbg_value(i64 %i.n, !11423, !DIExpression(), !11128)
    #dbg_value(i64 %i.n, !11420, !DIExpression(), !11120)
    #dbg_value(i64 %i.n, !11423, !DIExpression(), !11123)
  %.not.i80 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !11574
  br i1 %.not.i80, label %bb.i, label %bb.j, !dbg !11574

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread131, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB18_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCINvB18_10format_mapQINtNtB23_3vec3VechEE0E0EB1a_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !11575

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.o, !11426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11134)
    #dbg_value(ptr %i.o, !11434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11137)
    #dbg_value(ptr %i.o, !11438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11140)
    #dbg_value(ptr %i.o, !11434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11142)
    #dbg_value(ptr %i.o, !11438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11144)
    #dbg_value(ptr %i.o, !11434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11146)
    #dbg_value(ptr %i.o, !11438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11148)
    #dbg_value(ptr %i.o, !11434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11150)
    #dbg_value(ptr %i.o, !11438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11152)
    #dbg_value(ptr %i.o, !11434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11154)
    #dbg_value(ptr %i.o, !11438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11156)
    #dbg_value(ptr %i.o, !11434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11158)
    #dbg_value(ptr %i.o, !11438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11160)
    #dbg_value(i64 %i.n, !11426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11134)
    #dbg_value(i64 %i.n, !11434, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11137)
    #dbg_value(i64 %i.n, !11438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11140)
    #dbg_value(i64 %i.n, !11434, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11142)
    #dbg_value(i64 %i.n, !11438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11144)
    #dbg_value(i64 %i.n, !11434, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11146)
    #dbg_value(i64 %i.n, !11438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11148)
    #dbg_value(i64 %i.n, !11434, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11150)
    #dbg_value(i64 %i.n, !11438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11152)
    #dbg_value(i64 %i.n, !11434, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11154)
    #dbg_value(i64 %i.n, !11438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11156)
    #dbg_value(i64 %i.n, !11434, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11158)
    #dbg_value(i64 %i.n, !11438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11160)
    #dbg_value(ptr %5, !11429, !DIExpression(), !11134)
    #dbg_value(i64 1, !11435, !DIExpression(), !11137)
    #dbg_value(i64 1, !11439, !DIExpression(), !11140)
    #dbg_value(i64 0, !11435, !DIExpression(), !11142)
end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB12_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_11sort_by_keyBX_NCINvB12_10format_mapQINtNtB1X_3vec3VechEE0E0EB14_:bb.a
    #dbg_value(!DIArgList(ptr %i.o, i64 %.sroa.0.026.i.i), !2221, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_or, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !11208)
  %i.av = xor i64 %.sroa.0.026.i.i, -2, !dbg !11610
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.026.i.i, !dbg !11611
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !11611 ; 2 uses
    #dbg_value(ptr %i.ax, !2221, !DIExpression(), !11208)
  %i.ay = getelementptr [16 x i8], ptr %i.ap, i64 %i.av, !dbg !11612 ; 2 uses
    #dbg_value(ptr %i.ay, !2224, !DIExpression(), !11208)
  %i.az = load <2 x ptr>, ptr %i.ax, align 8, !dbg !11613, !alias.scope !11453, !noalias !11454
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !dbg !11613, !alias.scope !11455, !noalias !11447
  store <2 x ptr> %i.az, ptr %i.ay, align 8, !dbg !11613, !alias.scope !11456, !noalias !11457
  %i.ba = add nuw nsw i64 %.sroa.0.026.i.i, 2, !dbg !11619 ; 2 uses
    #dbg_value(i64 %i.ba, !2209, !DIExpression(), !11206)
  %niter.next.1 = add i64 %niter, 2, !dbg !11609  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !11609
  br i1 %niter.ncmp.1, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit.loopexit.unr-lcssa, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE12split_at_mutBC_.exit21.i.i, !dbg !11609

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB19_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCINvB19_10format_mapQINtNtB24_3vec3VechEE0E0EB1b_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit
  %.sroa.0.0.i81 = phi i64 [ %i.am, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBA_5ValueE7reverseBC_.exit ], [ %i.ag, %bb.p ], [ %i.ad, %bb.o ], !dbg !11620 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i81, !11327, !DIExpression(), !11398)
    #dbg_value(i64 %.sroa.023.0, !11460, !DIExpression(), !11463)
  %i.bb = lshr i64 %.sroa.023.0, 1, !dbg !11621
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 0, i64 %i.bb), !11464, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !11472)
    #dbg_value(i64 %.sroa.09.0, !11465, !DIExpression(), !11472)
    #dbg_value(i64 %.sroa.0.0.i81, !11460, !DIExpression(), !11474)
  %i.bc = lshr i64 %.sroa.0.0.i81, 1, !dbg !11622
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %i.bc), !11466, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !11472)
    #dbg_value(i64 %.sroa.0.0, !11467, !DIExpression(), !11472)
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !11623 ; 2 uses
  %i.bd = sub nsw i64 %factor, %i.bb, !dbg !11623
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %.sroa.09.0, i64 0, i64 %i.bb), !11468, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !11475)
  %i.be = add nuw nsw i64 %i.bc, %factor, !dbg !11624
    #dbg_value(i64 %i.be, !11469, !DIExpression(), !11476)
  %i.bf = mul i64 %i.bd, %.sroa.0.0, !dbg !11625
  %i.bg = mul i64 %i.be, %.sroa.0.0, !dbg !11626
  %i.bh = xor i64 %i.bg, %i.bf, !dbg !11627
    #dbg_value(i64 %i.bh, !11477, !DIExpression(), !11480)
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false), !dbg !11628
  %i.bj = trunc nuw nsw i64 %i.bi to i8, !dbg !11627
    #dbg_value(i8 %i.bj, !11328, !DIExpression(), !11398)
  br label %bb.g, !dbg !11629

.lr.ph106:                                        ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapQINtNtB27_3vec3VechEE0E0EB1e_.exit
  %.sroa.02.1105 = phi i64 [ %i.bk, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapQINtNtB27_3vec3VechEE0E0EB1e_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.1104 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapQINtNtB27_3vec3VechEE0E0EB1e_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
    #dbg_value(i64 %.sroa.02.1105, !11320, !DIExpression(), !11379)
    #dbg_value(i64 %.sroa.023.1104, !11326, !DIExpression(), !11397)
  %i.bk = add i64 %.sroa.02.1105, -1, !dbg !11630 ; 4 uses
    #dbg_value(i64 %i.bk, !11390, !DIExpression(), !11393)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk, !dbg !11631
  %i.bm = load i8, ptr %i.bl, align 1, !dbg !11632, !noundef !558
  %.not77 = icmp ult i8 %i.bm, %.sroa.021.0, !dbg !11632
  br i1 %.not77, label %._crit_edge, label %bb.r, !dbg !11632

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapQINtNtB27_3vec3VechEE0E0EB1e_.exit, %.lr.ph106, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1104, %.lr.ph106 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapQINtNtB27_3vec3VechEE0E0EB1e_.exit ], !dbg !11396 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1105, %.lr.ph106 ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapQINtNtB27_3vec3VechEE0E0EB1e_.exit ], !dbg !11378 ; 3 uses
    #dbg_value(i64 %.sroa.02.1.lcssa, !11382, !DIExpression(), !11387)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !11633
  store i64 %.sroa.023.1.lcssa, ptr %i.bn, align 8, !dbg !11634
    #dbg_value(i64 %.sroa.02.1.lcssa, !11390, !DIExpression(), !11395)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !11635
  store i8 %.sroa.021.0, ptr %i.bo, align 1, !dbg !11636
    #dbg_value(i64 %.sroa.02.1.lcssa, !11320, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !11379)
  br i1 %i.l, label %bb.y, label %bb.z, !dbg !11637

bb.r:                                             ; preds = %.lr.ph106
    #dbg_value(i64 %i.bk, !11382, !DIExpression(), !11385)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bk, !dbg !11638
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !11639, !noundef !558 ; 3 uses
    #dbg_value(i64 %i.bq, !11329, !DIExpression(), !11481)
    #dbg_value(i64 %i.bq, !11460, !DIExpression(), !11483)
  %i.br = lshr i64 %i.bq, 1, !dbg !11640          ; 5 uses
    #dbg_value(i64 %.sroa.023.1104, !11460, !DIExpression(), !11485)
  %i.bs = lshr i64 %.sroa.023.1104, 1, !dbg !11641 ; 3 uses
  %i.bt = add nuw i64 %i.br, %i.bs, !dbg !11642   ; 5 uses
    #dbg_value(i64 %i.bt, !11330, !DIExpression(), !11486)
  %i.bu = sub i64 %.sroa.09.0, %i.bt, !dbg !11643
    #dbg_value(i64 %i.bu, !11331, !DIExpression(), !11487)
    #dbg_value(i64 %i.bu, !11347, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11350)
    #dbg_value(i64 %i.bu, !11488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11493)
    #dbg_value(i64 %i.bu, !11399, !DIExpression(), !11495)
    #dbg_value(i64 %.sroa.09.0, !11347, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11350)
    #dbg_value(i64 %.sroa.09.0, !11488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11493)
    #dbg_value(ptr %0, !11489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11493)
    #dbg_value(ptr %0, !11400, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11495)
    #dbg_value(i64 %1, !11489, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11493)
    #dbg_value(i64 %1, !11400, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11495)
    #dbg_value(i64 %i.bt, !11490, !DIExpression(), !11496)
    #dbg_value(i64 %i.bt, !11401, !DIExpression(), !11495)
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bu, !dbg !11644 ; 3 uses
    #dbg_value(ptr %i.bv, !11332, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11497)
    #dbg_value(i64 %i.bt, !11332, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11497)
    #dbg_value(ptr %i.bv, !11498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11234)
    #dbg_value(ptr %i.bv, !11508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11237)
    #dbg_value(ptr %i.bv, !11511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11241)
    #dbg_value(i64 %i.bt, !11498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11234)
    #dbg_value(i64 %i.bt, !11508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11237)
    #dbg_value(i64 %i.bt, !11511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11241)
    #dbg_value(ptr %2, !11501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11234)
    #dbg_value(i64 %3, !11501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11234)
    #dbg_value(i64 %i.bq, !11502, !DIExpression(), !11234)
    #dbg_value(i64 %.sroa.023.1104, !11503, !DIExpression(), !11234)
    #dbg_value(ptr %5, !11504, !DIExpression(), !11234)
    #dbg_value(i64 0, !11516, !DIExpression(), !11250)
    #dbg_value(i64 %i.bt, !11505, !DIExpression(), !11251)
    #dbg_value(i64 %i.bt, !11531, !DIExpression(), !11254)
    #dbg_value(i64 %i.bt, !11533, !DIExpression(), !11257)
  %.not.i = icmp samesign ule i64 %i.bt, %3, !dbg !11645
    #dbg_value(i1 %.not.i, !11506, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11258)
  %i.bw = and i64 %.sroa.023.1104, 1
  %.not28.i = icmp eq i64 %i.bw, 0
  %i.bx = or i64 %i.bq, %.sroa.023.1104, !dbg !11646
  %i.by = and i64 %i.bx, 1, !dbg !11646
  %i.bz = icmp eq i64 %i.by, 0, !dbg !11646
  %or.cond32.i = and i1 %.not.i, %i.bz, !dbg !11646
  br i1 %or.cond32.i, label %bb.t, label %bb.s, !dbg !11646

bb.s:                                             ; preds = %bb.r
  %i.ca = and i64 %i.bq, 1
  %.not27.i = icmp eq i64 %i.ca, 0
  br i1 %.not27.i, label %bb.v, label %bb.u, !dbg !11647

bb.t:                                             ; preds = %bb.r
  %i.cb = shl nuw nsw i64 %i.bt, 1, !dbg !11648
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapQINtNtB27_3vec3VechEE0E0EB1e_.exit, !dbg !11649

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %.not28.i, label %bb.w, label %bb.x, !dbg !11650

bb.v:                                             ; preds = %bb.s
    #dbg_value(i64 %i.br, !11518, !DIExpression(), !11250)
    #dbg_value(ptr %i.bv, !11517, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11250)
    #dbg_value(i64 %i.bt, !11517, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11250)
    #dbg_value(ptr %i.bv, !11535, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11262)
    #dbg_value(i64 %i.br, !11535, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11262)
    #dbg_value(ptr %2, !11536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11262)
    #dbg_value(i64 %3, !11536, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11262)
    #dbg_value(ptr %5, !11537, !DIExpression(), !11262)
    #dbg_value(i64 %i.br, !11540, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !11266)
    #dbg_value(i64 %i.br, !11543, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !11270)
  %i.cc = or i64 %i.br, 1, !dbg !11651
    #dbg_value(i64 %i.cc, !11540, !DIExpression(), !11266)
    #dbg_value(i64 %i.cc, !11543, !DIExpression(), !11270)
    #dbg_value(i64 %i.cc, !11544, !DIExpression(), !11271)
    #dbg_value(i64 %i.cc, !11546, !DIExpression(), !11274)
    #dbg_value(i64 %i.cc, !11548, !DIExpression(), !11277)
  %i.cd = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true), !dbg !11652
  %i.ce = trunc nuw nsw i64 %i.cd to i32, !dbg !11652
    #dbg_value(i32 %i.ce, !11541, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !11278)
  %i.cf = shl nuw nsw i32 %i.ce, 1, !dbg !11653
  %i.cg = xor i32 %i.cf, 126, !dbg !11653
    #dbg_value(i32 %i.cg, !11538, !DIExpression(), !11279)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1b_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCINvB1b_10format_mapQINtNtB26_3vec3VechEE0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 576460752303423488) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !11654, !inline_history !11280
  br label %bb.u, !dbg !11655

bb.w:                                             ; preds = %bb.u
    #dbg_value(i64 %i.br, !11509, !DIExpression(), !11237)
    #dbg_value(i64 %i.br, !11512, !DIExpression(), !11241)
    #dbg_value(i64 %i.br, !11519, !DIExpression(), !11282)
    #dbg_value(i64 %i.bs, !11513, !DIExpression(), !11283)
    #dbg_value(i64 %i.bs, !11518, !DIExpression(), !11282)
    #dbg_value(ptr %i.bv, !11517, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11282)
    #dbg_value(i64 %i.bt, !11517, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11282)
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.br, !dbg !11656
    #dbg_value(ptr %i.ch, !11535, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11285)
    #dbg_value(i64 %i.bs, !11535, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11285)
    #dbg_value(ptr %2, !11536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11285)
    #dbg_value(i64 %3, !11536, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11285)
    #dbg_value(ptr %5, !11537, !DIExpression(), !11285)
    #dbg_value(i64 %i.bs, !11540, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !11287)
    #dbg_value(i64 %i.bs, !11543, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !11289)
  %i.ci = or i64 %i.bs, 1, !dbg !11657
    #dbg_value(i64 %i.ci, !11540, !DIExpression(), !11287)
    #dbg_value(i64 %i.ci, !11543, !DIExpression(), !11289)
    #dbg_value(i64 %i.ci, !11544, !DIExpression(), !11290)
    #dbg_value(i64 %i.ci, !11546, !DIExpression(), !11292)
    #dbg_value(i64 %i.ci, !11548, !DIExpression(), !11294)
  %i.cj = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true), !dbg !11658
  %i.ck = trunc nuw nsw i64 %i.cj to i32, !dbg !11658
    #dbg_value(i32 %i.ck, !11541, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !11295)
  %i.cl = shl nuw nsw i32 %i.ck, 1, !dbg !11659
  %i.cm = xor i32 %i.cl, 126, !dbg !11659
    #dbg_value(i32 %i.cm, !11538, !DIExpression(), !11296)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1b_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCINvB1b_10format_mapQINtNtB26_3vec3VechEE0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.ch, i64 noundef range(i64 0, 576460752303423488) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !11660, !inline_history !11280
  br label %bb.x, !dbg !11661

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB13_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyBY_NCINvB13_10format_mapQINtNtB1Y_3vec3VechEE0E0EB15_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 576460752303423488) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.br, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !11662
  %i.cn = shl nuw nsw i64 %i.bt, 1, !dbg !11663
  %i.co = or disjoint i64 %i.cn, 1, !dbg !11663
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapQINtNtB27_3vec3VechEE0E0EB1e_.exit, !dbg !11649

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1c_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCINvB1c_10format_mapQINtNtB27_3vec3VechEE0E0EB1e_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.co, %bb.x ], [ %i.cb, %bb.t ], !dbg !11664 ; 2 uses
    #dbg_value(i64 %i.bk, !11320, !DIExpression(), !11379)
    #dbg_value(i64 %.sroa.0.0.i, !11326, !DIExpression(), !11397)
  %i.cp = icmp ugt i64 %i.bk, 1, !dbg !11570
  br i1 %i.cp, label %.lr.ph106, label %._crit_edge, !dbg !11570

bb.y:                                             ; preds = %._crit_edge
  %i.cq = add nsw i64 %.sroa.02.1.lcssa, 1, !dbg !11665
    #dbg_value(i64 %i.cq, !11320, !DIExpression(), !11379)
    #dbg_value(i64 %.sroa.018.0, !11460, !DIExpression(), !11551)
  %i.cr = lshr i64 %.sroa.018.0, 1, !dbg !11666
  %i.cs = add nuw nsw i64 %i.cr, %.sroa.09.0, !dbg !11667
    #dbg_value(i64 %i.cs, !11325, !DIExpression(), !11396)
    #dbg_value(i64 %.sroa.018.0, !11326, !DIExpression(), !11397)
  br label %bb.f, !dbg !11568

bb.z:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.023.1.lcssa, !11552, !DIExpression(), !11555)
  %i.ct = and i64 %.sroa.023.1.lcssa, 1, !dbg !11668
  %.not79 = icmp eq i64 %i.ct, 0, !dbg !11668
  br i1 %.not79, label %bb.aa, label %bb.ab, !dbg !11669

bb.aa:                                            ; preds = %bb.z
    #dbg_value(ptr %0, !11535, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11299)
    #dbg_value(i64 %1, !11535, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11299)
    #dbg_value(ptr %2, !11536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11299)
    #dbg_value(i64 %3, !11536, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11299)
    #dbg_value(ptr %5, !11537, !DIExpression(), !11299)
    #dbg_value(i64 %1, !11540, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !11301)
    #dbg_value(i64 %1, !11543, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !11303)
  %i.cu = or i64 %1, 1, !dbg !11670
    #dbg_value(i64 %i.cu, !11540, !DIExpression(), !11301)
    #dbg_value(i64 %i.cu, !11543, !DIExpression(), !11303)
    #dbg_value(i64 %i.cu, !11544, !DIExpression(), !11304)
    #dbg_value(i64 %i.cu, !11546, !DIExpression(), !11306)
    #dbg_value(i64 %i.cu, !11548, !DIExpression(), !11308)
  %i.cv = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cu, i1 true), !dbg !11671
  %i.cw = trunc nuw nsw i64 %i.cv to i32, !dbg !11671
    #dbg_value(i32 %i.cw, !11541, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !11309)
  %i.cx = shl nuw nsw i32 %i.cw, 1, !dbg !11672
  %i.cy = xor i32 %i.cx, 126, !dbg !11672
    #dbg_value(i32 %i.cy, !11538, !DIExpression(), !11310)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB1b_5ValueENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCINvB1b_10format_mapQINtNtB26_3vec3VechEE0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !11673, !inline_history !11280
  br label %bb.ab, !dbg !11674

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11676
  br label %bb.ac, !dbg !11677

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !11677
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB14_5sliceSBW_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2c_4Tera18finalize_templatess1_0E0EB2e_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !11693 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
    #dbg_value(ptr %0, !11998, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12019)
    #dbg_value(ptr %0, !12020, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12024)
    #dbg_value(ptr %0, !12025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12030)
    #dbg_value(ptr %0, !12031, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12038)
    #dbg_value(i64 %1, !11998, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12019)
    #dbg_value(i64 %1, !12020, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12024)
    #dbg_value(i64 %1, !12025, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12030)
    #dbg_value(i64 %1, !12031, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12038)
    #dbg_value(ptr %2, !11999, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12019)
    #dbg_value(i64 %3, !11999, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12019)
    #dbg_value(i1 %4, !12000, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12019)
    #dbg_value(ptr %5, !12001, !DIExpression(), !12019)
    #dbg_declare(ptr %i.b, !12006, !DIExpression(), !12039)
    #dbg_declare(ptr %i.a, !12008, !DIExpression(), !12040)
    #dbg_value(i64 4611686018427387904, !12041, !DIExpression(), !12048)
    #dbg_value(i64 64, !12051, !DIExpression(), !12055)
    #dbg_value(i64 64, !12056, !DIExpression(), !12060)
    #dbg_value(i64 %1, !12002, !DIExpression(), !12061)
    #dbg_value(i64 %1, !12049, !DIExpression(), !12062)
  %i.c = icmp samesign ult i64 %1, 2, !dbg !12328
  br i1 %i.c, label %bb.ac, label %bb.b, !dbg !12328

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %1, !12042, !DIExpression(), !12048)
  %i.d = udiv i64 4611686018427387904, %1, !dbg !12329
    #dbg_value(i64 %i.d, !12043, !DIExpression(), !12063)
  %i.e = urem i64 4611686018427387904, %1, !dbg !12330
    #dbg_value(i64 %i.e, !12044, !DIExpression(), !12064)
  %.not = icmp ne i64 %i.e, 0, !dbg !12331
  %i.f = zext i1 %.not to i64, !dbg !12331
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !12331 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !12003, !DIExpression(), !12065)
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !12332
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !12332

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !12333
    #dbg_value(i64 %i.h, !12004, !DIExpression(), !12066)
  br label %bb.e, !dbg !12333

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !12334
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !12335
    #dbg_value(i64 %i.j, !12052, !DIExpression(), !12055)
    #dbg_value(i64 %i.j, !12057, !DIExpression(), !12060)
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !12336
    #dbg_value(i64 %i.k, !12004, !DIExpression(), !12066)
  br label %bb.e, !dbg !12337

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ], !dbg !12065 ; 5 uses
    #dbg_value(i64 %.sroa.01.0, !12004, !DIExpression(), !12066)
    #dbg_value(i64 0, !12005, !DIExpression(), !12067)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12338
    #dbg_value(ptr %i.b, !12007, !DIExpression(), !12068)
    #dbg_value(ptr %i.b, !12069, !DIExpression(), !12073)
    #dbg_value(ptr %i.b, !12069, !DIExpression(), !12075)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12339
    #dbg_value(ptr %i.a, !12009, !DIExpression(), !12076)
    #dbg_value(ptr %i.a, !12077, !DIExpression(), !12081)
    #dbg_value(ptr %i.a, !12077, !DIExpression(), !12083)
    #dbg_value(i64 0, !12010, !DIExpression(), !12084)
    #dbg_value(i64 1, !12011, !DIExpression(), !12085)
  %.not25.i136 = icmp ugt i64 %.sroa.01.0, 2
  %.not25.i141 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !12340

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ], !dbg !12084 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ea, %bb.y ], !dbg !12076 ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dy, %bb.y ], !dbg !12066 ; 3 uses
    #dbg_value(i64 %.sroa.02.0, !12005, !DIExpression(), !12067)
    #dbg_value(i64 %.sroa.09.0, !12010, !DIExpression(), !12084)
    #dbg_value(i64 %.sroa.023.0, !12011, !DIExpression(), !12085)
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1, !dbg !12341 ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g, !dbg !12341

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2k_4Tera18finalize_templatess1_0E0EB2m_.exit
  %.sroa.021.0 = phi i8 [ %i.cr, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2k_4Tera18finalize_templatess1_0E0EB2m_.exit ], [ 0, %bb.f ], !dbg !12086 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i81, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2k_4Tera18finalize_templatess1_0E0EB2m_.exit ], [ 1, %bb.f ], !dbg !12086 ; 2 uses
    #dbg_value(i64 %.sroa.018.0, !12012, !DIExpression(), !12086)
    #dbg_value(i8 %.sroa.021.0, !12013, !DIExpression(), !12086)
    #dbg_value(i64 %.sroa.02.0, !12005, !DIExpression(), !12067)
    #dbg_value(i64 %.sroa.023.0, !12011, !DIExpression(), !12085)
  %i.m = icmp ugt i64 %.sroa.02.0, 1, !dbg !12342
  br i1 %i.m, label %.lr.ph106, label %._crit_edge, !dbg !12342

bb.h:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.09.0, !12021, !DIExpression(), !12024)
    #dbg_value(i64 %.sroa.09.0, !12026, !DIExpression(), !12030)
    #dbg_value(i64 %.sroa.09.0, !12087, !DIExpression(), !12092)
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !12343 ; 11 uses
    #dbg_value(i64 %i.n, !12027, !DIExpression(), !12093)
    #dbg_value(i64 %i.n, !12089, !DIExpression(), !12092)
    #dbg_value(ptr %0, !12088, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12092)
    #dbg_value(i64 %1, !12088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12092)
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0, !dbg !12344 ; 11 uses
    #dbg_value(ptr %i.o, !12094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11712)
    #dbg_value(i64 %i.n, !12094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11712)
    #dbg_value(ptr %2, !12097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11712)
    #dbg_value(i64 %3, !12097, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11712)
    #dbg_value(i64 %.sroa.01.0, !12098, !DIExpression(), !11712)
    #dbg_value(i64 %.sroa.01.0, !12106, !DIExpression(), !11715)
    #dbg_value(i64 %.sroa.01.0, !12109, !DIExpression(), !11718)
    #dbg_value(i1 %4, !12099, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11712)
    #dbg_value(ptr %5, !12100, !DIExpression(), !11712)
    #dbg_value(i64 %i.n, !12101, !DIExpression(), !11719)
    #dbg_value(i64 %i.n, !12107, !DIExpression(), !11721)
    #dbg_value(i64 %i.n, !12110, !DIExpression(), !11723)
    #dbg_value(i64 %i.n, !12107, !DIExpression(), !11715)
    #dbg_value(i64 %i.n, !12110, !DIExpression(), !11718)
  %.not.i80 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !12345
  br i1 %.not.i80, label %bb.i, label %bb.j, !dbg !12345

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i.thread139, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1a_5sliceSB12_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2j_4Tera18finalize_templatess1_0E0EB2l_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !12346

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %i.o, !12113, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11729)
    #dbg_value(ptr %i.o, !12121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11732)
    #dbg_value(ptr %i.o, !12128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11736)
    #dbg_value(ptr %i.o, !12121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11738)
    #dbg_value(ptr %i.o, !12128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11740)
    #dbg_value(ptr %i.o, !12121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11742)
    #dbg_value(ptr %i.o, !12128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11744)
    #dbg_value(ptr %i.o, !12121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11746)
    #dbg_value(ptr %i.o, !12128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11748)
    #dbg_value(ptr %i.o, !12121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11750)
    #dbg_value(ptr %i.o, !12128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11752)
    #dbg_value(ptr %i.o, !12121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11754)
    #dbg_value(ptr %i.o, !12128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11756)
    #dbg_value(i64 %i.n, !12113, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11729)
    #dbg_value(i64 %i.n, !12121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11732)
    #dbg_value(i64 %i.n, !12128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11736)
    #dbg_value(i64 %i.n, !12121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11738)
    #dbg_value(i64 %i.n, !12128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11740)
    #dbg_value(i64 %i.n, !12121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11742)
    #dbg_value(i64 %i.n, !12128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11744)
    #dbg_value(i64 %i.n, !12121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11746)
    #dbg_value(i64 %i.n, !12128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11748)
    #dbg_value(i64 %i.n, !12121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11750)
    #dbg_value(i64 %i.n, !12128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11752)
    #dbg_value(i64 %i.n, !12121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11754)
    #dbg_value(i64 %i.n, !12128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11756)
    #dbg_value(ptr %5, !12116, !DIExpression(), !11729)
    #dbg_value(i64 1, !12124, !DIExpression(), !11732)
    #dbg_value(i64 1, !12134, !DIExpression(), !11736)
    #dbg_value(i64 0, !12124, !DIExpression(), !11738)
    #dbg_value(i64 0, !12134, !DIExpression(), !11740)
end_hunk_6
begin_hunk_7_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB14_5sliceSBW_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2c_4Tera18finalize_templatess1_0E0EB2e_:bb.a
    #dbg_value(i64 6, !2060, !DIExpression(), !11907)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cg, i64 noundef 6)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRejNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit.i.i unwind label %bb.q, !dbg !12407, !noalias !12145

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #18, !dbg !12411, !noalias !12145
  unreachable, !dbg !12411

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRejNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ci = add nuw nsw i64 %.sroa.0.027.i.i, 1, !dbg !12412 ; 2 uses
    #dbg_value(i64 %i.ci, !12191, !DIExpression(), !11874)
  %exitcond.not.i.i = icmp eq i64 %i.ci, %i.cc, !dbg !12413
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRejNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCs5yXxDE1DkoT_4tera.exit, label %.lr.ph.i.i, !dbg !12413

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1b_5sliceSB13_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2k_4Tera18finalize_templatess1_0E0EB2m_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRejNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCs5yXxDE1DkoT_4tera.exit
  %.sroa.0.0.i81 = phi i64 [ %i.cb, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRejNtNtCsgCecv3eZDcN_5alloc6string6StringE7reverseCs5yXxDE1DkoT_4tera.exit ], [ %i.bz, %bb.p ], [ %i.bw, %bb.o ], !dbg !12414 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i81, !12012, !DIExpression(), !12086)
    #dbg_value(i64 %.sroa.023.0, !12223, !DIExpression(), !12226)
  %i.cj = lshr i64 %.sroa.023.0, 1, !dbg !12415
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 0, i64 %i.cj), !12227, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !12235)
    #dbg_value(i64 %.sroa.09.0, !12228, !DIExpression(), !12235)
    #dbg_value(i64 %.sroa.0.0.i81, !12223, !DIExpression(), !12237)
  %i.ck = lshr i64 %.sroa.0.0.i81, 1, !dbg !12416
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %i.ck), !12229, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !12235)
    #dbg_value(i64 %.sroa.0.0, !12230, !DIExpression(), !12235)
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !12417 ; 2 uses
  %i.cl = sub nsw i64 %factor, %i.cj, !dbg !12417
    #dbg_value(!DIArgList(i64 %.sroa.09.0, i64 %.sroa.09.0, i64 0, i64 %i.cj), !12231, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus, DW_OP_plus, DW_OP_stack_value), !12238)
  %i.cm = add nuw nsw i64 %i.ck, %factor, !dbg !12418
    #dbg_value(i64 %i.cm, !12232, !DIExpression(), !12239)
  %i.cn = mul i64 %i.cl, %.sroa.0.0, !dbg !12419
  %i.co = mul i64 %i.cm, %.sroa.0.0, !dbg !12420
  %i.cp = xor i64 %i.co, %i.cn, !dbg !12421
    #dbg_value(i64 %i.cp, !12240, !DIExpression(), !12243)
  %i.cq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cp, i1 false), !dbg !12422
  %i.cr = trunc nuw nsw i64 %i.cq to i8, !dbg !12421
    #dbg_value(i8 %i.cr, !12013, !DIExpression(), !12086)
  br label %bb.g, !dbg !12423

.lr.ph106:                                        ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2n_4Tera18finalize_templatess1_0E0EB2p_.exit
  %.sroa.02.1105 = phi i64 [ %i.cs, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2n_4Tera18finalize_templatess1_0E0EB2p_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.1104 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2n_4Tera18finalize_templatess1_0E0EB2p_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
    #dbg_value(i64 %.sroa.02.1105, !12005, !DIExpression(), !12067)
    #dbg_value(i64 %.sroa.023.1104, !12011, !DIExpression(), !12085)
  %i.cs = add i64 %.sroa.02.1105, -1, !dbg !12424 ; 4 uses
    #dbg_value(i64 %i.cs, !12078, !DIExpression(), !12081)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cs, !dbg !12425
  %i.cu = load i8, ptr %i.ct, align 1, !dbg !12426, !noundef !558
  %.not77 = icmp ult i8 %i.cu, %.sroa.021.0, !dbg !12426
  br i1 %.not77, label %._crit_edge, label %bb.r, !dbg !12426

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2n_4Tera18finalize_templatess1_0E0EB2p_.exit, %.lr.ph106, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1104, %.lr.ph106 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2n_4Tera18finalize_templatess1_0E0EB2p_.exit ], !dbg !12084 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1105, %.lr.ph106 ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2n_4Tera18finalize_templatess1_0E0EB2p_.exit ], !dbg !12066 ; 3 uses
    #dbg_value(i64 %.sroa.02.1.lcssa, !12070, !DIExpression(), !12075)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !12427
  store i64 %.sroa.023.1.lcssa, ptr %i.cv, align 8, !dbg !12428
    #dbg_value(i64 %.sroa.02.1.lcssa, !12078, !DIExpression(), !12083)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !12429
  store i8 %.sroa.021.0, ptr %i.cw, align 1, !dbg !12430
    #dbg_value(i64 %.sroa.02.1.lcssa, !12005, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12067)
  br i1 %i.l, label %bb.y, label %bb.z, !dbg !12431

bb.r:                                             ; preds = %.lr.ph106
    #dbg_value(i64 %i.cs, !12070, !DIExpression(), !12073)
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cs, !dbg !12432
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !12433, !noundef !558 ; 3 uses
    #dbg_value(i64 %i.cy, !12014, !DIExpression(), !12244)
    #dbg_value(i64 %i.cy, !12223, !DIExpression(), !12246)
  %i.cz = lshr i64 %i.cy, 1, !dbg !12434          ; 5 uses
    #dbg_value(i64 %.sroa.023.1104, !12223, !DIExpression(), !12248)
  %i.da = lshr i64 %.sroa.023.1104, 1, !dbg !12435 ; 3 uses
  %i.db = add nuw i64 %i.cz, %i.da, !dbg !12436   ; 5 uses
    #dbg_value(i64 %i.db, !12015, !DIExpression(), !12249)
  %i.dc = sub i64 %.sroa.09.0, %i.db, !dbg !12437
    #dbg_value(i64 %i.dc, !12016, !DIExpression(), !12250)
    #dbg_value(i64 %i.dc, !12034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12038)
    #dbg_value(i64 %i.dc, !12251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12258)
    #dbg_value(i64 %i.dc, !12087, !DIExpression(), !12260)
    #dbg_value(i64 %.sroa.09.0, !12034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12038)
    #dbg_value(i64 %.sroa.09.0, !12251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12258)
    #dbg_value(ptr %0, !12254, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12258)
    #dbg_value(ptr %0, !12088, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12260)
    #dbg_value(i64 %1, !12254, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12258)
    #dbg_value(i64 %1, !12088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12260)
    #dbg_value(i64 %i.db, !12255, !DIExpression(), !12261)
    #dbg_value(i64 %i.db, !12089, !DIExpression(), !12260)
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.dc, !dbg !12438 ; 3 uses
    #dbg_value(ptr %i.dd, !12017, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12262)
    #dbg_value(i64 %i.db, !12017, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12262)
    #dbg_value(ptr %i.dd, !12263, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11919)
    #dbg_value(ptr %i.dd, !12273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11922)
    #dbg_value(ptr %i.dd, !12276, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11926)
    #dbg_value(i64 %i.db, !12263, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11919)
    #dbg_value(i64 %i.db, !12273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11922)
    #dbg_value(i64 %i.db, !12276, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11926)
    #dbg_value(ptr %2, !12266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11919)
    #dbg_value(i64 %3, !12266, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11919)
    #dbg_value(i64 %i.cy, !12267, !DIExpression(), !11919)
    #dbg_value(i64 %.sroa.023.1104, !12268, !DIExpression(), !11919)
    #dbg_value(ptr %5, !12269, !DIExpression(), !11919)
    #dbg_value(i64 0, !12281, !DIExpression(), !11935)
    #dbg_value(i64 %i.db, !12270, !DIExpression(), !11936)
    #dbg_value(i64 %i.db, !12303, !DIExpression(), !11939)
    #dbg_value(i64 %i.db, !12305, !DIExpression(), !11942)
  %.not.i = icmp samesign ule i64 %i.db, %3, !dbg !12439
    #dbg_value(i1 %.not.i, !12271, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11943)
  %i.de = and i64 %.sroa.023.1104, 1
  %.not28.i = icmp eq i64 %i.de, 0
  %i.df = or i64 %i.cy, %.sroa.023.1104, !dbg !12440
  %i.dg = and i64 %i.df, 1, !dbg !12440
  %i.dh = icmp eq i64 %i.dg, 0, !dbg !12440
  %or.cond32.i = and i1 %.not.i, %i.dh, !dbg !12440
  br i1 %or.cond32.i, label %bb.t, label %bb.s, !dbg !12440

bb.s:                                             ; preds = %bb.r
  %i.di = and i64 %i.cy, 1
  %.not27.i = icmp eq i64 %i.di, 0
  br i1 %.not27.i, label %bb.v, label %bb.u, !dbg !12441

bb.t:                                             ; preds = %bb.r
  %i.dj = shl nuw nsw i64 %i.db, 1, !dbg !12442
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2n_4Tera18finalize_templatess1_0E0EB2p_.exit, !dbg !12443

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %.not28.i, label %bb.w, label %bb.x, !dbg !12444

bb.v:                                             ; preds = %bb.s
    #dbg_value(i64 %i.cz, !12283, !DIExpression(), !11935)
    #dbg_value(ptr %i.dd, !12282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11935)
    #dbg_value(i64 %i.db, !12282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11935)
    #dbg_value(ptr %i.dd, !12307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11947)
    #dbg_value(i64 %i.cz, !12307, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11947)
    #dbg_value(ptr %2, !12308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11947)
    #dbg_value(i64 %3, !12308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11947)
    #dbg_value(ptr %5, !12309, !DIExpression(), !11947)
    #dbg_value(i64 %i.cz, !12312, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !11951)
    #dbg_value(i64 %i.cz, !12315, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !11955)
  %i.dk = or i64 %i.cz, 1, !dbg !12445
    #dbg_value(i64 %i.dk, !12312, !DIExpression(), !11951)
    #dbg_value(i64 %i.dk, !12315, !DIExpression(), !11955)
    #dbg_value(i64 %i.dk, !12316, !DIExpression(), !11956)
    #dbg_value(i64 %i.dk, !12318, !DIExpression(), !11959)
    #dbg_value(i64 %i.dk, !12320, !DIExpression(), !11962)
  %i.dl = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dk, i1 true), !dbg !12446
  %i.dm = trunc nuw nsw i64 %i.dl to i32, !dbg !12446
    #dbg_value(i32 %i.dm, !12313, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !11963)
  %i.dn = shl nuw nsw i32 %i.dm, 1, !dbg !12447
  %i.do = xor i32 %i.dn, 126, !dbg !12447
    #dbg_value(i32 %i.do, !12310, !DIExpression(), !11964)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1d_5sliceSB15_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2m_4Tera18finalize_templatess1_0E0EB2o_(ptr noalias nofree noundef nonnull align 8 %i.dd, i64 noundef range(i64 0, 192153584101141163) %i.cz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.do, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !12448, !inline_history !11965
  br label %bb.u, !dbg !12449

bb.w:                                             ; preds = %bb.u
    #dbg_value(i64 %i.cz, !12274, !DIExpression(), !11922)
    #dbg_value(i64 %i.cz, !12277, !DIExpression(), !11926)
    #dbg_value(i64 %i.cz, !12284, !DIExpression(), !11967)
    #dbg_value(i64 %i.da, !12278, !DIExpression(), !11968)
    #dbg_value(i64 %i.da, !12283, !DIExpression(), !11967)
    #dbg_value(ptr %i.dd, !12282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11967)
    #dbg_value(i64 %i.db, !12282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11967)
  %i.dp = getelementptr inbounds nuw [48 x i8], ptr %i.dd, i64 %i.cz, !dbg !12450
    #dbg_value(ptr %i.dp, !12307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11970)
    #dbg_value(i64 %i.da, !12307, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11970)
    #dbg_value(ptr %2, !12308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11970)
    #dbg_value(i64 %3, !12308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11970)
    #dbg_value(ptr %5, !12309, !DIExpression(), !11970)
    #dbg_value(i64 %i.da, !12312, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !11972)
    #dbg_value(i64 %i.da, !12315, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !11974)
  %i.dq = or i64 %i.da, 1, !dbg !12451
    #dbg_value(i64 %i.dq, !12312, !DIExpression(), !11972)
    #dbg_value(i64 %i.dq, !12315, !DIExpression(), !11974)
    #dbg_value(i64 %i.dq, !12316, !DIExpression(), !11975)
    #dbg_value(i64 %i.dq, !12318, !DIExpression(), !11977)
    #dbg_value(i64 %i.dq, !12320, !DIExpression(), !11979)
  %i.dr = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dq, i1 true), !dbg !12452
  %i.ds = trunc nuw nsw i64 %i.dr to i32, !dbg !12452
    #dbg_value(i32 %i.ds, !12313, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !11980)
  %i.dt = shl nuw nsw i32 %i.ds, 1, !dbg !12453
  %i.du = xor i32 %i.dt, 126, !dbg !12453
    #dbg_value(i32 %i.du, !12310, !DIExpression(), !11981)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1d_5sliceSB15_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2m_4Tera18finalize_templatess1_0E0EB2o_(ptr noalias nofree noundef nonnull align 8 %i.dp, i64 noundef range(i64 0, 192153584101141163) %i.da, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.du, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !12454, !inline_history !11965
  br label %bb.x, !dbg !12455

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB15_5sliceSBX_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2d_4Tera18finalize_templatess1_0E0EB2f_(ptr noalias nofree noundef nonnull align 8 %i.dd, i64 noundef range(i64 0, 192153584101141163) %i.db, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i64 noundef %i.cz, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !12456
  %i.dv = shl nuw nsw i64 %i.db, 1, !dbg !12457
  %i.dw = or disjoint i64 %i.dv, 1, !dbg !12457
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2n_4Tera18finalize_templatess1_0E0EB2p_.exit, !dbg !12443

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1e_5sliceSB16_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2n_4Tera18finalize_templatess1_0E0EB2p_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.dw, %bb.x ], [ %i.dj, %bb.t ], !dbg !12458 ; 2 uses
    #dbg_value(i64 %i.cs, !12005, !DIExpression(), !12067)
    #dbg_value(i64 %.sroa.0.0.i, !12011, !DIExpression(), !12085)
  %i.dx = icmp ugt i64 %i.cs, 1, !dbg !12342
  br i1 %i.dx, label %.lr.ph106, label %._crit_edge, !dbg !12342

bb.y:                                             ; preds = %._crit_edge
  %i.dy = add nsw i64 %.sroa.02.1.lcssa, 1, !dbg !12459
    #dbg_value(i64 %i.dy, !12005, !DIExpression(), !12067)
    #dbg_value(i64 %.sroa.018.0, !12223, !DIExpression(), !12323)
  %i.dz = lshr i64 %.sroa.018.0, 1, !dbg !12460
  %i.ea = add nuw nsw i64 %i.dz, %.sroa.09.0, !dbg !12461
    #dbg_value(i64 %i.ea, !12010, !DIExpression(), !12084)
    #dbg_value(i64 %.sroa.018.0, !12011, !DIExpression(), !12085)
  br label %bb.f, !dbg !12340

bb.z:                                             ; preds = %._crit_edge
    #dbg_value(i64 %.sroa.023.1.lcssa, !12324, !DIExpression(), !12327)
  %i.eb = and i64 %.sroa.023.1.lcssa, 1, !dbg !12462
  %.not79 = icmp eq i64 %i.eb, 0, !dbg !12462
  br i1 %.not79, label %bb.aa, label %bb.ab, !dbg !12463

bb.aa:                                            ; preds = %bb.z
    #dbg_value(ptr %0, !12307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11984)
    #dbg_value(i64 %1, !12307, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11984)
    #dbg_value(ptr %2, !12308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11984)
    #dbg_value(i64 %3, !12308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11984)
    #dbg_value(ptr %5, !12309, !DIExpression(), !11984)
    #dbg_value(i64 %1, !12312, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !11986)
    #dbg_value(i64 %1, !12315, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !11988)
  %i.ec = or i64 %1, 1, !dbg !12464
    #dbg_value(i64 %i.ec, !12312, !DIExpression(), !11986)
    #dbg_value(i64 %i.ec, !12315, !DIExpression(), !11988)
    #dbg_value(i64 %i.ec, !12316, !DIExpression(), !11989)
    #dbg_value(i64 %i.ec, !12318, !DIExpression(), !11991)
    #dbg_value(i64 %i.ec, !12320, !DIExpression(), !11993)
  %i.ed = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ec, i1 true), !dbg !12465
  %i.ee = trunc nuw nsw i64 %i.ed to i32, !dbg !12465
    #dbg_value(i32 %i.ee, !12313, !DIExpression(DW_OP_constu, 63, DW_OP_xor, DW_OP_stack_value), !11994)
  %i.ef = shl nuw nsw i32 %i.ee, 1, !dbg !12466
  %i.eg = xor i32 %i.ef, 126, !dbg !12466
    #dbg_value(i32 %i.eg, !12310, !DIExpression(), !11995)
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRejNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1d_5sliceSB15_7sort_byNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2m_4Tera18finalize_templatess1_0E0EB2o_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.eg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !12467, !inline_history !11965
  br label %bb.ab, !dbg !12468

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12470
  br label %bb.ac, !dbg !12471

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !12471
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvNtB19_7filters4sorts1_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !12485 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !13441, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13457)
    #dbg_value(ptr %0, !13454, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13458)
    #dbg_value(ptr %0, !13459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13463)
    #dbg_value(ptr %0, !13464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13469)
    #dbg_value(i64 %1, !13441, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13457)
    #dbg_value(i64 %1, !13454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13458)
    #dbg_value(i64 %1, !13459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13463)
    #dbg_value(i64 %1, !13464, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13469)
    #dbg_value(i32 %4, !13443, !DIExpression(), !13457)
    #dbg_value(ptr %5, !13444, !DIExpression(), !13457)
    #dbg_value(ptr %2, !13442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13457)
    #dbg_value(i64 %3, !13442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13457)
    #dbg_value(ptr %6, !13445, !DIExpression(), !13457)
    #dbg_declare(ptr %i.b, !13448, !DIExpression(), !13470)
    #dbg_value(i64 %1, !13446, !DIExpression(), !13471)
  %i.c = icmp samesign ult i64 %1, 33, !dbg !13927
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph, !dbg !13927

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph119 = phi ptr [ %i.hr, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph118 = phi i64 [ %i.hc, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph117 = phi i32 [ %i.ek, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph116 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
    #dbg_value(ptr %.sroa.0.0.ph119, !13464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13469)
    #dbg_value(i64 %.sroa.16.0.ph118, !13464, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13469)
    #dbg_value(i32 %.sroa.025.0.ph117, !13443, !DIExpression(), !13457)
    #dbg_value(ptr %.sroa.028.0.ph116, !13444, !DIExpression(), !13457)
  %i.d = ptrtoint ptr %.sroa.0.0.ph119 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph116, null
    #dbg_value(i64 %.sroa.16.0.ph118, !13464, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13469)
    #dbg_value(i32 %.sroa.025.0.ph117, !13443, !DIExpression(), !13457)
  %i.e = icmp eq i32 %.sroa.025.0.ph117, 0, !dbg !13928
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph272, !dbg !13928

bb.b:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5yXxDE1DkoT_4tera5value5Value12split_at_mutBy_.exit
    #dbg_value(i64 %.sroa.11.1.lcssa.i, !13464, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13469)
    #dbg_value(i32 %i.ek, !13443, !DIExpression(), !13457)
  %i.f = icmp eq i32 %i.ek, 0, !dbg !13928
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph272, !dbg !13928

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5yXxDE1DkoT_4tera5value5Value12split_at_mutBy_.exit, %bb.a
  %.sroa.0.0.ph.lcssa110 = phi ptr [ %.sroa.0.0.ph119, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5yXxDE1DkoT_4tera5value5Value12split_at_mutBy_.exit ], [ %0, %bb.a ], [ %i.hr, %.outer ] ; 16 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5yXxDE1DkoT_4tera5value5Value12split_at_mutBy_.exit ], [ %1, %bb.a ], [ %i.hc, %.outer ] ; 8 uses
    #dbg_value(ptr %.sroa.0.0.ph.lcssa110, !13472, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12491)
    #dbg_value(i64 %.sroa.16.0.lcssa, !13472, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12491)
    #dbg_value(ptr %2, !13473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12491)
    #dbg_value(i64 %3, !13473, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12491)
    #dbg_value(ptr %6, !13474, !DIExpression(), !12491)
  call void @llvm.experimental.noalias.scope.decl(metadata !13476), !dbg !13929
  call void @llvm.experimental.noalias.scope.decl(metadata !13477), !dbg !13929
    #dbg_value(ptr poison, !1667, !DIExpression(), !12512)
    #dbg_value(ptr poison, !1672, !DIExpression(), !12513)
    #dbg_value(ptr poison, !13496, !DIExpression(), !12521)
    #dbg_value(ptr poison, !13499, !DIExpression(), !12522)
    #dbg_value(ptr poison, !13502, !DIExpression(), !12523)
    #dbg_value(ptr %.sroa.0.0.ph.lcssa110, !13479, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12524)
    #dbg_value(i64 %.sroa.16.0.lcssa, !13479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12524)
    #dbg_value(ptr %2, !13480, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12524)
    #dbg_value(i64 %3, !13480, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12524)
    #dbg_value(ptr poison, !13481, !DIExpression(), !12524)
    #dbg_value(i64 1, !13505, !DIExpression(), !12527)
    #dbg_value(i64 1, !13505, !DIExpression(), !12529)
    #dbg_value(i64 1, !13509, !DIExpression(), !12532)
    #dbg_value(i64 1, !13512, !DIExpression(), !12535)
    #dbg_value(i64 1, !13505, !DIExpression(), !12537)
    #dbg_value(i64 %.sroa.16.0.lcssa, !13482, !DIExpression(), !12538)
    #dbg_value(i64 %.sroa.16.0.lcssa, !13515, !DIExpression(), !12541)
  %i.g = icmp samesign ult i64 %.sroa.16.0.lcssa, 2, !dbg !13930
  br i1 %i.g, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs5yXxDE1DkoT_4tera5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCNvNtB1w_7filters4sorts1_0E0EB1w_.exit, label %bb.c, !dbg !13930

bb.c:                                             ; preds = %.outer._crit_edge
  %i.h = add nuw nsw i64 %.sroa.16.0.lcssa, 16, !dbg !13931
  %i.i = icmp samesign ult i64 %3, %i.h, !dbg !13932
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !13932

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %.sroa.0.0.ph.lcssa110, !13483, !DIExpression(), !12542)
    #dbg_value(ptr %.sroa.0.0.ph.lcssa110, !13516, !DIExpression(), !12544)
    #dbg_value(ptr %.sroa.0.0.ph.lcssa110, !13516, !DIExpression(), !12546)
    #dbg_value(ptr %.sroa.0.0.ph.lcssa110, !13516, !DIExpression(), !12548)
    #dbg_value(ptr %.sroa.0.0.ph.lcssa110, !13516, !DIExpression(), !12550)
  %i.j = lshr i64 %.sroa.16.0.lcssa, 1, !dbg !13933 ; 10 uses
    #dbg_value(i64 %i.j, !13484, !DIExpression(), !12551)
    #dbg_value(i64 %i.j, !13515, !DIExpression(), !12544)
    #dbg_value(i64 %i.j, !13515, !DIExpression(), !12553)
    #dbg_value(i64 %i.j, !13515, !DIExpression(), !12546)
    #dbg_value(i64 %i.j, !13515, !DIExpression(), !12555)
    #dbg_value(i64 %i.j, !13515, !DIExpression(), !12548)
    #dbg_value(i64 %i.j, !13515, !DIExpression(), !12557)
    #dbg_value(ptr %2, !13485, !DIExpression(), !12558)
    #dbg_value(ptr %2, !13516, !DIExpression(), !12541)
    #dbg_value(ptr %2, !13516, !DIExpression(), !12553)
    #dbg_value(ptr %2, !13516, !DIExpression(), !12560)
    #dbg_value(ptr %2, !13516, !DIExpression(), !12555)
    #dbg_value(ptr %2, !13507, !DIExpression(), !12527)
    #dbg_value(ptr %2, !13516, !DIExpression(), !12557)
    #dbg_value(ptr %2, !13516, !DIExpression(), !12562)
  %i.k = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7, !dbg !13934
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !13934

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap(), !dbg !13935
  unreachable, !dbg !13935

bb.f:                                             ; preds = %bb.d
    #dbg_value(ptr %.sroa.0.0.ph.lcssa110, !13506, !DIExpression(), !12527)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.ph.lcssa110, i64 24, i1 false), !dbg !13936, !alias.scope !13518
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph.lcssa110, i64 %i.j, !dbg !13937
    #dbg_value(ptr %i.l, !13506, !DIExpression(), !12529)
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.j, !dbg !13938
    #dbg_value(ptr %i.m, !13507, !DIExpression(), !12529)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !13939, !alias.scope !13518
    #dbg_value(i64 1, !13486, !DIExpression(), !12563)
  br label %bb.h, !dbg !13940

bb.g:                                             ; preds = %bb.d
    #dbg_value(ptr %.sroa.0.0.ph.lcssa110, !13519, !DIExpression(), !12581)
    #dbg_value(ptr %.sroa.0.0.ph.lcssa110, !13540, !DIExpression(), !12584)
    #dbg_value(ptr %.sroa.0.0.ph.lcssa110, !13540, !DIExpression(), !12586)
    #dbg_value(ptr %.sroa.0.0.ph.lcssa110, !13540, !DIExpression(), !12588)
    #dbg_value(ptr %.sroa.0.0.ph.lcssa110, !13540, !DIExpression(), !12590)
    #dbg_value(ptr %.sroa.0.0.ph.lcssa110, !13540, !DIExpression(), !12592)
    #dbg_value(ptr %.sroa.0.0.ph.lcssa110, !13540, !DIExpression(), !12594)
    #dbg_value(ptr %.sroa.0.0.ph.lcssa110, !13540, !DIExpression(), !12596)
    #dbg_value(ptr %2, !13522, !DIExpression(), !12581)
    #dbg_value(ptr %2, !13546, !DIExpression(), !12599)
    #dbg_value(ptr %2, !13550, !DIExpression(), !12602)
    #dbg_value(ptr %2, !13550, !DIExpression(), !12604)
    #dbg_value(ptr %2, !13550, !DIExpression(), !12606)
    #dbg_value(ptr poison, !13523, !DIExpression(), !12581)
    #dbg_value(i64 1, !13543, !DIExpression(), !12584)
    #dbg_value(i64 3, !13543, !DIExpression(), !12586)
    #dbg_value(i64 2, !13543, !DIExpression(), !12588)
    #dbg_value(i64 1, !13548, !DIExpression(), !12599)
    #dbg_value(i64 1, !13551, !DIExpression(), !12602)
    #dbg_value(i64 1, !13548, !DIExpression(), !12608)
    #dbg_value(i64 2, !13551, !DIExpression(), !12604)
    #dbg_value(i64 1, !13548, !DIExpression(), !12610)
    #dbg_value(i64 3, !13551, !DIExpression(), !12606)
    #dbg_value(i64 1, !13548, !DIExpression(), !12612)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa110, i64 24, !dbg !13941
    #dbg_value(ptr %i.n, !1689, !DIExpression(), !12614)
    #dbg_value(ptr %.sroa.0.0.ph.lcssa110, !1692, !DIExpression(), !12614)
    #dbg_value(ptr poison, !1697, !DIExpression(), !12616)
    #dbg_value(ptr poison, !1700, !DIExpression(), !12618)
    #dbg_value(ptr %i.n, !1703, !DIExpression(), !12618)
    #dbg_value(ptr %.sroa.0.0.ph.lcssa110, !1704, !DIExpression(), !12618)
  %i.o = call noundef range(i8 -1, 2) i8 @_RNvXs6_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.ph.lcssa110), !dbg !13942
    #dbg_value(ptr poison, !1698, !DIExpression(), !12619)
end_hunk_7
