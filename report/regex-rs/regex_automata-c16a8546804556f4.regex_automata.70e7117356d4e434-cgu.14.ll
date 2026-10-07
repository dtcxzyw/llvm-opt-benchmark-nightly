Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.14?download=true
inline.NumInlined: 271
inline.NumDeleted: 137
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta14reverse_suffix23strip_literal_suffix_at:bb.a
    #dbg_value(i64 %i.el, !13943, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14484)
    #dbg_value(i64 %4, !13942, !DIExpression(), !14138)
    #dbg_value(i64 %4, !13935, !DIExpression(), !14137)
    #dbg_value(ptr undef, !14126, !DIExpression(), !14136)
    #dbg_value(ptr undef, !14130, !DIExpression(), !14135)
    #dbg_value(ptr undef, !14132, !DIExpression(), !14134)
    #dbg_value(ptr undef, !14112, !DIExpression(), !14120)
    #dbg_value(ptr undef, !14113, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14485)
  %.not242 = icmp eq i64 %i.el, 0, !dbg !14755
  br i1 %.not242, label %.loopexit174, label %.lr.ph, !dbg !14119

.lr.ph:                                           ; preds = %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  br label %bb.bx, !dbg !14119

.lr.ph250:                                        ; preds = %.preheader, %bb.bo
  %.sroa.012.0249 = phi i64 [ %i.ey, %bb.bo ], [ 0, %.preheader ] ; 2 uses
    #dbg_value(i64 %.sroa.012.0249, !13938, !DIExpression(), !14195)
  %i.eo = xor i64 %.sroa.012.0249, -1, !dbg !14756 ; 2 uses
  %i.ep = add i64 %i.ae, %i.eo, !dbg !14756       ; 3 uses
  %i.eq = icmp ult i64 %i.ep, %i.ae, !dbg !14757
  br i1 %i.eq, label %bb.bk, label %bb.bl, !dbg !14757

bb.bk:                                            ; preds = %.lr.ph250
  %i.er = add i64 %4, %i.eo, !dbg !14758          ; 3 uses
  %i.es = icmp ult i64 %i.er, %3, !dbg !14759
  br i1 %i.es, label %bb.bm, label %bb.bn, !dbg !14759

bb.bl:                                            ; preds = %.lr.ph250
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ep, i64 noundef %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #20, !dbg !14757
  unreachable, !dbg !14757

bb.bm:                                            ; preds = %bb.bk
  %i.et = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ep, !dbg !14757
  %i.eu = load i8, ptr %i.et, align 1, !dbg !14757, !noundef !894
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 %i.er, !dbg !14759
  %i.ew = load i8, ptr %i.ev, align 1, !dbg !14759, !noundef !894
  %i.ex = icmp eq i8 %i.eu, %i.ew, !dbg !14757
  br i1 %i.ex, label %bb.bo, label %.loopexit, !dbg !14757

bb.bn:                                            ; preds = %bb.bk
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.er, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #20, !dbg !14759
  unreachable, !dbg !14759

bb.bo:                                            ; preds = %bb.bm
  %i.ey = add nuw i64 %.sroa.012.0249, 1, !dbg !14760 ; 2 uses
    #dbg_value(i64 %i.ey, !13938, !DIExpression(), !14195)
  %exitcond.not = icmp eq i64 %i.ey, %invariant.umin, !dbg !14602
  br i1 %exitcond.not, label %bb.bp, label %.lr.ph250, !dbg !14602

.loopexit:                                        ; preds = %bb.bm, %.preheader
  store i64 -1, ptr %0, align 8, !dbg !14761
  br label %bb.b, !dbg !14762

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !14763
  %i.ez = sub i64 %i.ae, %invariant.umin, !dbg !14764 ; 4 uses
    #dbg_value(i64 %i.ez, !14142, !DIExpression(), !14487)
    #dbg_value(i64 %i.ez, !14160, !DIExpression(), !14488)
    #dbg_value(i64 %i.ez, !14165, !DIExpression(), !14489)
    #dbg_value(i64 %i.ez, !14490, !DIExpression(), !14495)
    #dbg_value(i64 %i.ez, !14496, !DIExpression(), !14501)
    #dbg_value(i64 %i.ez, !14502, !DIExpression(), !14506)
    #dbg_value(i64 %i.ez, !14170, !DIExpression(), !14507)
    #dbg_value(i64 %i.ez, !14179, !DIExpression(), !14183)
    #dbg_value(ptr %i.ac, !14148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14508)
    #dbg_value(ptr %i.ac, !14150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14509)
    #dbg_value(ptr %i.ac, !14140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14510)
    #dbg_value(i64 %i.ez, !14148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14508)
    #dbg_value(i64 %i.ez, !14150, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14509)
    #dbg_value(i64 %i.ez, !14140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14510)
    #dbg_value(i64 1, !14171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14507)
    #dbg_value(i64 1, !14180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14183)
    #dbg_value(i64 1, !14171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14507)
    #dbg_value(i64 1, !14180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !14765
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %i.ez, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !14765
  %i.fa = load i64, ptr %i.q, align 8, !dbg !14765, !range !1144, !noundef !894
  %i.fb = trunc nuw i64 %i.fa to i1, !dbg !14766
  %i.fc = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !14507
  %i.fd = load i64, ptr %i.fc, align 8, !dbg !14507, !range !1145, !noundef !894 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !14507 ; 2 uses
  br i1 %i.fb, label %bb.bq, label %bb.br, !dbg !14766, !prof !1146

bb.bq:                                            ; preds = %bb.bp
  %i.ff = load i64, ptr %i.fe, align 8, !dbg !14767
    #dbg_value(i64 %i.fd, !14173, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14511)
    #dbg_value(i64 %i.ff, !14173, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14511)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.fd, i64 %i.ff) #19, !dbg !14768
  unreachable, !dbg !14768

bb.br:                                            ; preds = %bb.bp
  %i.fg = load ptr, ptr %i.fe, align 8, !dbg !14769, !nonnull !894, !noundef !894 ; 2 uses
    #dbg_value(i64 %i.fd, !14172, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14512)
    #dbg_value(ptr %i.fg, !14172, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14512)
    #dbg_value(ptr poison, !14178, !DIExpression(), !14513)
  %i.fh = icmp ule i64 %i.ez, %i.fd, !dbg !14770
    #dbg_value(i1 true, !14514, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14517)
  tail call void @llvm.assume(i1 %i.fh), !dbg !14771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !14772
  store i64 %i.fd, ptr %i.w, align 8, !dbg !14773
  %i.fi = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !14773
  store ptr %i.fg, ptr %i.fi, align 8, !dbg !14773
  %i.fj = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !14773 ; 2 uses
  store i64 0, ptr %i.fj, align 8, !dbg !14773
  %.not92.not = icmp ugt i64 %i.ae, %4, !dbg !14774
  br i1 %.not92.not, label %bb.bw, label %bb.bs, !dbg !14774

bb.bs:                                            ; preds = %bb.bw, %bb.br
    #dbg_declare(ptr %i.w, !3040, !DIExpression(), !13810)
    #dbg_declare(ptr %i.b, !3047, !DIExpression(), !13811)
    #dbg_declare(ptr %i.w, !3051, !DIExpression(), !13813)
  %i.fk = call { ptr, i64 } @_RNvXsD_NtCs4wP2HXfJTCR_5alloc3vecINtNtB7_5boxed3BoxShEINtNtCsj6eKBz9Db1c_4core7convert4FromINtB5_3VechEE4fromCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.w), !dbg !14775, !noalias !14518 ; 2 uses
  %i.fl = extractvalue { ptr, i64 } %i.fk, 0, !dbg !14776 ; 4 uses
  %i.fm = extractvalue { ptr, i64 } %i.fk, 1, !dbg !14776 ; 4 uses
    #dbg_value(ptr %i.fl, !3046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13816)
    #dbg_value(i64 %i.fm, !3046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13816)
    #dbg_value(ptr poison, !3058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13818)
    #dbg_value(i64 %i.fm, !3058, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13818)
  %i.fn = icmp eq i64 %i.fm, 0, !dbg !14777
  br i1 %i.fn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs9GYDdpCSJ4S_14regex_automata.exit.i, label %bb.bt, !dbg !14778

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14779, !noalias !14519
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fl) ]
  store ptr %i.fl, ptr %i.b, align 8, !dbg !14780, !noalias !14519
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14780
  store i64 %i.fm, ptr %i.fo, align 8, !dbg !14780, !noalias !14519
  %i.fp = invoke noundef nonnull align 8 ptr @_RNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_10Properties7literal(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.bu unwind label %bb.bv, !dbg !14781, !noalias !14519

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs9GYDdpCSJ4S_14regex_automata.exit.i: ; preds = %bb.bs
  %i.fq = call noundef nonnull align 8 ptr @_RNvMso_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_10Properties5empty(), !dbg !14782, !noalias !14519
    #dbg_value(ptr poison, !1686, !DIExpression(), !13822)
    #dbg_value(ptr poison, !1692, !DIExpression(), !13824)
    #dbg_value(ptr poison, !1693, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13825)
    #dbg_value(i64 %i.fm, !1693, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13825)
    #dbg_value(i64 1, !1694, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13826)
    #dbg_value(i64 %i.fm, !1694, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13826)
  br label %_RINvMs3_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_3Hir7literalINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !14783

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14784, !noalias !14519
  br label %_RINvMs3_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_3Hir7literalINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !14783

bb.bv:                                            ; preds = %bb.bt
  %i.fr = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !1679, !DIExpression(), !13828)
    #dbg_value(ptr poison, !1686, !DIExpression(), !13830)
    #dbg_value(ptr poison, !1692, !DIExpression(), !13832)
    #dbg_value(i64 %i.fm, !1693, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13833)
    #dbg_value(i64 1, !1694, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13834)
    #dbg_value(i64 %i.fm, !1694, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13834)
    #dbg_value(ptr %i.fl, !1693, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13833)
    #dbg_value(ptr poison, !1644, !DIExpression(), !13836)
    #dbg_value(ptr poison, !1651, !DIExpression(), !13838)
    #dbg_value(ptr %i.fl, !1648, !DIExpression(), !13836)
    #dbg_value(ptr %i.fl, !1654, !DIExpression(), !13838)
    #dbg_value(ptr %i.fl, !1657, !DIExpression(), !13840)
    #dbg_value(ptr %i.fl, !1663, !DIExpression(), !13842)
    #dbg_value(i64 1, !1649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13836)
    #dbg_value(i64 1, !1655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13838)
    #dbg_value(i64 1, !1661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13840)
    #dbg_value(i64 1, !1664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13842)
    #dbg_value(i64 %i.fm, !1649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13836)
    #dbg_value(i64 %i.fm, !1655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13838)
    #dbg_value(i64 %i.fm, !1661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13840)
    #dbg_value(i64 %i.fm, !1664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13842)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fl, i64 noundef range(i64 1, 0) %i.fm, i64 noundef 1) #23, !dbg !14785, !noalias !14519
  br label %common.resume, !dbg !14786

_RINvMs3_NtCs3roNzt6HBWW_12regex_syntax3hirNtB6_3Hir7literalINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs9GYDdpCSJ4S_14regex_automata.exit.i, %bb.bu
  %.sroa.7134.0 = phi ptr [ %i.fq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs9GYDdpCSJ4S_14regex_automata.exit.i ], [ %i.fp, %bb.bu ], !dbg !14787
  %.sroa.5.0 = phi ptr [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs9GYDdpCSJ4S_14regex_automata.exit.i ], [ %i.fl, %bb.bu ], !dbg !14788
  %.sroa.0.0135 = phi i64 [ 2, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs9GYDdpCSJ4S_14regex_automata.exit.i ], [ 3, %bb.bu ], !dbg !14787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !14789
  %i.fs = sub i64 %4, %invariant.umin, !dbg !14790
  store i64 %.sroa.0.0135, ptr %0, align 8, !dbg !14791
  %.sroa.022.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14791
  store ptr %.sroa.5.0, ptr %.sroa.022.sroa.4.0..sroa_idx, align 8, !dbg !14791
  %.sroa.022.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14791
  store i64 %i.fm, ptr %.sroa.022.sroa.5.0..sroa_idx, align 8, !dbg !14791
  %.sroa.022.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !14791
  store ptr %.sroa.7134.0, ptr %.sroa.022.sroa.7.0..sroa_idx, align 8, !dbg !14791
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !14791
  store i64 %i.fs, ptr %.sroa.423.0..sroa_idx, align 8, !dbg !14791
  br label %bb.b, !dbg !14792

bb.bw:                                            ; preds = %bb.br
    #dbg_value(ptr %i.ac, !14491, !DIExpression(), !14495)
    #dbg_value(ptr %i.ac, !14497, !DIExpression(), !14501)
    #dbg_value(ptr %i.fg, !14492, !DIExpression(), !14495)
    #dbg_value(ptr %i.fg, !14498, !DIExpression(), !14501)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fg, ptr nonnull align 1 %i.ac, i64 %i.ez, i1 false), !dbg !14793
    #dbg_value(ptr %i.w, !14503, !DIExpression(), !14520)
  store i64 %i.ez, ptr %i.fj, align 8, !dbg !14794
  br label %bb.bs, !dbg !14795

bb.bx:                                            ; preds = %bb.ct, %.lr.ph
  %.sroa.0.0244 = phi i64 [ %4, %.lr.ph ], [ %.sroa.435.0.copyload, %bb.ct ] ; 2 uses
  %.sroa.2.0243 = phi i64 [ %i.el, %.lr.ph ], [ %i.ft, %bb.ct ]
    #dbg_value(i64 %.sroa.0.0244, !13942, !DIExpression(), !14138)
    #dbg_value(i64 %.sroa.2.0243, !14186, !DIExpression(), !14189)
    #dbg_value(i64 %.sroa.2.0243, !14191, !DIExpression(), !14194)
  %i.ft = add nsw i64 %.sroa.2.0243, -1, !dbg !14796 ; 8 uses
    #dbg_value(i64 %i.ft, !13943, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14484)
    #dbg_value(i64 %i.ft, !13944, !DIExpression(), !14521)
    #dbg_value(i64 %i.ft, !14522, !DIExpression(), !14526)
    #dbg_value(i64 %i.ft, !14527, !DIExpression(), !14531)
    #dbg_value(i64 %i.ft, !14532, !DIExpression(), !14537)
    #dbg_value(i64 %i.ft, !14538, !DIExpression(), !14544)
    #dbg_value(i64 %i.ft, !14545, !DIExpression(), !14551)
    #dbg_value(i64 %i.ft, !14552, !DIExpression(), !14558)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !14110
    #dbg_value(ptr %i.v, !14523, !DIExpression(), !14559)
    #dbg_value(ptr %i.v, !14389, !DIExpression(), !14561)
    #dbg_value(ptr %i.v, !14393, !DIExpression(), !14564)
    #dbg_value(ptr %i.v, !14397, !DIExpression(), !14567)
  %i.fu = load i64, ptr %i.ek, align 8, !dbg !14797, !noundef !894 ; 2 uses
    #dbg_value(ptr poison, !14528, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14531)
    #dbg_value(ptr poison, !14533, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14537)
    #dbg_value(i64 %i.fu, !14528, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14531)
    #dbg_value(i64 %i.fu, !14533, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14537)
  %i.fv = icmp ult i64 %i.ft, %i.fu, !dbg !14798
  br i1 %i.fv, label %bb.by, label %bb.bz, !dbg !14798

.loopexit174:                                     ; preds = %bb.ct, %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit
  %.sroa.0.1 = phi i64 [ %4, %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit ], [ %.sroa.435.0.copyload, %bb.ct ]
    #dbg_value(i64 %.sroa.0.1, !13942, !DIExpression(), !14138)
    #dbg_value(i64 %.sroa.0.1, !13935, !DIExpression(), !14137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !14799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !14799
  call void @_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3Hir6concat(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.r), !dbg !14800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !14801
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !14802
  store i64 %.sroa.0.1, ptr %.sroa.431.0..sroa_idx, align 8, !dbg !14802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !14803
  br label %bb.b, !dbg !14804

bb.by:                                            ; preds = %bb.bx
  %i.fw = load ptr, ptr %i.en, align 8, !dbg !14805, !nonnull !894, !noundef !894
    #dbg_value(ptr %i.fw, !14528, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14531)
    #dbg_value(ptr %i.fw, !14533, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14537)
  %i.fx = getelementptr inbounds nuw [48 x i8], ptr %i.fw, i64 %i.ft, !dbg !14806
  invoke fastcc void @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta14reverse_suffix23strip_literal_suffix_at(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %.sroa.0.0244)
          to label %bb.cb unwind label %.thread160.loopexit, !dbg !14110

bb.bz:                                            ; preds = %bb.bx
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ft, i64 noundef %i.fu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #19
          to label %bb.ca unwind label %.thread160.loopexit.split-lp, !dbg !14798

.thread160.loopexit:                              ; preds = %bb.by
  %lpad.loopexit175 = landingpad { ptr, i32 }
          cleanup
  br label %.thread151

.thread160.loopexit.split-lp:                     ; preds = %bb.bz
  %lpad.loopexit.split-lp176 = landingpad { ptr, i32 }
          cleanup
  br label %.thread151

bb.ca:                                            ; preds = %bb.cs, %bb.bz
  unreachable

bb.cb:                                            ; preds = %bb.by
  %i.fy = load i64, ptr %i.t, align 8, !dbg !14807, !range !3102, !noundef !894
  %.not86 = icmp eq i64 %i.fy, -1, !dbg !14807
  br i1 %.not86, label %bb.cd, label %bb.cc, !dbg !14808

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !14809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false), !dbg !14810
  %.sroa.435.0.copyload = load i64, ptr %.sroa.435.0..sroa_idx, align 8, !dbg !14810 ; 4 uses
    #dbg_value(i64 %.sroa.435.0.copyload, !14107, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !14574)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !14811
    #dbg_value(i64 %.sroa.435.0.copyload, !13946, !DIExpression(), !14575)
  %i.fz = icmp eq i64 %.sroa.435.0.copyload, %.sroa.0.0244, !dbg !14812
  br i1 %i.fz, label %bb.ci, label %bb.ch, !dbg !14812

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !14811
  store i64 -1, ptr %0, align 8, !dbg !14813
  br label %bb.ce, !dbg !14814

bb.ce:                                            ; preds = %bb.cw, %bb.cd
    #dbg_value(ptr %i.v, !1422, !DIExpression(), !13851)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit unwind label %bb.cf, !dbg !14815

bb.cf:                                            ; preds = %bb.ce
  %i.ga = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.v, !1427, !DIExpression(), !13853)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume unwind label %bb.cg, !dbg !14816

bb.cg:                                            ; preds = %bb.cf
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !14815
  unreachable, !dbg !14815

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.ce
    #dbg_value(ptr %i.v, !1427, !DIExpression(), !13855)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v), !dbg !14817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !14803
  br label %bb.b, !dbg !14762

bb.ch:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !14818
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !14818
    #dbg_value(ptr %i.v, !14541, !DIExpression(), !14579)
    #dbg_value(ptr %i.v, !14580, !DIExpression(), !14583)
    #dbg_value(ptr %i.v, !14584, !DIExpression(), !14587)
    #dbg_value(ptr %i.v, !14588, !DIExpression(), !14591)
  %i.gc = load i64, ptr %i.ek, align 8, !dbg !14819, !noundef !894 ; 2 uses
    #dbg_value(ptr poison, !14548, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14551)
    #dbg_value(ptr poison, !14555, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14558)
    #dbg_value(i64 %i.gc, !14548, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14551)
    #dbg_value(i64 %i.gc, !14555, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14558)
  %.not88 = icmp ult i64 %i.ft, %i.gc, !dbg !14820
  br i1 %.not88, label %bb.cn, label %bb.cs, !dbg !14820

bb.ci:                                            ; preds = %bb.cc
  store i64 -1, ptr %0, align 8, !dbg !14821
    #dbg_value(ptr %i.u, !1607, !DIExpression(), !13860)
  invoke void @_RNvXsm_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %bb.ck unwind label %bb.cj, !dbg !14822, !inline_history !1611

bb.cj:                                            ; preds = %bb.ci
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u) #21
          to label %.thread156 unwind label %bb.cm, !dbg !14822, !inline_history !1611

bb.ck:                                            ; preds = %bb.ci
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %bb.cw unwind label %bb.cl, !dbg !14822, !inline_history !1611

bb.cl:                                            ; preds = %bb.ck
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.thread156

bb.cm:                                            ; preds = %bb.cj
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !14822, !inline_history !1611
  unreachable, !dbg !14822

.thread156:                                       ; preds = %bb.cj, %bb.cl
  %.pn.i95 = phi { ptr, i32 } [ %i.ge, %bb.cl ], [ %i.gd, %bb.cj ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.u, i64 40, !dbg !14822
  %.val3.i = load ptr, ptr %i.gg, align 8, !dbg !14822, !alias.scope !14592, !nonnull !894, !noundef !894
    #dbg_value(ptr poison, !1613, !DIExpression(), !13864)
    #dbg_value(ptr poison, !1620, !DIExpression(), !13866)
    #dbg_value(ptr poison, !1627, !DIExpression(), !13868)
    #dbg_value(ptr %.val3.i, !1630, !DIExpression(), !13869)
    #dbg_value(i64 8, !1631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13870)
    #dbg_value(i64 80, !1631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13870)
    #dbg_value(ptr poison, !1644, !DIExpression(), !13872)
    #dbg_value(ptr poison, !1651, !DIExpression(), !13874)
    #dbg_value(ptr %.val3.i, !1648, !DIExpression(), !13872)
    #dbg_value(ptr %.val3.i, !1654, !DIExpression(), !13874)
    #dbg_value(ptr %.val3.i, !1657, !DIExpression(), !13876)
    #dbg_value(ptr %.val3.i, !1663, !DIExpression(), !13878)
    #dbg_value(i64 8, !1649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13872)
    #dbg_value(i64 8, !1655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13874)
    #dbg_value(i64 8, !1661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13876)
    #dbg_value(i64 8, !1664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13878)
    #dbg_value(i64 80, !1649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13872)
    #dbg_value(i64 80, !1655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13874)
    #dbg_value(i64 80, !1661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13876)
    #dbg_value(i64 80, !1664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13878)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef 80, i64 noundef 8) #23, !dbg !14823, !inline_history !1611
  br label %.thread151, !dbg !14803

bb.cn:                                            ; preds = %bb.ch
  %i.gh = load ptr, ptr %i.en, align 8, !dbg !14824, !nonnull !894, !noundef !894
    #dbg_value(ptr %i.gh, !14548, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14551)
    #dbg_value(ptr %i.gh, !14555, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14558)
  %i.gi = getelementptr inbounds nuw [48 x i8], ptr %i.gh, i64 %i.ft, !dbg !14825 ; 7 uses
    #dbg_value(ptr %i.gi, !1607, !DIExpression(), !13880)
  invoke void @_RNvXsm_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.gi)
          to label %bb.cp unwind label %bb.co, !dbg !14826, !inline_history !1611

bb.co:                                            ; preds = %bb.cn
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.gi) #21
          to label %.thread163 unwind label %bb.cr, !dbg !14826, !inline_history !1611

bb.cp:                                            ; preds = %bb.cn
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.gi)
          to label %bb.ct unwind label %bb.cq, !dbg !14826, !inline_history !1611

bb.cq:                                            ; preds = %bb.cp
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.thread163

bb.cr:                                            ; preds = %bb.co
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !14826, !inline_history !1611
  unreachable, !dbg !14826

.thread163:                                       ; preds = %bb.cq, %bb.co
  %.pn.i97 = phi { ptr, i32 } [ %i.gk, %bb.cq ], [ %i.gj, %bb.co ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 40, !dbg !14826
  %.val3.i98 = load ptr, ptr %i.gm, align 8, !dbg !14826, !alias.scope !14599, !nonnull !894, !noundef !894
    #dbg_value(ptr poison, !1613, !DIExpression(), !13884)
    #dbg_value(ptr poison, !1620, !DIExpression(), !13886)
    #dbg_value(ptr poison, !1627, !DIExpression(), !13888)
    #dbg_value(ptr %.val3.i98, !1630, !DIExpression(), !13889)
    #dbg_value(i64 8, !1631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13890)
    #dbg_value(i64 80, !1631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13890)
    #dbg_value(ptr poison, !1644, !DIExpression(), !13892)
    #dbg_value(ptr poison, !1651, !DIExpression(), !13894)
    #dbg_value(ptr %.val3.i98, !1648, !DIExpression(), !13892)
    #dbg_value(ptr %.val3.i98, !1654, !DIExpression(), !13894)
    #dbg_value(ptr %.val3.i98, !1657, !DIExpression(), !13896)
    #dbg_value(ptr %.val3.i98, !1663, !DIExpression(), !13898)
    #dbg_value(i64 8, !1649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13892)
    #dbg_value(i64 8, !1655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13894)
    #dbg_value(i64 8, !1661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13896)
    #dbg_value(i64 8, !1664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13898)
    #dbg_value(i64 80, !1649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13892)
    #dbg_value(i64 80, !1655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13894)
    #dbg_value(i64 80, !1661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13896)
    #dbg_value(i64 80, !1664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13898)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i98, i64 noundef 80, i64 noundef 8) #23, !dbg !14827, !inline_history !1611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gi, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !14828
  br label %.thread151, !dbg !14829

bb.cs:                                            ; preds = %bb.ch
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ft, i64 noundef %i.gc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #19
          to label %bb.ca unwind label %bb.cu, !dbg !14820

bb.ct:                                            ; preds = %bb.cp
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 40, !dbg !14826
  %.val.i99 = load ptr, ptr %i.gn, align 8, !dbg !14826, !alias.scope !14599, !nonnull !894, !noundef !894
    #dbg_value(ptr poison, !1613, !DIExpression(), !13900)
    #dbg_value(ptr poison, !1620, !DIExpression(), !13902)
    #dbg_value(ptr poison, !1627, !DIExpression(), !13904)
    #dbg_value(ptr %.val.i99, !1630, !DIExpression(), !13905)
    #dbg_value(i64 8, !1631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13906)
    #dbg_value(i64 80, !1631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13906)
    #dbg_value(ptr poison, !1644, !DIExpression(), !13908)
    #dbg_value(ptr poison, !1651, !DIExpression(), !13910)
    #dbg_value(ptr %.val.i99, !1648, !DIExpression(), !13908)
    #dbg_value(ptr %.val.i99, !1654, !DIExpression(), !13910)
    #dbg_value(ptr %.val.i99, !1657, !DIExpression(), !13912)
    #dbg_value(ptr %.val.i99, !1663, !DIExpression(), !13914)
    #dbg_value(i64 8, !1649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13908)
    #dbg_value(i64 8, !1655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13910)
    #dbg_value(i64 8, !1661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13912)
    #dbg_value(i64 8, !1664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13914)
    #dbg_value(i64 80, !1649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13908)
    #dbg_value(i64 80, !1655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13910)
    #dbg_value(i64 80, !1661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13912)
    #dbg_value(i64 80, !1664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13914)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i99, i64 noundef 80, i64 noundef 8) #23, !dbg !14830, !inline_history !1611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gi, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !14828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !14829
    #dbg_value(i64 %.sroa.435.0.copyload, !13935, !DIExpression(), !14137)
    #dbg_value(i64 %.sroa.435.0.copyload, !13942, !DIExpression(), !14138)
  %i.go = icmp eq i64 %.sroa.435.0.copyload, 0, !dbg !14831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !14832
    #dbg_value(i64 %.sroa.435.0.copyload, !13942, !DIExpression(), !14138)
    #dbg_value(i64 %.sroa.435.0.copyload, !13935, !DIExpression(), !14137)
    #dbg_value(i64 %i.ft, !13943, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14484)
    #dbg_value(ptr undef, !14126, !DIExpression(), !14136)
    #dbg_value(ptr undef, !14130, !DIExpression(), !14135)
    #dbg_value(ptr undef, !14132, !DIExpression(), !14134)
    #dbg_value(ptr undef, !14112, !DIExpression(), !14120)
    #dbg_value(ptr undef, !14113, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14485)
  %.not = icmp eq i64 %i.ft, 0
  %or.cond = or i1 %i.go, %.not, !dbg !14831
  br i1 %or.cond, label %.loopexit174, label %bb.bx, !dbg !14831

bb.cu:                                            ; preds = %bb.cs
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(48) %i.s) #21
          to label %.thread151 unwind label %bb.cv, !dbg !14829

bb.cv:                                            ; preds = %.thread151, %bb.cu
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !dbg !14833
  unreachable, !dbg !14833

bb.cw:                                            ; preds = %bb.ck
  %i.gr = getelementptr inbounds nuw i8, ptr %i.u, i64 40, !dbg !14822
  %.val.i96 = load ptr, ptr %i.gr, align 8, !dbg !14822, !alias.scope !14592, !nonnull !894, !noundef !894
    #dbg_value(ptr poison, !1613, !DIExpression(), !13916)
    #dbg_value(ptr poison, !1620, !DIExpression(), !13918)
    #dbg_value(ptr poison, !1627, !DIExpression(), !13920)
    #dbg_value(ptr %.val.i96, !1630, !DIExpression(), !13921)
    #dbg_value(i64 8, !1631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13922)
    #dbg_value(i64 80, !1631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13922)
    #dbg_value(ptr poison, !1644, !DIExpression(), !13924)
    #dbg_value(ptr poison, !1651, !DIExpression(), !13926)
    #dbg_value(ptr %.val.i96, !1648, !DIExpression(), !13924)
    #dbg_value(ptr %.val.i96, !1654, !DIExpression(), !13926)
    #dbg_value(ptr %.val.i96, !1657, !DIExpression(), !13928)
    #dbg_value(ptr %.val.i96, !1663, !DIExpression(), !13930)
    #dbg_value(i64 8, !1649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13924)
    #dbg_value(i64 8, !1655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13926)
    #dbg_value(i64 8, !1661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13928)
    #dbg_value(i64 8, !1664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13930)
    #dbg_value(i64 80, !1649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13924)
    #dbg_value(i64 80, !1655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13926)
    #dbg_value(i64 80, !1661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13928)
    #dbg_value(i64 80, !1664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13930)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i96, i64 noundef 80, i64 noundef 8) #23, !dbg !14834, !inline_history !1611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !14832
  br label %bb.ce, !dbg !14814

.thread151:                                       ; preds = %.thread160.loopexit, %.thread160.loopexit.split-lp, %.thread163, %bb.cu, %.thread156
  %.pn89155 = phi { ptr, i32 } [ %.pn.i95, %.thread156 ], [ %i.gp, %bb.cu ], [ %.pn.i97, %.thread163 ], [ %lpad.loopexit175, %.thread160.loopexit ], [ %lpad.loopexit.split-lp176, %.thread160.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #21
          to label %common.resume unwind label %bb.cv, !dbg !14803
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i8 @_RNvXs1_NtNtNtCsdnbpgXzNiEQ_6memchr4arch3all10packedpairRNtB5_20DefaultFrequencyRankNtB5_22HeuristicFrequencyRank4rankCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i8 noundef %1) unnamed_addr #3 !dbg !14836 {
bb.a:
    #dbg_value(ptr %0, !14853, !DIExpression(), !14858)
    #dbg_value(i8 %1, !14854, !DIExpression(), !14858)
    #dbg_value(ptr poison, !14859, !DIExpression(), !14839)
    #dbg_value(i8 %1, !14863, !DIExpression(), !14839)
    #dbg_value(i8 %1, !14865, !DIExpression(), !14842)
  %i.a = zext i8 %1 to i64, !dbg !14867
  %i.b = getelementptr inbounds nuw i8, ptr @66, i64 %i.a, !dbg !14868
  %i.c = load i8, ptr %i.b, align 1, !dbg !14868, !noundef !894
  ret i8 %i.c, !dbg !14869
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !14870 {
switch.lookup:
    #dbg_value(ptr %0, !14878, !DIExpression(), !14883)
    #dbg_value(ptr %1, !14879, !DIExpression(), !14883)
  %i.a = load ptr, ptr %0, align 8, !dbg !14892, !nonnull !894, !noundef !894
  %.val = load i8, ptr %i.a, align 1, !dbg !14893, !range !14884, !noundef !894 ; 2 uses
    #dbg_value(ptr poison, !14886, !DIExpression(), !14873)
    #dbg_value(ptr %1, !14890, !DIExpression(), !14873)
  %i.b = zext nneg i8 %.val to i64, !dbg !14894
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata, i64 %i.b, !dbg !14894
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !14894
  %switch.ext = zext i8 %switch.load to i64, !dbg !14894
  %i.c = zext nneg i8 %.val to i64, !dbg !14894
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata.47, i64 %i.c, !dbg !14894
  %switch.load3 = load ptr, ptr %switch.gep2, align 8, !dbg !14894
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext), !dbg !14894
  ret i1 %i.d, !dbg !14895
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util6search8AnchoredNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !14896 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !14906, !DIExpression(), !14911)
    #dbg_value(ptr %1, !14907, !DIExpression(), !14911)
  %i.b = load ptr, ptr %0, align 8, !dbg !14916, !nonnull !894, !align !14912, !noundef !894 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14913), !dbg !14917
    #dbg_value(ptr %i.b, !3167, !DIExpression(), !14900)
    #dbg_value(ptr %1, !3171, !DIExpression(), !14900)
  %i.c = load i32, ptr %i.b, align 4, !dbg !14918, !range !3174, !alias.scope !14913, !noalias !14914, !noundef !894
  switch i32 %i.c, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ], !dbg !14918

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 2), !dbg !14918, !noalias !14913
  br label %_RNvXsW_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_8AnchoredNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit, !dbg !14918

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 3), !dbg !14918, !noalias !14913
  br label %_RNvXsW_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_8AnchoredNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit, !dbg !14918

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !14918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14919, !noalias !14915
    #dbg_value(ptr %i.f, !3172, !DIExpression(), !14902)
  store ptr %i.f, ptr %i.a, align 8, !dbg !14919, !noalias !14915
    #dbg_value(ptr %i.a, !3172, !DIExpression(DW_OP_deref), !14902)
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @79), !dbg !14920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14921, !noalias !14915
  br label %_RNvXsW_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_8AnchoredNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit, !dbg !14921

_RNvXsW_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_8AnchoredNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i, !dbg !14922
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util6search9MatchKindNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !14923 {
bb.a:
    #dbg_value(ptr %0, !14931, !DIExpression(), !14936)
    #dbg_value(ptr %1, !14932, !DIExpression(), !14936)
  %i.a = load ptr, ptr %0, align 8, !dbg !14943, !nonnull !894, !noundef !894
  %.val = load i8, ptr %i.a, align 1, !dbg !14944, !range !2161, !noundef !894
    #dbg_value(ptr poison, !14937, !DIExpression(), !14926)
    #dbg_value(ptr %1, !14941, !DIExpression(), !14926)
  %i.b = trunc nuw i8 %.val to i1, !dbg !14945    ; 2 uses
  %..i = select i1 %i.b, i64 13, i64 3, !dbg !14946
  %.3.i = select i1 %i.b, ptr @68, ptr @67, !dbg !14946
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.3.i, i64 noundef %..i), !dbg !14945
  ret i1 %i.c, !dbg !14947
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtCsj6eKBz9Db1c_4core6escapeINtB5_15EscapeIterInnerKja_NtB5_12MaybeEscapedENtNtB7_3fmt7Display3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !14953 {
bb.a:
    #dbg_value(ptr %0, !14983, !DIExpression(), !14987)
    #dbg_value(ptr %0, !14988, !DIExpression(), !15003)
    #dbg_value(ptr %0, !15004, !DIExpression(), !15010)
    #dbg_value(ptr %1, !14984, !DIExpression(), !14987)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13, !dbg !15045
  %i.b = load i8, ptr %i.a, align 1, !dbg !15045, !noundef !894 ; 2 uses
    #dbg_value(i8 %i.b, !15011, !DIExpression(), !15014)
  %i.c = icmp ugt i8 %i.b, -128, !dbg !15045
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !15045

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !15045
    #dbg_value(ptr %0, !15015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15022)
    #dbg_value(ptr %0, !15023, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15031)
    #dbg_value(ptr %0, !15032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15039)
    #dbg_value(i64 10, !15015, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15022)
    #dbg_value(i64 10, !15023, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15031)
    #dbg_value(i64 10, !15032, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15039)
  %i.e = load i8, ptr %i.d, align 4, !dbg !15046, !noundef !894
    #dbg_value(i8 %i.e, !15011, !DIExpression(), !15041)
  %i.f = zext i8 %i.e to i64, !dbg !15047         ; 2 uses
    #dbg_value(i64 %i.f, !15018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15022)
    #dbg_value(i64 %i.f, !15027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15031)
    #dbg_value(i64 %i.f, !15035, !DIExpression(), !15039)
  %i.g = zext i8 %i.b to i64, !dbg !15048
    #dbg_value(i64 %i.g, !15018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15022)
    #dbg_value(i64 %i.g, !15027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15031)
  %i.h = sub nuw nsw i64 %i.g, %i.f, !dbg !15049
    #dbg_value(i64 %i.h, !15028, !DIExpression(), !15042)
    #dbg_value(i64 %i.h, !15036, !DIExpression(), !15039)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.f, !dbg !15050
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.h), !dbg !15051
  br label %bb.d, !dbg !15051

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 4, !dbg !15052, !range !15043, !noundef !894
    #dbg_value(i32 %i.k, !14985, !DIExpression(), !15044)
  %i.l = tail call noundef zeroext i1 @_RNvXsb_NtCsj6eKBz9Db1c_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.k), !dbg !15053
  br label %bb.d, !dbg !15054

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.l, %bb.c ], [ %i.j, %bb.b ]
  ret i1 %.sroa.0.0.in, !dbg !15054
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_4SpanNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !15057 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !15064, !DIExpression(), !15071)
    #dbg_value(ptr %1, !15065, !DIExpression(), !15071)
    #dbg_value(ptr %1, !15072, !DIExpression(), !15078)
    #dbg_value(ptr %0, !15067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15079)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15080
    #dbg_value(ptr %i.b, !15067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15079)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15081
  store ptr %0, ptr %i.a, align 8, !dbg !15081
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15081
end_hunk_0
