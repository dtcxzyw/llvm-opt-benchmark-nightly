Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.00?download=true
inline.NumInlined: 618
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE13parse_decimalB9_:bb.a

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w, %.noexc46
  %.sroa.0.011.i = phi i64 [ 1, %.noexc46 ], [ 2, %bb.w ], [ 3, %bb.y ], [ 4, %bb.z ]
    #dbg_value(ptr %i.h, !3977, !DIExpression(), !14533)
  %i.bv = add nuw i64 %.sroa.0.011.i, %i.ap, !dbg !14535
    #dbg_value(i64 %i.bv, !3983, !DIExpression(), !14536)
  store i64 %i.bv, ptr %i.i, align 8, !dbg !14537, !alias.scope !14465
    #dbg_value(ptr %1, !7893, !DIExpression(), !14538)
  %i.bw = invoke fastcc noundef zeroext i1 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4bumpB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit, !dbg !14540

.noexc48:                                         ; preds = %bb.aa
  br i1 %i.bw, label %bb.ab, label %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit, !dbg !14541

bb.ab:                                            ; preds = %.noexc48
  invoke fastcc void @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE10bump_spaceB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit unwind label %.loopexit.split-lp.loopexit, !dbg !14542

_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit: ; preds = %bb.ab, %.noexc48
    #dbg_value(ptr %.val38, !14401, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !14438)
  %i.bx = load i64, ptr %i.j, align 8, !dbg !14440, !noundef !27
  %i.by = icmp eq i64 %i.bx, %i.l, !dbg !14441
  br i1 %i.by, label %._crit_edge, label %bb.o, !dbg !14442

._crit_edge:                                      ; preds = %bb.r, %bb.p, %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit
  %.pre = load i64, ptr %i.j, align 8, !dbg !14543
  %i.bz = icmp eq i64 %.pre, %i.l, !dbg !14544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14443
    #dbg_value(ptr %.val38, !14401, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !14444)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !14446
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !14446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !14446
    #dbg_value(ptr %.val38, !14401, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !14447)
  br i1 %i.bz, label %.thread79, label %.lr.ph101, !dbg !14449

.lr.ph101:                                        ; preds = %._crit_edge, %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit56
  %i.cb = invoke fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.ac unwind label %.loopexit, !dbg !14545 ; 7 uses

.thread79:                                        ; preds = %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit56, %bb.ad, %bb.aj, %bb.ae, %._crit_edge.thread, %._crit_edge
    #dbg_value(ptr %i.h, !14546, !DIExpression(), !14552)
  %i.cc = load i64, ptr %i.i, align 8, !dbg !14554, !noundef !27 ; 3 uses
    #dbg_value(ptr poison, !14247, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14560)
    #dbg_value(ptr poison, !14561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14566)
    #dbg_value(ptr poison, !14358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14359)
    #dbg_value(i64 %i.cc, !14247, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14560)
    #dbg_value(i64 %i.cc, !14561, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14566)
    #dbg_value(i64 %i.cc, !14358, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14359)
  %i.cd = icmp eq i64 %i.cc, 0, !dbg !14568
  br i1 %i.cd, label %bb.ax, label %bb.am, !dbg !14569

bb.ac:                                            ; preds = %.lr.ph101
    #dbg_value(i32 %i.cb, !14410, !DIExpression(), !14570)
  switch i32 %i.cb, label %bb.ad [
    i32 32, label %bb.ak
    i32 13, label %bb.ak
    i32 12, label %bb.ak
    i32 11, label %bb.ak
    i32 10, label %bb.ak
    i32 9, label %bb.ak
  ], !dbg !14572

bb.ad:                                            ; preds = %bb.ac
  %i.ce = icmp samesign ult i32 %i.cb, 133, !dbg !14573
  br i1 %i.ce, label %.thread79, label %bb.ae, !dbg !14573

bb.ae:                                            ; preds = %bb.ad
    #dbg_value(i32 %i.cb, !3760, !DIExpression(), !14574)
  %i.cf = lshr i32 %i.cb, 8, !dbg !14576
  switch i32 %i.cf, label %.thread79 [
    i32 0, label %bb.ah
    i32 22, label %bb.af
    i32 32, label %bb.ai
    i32 48, label %bb.ag
  ], !dbg !14577

bb.af:                                            ; preds = %bb.ae
  %i.cg = icmp eq i32 %i.cb, 5760, !dbg !14578
  %i.ch = zext i1 %i.cg to i8, !dbg !14578
  br label %bb.aj, !dbg !14579

bb.ag:                                            ; preds = %bb.ae
  %i.ci = icmp eq i32 %i.cb, 12288, !dbg !14580
  %i.cj = zext i1 %i.ci to i8, !dbg !14580
  br label %bb.aj, !dbg !14581

bb.ah:                                            ; preds = %bb.ae
  %i.ck = and i32 %i.cb, 255, !dbg !14582
  %i.cl = zext nneg i32 %i.ck to i64, !dbg !14582
  %i.cm = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.cl, !dbg !14583
  %i.cn = load i8, ptr %i.cm, align 1, !dbg !14583, !noundef !27
  br label %bb.aj, !dbg !14584

bb.ai:                                            ; preds = %bb.ae
  %i.co = and i32 %i.cb, 255, !dbg !14585
  %i.cp = zext nneg i32 %i.co to i64, !dbg !14585
  %i.cq = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.cp, !dbg !14586
  %i.cr = load i8, ptr %i.cq, align 1, !dbg !14586, !noundef !27
  %i.cs = lshr i8 %i.cr, 1, !dbg !14586
  br label %bb.aj, !dbg !14587

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.sroa.0.0.i50 = phi i8 [ %i.cj, %bb.ag ], [ %i.cn, %bb.ah ], [ %i.ch, %bb.af ], [ %i.cs, %bb.ai ], !dbg !14574
  %i.ct = trunc i8 %.sroa.0.0.i50 to i1, !dbg !14588
  br i1 %i.ct, label %bb.ak, label %.thread79, !dbg !14589

bb.ak:                                            ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.aj
    #dbg_value(ptr %1, !7893, !DIExpression(), !14590)
  %i.cu = invoke fastcc noundef zeroext i1 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4bumpB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %.noexc54 unwind label %.loopexit, !dbg !14592

.noexc54:                                         ; preds = %bb.ak
  br i1 %i.cu, label %bb.al, label %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit56, !dbg !14593

bb.al:                                            ; preds = %.noexc54
  invoke fastcc void @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE10bump_spaceB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit56 unwind label %.loopexit, !dbg !14594

_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit56: ; preds = %bb.al, %.noexc54
    #dbg_value(ptr %.val38, !14401, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !14447)
  %i.cv = load i64, ptr %i.j, align 8, !dbg !14543, !noundef !27
  %i.cw = icmp eq i64 %i.cv, %i.l, !dbg !14544
  br i1 %i.cw, label %.thread79, label %.lr.ph101, !dbg !14449

bb.am:                                            ; preds = %.thread79
  %i.cx = getelementptr inbounds nuw i8, ptr %.val38, i64 144, !dbg !14595
  %i.cy = load ptr, ptr %i.cx, align 8, !dbg !14595, !nonnull !27, !noundef !27 ; 2 uses
    #dbg_value(ptr %i.cy, !14247, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14560)
    #dbg_value(ptr %i.cy, !14561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14566)
    #dbg_value(ptr %i.cy, !14358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14359)
    #dbg_value(ptr %i.cy, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14609)
    #dbg_value(ptr %i.cy, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14611)
    #dbg_value(i64 %i.cc, !13223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14609)
    #dbg_value(i64 %i.cc, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14611)
    #dbg_value(i32 10, !13228, !DIExpression(), !14609)
    #dbg_value(i32 10, !13285, !DIExpression(), !14612)
    #dbg_value(i32 10, !13294, !DIExpression(), !14614)
    #dbg_value(i32 10, !13306, !DIExpression(), !14616)
    #dbg_value(i8 0, !13229, !DIExpression(), !14618)
    #dbg_value(i8 0, !13290, !DIExpression(), !14612)
  %cond = icmp eq i64 %i.cc, 1, !dbg !14619
  %i.cz = load i8, ptr %i.cy, align 1, !dbg !14620, !alias.scope !14621 ; 2 uses
  br i1 %cond, label %bb.an, label %thread-pre-split.i, !dbg !14619

bb.an:                                            ; preds = %bb.am
  switch i8 %i.cz, label %thread-pre-split.i [
    i8 43, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ], !dbg !14620

thread-pre-split.i:                               ; preds = %bb.am, %bb.an
  %cond.i = icmp eq i8 %i.cz, 43, !dbg !14620     ; 2 uses
  %i.da = sext i1 %cond.i to i64, !dbg !14620
  %.sroa.15.0.i = add nsw i64 %i.cc, %i.da, !dbg !14620 ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64, !dbg !14620
  %.sroa.0.0.i57 = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.sroa.0.0.idx.i, !dbg !14620 ; 9 uses
    #dbg_value(ptr %.sroa.0.0.i57, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14611)
    #dbg_value(ptr %.sroa.0.0.i57, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14609)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14611)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14609)
    #dbg_value(i32 0, !13240, !DIExpression(), !14624)
    #dbg_value(i32 0, !13297, !DIExpression(), !14614)
    #dbg_value(i32 0, !13315, !DIExpression(), !14616)
    #dbg_value(ptr %.sroa.0.0.i57, !13291, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14612)
    #dbg_value(i64 %.sroa.15.0.i, !13291, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14612)
  %i.db = icmp samesign ult i64 %.sroa.15.0.i, 9
    #dbg_value(ptr %.sroa.0.0.i57, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14611)
    #dbg_value(ptr %.sroa.0.0.i57, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14611)
    #dbg_value(ptr %.sroa.0.0.i57, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14609)
    #dbg_value(ptr %.sroa.0.0.i57, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14609)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14611)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14611)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14609)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14609)
    #dbg_value(i32 0, !13315, !DIExpression(), !14616)
    #dbg_value(i32 0, !13315, !DIExpression(), !14616)
    #dbg_value(i32 0, !13297, !DIExpression(), !14614)
    #dbg_value(i32 0, !13297, !DIExpression(), !14614)
    #dbg_value(i32 0, !13240, !DIExpression(), !14624)
    #dbg_value(i32 0, !13240, !DIExpression(), !14624)
  br i1 %i.db, label %.preheader.i, label %.preheader81.split.us.i.preheader, !dbg !14625

.preheader81.split.us.i:                          ; preds = %bb.ao
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i133, i64 1, !dbg !14626
    #dbg_value(ptr %i.dc, !13258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14627)
  %i.dd = add nsw i64 %.sroa.15.1.us.i132, -1, !dbg !14626 ; 2 uses
    #dbg_value(i64 %i.dd, !13258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14627)
    #dbg_value(ptr %i.dc, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14611)
    #dbg_value(ptr %i.dc, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14609)
    #dbg_value(i64 %i.dd, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14611)
    #dbg_value(i64 %i.dd, !13223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14609)
    #dbg_value(i32 %i.di, !13315, !DIExpression(), !14616)
    #dbg_value(i32 %i.di, !13297, !DIExpression(), !14614)
    #dbg_value(i32 %i.di, !13240, !DIExpression(), !14624)
  %.not72.us.i = icmp eq i64 %i.dd, 0, !dbg !14628
  br i1 %.not72.us.i, label %.loopexit.i, label %.preheader81.split.us.i.preheader, !dbg !14628

.preheader81.split.us.i.preheader:                ; preds = %thread-pre-split.i, %.preheader81.split.us.i
  %.sroa.0.1.us.i133 = phi ptr [ %i.dc, %.preheader81.split.us.i ], [ %.sroa.0.0.i57, %thread-pre-split.i ] ; 3 uses
  %.sroa.15.1.us.i132 = phi i64 [ %i.dd, %.preheader81.split.us.i ], [ %.sroa.15.0.i, %thread-pre-split.i ]
  %.sroa.045.0.us.i131 = phi i32 [ %i.di, %.preheader81.split.us.i ], [ 0, %thread-pre-split.i ]
    #dbg_value(ptr %.sroa.0.1.us.i133, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14611)
    #dbg_value(i64 %.sroa.15.1.us.i132, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14611)
    #dbg_value(i32 %.sroa.045.0.us.i131, !13315, !DIExpression(), !14616)
    #dbg_value(ptr %.sroa.0.1.us.i133, !13256, !DIExpression(), !14627)
    #dbg_value(ptr %.sroa.0.1.us.i133, !13258, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14627)
    #dbg_value(i64 %.sroa.15.1.us.i132, !13258, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14627)
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.us.i131, i32 10), !dbg !14629 ; 2 uses
  %3 = extractvalue { i32, i1 } %2, 1, !dbg !14629
    #dbg_value(i32 poison, !13298, !DIExpression(), !14630)
    #dbg_value(i1 %3, !13300, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14630)
    #dbg_value(i1 %3, !13339, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14631)
  br i1 %3, label %.split.us.i, label %bb.ao, !dbg !14633, !prof !1194

bb.ao:                                            ; preds = %.preheader81.split.us.i.preheader
  %4 = extractvalue { i32, i1 } %2, 0, !dbg !14629 ; 2 uses
    #dbg_value(i32 %4, !13298, !DIExpression(), !14630)
    #dbg_value(i64 %.sroa.15.1.us.i132, !13258, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14627)
    #dbg_value(ptr %.sroa.0.1.us.i133, !13258, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14627)
    #dbg_value(i32 %4, !13259, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14634)
    #dbg_value(i32 1, !13259, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14634)
  %i.de = load i8, ptr %.sroa.0.1.us.i133, align 1, !dbg !14635, !alias.scope !14621, !noundef !27
  %i.df = zext i8 %i.de to i32, !dbg !14636
    #dbg_value(i32 %i.df, !13347, !DIExpression(), !14637)
    #dbg_value(i32 10, !13352, !DIExpression(), !14637)
  %i.dg = add nsw i32 %i.df, -48, !dbg !14639     ; 2 uses
    #dbg_value(i32 poison, !13353, !DIExpression(), !14640)
  %i.dh = icmp ugt i32 %i.dg, 9, !dbg !14641
    #dbg_value(i32 %4, !13240, !DIExpression(), !14624)
    #dbg_value(i32 %4, !13297, !DIExpression(), !14614)
    #dbg_value(i32 %4, !13315, !DIExpression(), !14616)
  %i.di = add i32 %i.dg, %4                       ; 3 uses
  %i.dj = icmp ult i32 %i.di, %4
    #dbg_value(i1 %i.dj, !13339, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14642)
  %or.cond = select i1 %i.dh, i1 true, i1 %i.dj, !dbg !14645, !prof !14646
  br i1 %or.cond, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %.preheader81.split.us.i, !dbg !14645, !prof !14646

.preheader.i:                                     ; preds = %thread-pre-split.i
  %.not7391.i = icmp eq i64 %.sroa.15.0.i, 0, !dbg !14647
  br i1 %.not7391.i, label %.loopexit.i, label %.lr.ph.split.us.i, !dbg !14647

.lr.ph.split.us.i:                                ; preds = %.preheader.i
    #dbg_value(ptr %.sroa.0.0.i57, !13242, !DIExpression(), !14648)
    #dbg_value(ptr %.sroa.0.0.i57, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14648)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14648)
    #dbg_value(!DIArgList(i32 0, i32 10), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14624)
    #dbg_value(!DIArgList(i32 0, i32 10), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14614)
    #dbg_value(!DIArgList(i32 0, i32 10), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14616)
  %i.dk = load i8, ptr %.sroa.0.0.i57, align 1, !dbg !14649, !alias.scope !14621, !noundef !27
  %i.dl = zext i8 %i.dk to i32, !dbg !14650
    #dbg_value(i32 %i.dl, !13347, !DIExpression(), !14651)
    #dbg_value(i32 10, !13352, !DIExpression(), !14651)
  %i.dm = add nsw i32 %i.dl, -48, !dbg !14653     ; 3 uses
    #dbg_value(i32 poison, !13353, !DIExpression(), !14654)
  %i.dn = icmp ult i32 %i.dm, 10, !dbg !14655
  br i1 %i.dn, label %bb.ap, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !14656

bb.ap:                                            ; preds = %.lr.ph.split.us.i
    #dbg_value(i32 0, !13240, !DIExpression(), !14624)
    #dbg_value(i32 0, !13297, !DIExpression(), !14614)
    #dbg_value(i32 0, !13315, !DIExpression(), !14616)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14648)
    #dbg_value(ptr %.sroa.0.0.i57, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14648)
    #dbg_value(i32 poison, !13245, !DIExpression(), !14657)
    #dbg_value(ptr %.sroa.0.0.i57, !13233, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14611)
    #dbg_value(ptr %.sroa.0.0.i57, !13223, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14609)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14611)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14609)
    #dbg_value(i32 %i.dm, !13315, !DIExpression(), !14616)
    #dbg_value(i32 %i.dm, !13297, !DIExpression(), !14614)
    #dbg_value(i32 %i.dm, !13240, !DIExpression(), !14624)
  %.not73.us.i = icmp eq i64 %.sroa.15.0.i, 1, !dbg !14647
  br i1 %.not73.us.i, label %.loopexit.i, label %.lr.ph.split.us.i.1, !dbg !14647

.lr.ph.split.us.i.1:                              ; preds = %bb.ap
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i57, i64 1, !dbg !14658
    #dbg_value(ptr %i.do, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14648)
    #dbg_value(ptr %i.do, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14611)
    #dbg_value(ptr %i.do, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14609)
    #dbg_value(ptr %i.do, !13242, !DIExpression(), !14648)
    #dbg_value(ptr %i.do, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14648)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14648)
    #dbg_value(!DIArgList(i32 %i.dm, i32 10), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14624)
    #dbg_value(!DIArgList(i32 %i.dm, i32 10), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14614)
    #dbg_value(!DIArgList(i32 %i.dm, i32 10), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14616)
  %i.dp = load i8, ptr %i.do, align 1, !dbg !14649, !alias.scope !14621, !noundef !27
  %i.dq = zext i8 %i.dp to i32, !dbg !14650
    #dbg_value(i32 %i.dq, !13347, !DIExpression(), !14651)
    #dbg_value(i32 10, !13352, !DIExpression(), !14651)
  %i.dr = add nsw i32 %i.dq, -48, !dbg !14653     ; 2 uses
    #dbg_value(i32 poison, !13353, !DIExpression(), !14654)
  %i.ds = icmp ult i32 %i.dr, 10, !dbg !14655
  br i1 %i.ds, label %bb.aq, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !14656

bb.aq:                                            ; preds = %.lr.ph.split.us.i.1
  %i.dt = mul nuw nsw i32 %i.dm, 10, !dbg !14659
    #dbg_value(i32 %i.dt, !13240, !DIExpression(), !14624)
    #dbg_value(i32 %i.dt, !13297, !DIExpression(), !14614)
    #dbg_value(i32 %i.dt, !13315, !DIExpression(), !14616)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14648)
    #dbg_value(ptr %.sroa.0.0.i57, !13244, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14648)
    #dbg_value(i32 poison, !13245, !DIExpression(), !14657)
  %i.du = add nuw nsw i32 %i.dr, %i.dt, !dbg !14660 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i57, !13233, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14611)
    #dbg_value(ptr %.sroa.0.0.i57, !13223, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14609)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14611)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14609)
    #dbg_value(i32 %i.du, !13315, !DIExpression(), !14616)
    #dbg_value(i32 %i.du, !13297, !DIExpression(), !14614)
    #dbg_value(i32 %i.du, !13240, !DIExpression(), !14624)
  %.not73.us.i.1 = icmp eq i64 %.sroa.15.0.i, 2, !dbg !14647
  br i1 %.not73.us.i.1, label %.loopexit.i, label %.lr.ph.split.us.i.2, !dbg !14647

.lr.ph.split.us.i.2:                              ; preds = %bb.aq
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i57, i64 2, !dbg !14658
    #dbg_value(ptr %i.dv, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14648)
    #dbg_value(ptr %i.dv, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14611)
    #dbg_value(ptr %i.dv, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14609)
    #dbg_value(ptr %i.dv, !13242, !DIExpression(), !14648)
    #dbg_value(ptr %i.dv, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14648)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14648)
    #dbg_value(!DIArgList(i32 %i.du, i32 10), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14624)
    #dbg_value(!DIArgList(i32 %i.du, i32 10), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14614)
    #dbg_value(!DIArgList(i32 %i.du, i32 10), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14616)
  %i.dw = load i8, ptr %i.dv, align 1, !dbg !14649, !alias.scope !14621, !noundef !27
  %i.dx = zext i8 %i.dw to i32, !dbg !14650
    #dbg_value(i32 %i.dx, !13347, !DIExpression(), !14651)
    #dbg_value(i32 10, !13352, !DIExpression(), !14651)
  %i.dy = add nsw i32 %i.dx, -48, !dbg !14653     ; 2 uses
    #dbg_value(i32 poison, !13353, !DIExpression(), !14654)
  %i.dz = icmp ult i32 %i.dy, 10, !dbg !14655
  br i1 %i.dz, label %bb.ar, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !14656

bb.ar:                                            ; preds = %.lr.ph.split.us.i.2
  %i.ea = mul nuw nsw i32 %i.du, 10, !dbg !14659
    #dbg_value(i32 %i.ea, !13240, !DIExpression(), !14624)
    #dbg_value(i32 %i.ea, !13297, !DIExpression(), !14614)
    #dbg_value(i32 %i.ea, !13315, !DIExpression(), !14616)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14648)
    #dbg_value(ptr %.sroa.0.0.i57, !13244, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14648)
    #dbg_value(i32 poison, !13245, !DIExpression(), !14657)
  %i.eb = add nuw nsw i32 %i.dy, %i.ea, !dbg !14660 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i57, !13233, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14611)
    #dbg_value(ptr %.sroa.0.0.i57, !13223, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14609)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14611)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14609)
    #dbg_value(i32 %i.eb, !13315, !DIExpression(), !14616)
    #dbg_value(i32 %i.eb, !13297, !DIExpression(), !14614)
    #dbg_value(i32 %i.eb, !13240, !DIExpression(), !14624)
  %.not73.us.i.2 = icmp eq i64 %.sroa.15.0.i, 3, !dbg !14647
  br i1 %.not73.us.i.2, label %.loopexit.i, label %.lr.ph.split.us.i.3, !dbg !14647

.lr.ph.split.us.i.3:                              ; preds = %bb.ar
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i57, i64 3, !dbg !14658
    #dbg_value(ptr %i.ec, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14648)
    #dbg_value(ptr %i.ec, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14611)
    #dbg_value(ptr %i.ec, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14609)
    #dbg_value(ptr %i.ec, !13242, !DIExpression(), !14648)
    #dbg_value(ptr %i.ec, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14648)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14648)
    #dbg_value(!DIArgList(i32 %i.eb, i32 10), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14624)
    #dbg_value(!DIArgList(i32 %i.eb, i32 10), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14614)
    #dbg_value(!DIArgList(i32 %i.eb, i32 10), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14616)
  %i.ed = load i8, ptr %i.ec, align 1, !dbg !14649, !alias.scope !14621, !noundef !27
  %i.ee = zext i8 %i.ed to i32, !dbg !14650
    #dbg_value(i32 %i.ee, !13347, !DIExpression(), !14651)
    #dbg_value(i32 10, !13352, !DIExpression(), !14651)
  %i.ef = add nsw i32 %i.ee, -48, !dbg !14653     ; 2 uses
    #dbg_value(i32 poison, !13353, !DIExpression(), !14654)
  %i.eg = icmp ult i32 %i.ef, 10, !dbg !14655
  br i1 %i.eg, label %bb.as, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !14656

bb.as:                                            ; preds = %.lr.ph.split.us.i.3
  %i.eh = mul nuw nsw i32 %i.eb, 10, !dbg !14659
    #dbg_value(i32 %i.eh, !13240, !DIExpression(), !14624)
    #dbg_value(i32 %i.eh, !13297, !DIExpression(), !14614)
    #dbg_value(i32 %i.eh, !13315, !DIExpression(), !14616)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14648)
    #dbg_value(ptr %.sroa.0.0.i57, !13244, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14648)
    #dbg_value(i32 poison, !13245, !DIExpression(), !14657)
  %i.ei = add nuw nsw i32 %i.ef, %i.eh, !dbg !14660 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i57, !13233, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14611)
    #dbg_value(ptr %.sroa.0.0.i57, !13223, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14609)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14611)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14609)
    #dbg_value(i32 %i.ei, !13315, !DIExpression(), !14616)
    #dbg_value(i32 %i.ei, !13297, !DIExpression(), !14614)
    #dbg_value(i32 %i.ei, !13240, !DIExpression(), !14624)
  %.not73.us.i.3 = icmp eq i64 %.sroa.15.0.i, 4, !dbg !14647
  br i1 %.not73.us.i.3, label %.loopexit.i, label %.lr.ph.split.us.i.4, !dbg !14647

.lr.ph.split.us.i.4:                              ; preds = %bb.as
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i57, i64 4, !dbg !14658
    #dbg_value(ptr %i.ej, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14648)
    #dbg_value(ptr %i.ej, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14611)
    #dbg_value(ptr %i.ej, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14609)
    #dbg_value(ptr %i.ej, !13242, !DIExpression(), !14648)
    #dbg_value(ptr %i.ej, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14648)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14648)
    #dbg_value(!DIArgList(i32 %i.ei, i32 10), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14624)
    #dbg_value(!DIArgList(i32 %i.ei, i32 10), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14614)
    #dbg_value(!DIArgList(i32 %i.ei, i32 10), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !14616)
  %i.ek = load i8, ptr %i.ej, align 1, !dbg !14649, !alias.scope !14621, !noundef !27
  %i.el = zext i8 %i.ek to i32, !dbg !14650
    #dbg_value(i32 %i.el, !13347, !DIExpression(), !14651)
    #dbg_value(i32 10, !13352, !DIExpression(), !14651)
  %i.em = add nsw i32 %i.el, -48, !dbg !14653     ; 2 uses
    #dbg_value(i32 poison, !13353, !DIExpression(), !14654)
  %i.en = icmp ult i32 %i.em, 10, !dbg !14655
  br i1 %i.en, label %bb.at, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !14656

bb.at:                                            ; preds = %.lr.ph.split.us.i.4
  %i.eo = mul i32 %i.ei, 10, !dbg !14659
    #dbg_value(i32 %i.eo, !13240, !DIExpression(), !14624)
    #dbg_value(i32 %i.eo, !13297, !DIExpression(), !14614)
    #dbg_value(i32 %i.eo, !13315, !DIExpression(), !14616)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14648)
    #dbg_value(ptr %.sroa.0.0.i57, !13244, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14648)
    #dbg_value(i32 poison, !13245, !DIExpression(), !14657)
  %i.ep = add i32 %i.em, %i.eo, !dbg !14660       ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i57, !13233, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14611)
    #dbg_value(ptr %.sroa.0.0.i57, !13223, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14609)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14611)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14609)
    #dbg_value(i32 %i.ep, !13315, !DIExpression(), !14616)
    #dbg_value(i32 %i.ep, !13297, !DIExpression(), !14614)
    #dbg_value(i32 %i.ep, !13240, !DIExpression(), !14624)
  %.not73.us.i.4 = icmp eq i64 %.sroa.15.0.i, 5, !dbg !14647
  br i1 %.not73.us.i.4, label %.loopexit.i, label %.lr.ph.split.us.i.5, !dbg !14647

.lr.ph.split.us.i.5:                              ; preds = %bb.at
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i57, i64 5, !dbg !14658
    #dbg_value(ptr %i.eq, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14648)
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE15parse_hex_braceB9_:bb.a
    #dbg_value(i64 %i.x, !9839, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !15087)
    #dbg_value(i64 1, !9839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15087)
    #dbg_value(i64 %i.u, !9770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15089)
    #dbg_value(i64 %i.aa, !9770, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15089)
    #dbg_value(i64 %i.x, !9770, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !15089)
  %i.ab = invoke fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.i unwind label %.loopexit.split-lp, !dbg !15090

bb.i:                                             ; preds = %bb.h
  %i.ac = add nuw i64 %i.x, 1, !dbg !15082
    #dbg_value(i64 %i.ac, !9839, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15087)
    #dbg_value(i64 %i.ac, !9770, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15089)
  %i.ad = icmp eq i32 %i.ab, 10, !dbg !15091      ; 2 uses
  %spec.select.i = select i1 %i.ad, i64 1, i64 %i.ac, !dbg !15091 ; 2 uses
  %i.ae = zext i1 %i.ad to i64, !dbg !15091
  %spec.select18.i = add i64 %i.aa, %i.ae, !dbg !15091 ; 2 uses
    #dbg_value(i64 %spec.select18.i, !9770, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15089)
    #dbg_value(i64 %spec.select.i, !9770, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15089)
    #dbg_value(ptr %.val45, !9803, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !15092)
    #dbg_value(i64 %i.u, !14871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15094)
    #dbg_value(i64 %i.u, !14936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15095)
    #dbg_value(i64 %i.u, !14936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15096)
    #dbg_value(i64 %spec.select18.i, !14871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15094)
    #dbg_value(i64 %spec.select18.i, !14936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15095)
    #dbg_value(i64 %spec.select18.i, !14936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15096)
    #dbg_value(i64 %spec.select.i, !14871, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15094)
    #dbg_value(i64 %spec.select.i, !14936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15095)
    #dbg_value(i64 %spec.select.i, !14936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15096)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 22 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val45, i64 144 ; 3 uses
  br label %bb.j, !dbg !15097

bb.j:                                             ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit, %bb.i
    #dbg_value(ptr %1, !7893, !DIExpression(), !15098)
    #dbg_value(ptr %1, !7895, !DIExpression(), !15100)
    #dbg_value(ptr %1, !7900, !DIExpression(), !15102)
  %i.ai = invoke fastcc noundef zeroext i1 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4bumpB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %.noexc60 unwind label %.loopexit, !dbg !15104

.noexc60:                                         ; preds = %bb.j
  br i1 %i.ai, label %bb.k, label %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit.thread, !dbg !15105

bb.k:                                             ; preds = %.noexc60
  invoke fastcc void @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE10bump_spaceB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit unwind label %.loopexit, !dbg !15106

_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit: ; preds = %bb.k
    #dbg_value(ptr %.val45, !7919, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !15107)
  %i.aj = load i64, ptr %i.o, align 8, !dbg !15109, !noalias !15110, !noundef !27
  %.not = icmp eq i64 %i.aj, %i.ag, !dbg !15113
  br i1 %.not, label %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit.thread, label %bb.l, !dbg !15114

bb.l:                                             ; preds = %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit
  %i.ak = invoke fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.m unwind label %.loopexit, !dbg !15115

bb.m:                                             ; preds = %bb.l
  %i.al = icmp eq i32 %i.ak, 125, !dbg !15116
  br i1 %i.al, label %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit.thread, label %bb.n, !dbg !15116

bb.n:                                             ; preds = %bb.m
  %i.am = invoke fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.aw unwind label %.loopexit, !dbg !15117 ; 2 uses

_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit.thread: ; preds = %.noexc60, %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit, %bb.m
    #dbg_value(ptr %.val45, !15032, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !15118)
  %i.an = load i64, ptr %i.o, align 8, !dbg !15120, !noundef !27
  %i.ao = icmp eq i64 %i.an, %i.ag, !dbg !15121
  br i1 %i.ao, label %bb.ar, label %bb.o, !dbg !15122

bb.o:                                             ; preds = %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit.thread
    #dbg_value(ptr %.val45, !15032, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !15123)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !dbg !15125
    #dbg_value(ptr %i.m, !15126, !DIExpression(), !15129)
  %i.ap = load ptr, ptr %i.ah, align 8, !dbg !15131, !nonnull !27, !noundef !27 ; 3 uses
  %i.aq = load i64, ptr %i.n, align 8, !dbg !15144, !noundef !27 ; 2 uses
    #dbg_value(ptr %i.ap, !14875, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15145)
    #dbg_value(ptr %i.ap, !14982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14983)
    #dbg_value(i64 %i.aq, !14875, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15145)
    #dbg_value(i64 %i.aq, !14982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14983)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !15146
  %i.ar = invoke fastcc noundef i32 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4charB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.p unwind label %.loopexit.split-lp, !dbg !15147 ; 2 uses

bb.p:                                             ; preds = %bb.o
  store i32 %i.ar, ptr %i.g, align 4, !dbg !15146
    #dbg_value(ptr %i.g, !14877, !DIExpression(), !15148)
    #dbg_value(ptr @75, !14880, !DIExpression(), !15148)
  %i.as = icmp eq i32 %i.ar, 125, !dbg !15149
  br i1 %i.as, label %bb.q, label %bb.s, !dbg !15149, !prof !4047

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !15150
    #dbg_value(ptr %1, !7893, !DIExpression(), !15151)
    #dbg_value(ptr %1, !7895, !DIExpression(), !15153)
    #dbg_value(ptr %1, !7900, !DIExpression(), !15155)
  %i.at = invoke fastcc noundef zeroext i1 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4bumpB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %.noexc64 unwind label %.loopexit.split-lp, !dbg !15157

.noexc64:                                         ; preds = %bb.q
  br i1 %i.at, label %bb.r, label %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit66, !dbg !15158

bb.r:                                             ; preds = %.noexc64
  invoke fastcc void @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE10bump_spaceB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit66 unwind label %.loopexit.split-lp, !dbg !15159

bb.s:                                             ; preds = %bb.p
  invoke void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedccECs3roNzt6HBWW_12regex_syntax(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @75, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #20
          to label %bb.aq unwind label %.loopexit.split-lp, !dbg !15160

_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit66: ; preds = %bb.r, %.noexc64
  switch i64 %i.aq, label %thread-pre-split.i [
    i64 0, label %bb.al
    i64 1, label %bb.t
  ], !dbg !15161

bb.t:                                             ; preds = %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit66
  %i.au = load i8, ptr %i.ap, align 1, !dbg !15162, !alias.scope !15164, !noundef !27 ; 2 uses
  switch i8 %i.au, label %bb.u [
    i8 43, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ], !dbg !15162

thread-pre-split.i:                               ; preds = %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE19bump_and_bump_spaceB9_.exit66
  %.pr.i = load i8, ptr %i.ap, align 1, !dbg !15162, !alias.scope !15164
  br label %bb.u, !dbg !15162

bb.u:                                             ; preds = %thread-pre-split.i, %bb.t
  %i.av = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.au, %bb.t ], !dbg !15162
  %cond.i = icmp eq i8 %i.av, 43, !dbg !15162     ; 2 uses
  %i.aw = sext i1 %cond.i to i64, !dbg !15162
  %.sroa.15.0.i = add nsw i64 %i.aq, %i.aw, !dbg !15162 ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64, !dbg !15162
  %.sroa.0.0.i67 = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.idx.i, !dbg !15162 ; 9 uses
    #dbg_value(ptr %.sroa.0.0.i67, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15167)
    #dbg_value(ptr %.sroa.0.0.i67, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15168)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15167)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15168)
    #dbg_value(i32 0, !13240, !DIExpression(), !15169)
    #dbg_value(i32 0, !13297, !DIExpression(), !15170)
    #dbg_value(i32 0, !13315, !DIExpression(), !15172)
    #dbg_value(ptr %.sroa.0.0.i67, !13291, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15174)
    #dbg_value(i64 %.sroa.15.0.i, !13291, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15174)
  %i.ax = icmp samesign ult i64 %.sroa.15.0.i, 9
    #dbg_value(ptr %.sroa.0.0.i67, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15167)
    #dbg_value(ptr %.sroa.0.0.i67, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15167)
    #dbg_value(ptr %.sroa.0.0.i67, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15168)
    #dbg_value(ptr %.sroa.0.0.i67, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15168)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15167)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15167)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15168)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15168)
    #dbg_value(i32 0, !13315, !DIExpression(), !15172)
    #dbg_value(i32 0, !13315, !DIExpression(), !15172)
    #dbg_value(i32 0, !13297, !DIExpression(), !15170)
    #dbg_value(i32 0, !13297, !DIExpression(), !15170)
    #dbg_value(i32 0, !13240, !DIExpression(), !15169)
    #dbg_value(i32 0, !13240, !DIExpression(), !15169)
  br i1 %i.ax, label %.preheader.i, label %.preheader81.split.i.preheader, !dbg !15176

.preheader.i:                                     ; preds = %bb.u
  %.not7391.i = icmp eq i64 %.sroa.15.0.i, 0, !dbg !15177
  br i1 %.not7391.i, label %.loopexit.i, label %.lr.ph.split.i, !dbg !15177

.preheader81.split.i:                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i199, i64 1, !dbg !15178
    #dbg_value(ptr %i.ay, !13258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15179)
  %i.az = add nsw i64 %.sroa.15.1.i198, -1, !dbg !15178 ; 2 uses
    #dbg_value(i64 %i.az, !13258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15179)
    #dbg_value(ptr %i.ay, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15167)
    #dbg_value(ptr %i.ay, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15168)
    #dbg_value(i64 %i.az, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15167)
    #dbg_value(i64 %i.az, !13223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15168)
    #dbg_value(i32 %i.bm, !13315, !DIExpression(), !15172)
    #dbg_value(i32 %i.bm, !13297, !DIExpression(), !15170)
    #dbg_value(i32 %i.bm, !13240, !DIExpression(), !15169)
  %.not72.i = icmp eq i64 %i.az, 0, !dbg !15180
  br i1 %.not72.i, label %.loopexit.i, label %.preheader81.split.i.preheader, !dbg !15180

.loopexit.i:                                      ; preds = %.preheader81.split.i, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.fc, %bb.ad ], [ 0, %.preheader.i ], [ %spec.select99.i, %bb.w ], [ %i.co, %bb.x ], [ %i.cz, %bb.y ], [ %i.dk, %bb.z ], [ %i.dv, %bb.aa ], [ %i.eg, %bb.ab ], [ %i.er, %bb.ac ], [ %i.bm, %.preheader81.split.i ], !dbg !15181
    #dbg_value(i32 %.sroa.045.1.i, !13315, !DIExpression(), !15172)
    #dbg_value(i32 %.sroa.045.1.i, !13297, !DIExpression(), !15170)
    #dbg_value(i32 %.sroa.045.1.i, !13240, !DIExpression(), !15169)
  %i.ba = zext i32 %.sroa.045.1.i to i64, !dbg !15182
  %i.bb = shl nuw i64 %i.ba, 32, !dbg !15182
  br label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit, !dbg !15182

.preheader81.split.i.preheader:                   ; preds = %bb.u, %.preheader81.split.i
  %.sroa.0.1.i199 = phi ptr [ %i.ay, %.preheader81.split.i ], [ %.sroa.0.0.i67, %bb.u ] ; 3 uses
  %.sroa.15.1.i198 = phi i64 [ %i.az, %.preheader81.split.i ], [ %.sroa.15.0.i, %bb.u ]
  %.sroa.045.0.i197 = phi i32 [ %i.bm, %.preheader81.split.i ], [ 0, %bb.u ] ; 2 uses
    #dbg_value(ptr %.sroa.0.1.i199, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15167)
    #dbg_value(i64 %.sroa.15.1.i198, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15167)
    #dbg_value(i32 %.sroa.045.0.i197, !13315, !DIExpression(), !15172)
    #dbg_value(ptr %.sroa.0.1.i199, !13256, !DIExpression(), !15179)
    #dbg_value(ptr %.sroa.0.1.i199, !13258, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15179)
    #dbg_value(i64 %.sroa.15.1.i198, !13258, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !15179)
  %i.bc = icmp ugt i32 %.sroa.045.0.i197, 268435455, !dbg !15183
    #dbg_value(i32 poison, !13298, !DIExpression(), !15184)
    #dbg_value(i1 %i.bc, !13300, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15184)
    #dbg_value(i1 %i.bc, !13339, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15185)
  br i1 %i.bc, label %.split.us.i, label %bb.v, !dbg !15187, !prof !1194

bb.v:                                             ; preds = %.preheader81.split.i.preheader
  %i.bd = shl nuw i32 %.sroa.045.0.i197, 4, !dbg !15183 ; 2 uses
    #dbg_value(i32 %i.bd, !13298, !DIExpression(), !15184)
    #dbg_value(i64 %.sroa.15.1.i198, !13258, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !15179)
    #dbg_value(ptr %.sroa.0.1.i199, !13258, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15179)
    #dbg_value(i32 %i.bd, !13259, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !15188)
    #dbg_value(i32 1, !13259, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !15188)
  %i.be = load i8, ptr %.sroa.0.1.i199, align 1, !dbg !15189, !alias.scope !15164, !noundef !27 ; 2 uses
  %i.bf = zext i8 %i.be to i32, !dbg !15190       ; 2 uses
    #dbg_value(i32 %i.bf, !13347, !DIExpression(), !15191)
    #dbg_value(i32 16, !13352, !DIExpression(), !15191)
  %i.bg = icmp ugt i8 %i.be, 57, !dbg !15193
  %i.bh = add nsw i32 %i.bf, -65, !dbg !15193
  %i.bi = and i32 %i.bh, -33, !dbg !15193
  %i.bj = add nuw nsw i32 %i.bi, 10, !dbg !15193
  %i.bk = add nsw i32 %i.bf, -48, !dbg !15193
  %spec.select98.i = select i1 %i.bg, i32 %i.bj, i32 %i.bk, !dbg !15193 ; 2 uses
    #dbg_value(i32 %spec.select98.i, !13353, !DIExpression(), !15194)
  %i.bl = icmp ugt i32 %spec.select98.i, 15, !dbg !15195
    #dbg_value(i32 %i.bd, !13240, !DIExpression(), !15169)
    #dbg_value(i32 %i.bd, !13297, !DIExpression(), !15170)
    #dbg_value(i32 %i.bd, !13315, !DIExpression(), !15172)
  %i.bm = add i32 %spec.select98.i, %i.bd         ; 3 uses
  %i.bn = icmp ult i32 %i.bm, %i.bd
    #dbg_value(i1 %i.bn, !13339, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15196)
  %or.cond160 = select i1 %i.bl, i1 true, i1 %i.bn, !dbg !15199, !prof !14646
  br i1 %or.cond160, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %.preheader81.split.i, !dbg !15199, !prof !14646

.split.us.i:                                      ; preds = %.preheader81.split.i.preheader
  %i.bo = load i8, ptr %.sroa.0.1.i199, align 1, !dbg !15189, !alias.scope !15164, !noundef !27 ; 2 uses
  %i.bp = zext i8 %i.bo to i32, !dbg !15190       ; 2 uses
    #dbg_value(i32 %i.bp, !13347, !DIExpression(), !15200)
    #dbg_value(i32 16, !13352, !DIExpression(), !15200)
  %i.bq = icmp ugt i8 %i.bo, 57, !dbg !15202
  %i.br = add nsw i32 %i.bp, -65, !dbg !15202
  %i.bs = and i32 %i.br, -34, !dbg !15202
  %i.bt = add nuw nsw i32 %i.bs, 10, !dbg !15202
  %i.bu = add nsw i32 %i.bp, -48, !dbg !15202
  %.sroa.02.0.i75.i = select i1 %i.bq, i32 %i.bt, i32 %i.bu, !dbg !15202
    #dbg_value(i32 poison, !13353, !DIExpression(), !15203)
  %i.bv = icmp ult i32 %.sroa.02.0.i75.i, 16, !dbg !15204
  %spec.select.i68 = select i1 %i.bv, i64 513, i64 257, !dbg !15199
  br label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit, !dbg !15199

.lr.ph.split.i:                                   ; preds = %.preheader.i
    #dbg_value(ptr %.sroa.0.0.i67, !13242, !DIExpression(), !15205)
    #dbg_value(ptr %.sroa.0.0.i67, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15205)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !15205)
    #dbg_value(!DIArgList(i32 0, i32 16), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !15169)
    #dbg_value(!DIArgList(i32 0, i32 16), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !15170)
    #dbg_value(!DIArgList(i32 0, i32 16), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !15172)
  %i.bw = load i8, ptr %.sroa.0.0.i67, align 1, !dbg !15206, !alias.scope !15164, !noundef !27 ; 2 uses
  %i.bx = zext i8 %i.bw to i32, !dbg !15207       ; 2 uses
    #dbg_value(i32 %i.bx, !13347, !DIExpression(), !15208)
    #dbg_value(i32 16, !13352, !DIExpression(), !15208)
  %i.by = icmp ugt i8 %i.bw, 57, !dbg !15210
  %i.bz = add nsw i32 %i.bx, -65, !dbg !15210
  %i.ca = and i32 %i.bz, -33, !dbg !15210
  %i.cb = add nuw nsw i32 %i.ca, 10, !dbg !15210
  %i.cc = add nsw i32 %i.bx, -48, !dbg !15210
  %spec.select99.i = select i1 %i.by, i32 %i.cb, i32 %i.cc, !dbg !15210 ; 3 uses
    #dbg_value(i32 %spec.select99.i, !13353, !DIExpression(), !15211)
  %i.cd = icmp ult i32 %spec.select99.i, 16, !dbg !15212
  br i1 %i.cd, label %bb.w, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !15213

bb.w:                                             ; preds = %.lr.ph.split.i
    #dbg_value(i32 0, !13240, !DIExpression(), !15169)
    #dbg_value(i32 0, !13297, !DIExpression(), !15170)
    #dbg_value(i32 0, !13315, !DIExpression(), !15172)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !15205)
    #dbg_value(ptr %.sroa.0.0.i67, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15205)
    #dbg_value(i32 %spec.select99.i, !13245, !DIExpression(), !15214)
    #dbg_value(ptr %.sroa.0.0.i67, !13233, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15167)
    #dbg_value(ptr %.sroa.0.0.i67, !13223, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15168)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !15167)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !15168)
    #dbg_value(i32 %spec.select99.i, !13315, !DIExpression(), !15172)
    #dbg_value(i32 %spec.select99.i, !13297, !DIExpression(), !15170)
    #dbg_value(i32 %spec.select99.i, !13240, !DIExpression(), !15169)
  %.not73.i = icmp eq i64 %.sroa.15.0.i, 1, !dbg !15177
  br i1 %.not73.i, label %.loopexit.i, label %.lr.ph.split.i.1, !dbg !15177

.lr.ph.split.i.1:                                 ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i67, i64 1, !dbg !15215
    #dbg_value(ptr %i.ce, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15205)
    #dbg_value(ptr %i.ce, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15167)
    #dbg_value(ptr %i.ce, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15168)
    #dbg_value(ptr %i.ce, !13242, !DIExpression(), !15205)
    #dbg_value(ptr %i.ce, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15205)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !15205)
    #dbg_value(!DIArgList(i32 %spec.select99.i, i32 16), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !15169)
    #dbg_value(!DIArgList(i32 %spec.select99.i, i32 16), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !15170)
    #dbg_value(!DIArgList(i32 %spec.select99.i, i32 16), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !15172)
  %i.cf = load i8, ptr %i.ce, align 1, !dbg !15206, !alias.scope !15164, !noundef !27 ; 2 uses
  %i.cg = zext i8 %i.cf to i32, !dbg !15207       ; 2 uses
    #dbg_value(i32 %i.cg, !13347, !DIExpression(), !15208)
    #dbg_value(i32 16, !13352, !DIExpression(), !15208)
  %i.ch = icmp ugt i8 %i.cf, 57, !dbg !15210
  %i.ci = add nsw i32 %i.cg, -65, !dbg !15210
  %i.cj = and i32 %i.ci, -33, !dbg !15210
  %i.ck = add nuw nsw i32 %i.cj, 10, !dbg !15210
  %i.cl = add nsw i32 %i.cg, -48, !dbg !15210
  %spec.select99.i.1 = select i1 %i.ch, i32 %i.ck, i32 %i.cl, !dbg !15210 ; 2 uses
    #dbg_value(i32 %spec.select99.i.1, !13353, !DIExpression(), !15211)
  %i.cm = icmp ult i32 %spec.select99.i.1, 16, !dbg !15212
  br i1 %i.cm, label %bb.x, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !15213

bb.x:                                             ; preds = %.lr.ph.split.i.1
  %i.cn = shl nuw nsw i32 %spec.select99.i, 4, !dbg !15216
    #dbg_value(i32 %i.cn, !13240, !DIExpression(), !15169)
    #dbg_value(i32 %i.cn, !13297, !DIExpression(), !15170)
    #dbg_value(i32 %i.cn, !13315, !DIExpression(), !15172)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !15205)
    #dbg_value(ptr %.sroa.0.0.i67, !13244, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15205)
    #dbg_value(i32 %spec.select99.i.1, !13245, !DIExpression(), !15214)
  %i.co = or disjoint i32 %spec.select99.i.1, %i.cn, !dbg !15217 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i67, !13233, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15167)
    #dbg_value(ptr %.sroa.0.0.i67, !13223, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15168)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !15167)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !15168)
    #dbg_value(i32 %i.co, !13315, !DIExpression(), !15172)
    #dbg_value(i32 %i.co, !13297, !DIExpression(), !15170)
    #dbg_value(i32 %i.co, !13240, !DIExpression(), !15169)
  %.not73.i.1 = icmp eq i64 %.sroa.15.0.i, 2, !dbg !15177
  br i1 %.not73.i.1, label %.loopexit.i, label %.lr.ph.split.i.2, !dbg !15177

.lr.ph.split.i.2:                                 ; preds = %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i67, i64 2, !dbg !15215
    #dbg_value(ptr %i.cp, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15205)
    #dbg_value(ptr %i.cp, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15167)
    #dbg_value(ptr %i.cp, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15168)
    #dbg_value(ptr %i.cp, !13242, !DIExpression(), !15205)
    #dbg_value(ptr %i.cp, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15205)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !15205)
    #dbg_value(!DIArgList(i32 %i.co, i32 16), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !15169)
    #dbg_value(!DIArgList(i32 %i.co, i32 16), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !15170)
    #dbg_value(!DIArgList(i32 %i.co, i32 16), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !15172)
  %i.cq = load i8, ptr %i.cp, align 1, !dbg !15206, !alias.scope !15164, !noundef !27 ; 2 uses
  %i.cr = zext i8 %i.cq to i32, !dbg !15207       ; 2 uses
    #dbg_value(i32 %i.cr, !13347, !DIExpression(), !15208)
    #dbg_value(i32 16, !13352, !DIExpression(), !15208)
  %i.cs = icmp ugt i8 %i.cq, 57, !dbg !15210
  %i.ct = add nsw i32 %i.cr, -65, !dbg !15210
  %i.cu = and i32 %i.ct, -33, !dbg !15210
  %i.cv = add nuw nsw i32 %i.cu, 10, !dbg !15210
  %i.cw = add nsw i32 %i.cr, -48, !dbg !15210
  %spec.select99.i.2 = select i1 %i.cs, i32 %i.cv, i32 %i.cw, !dbg !15210 ; 2 uses
    #dbg_value(i32 %spec.select99.i.2, !13353, !DIExpression(), !15211)
  %i.cx = icmp ult i32 %spec.select99.i.2, 16, !dbg !15212
  br i1 %i.cx, label %bb.y, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !15213

bb.y:                                             ; preds = %.lr.ph.split.i.2
  %i.cy = shl nuw nsw i32 %i.co, 4, !dbg !15216
    #dbg_value(i32 %i.cy, !13240, !DIExpression(), !15169)
    #dbg_value(i32 %i.cy, !13297, !DIExpression(), !15170)
    #dbg_value(i32 %i.cy, !13315, !DIExpression(), !15172)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !15205)
    #dbg_value(ptr %.sroa.0.0.i67, !13244, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15205)
    #dbg_value(i32 %spec.select99.i.2, !13245, !DIExpression(), !15214)
  %i.cz = or disjoint i32 %spec.select99.i.2, %i.cy, !dbg !15217 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i67, !13233, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15167)
    #dbg_value(ptr %.sroa.0.0.i67, !13223, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15168)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !15167)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !15168)
    #dbg_value(i32 %i.cz, !13315, !DIExpression(), !15172)
    #dbg_value(i32 %i.cz, !13297, !DIExpression(), !15170)
    #dbg_value(i32 %i.cz, !13240, !DIExpression(), !15169)
  %.not73.i.2 = icmp eq i64 %.sroa.15.0.i, 3, !dbg !15177
  br i1 %.not73.i.2, label %.loopexit.i, label %.lr.ph.split.i.3, !dbg !15177

.lr.ph.split.i.3:                                 ; preds = %bb.y
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i67, i64 3, !dbg !15215
    #dbg_value(ptr %i.da, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15205)
    #dbg_value(ptr %i.da, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15167)
    #dbg_value(ptr %i.da, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15168)
    #dbg_value(ptr %i.da, !13242, !DIExpression(), !15205)
    #dbg_value(ptr %i.da, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15205)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !15205)
    #dbg_value(!DIArgList(i32 %i.cz, i32 16), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !15169)
    #dbg_value(!DIArgList(i32 %i.cz, i32 16), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !15170)
    #dbg_value(!DIArgList(i32 %i.cz, i32 16), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !15172)
  %i.db = load i8, ptr %i.da, align 1, !dbg !15206, !alias.scope !15164, !noundef !27 ; 2 uses
  %i.dc = zext i8 %i.db to i32, !dbg !15207       ; 2 uses
    #dbg_value(i32 %i.dc, !13347, !DIExpression(), !15208)
    #dbg_value(i32 16, !13352, !DIExpression(), !15208)
  %i.dd = icmp ugt i8 %i.db, 57, !dbg !15210
  %i.de = add nsw i32 %i.dc, -65, !dbg !15210
  %i.df = and i32 %i.de, -33, !dbg !15210
  %i.dg = add nuw nsw i32 %i.df, 10, !dbg !15210
  %i.dh = add nsw i32 %i.dc, -48, !dbg !15210
  %spec.select99.i.3 = select i1 %i.dd, i32 %i.dg, i32 %i.dh, !dbg !15210 ; 2 uses
    #dbg_value(i32 %spec.select99.i.3, !13353, !DIExpression(), !15211)
  %i.di = icmp ult i32 %spec.select99.i.3, 16, !dbg !15212
  br i1 %i.di, label %bb.z, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !15213

bb.z:                                             ; preds = %.lr.ph.split.i.3
end_hunk_1
begin_hunk_2_@_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE16parse_hex_digitsB9_:bb.a
    #dbg_value(i8 %i.al, !3920, !DIExpression(), !16633)
  %i.am = lshr i32 %i.t, 18, !dbg !16634
  %i.an = trunc nuw nsw i32 %i.am to i8, !dbg !16635
  %i.ao = or disjoint i8 %i.an, -16, !dbg !16635
    #dbg_value(i8 %i.ao, !3922, !DIExpression(), !16636)
  br i1 %i.x, label %bb.j, label %bb.g, !dbg !16637

bb.g:                                             ; preds = %.noexc85.peel
  br i1 %i.y, label %bb.i, label %bb.h, !dbg !16638

bb.h:                                             ; preds = %bb.g
  store i8 %i.ao, ptr %i.aa, align 1, !dbg !16639
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 1, !dbg !16640
  store i8 %i.al, ptr %i.ap, align 1, !dbg !16641
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 2, !dbg !16642
  store i8 %i.ah, ptr %i.aq, align 1, !dbg !16643
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 3, !dbg !16644
  store i8 %i.ad, ptr %i.ar, align 1, !dbg !16645
  br label %.peel.next, !dbg !16646

bb.i:                                             ; preds = %bb.g
  %i.as = or disjoint i8 %i.aj, -32, !dbg !16647
  store i8 %i.as, ptr %i.aa, align 1, !dbg !16647
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 1, !dbg !16648
  store i8 %i.ah, ptr %i.at, align 1, !dbg !16649
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 2, !dbg !16650
  store i8 %i.ad, ptr %i.au, align 1, !dbg !16651
  br label %.peel.next, !dbg !16652

bb.j:                                             ; preds = %.noexc85.peel
  %i.av = or disjoint i8 %i.af, -64, !dbg !16653
  store i8 %i.av, ptr %i.aa, align 1, !dbg !16653
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 1, !dbg !16654
  store i8 %i.ad, ptr %i.aw, align 1, !dbg !16655
  br label %.peel.next, !dbg !16652

bb.k:                                             ; preds = %bb.e
    #dbg_value(i64 1, !3817, !DIExpression(), !16602)
    #dbg_value(i64 1, !3836, !DIExpression(), !16584)
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 1)
          to label %.noexc86.peel unwind label %.loopexit.loopexit.split-lp, !dbg !16603

.noexc86.peel:                                    ; preds = %bb.k
    #dbg_value(ptr %i.k, !3881, !DIExpression(), !16604)
  %i.ax = load ptr, ptr %i.q, align 8, !dbg !16606, !alias.scope !16590, !nonnull !27, !noundef !27
    #dbg_value(ptr %i.ax, !3865, !DIExpression(), !16594)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.u, !dbg !16610
    #dbg_value(i32 %i.t, !3908, !DIExpression(), !16611)
    #dbg_value(ptr %i.ay, !3913, !DIExpression(), !16611)
    #dbg_value(ptr %i.ay, !3926, !DIExpression(), !16613)
    #dbg_value(ptr %i.ay, !3926, !DIExpression(), !16615)
    #dbg_value(ptr %i.ay, !3926, !DIExpression(), !16617)
    #dbg_value(ptr %i.ay, !3926, !DIExpression(), !16619)
    #dbg_value(ptr %i.ay, !3926, !DIExpression(), !16621)
    #dbg_value(ptr %i.ay, !3926, !DIExpression(), !16623)
    #dbg_value(i64 1, !3929, !DIExpression(), !16613)
    #dbg_value(i64 1, !3929, !DIExpression(), !16615)
    #dbg_value(i64 1, !3929, !DIExpression(), !16617)
    #dbg_value(i64 2, !3929, !DIExpression(), !16619)
    #dbg_value(i64 2, !3929, !DIExpression(), !16621)
    #dbg_value(i64 3, !3929, !DIExpression(), !16623)
    #dbg_value(i64 1, !3914, !DIExpression(), !16625)
  %i.az = trunc nuw nsw i32 %i.t to i8, !dbg !16656
  store i8 %i.az, ptr %i.ay, align 1, !dbg !16656
  br label %.peel.next, !dbg !16657

.peel.next:                                       ; preds = %bb.h, %bb.i, %bb.j, %.noexc86.peel
  %.sroa.0.011.i.peel = phi i64 [ 1, %.noexc86.peel ], [ 2, %bb.j ], [ 3, %bb.i ], [ 4, %bb.h ]
    #dbg_value(ptr %i.k, !3977, !DIExpression(), !16658)
  %i.ba = add nuw i64 %.sroa.0.011.i.peel, %i.u, !dbg !16660
    #dbg_value(i64 %i.ba, !3983, !DIExpression(), !16661)
  store i64 %i.ba, ptr %i.l, align 8, !dbg !16662, !alias.scope !16590
    #dbg_value(i32 1, !16367, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !16568)
    #dbg_value(ptr undef, !16403, !DIExpression(), !16408)
    #dbg_value(ptr undef, !16397, !DIExpression(), !16407)
    #dbg_value(ptr undef, !16385, !DIExpression(), !16390)
    #dbg_value(ptr undef, !16389, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !16569)
  br label %bb.af, !dbg !16391

.loopexit135:                                     ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit
    #dbg_value(ptr %1, !7893, !DIExpression(), !16663)
    #dbg_value(ptr %1, !7895, !DIExpression(), !16665)
    #dbg_value(ptr %1, !7900, !DIExpression(), !16667)
  %i.bb = invoke fastcc noundef zeroext i1 @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE4bumpB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %.noexc unwind label %.loopexit.split-lp, !dbg !16669

.noexc:                                           ; preds = %.loopexit135
  br i1 %i.bb, label %bb.l, label %.noexc57, !dbg !16670

bb.l:                                             ; preds = %.noexc
  invoke fastcc void @_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_7ParserIQNtB5_6ParserE10bump_spaceB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %.noexc57 unwind label %.loopexit.split-lp, !dbg !16671

.noexc57:                                         ; preds = %bb.l, %.noexc
    #dbg_value(ptr %.val47, !16548, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !16672)
    #dbg_value(ptr %i.k, !16674, !DIExpression(), !16677)
  %i.bc = load ptr, ptr %i.q, align 8, !dbg !16679, !nonnull !27, !noundef !27 ; 3 uses
  %i.bd = load i64, ptr %i.l, align 8, !dbg !16692, !noundef !27 ; 2 uses
    #dbg_value(ptr %i.bc, !16379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16693)
    #dbg_value(ptr %i.bc, !16504, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16505)
    #dbg_value(i64 %i.bd, !16379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16693)
    #dbg_value(i64 %i.bd, !16504, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16505)
    #dbg_value(ptr %i.bc, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16694)
    #dbg_value(ptr %i.bc, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16696)
    #dbg_value(i64 %i.bd, !13223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16694)
    #dbg_value(i64 %i.bd, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16696)
    #dbg_value(i32 16, !13228, !DIExpression(), !16694)
    #dbg_value(i32 16, !13285, !DIExpression(), !16697)
    #dbg_value(i32 16, !13294, !DIExpression(), !16699)
    #dbg_value(i32 16, !13306, !DIExpression(), !16701)
    #dbg_value(i8 0, !13229, !DIExpression(), !16703)
    #dbg_value(i8 0, !13290, !DIExpression(), !16697)
  switch i64 %i.bd, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.m
  ], !dbg !16704

bb.m:                                             ; preds = %.noexc57
  %i.be = load i8, ptr %i.bc, align 1, !dbg !16705, !alias.scope !16706, !noundef !27 ; 2 uses
  switch i8 %i.be, label %bb.n [
    i8 43, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ], !dbg !16705

thread-pre-split.i:                               ; preds = %.noexc57
  %.pr.i = load i8, ptr %i.bc, align 1, !dbg !16705, !alias.scope !16706
  br label %bb.n, !dbg !16705

bb.n:                                             ; preds = %thread-pre-split.i, %bb.m
  %i.bf = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.be, %bb.m ], !dbg !16705
  %cond.i = icmp eq i8 %i.bf, 43, !dbg !16705     ; 2 uses
  %i.bg = sext i1 %cond.i to i64, !dbg !16705
  %.sroa.15.0.i = add nsw i64 %i.bd, %i.bg, !dbg !16705 ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64, !dbg !16705
  %.sroa.0.0.i58 = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.0.0.idx.i, !dbg !16705 ; 9 uses
    #dbg_value(ptr %.sroa.0.0.i58, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16696)
    #dbg_value(ptr %.sroa.0.0.i58, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16694)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16696)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16694)
    #dbg_value(i32 0, !13240, !DIExpression(), !16709)
    #dbg_value(i32 0, !13297, !DIExpression(), !16699)
    #dbg_value(i32 0, !13315, !DIExpression(), !16701)
    #dbg_value(ptr %.sroa.0.0.i58, !13291, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16697)
    #dbg_value(i64 %.sroa.15.0.i, !13291, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16697)
  %i.bh = icmp samesign ult i64 %.sroa.15.0.i, 9
    #dbg_value(ptr %.sroa.0.0.i58, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16696)
    #dbg_value(ptr %.sroa.0.0.i58, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16696)
    #dbg_value(ptr %.sroa.0.0.i58, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16694)
    #dbg_value(ptr %.sroa.0.0.i58, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16694)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16696)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16696)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16694)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16694)
    #dbg_value(i32 0, !13315, !DIExpression(), !16701)
    #dbg_value(i32 0, !13315, !DIExpression(), !16701)
    #dbg_value(i32 0, !13297, !DIExpression(), !16699)
    #dbg_value(i32 0, !13297, !DIExpression(), !16699)
    #dbg_value(i32 0, !13240, !DIExpression(), !16709)
    #dbg_value(i32 0, !13240, !DIExpression(), !16709)
  br i1 %i.bh, label %.preheader.i, label %.preheader81.split.i.preheader, !dbg !16710

.preheader.i:                                     ; preds = %bb.n
  %.not7391.i = icmp eq i64 %.sroa.15.0.i, 0, !dbg !16711
  br i1 %.not7391.i, label %.loopexit.i, label %.lr.ph.split.i, !dbg !16711

.preheader81.split.i:                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i163, i64 1, !dbg !16712
    #dbg_value(ptr %i.bi, !13258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16713)
  %i.bj = add nsw i64 %.sroa.15.1.i162, -1, !dbg !16712 ; 2 uses
    #dbg_value(i64 %i.bj, !13258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16713)
    #dbg_value(ptr %i.bi, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16696)
    #dbg_value(ptr %i.bi, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16694)
    #dbg_value(i64 %i.bj, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16696)
    #dbg_value(i64 %i.bj, !13223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16694)
    #dbg_value(i32 %i.bw, !13315, !DIExpression(), !16701)
    #dbg_value(i32 %i.bw, !13297, !DIExpression(), !16699)
    #dbg_value(i32 %i.bw, !13240, !DIExpression(), !16709)
  %.not72.i = icmp eq i64 %i.bj, 0, !dbg !16714
  br i1 %.not72.i, label %.loopexit.i, label %.preheader81.split.i.preheader, !dbg !16714

.loopexit.i:                                      ; preds = %.preheader81.split.i, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.fm, %bb.w ], [ 0, %.preheader.i ], [ %spec.select99.i, %bb.p ], [ %i.cy, %bb.q ], [ %i.dj, %bb.r ], [ %i.du, %bb.s ], [ %i.ef, %bb.t ], [ %i.eq, %bb.u ], [ %i.fb, %bb.v ], [ %i.bw, %.preheader81.split.i ], !dbg !16715
    #dbg_value(i32 %.sroa.045.1.i, !13315, !DIExpression(), !16701)
    #dbg_value(i32 %.sroa.045.1.i, !13297, !DIExpression(), !16699)
    #dbg_value(i32 %.sroa.045.1.i, !13240, !DIExpression(), !16709)
  %i.bk = zext i32 %.sroa.045.1.i to i64, !dbg !16716
  %i.bl = shl nuw i64 %i.bk, 32, !dbg !16716
  br label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit, !dbg !16716

.preheader81.split.i.preheader:                   ; preds = %bb.n, %.preheader81.split.i
  %.sroa.0.1.i163 = phi ptr [ %i.bi, %.preheader81.split.i ], [ %.sroa.0.0.i58, %bb.n ] ; 3 uses
  %.sroa.15.1.i162 = phi i64 [ %i.bj, %.preheader81.split.i ], [ %.sroa.15.0.i, %bb.n ]
  %.sroa.045.0.i161 = phi i32 [ %i.bw, %.preheader81.split.i ], [ 0, %bb.n ] ; 2 uses
    #dbg_value(ptr %.sroa.0.1.i163, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16696)
    #dbg_value(i64 %.sroa.15.1.i162, !13233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16696)
    #dbg_value(i32 %.sroa.045.0.i161, !13315, !DIExpression(), !16701)
    #dbg_value(ptr %.sroa.0.1.i163, !13256, !DIExpression(), !16713)
    #dbg_value(ptr %.sroa.0.1.i163, !13258, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16713)
    #dbg_value(i64 %.sroa.15.1.i162, !13258, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16713)
  %i.bm = icmp ugt i32 %.sroa.045.0.i161, 268435455, !dbg !16717
    #dbg_value(i32 poison, !13298, !DIExpression(), !16718)
    #dbg_value(i1 %i.bm, !13300, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16718)
    #dbg_value(i1 %i.bm, !13339, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16719)
  br i1 %i.bm, label %.split.us.i, label %bb.o, !dbg !16721, !prof !1194

bb.o:                                             ; preds = %.preheader81.split.i.preheader
  %i.bn = shl nuw i32 %.sroa.045.0.i161, 4, !dbg !16717 ; 2 uses
    #dbg_value(i32 %i.bn, !13298, !DIExpression(), !16718)
    #dbg_value(i64 %.sroa.15.1.i162, !13258, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16713)
    #dbg_value(ptr %.sroa.0.1.i163, !13258, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16713)
    #dbg_value(i32 %i.bn, !13259, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !16722)
    #dbg_value(i32 1, !13259, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !16722)
  %i.bo = load i8, ptr %.sroa.0.1.i163, align 1, !dbg !16723, !alias.scope !16706, !noundef !27 ; 2 uses
  %i.bp = zext i8 %i.bo to i32, !dbg !16724       ; 2 uses
    #dbg_value(i32 %i.bp, !13347, !DIExpression(), !16725)
    #dbg_value(i32 16, !13352, !DIExpression(), !16725)
  %i.bq = icmp ugt i8 %i.bo, 57, !dbg !16727
  %i.br = add nsw i32 %i.bp, -65, !dbg !16727
  %i.bs = and i32 %i.br, -33, !dbg !16727
  %i.bt = add nuw nsw i32 %i.bs, 10, !dbg !16727
  %i.bu = add nsw i32 %i.bp, -48, !dbg !16727
  %spec.select98.i = select i1 %i.bq, i32 %i.bt, i32 %i.bu, !dbg !16727 ; 2 uses
    #dbg_value(i32 %spec.select98.i, !13353, !DIExpression(), !16728)
  %i.bv = icmp ugt i32 %spec.select98.i, 15, !dbg !16729
    #dbg_value(i32 %i.bn, !13240, !DIExpression(), !16709)
    #dbg_value(i32 %i.bn, !13297, !DIExpression(), !16699)
    #dbg_value(i32 %i.bn, !13315, !DIExpression(), !16701)
  %i.bw = add i32 %spec.select98.i, %i.bn         ; 3 uses
  %i.bx = icmp ult i32 %i.bw, %i.bn
    #dbg_value(i1 %i.bx, !13339, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16730)
  %or.cond115 = select i1 %i.bv, i1 true, i1 %i.bx, !dbg !16733, !prof !14646
  br i1 %or.cond115, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %.preheader81.split.i, !dbg !16733, !prof !14646

.split.us.i:                                      ; preds = %.preheader81.split.i.preheader
  %i.by = load i8, ptr %.sroa.0.1.i163, align 1, !dbg !16723, !alias.scope !16706, !noundef !27 ; 2 uses
  %i.bz = zext i8 %i.by to i32, !dbg !16724       ; 2 uses
    #dbg_value(i32 %i.bz, !13347, !DIExpression(), !16734)
    #dbg_value(i32 16, !13352, !DIExpression(), !16734)
  %i.ca = icmp ugt i8 %i.by, 57, !dbg !16736
  %i.cb = add nsw i32 %i.bz, -65, !dbg !16736
  %i.cc = and i32 %i.cb, -34, !dbg !16736
  %i.cd = add nuw nsw i32 %i.cc, 10, !dbg !16736
  %i.ce = add nsw i32 %i.bz, -48, !dbg !16736
  %.sroa.02.0.i75.i = select i1 %i.ca, i32 %i.cd, i32 %i.ce, !dbg !16736
    #dbg_value(i32 poison, !13353, !DIExpression(), !16737)
  %i.cf = icmp ult i32 %.sroa.02.0.i75.i, 16, !dbg !16738
  %spec.select.i = select i1 %i.cf, i64 513, i64 257, !dbg !16733
  br label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit, !dbg !16733

.lr.ph.split.i:                                   ; preds = %.preheader.i
    #dbg_value(ptr %.sroa.0.0.i58, !13242, !DIExpression(), !16739)
    #dbg_value(ptr %.sroa.0.0.i58, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16739)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16739)
    #dbg_value(!DIArgList(i32 0, i32 16), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !16709)
    #dbg_value(!DIArgList(i32 0, i32 16), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !16699)
    #dbg_value(!DIArgList(i32 0, i32 16), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !16701)
  %i.cg = load i8, ptr %.sroa.0.0.i58, align 1, !dbg !16740, !alias.scope !16706, !noundef !27 ; 2 uses
  %i.ch = zext i8 %i.cg to i32, !dbg !16741       ; 2 uses
    #dbg_value(i32 %i.ch, !13347, !DIExpression(), !16742)
    #dbg_value(i32 16, !13352, !DIExpression(), !16742)
  %i.ci = icmp ugt i8 %i.cg, 57, !dbg !16744
  %i.cj = add nsw i32 %i.ch, -65, !dbg !16744
  %i.ck = and i32 %i.cj, -33, !dbg !16744
  %i.cl = add nuw nsw i32 %i.ck, 10, !dbg !16744
  %i.cm = add nsw i32 %i.ch, -48, !dbg !16744
  %spec.select99.i = select i1 %i.ci, i32 %i.cl, i32 %i.cm, !dbg !16744 ; 3 uses
    #dbg_value(i32 %spec.select99.i, !13353, !DIExpression(), !16745)
  %i.cn = icmp ult i32 %spec.select99.i, 16, !dbg !16746
  br i1 %i.cn, label %bb.p, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !16747

bb.p:                                             ; preds = %.lr.ph.split.i
    #dbg_value(i32 0, !13240, !DIExpression(), !16709)
    #dbg_value(i32 0, !13297, !DIExpression(), !16699)
    #dbg_value(i32 0, !13315, !DIExpression(), !16701)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16739)
    #dbg_value(ptr %.sroa.0.0.i58, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16739)
    #dbg_value(i32 %spec.select99.i, !13245, !DIExpression(), !16748)
    #dbg_value(ptr %.sroa.0.0.i58, !13233, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16696)
    #dbg_value(ptr %.sroa.0.0.i58, !13223, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16694)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16696)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16694)
    #dbg_value(i32 %spec.select99.i, !13315, !DIExpression(), !16701)
    #dbg_value(i32 %spec.select99.i, !13297, !DIExpression(), !16699)
    #dbg_value(i32 %spec.select99.i, !13240, !DIExpression(), !16709)
  %.not73.i = icmp eq i64 %.sroa.15.0.i, 1, !dbg !16711
  br i1 %.not73.i, label %.loopexit.i, label %.lr.ph.split.i.1, !dbg !16711

.lr.ph.split.i.1:                                 ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i58, i64 1, !dbg !16749
    #dbg_value(ptr %i.co, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16739)
    #dbg_value(ptr %i.co, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16696)
    #dbg_value(ptr %i.co, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16694)
    #dbg_value(ptr %i.co, !13242, !DIExpression(), !16739)
    #dbg_value(ptr %i.co, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16739)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16739)
    #dbg_value(!DIArgList(i32 %spec.select99.i, i32 16), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !16709)
    #dbg_value(!DIArgList(i32 %spec.select99.i, i32 16), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !16699)
    #dbg_value(!DIArgList(i32 %spec.select99.i, i32 16), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !16701)
  %i.cp = load i8, ptr %i.co, align 1, !dbg !16740, !alias.scope !16706, !noundef !27 ; 2 uses
  %i.cq = zext i8 %i.cp to i32, !dbg !16741       ; 2 uses
    #dbg_value(i32 %i.cq, !13347, !DIExpression(), !16742)
    #dbg_value(i32 16, !13352, !DIExpression(), !16742)
  %i.cr = icmp ugt i8 %i.cp, 57, !dbg !16744
  %i.cs = add nsw i32 %i.cq, -65, !dbg !16744
  %i.ct = and i32 %i.cs, -33, !dbg !16744
  %i.cu = add nuw nsw i32 %i.ct, 10, !dbg !16744
  %i.cv = add nsw i32 %i.cq, -48, !dbg !16744
  %spec.select99.i.1 = select i1 %i.cr, i32 %i.cu, i32 %i.cv, !dbg !16744 ; 2 uses
    #dbg_value(i32 %spec.select99.i.1, !13353, !DIExpression(), !16745)
  %i.cw = icmp ult i32 %spec.select99.i.1, 16, !dbg !16746
  br i1 %i.cw, label %bb.q, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !16747

bb.q:                                             ; preds = %.lr.ph.split.i.1
  %i.cx = shl nuw nsw i32 %spec.select99.i, 4, !dbg !16750
    #dbg_value(i32 %i.cx, !13240, !DIExpression(), !16709)
    #dbg_value(i32 %i.cx, !13297, !DIExpression(), !16699)
    #dbg_value(i32 %i.cx, !13315, !DIExpression(), !16701)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16739)
    #dbg_value(ptr %.sroa.0.0.i58, !13244, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16739)
    #dbg_value(i32 %spec.select99.i.1, !13245, !DIExpression(), !16748)
  %i.cy = or disjoint i32 %spec.select99.i.1, %i.cx, !dbg !16751 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i58, !13233, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16696)
    #dbg_value(ptr %.sroa.0.0.i58, !13223, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16694)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16696)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16694)
    #dbg_value(i32 %i.cy, !13315, !DIExpression(), !16701)
    #dbg_value(i32 %i.cy, !13297, !DIExpression(), !16699)
    #dbg_value(i32 %i.cy, !13240, !DIExpression(), !16709)
  %.not73.i.1 = icmp eq i64 %.sroa.15.0.i, 2, !dbg !16711
  br i1 %.not73.i.1, label %.loopexit.i, label %.lr.ph.split.i.2, !dbg !16711

.lr.ph.split.i.2:                                 ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i58, i64 2, !dbg !16749
    #dbg_value(ptr %i.cz, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16739)
    #dbg_value(ptr %i.cz, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16696)
    #dbg_value(ptr %i.cz, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16694)
    #dbg_value(ptr %i.cz, !13242, !DIExpression(), !16739)
    #dbg_value(ptr %i.cz, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16739)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16739)
    #dbg_value(!DIArgList(i32 %i.cy, i32 16), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !16709)
    #dbg_value(!DIArgList(i32 %i.cy, i32 16), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !16699)
    #dbg_value(!DIArgList(i32 %i.cy, i32 16), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !16701)
  %i.da = load i8, ptr %i.cz, align 1, !dbg !16740, !alias.scope !16706, !noundef !27 ; 2 uses
  %i.db = zext i8 %i.da to i32, !dbg !16741       ; 2 uses
    #dbg_value(i32 %i.db, !13347, !DIExpression(), !16742)
    #dbg_value(i32 16, !13352, !DIExpression(), !16742)
  %i.dc = icmp ugt i8 %i.da, 57, !dbg !16744
  %i.dd = add nsw i32 %i.db, -65, !dbg !16744
  %i.de = and i32 %i.dd, -33, !dbg !16744
  %i.df = add nuw nsw i32 %i.de, 10, !dbg !16744
  %i.dg = add nsw i32 %i.db, -48, !dbg !16744
  %spec.select99.i.2 = select i1 %i.dc, i32 %i.df, i32 %i.dg, !dbg !16744 ; 2 uses
    #dbg_value(i32 %spec.select99.i.2, !13353, !DIExpression(), !16745)
  %i.dh = icmp ult i32 %spec.select99.i.2, 16, !dbg !16746
  br i1 %i.dh, label %bb.r, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !16747

bb.r:                                             ; preds = %.lr.ph.split.i.2
  %i.di = shl nuw nsw i32 %i.cy, 4, !dbg !16750
    #dbg_value(i32 %i.di, !13240, !DIExpression(), !16709)
    #dbg_value(i32 %i.di, !13297, !DIExpression(), !16699)
    #dbg_value(i32 %i.di, !13315, !DIExpression(), !16701)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16739)
    #dbg_value(ptr %.sroa.0.0.i58, !13244, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16739)
    #dbg_value(i32 %spec.select99.i.2, !13245, !DIExpression(), !16748)
  %i.dj = or disjoint i32 %spec.select99.i.2, %i.di, !dbg !16751 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i58, !13233, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16696)
    #dbg_value(ptr %.sroa.0.0.i58, !13223, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16694)
    #dbg_value(i64 %.sroa.15.0.i, !13233, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16696)
    #dbg_value(i64 %.sroa.15.0.i, !13223, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16694)
    #dbg_value(i32 %i.dj, !13315, !DIExpression(), !16701)
    #dbg_value(i32 %i.dj, !13297, !DIExpression(), !16699)
    #dbg_value(i32 %i.dj, !13240, !DIExpression(), !16709)
  %.not73.i.2 = icmp eq i64 %.sroa.15.0.i, 3, !dbg !16711
  br i1 %.not73.i.2, label %.loopexit.i, label %.lr.ph.split.i.3, !dbg !16711

.lr.ph.split.i.3:                                 ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i58, i64 3, !dbg !16749
    #dbg_value(ptr %i.dk, !13244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16739)
    #dbg_value(ptr %i.dk, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16696)
    #dbg_value(ptr %i.dk, !13223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16694)
    #dbg_value(ptr %i.dk, !13242, !DIExpression(), !16739)
    #dbg_value(ptr %i.dk, !13244, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16739)
    #dbg_value(i64 %.sroa.15.0.i, !13244, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16739)
    #dbg_value(!DIArgList(i32 %i.dj, i32 16), !13240, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !16709)
    #dbg_value(!DIArgList(i32 %i.dj, i32 16), !13297, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !16699)
    #dbg_value(!DIArgList(i32 %i.dj, i32 16), !13315, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !16701)
  %i.dl = load i8, ptr %i.dk, align 1, !dbg !16740, !alias.scope !16706, !noundef !27 ; 2 uses
  %i.dm = zext i8 %i.dl to i32, !dbg !16741       ; 2 uses
    #dbg_value(i32 %i.dm, !13347, !DIExpression(), !16742)
    #dbg_value(i32 16, !13352, !DIExpression(), !16742)
  %i.dn = icmp ugt i8 %i.dl, 57, !dbg !16744
  %i.do = add nsw i32 %i.dm, -65, !dbg !16744
  %i.dp = and i32 %i.do, -33, !dbg !16744
  %i.dq = add nuw nsw i32 %i.dp, 10, !dbg !16744
  %i.dr = add nsw i32 %i.dm, -48, !dbg !16744
  %spec.select99.i.3 = select i1 %i.dn, i32 %i.dq, i32 %i.dr, !dbg !16744 ; 2 uses
    #dbg_value(i32 %spec.select99.i.3, !13353, !DIExpression(), !16745)
  %i.ds = icmp ult i32 %spec.select99.i.3, 16, !dbg !16746
  br i1 %i.ds, label %bb.s, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !16747

bb.s:                                             ; preds = %.lr.ph.split.i.3
end_hunk_2
begin_hunk_3_@_RNvXsC_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_9ErrorKindNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq:bb.a
    #dbg_value(ptr %0, !3290, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !26956)
    #dbg_value(ptr %1, !3198, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !26955)
    #dbg_value(ptr %1, !3296, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !26958)
    #dbg_value(ptr poison, !3304, !DIExpression(), !26959)
    #dbg_value(ptr poison, !3305, !DIExpression(), !26960)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !26961
  %i.cq = load i32, ptr %i.cp, align 4, !dbg !26961, !noundef !27
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !26962
  %i.cs = load i32, ptr %i.cr, align 4, !dbg !26962, !noundef !27
  %i.ct = icmp eq i32 %i.cq, %i.cs, !dbg !26961
  br label %_RNvXsI_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_4SpanNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, !dbg !26963
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCsj6eKBz9Db1c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !dbg !26964 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !26971, !DIExpression(), !26973)
    #dbg_value(ptr %1, !26972, !DIExpression(), !26973)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26974
  store ptr %0, ptr %i.a, align 8, !dbg !26974
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123), !dbg !26975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26976
  ret i1 %i.b, !dbg !26977
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast7CommentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast7CommentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast9FlagsItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsr_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_3AstNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXss_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_8ClassSetNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_3Ast7literal(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_3Ast9assertion(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_3Ast3dot(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_3Ast10class_perl(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_3Ast13class_unicode(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(112)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef range(i32 0, 1114112)) unnamed_addr #4

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data1n11lookup_slow(i32 noundef range(i32 0, 1114112)) unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_3Ast5flags(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(120)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedccECs3roNzt6HBWW_12regex_syntax(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsd_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_6Concat8into_ast(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_3Ast11alternation(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsm_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_13ClassSetUnion9into_item(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3roNzt6HBWW_12regex_syntax(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsm_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_13ClassSetUnion4push(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsc_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_11Alternation8into_ast(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_3Ast5group(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(144)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMsp_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_5Flags8add_item(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_3Ast5empty(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCsj6eKBz9Db1c_4core3fmtcNtB5_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_3Ast15class_bracketed(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(216)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 14) i8 @_RNvMsg_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_14ClassAsciiKind9from_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3astNtB5_3Ast10repetition(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(128)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs3roNzt6HBWW_12regex_syntax3ast7visitor5visitINtNtB4_5parse11NestLimiterQNtBT_6ParserEEB6_(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast7CommentE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3roNzt6HBWW_12regex_syntax3ast5parse10ClassStateE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3roNzt6HBWW_12regex_syntax3ast5parse10GroupStateE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast11CaptureNameE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCsj6eKBz9Db1c_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { noreturn }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { nounwind }
attributes #23 = { cold }
attributes #24 = { "function-inline-cost-multiplier"="2" }
attributes #25 = { noinline noreturn }
attributes #26 = { noinline }

!llvm.module.flags = !{!37, !38, !39, !40, !41}
!llvm.ident = !{!42}
!llvm.dbg.cu = !{!43}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "<core::num::error::ParseIntError as core::fmt::Debug>::{vtable}", scope: null, file: !2, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "<unknown>", directory: "")
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<core::num::error::ParseIntError as core::fmt::Debug>::{vtable_type}", file: !2, size: 256, align: 64, flags: DIFlagArtificial, elements: !4, vtableHolder: !12, templateParams: !27, identifier: "6932c8e2e68886d7a7afce8a936ed77d")
!4 = !{!5, !8, !10, !11}
!5 = !DIDerivedType(tag: DW_TAG_member, name: "drop_in_place", scope: !3, file: !2, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const ()", baseType: !7, size: 64, align: 64, dwarfAddressSpace: 0)
!7 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!9 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3, file: !2, baseType: !9, size: 64, align: 64, offset: 128)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "__method3", scope: !3, file: !2, baseType: !6, size: 64, align: 64, offset: 192)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ParseIntError", scope: !13, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !16, templateParams: !27, identifier: "95ce48418a059b5698d553309e0047fa")
!13 = !DINamespace(name: "error", scope: !14)
!14 = !DINamespace(name: "num", scope: !15)
!15 = !DINamespace(name: "core", scope: null)
!16 = !{!17}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !12, file: !2, baseType: !18, size: 8, align: 8, flags: DIFlagProtected)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IntErrorKind", scope: !13, file: !2, baseType: !19, size: 8, align: 8, flags: DIFlagEnumClass, elements: !20)
!19 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24, !25, !26}
!21 = !DIEnumerator(name: "Empty", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "InvalidDigit", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "PosOverflow", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "NegOverflow", value: 3, isUnsigned: true)
!25 = !DIEnumerator(name: "Zero", value: 4, isUnsigned: true)
!26 = !DIEnumerator(name: "NotAPowerOfTwo", value: 5, isUnsigned: true)
!27 = !{}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "<&core::num::error::IntErrorKind as core::fmt::Debug>::{vtable}", scope: null, file: !2, type: !30, isLocal: true, isDefinition: true)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&core::num::error::IntErrorKind as core::fmt::Debug>::{vtable_type}", file: !2, size: 256, align: 64, flags: DIFlagArtificial, elements: !31, vtableHolder: !36, templateParams: !27, identifier: "be7a65dd449a73c27f115d1ef64bba10")
!31 = !{!32, !33, !34, !35}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "drop_in_place", scope: !30, file: !2, baseType: !6, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !30, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !30, file: !2, baseType: !9, size: 64, align: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__method3", scope: !30, file: !2, baseType: !6, size: 64, align: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::num::error::IntErrorKind", baseType: !18, size: 64, align: 64, dwarfAddressSpace: 0)
!37 = !{i32 8, !"PIC Level", i32 2}
!38 = !{i32 2, !"RtLibUseGOT", i32 1}
!39 = !{i32 7, !"uwtable", i32 2}
!40 = !{i32 7, !"Dwarf Version", i32 4}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!43 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !44, producer: "clang LLVM (rustc version 1.100.0-nightly (67854e511 2026-08-15))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, globals: !198, splitDebugInlining: false, nameTableKind: None)
!44 = !DIFile(filename: "regex-syntax/src/lib.rs/@/regex_syntax.2817212ec1702884-cgu.00", directory: "/opt-bench/work/regex-rs/regex")
!45 = !{!46, !53, !60, !69, !83, !88, !93, !102, !118, !18, !123, !192}
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Ordering", scope: !47, file: !2, baseType: !48, size: 8, align: 8, flags: DIFlagEnumClass, elements: !49)
!47 = !DINamespace(name: "cmp", scope: !15)
!48 = !DIBasicType(name: "i8", size: 8, encoding: DW_ATE_signed)
!49 = !{!50, !51, !52}
!50 = !DIEnumerator(name: "Less", value: -1)
!51 = !DIEnumerator(name: "Equal", value: 0)
!52 = !DIEnumerator(name: "Greater", value: 1)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "HexLiteralKind", scope: !54, file: !2, baseType: !19, size: 8, align: 8, flags: DIFlagEnumClass, elements: !56)
!54 = !DINamespace(name: "ast", scope: !55)
!55 = !DINamespace(name: "regex_syntax", scope: null)
!56 = !{!57, !58, !59}
!57 = !DIEnumerator(name: "X", value: 0, isUnsigned: true)
!58 = !DIEnumerator(name: "UnicodeShort", value: 1, isUnsigned: true)
!59 = !DIEnumerator(name: "UnicodeLong", value: 2, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "SpecialLiteralKind", scope: !54, file: !2, baseType: !19, size: 8, align: 8, flags: DIFlagEnumClass, elements: !61)
!61 = !{!62, !63, !64, !65, !66, !67, !68}
!62 = !DIEnumerator(name: "Bell", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "FormFeed", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "Tab", value: 2, isUnsigned: true)
!65 = !DIEnumerator(name: "LineFeed", value: 3, isUnsigned: true)
!66 = !DIEnumerator(name: "CarriageReturn", value: 4, isUnsigned: true)
!67 = !DIEnumerator(name: "VerticalTab", value: 5, isUnsigned: true)
!68 = !DIEnumerator(name: "Space", value: 6, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "AssertionKind", scope: !54, file: !2, baseType: !19, size: 8, align: 8, flags: DIFlagEnumClass, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82}
!71 = !DIEnumerator(name: "StartLine", value: 0, isUnsigned: true)
!72 = !DIEnumerator(name: "EndLine", value: 1, isUnsigned: true)
!73 = !DIEnumerator(name: "StartText", value: 2, isUnsigned: true)
!74 = !DIEnumerator(name: "EndText", value: 3, isUnsigned: true)
!75 = !DIEnumerator(name: "WordBoundary", value: 4, isUnsigned: true)
!76 = !DIEnumerator(name: "NotWordBoundary", value: 5, isUnsigned: true)
!77 = !DIEnumerator(name: "WordBoundaryStart", value: 6, isUnsigned: true)
!78 = !DIEnumerator(name: "WordBoundaryEnd", value: 7, isUnsigned: true)
!79 = !DIEnumerator(name: "WordBoundaryStartAngle", value: 8, isUnsigned: true)
!80 = !DIEnumerator(name: "WordBoundaryEndAngle", value: 9, isUnsigned: true)
!81 = !DIEnumerator(name: "WordBoundaryStartHalf", value: 10, isUnsigned: true)
!82 = !DIEnumerator(name: "WordBoundaryEndHalf", value: 11, isUnsigned: true)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ClassPerlKind", scope: !54, file: !2, baseType: !19, size: 8, align: 8, flags: DIFlagEnumClass, elements: !84)
!84 = !{!85, !86, !87}
!85 = !DIEnumerator(name: "Digit", value: 0, isUnsigned: true)
!86 = !DIEnumerator(name: "Space", value: 1, isUnsigned: true)
!87 = !DIEnumerator(name: "Word", value: 2, isUnsigned: true)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ClassUnicodeOpKind", scope: !54, file: !2, baseType: !19, size: 8, align: 8, flags: DIFlagEnumClass, elements: !89)
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "Equal", value: 0, isUnsigned: true)
!91 = !DIEnumerator(name: "Colon", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "NotEqual", value: 2, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Flag", scope: !54, file: !2, baseType: !19, size: 8, align: 8, flags: DIFlagEnumClass, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100, !101}
!95 = !DIEnumerator(name: "CaseInsensitive", value: 0, isUnsigned: true)
!96 = !DIEnumerator(name: "MultiLine", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "DotMatchesNewLine", value: 2, isUnsigned: true)
!98 = !DIEnumerator(name: "SwapGreed", value: 3, isUnsigned: true)
!99 = !DIEnumerator(name: "Unicode", value: 4, isUnsigned: true)
!100 = !DIEnumerator(name: "CRLF", value: 5, isUnsigned: true)
!101 = !DIEnumerator(name: "IgnoreWhitespace", value: 6, isUnsigned: true)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ClassAsciiKind", scope: !54, file: !2, baseType: !19, size: 8, align: 8, flags: DIFlagEnumClass, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!104 = !DIEnumerator(name: "Alnum", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "Alpha", value: 1, isUnsigned: true)
!106 = !DIEnumerator(name: "Ascii", value: 2, isUnsigned: true)
!107 = !DIEnumerator(name: "Blank", value: 3, isUnsigned: true)
!108 = !DIEnumerator(name: "Cntrl", value: 4, isUnsigned: true)
!109 = !DIEnumerator(name: "Digit", value: 5, isUnsigned: true)
!110 = !DIEnumerator(name: "Graph", value: 6, isUnsigned: true)
!111 = !DIEnumerator(name: "Lower", value: 7, isUnsigned: true)
!112 = !DIEnumerator(name: "Print", value: 8, isUnsigned: true)
!113 = !DIEnumerator(name: "Punct", value: 9, isUnsigned: true)
!114 = !DIEnumerator(name: "Space", value: 10, isUnsigned: true)
!115 = !DIEnumerator(name: "Upper", value: 11, isUnsigned: true)
!116 = !DIEnumerator(name: "Word", value: 12, isUnsigned: true)
!117 = !DIEnumerator(name: "Xdigit", value: 13, isUnsigned: true)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ClassSetBinaryOpKind", scope: !54, file: !2, baseType: !19, size: 8, align: 8, flags: DIFlagEnumClass, elements: !119)
!119 = !{!120, !121, !122}
!120 = !DIEnumerator(name: "Intersection", value: 0, isUnsigned: true)
!121 = !DIEnumerator(name: "Difference", value: 1, isUnsigned: true)
!122 = !DIEnumerator(name: "SymmetricDifference", value: 2, isUnsigned: true)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "AlignmentEnum", scope: !124, file: !2, baseType: !126, size: 64, align: 64, flags: DIFlagEnumClass, elements: !127)
!124 = !DINamespace(name: "alignment", scope: !125)
!125 = !DINamespace(name: "mem", scope: !15)
!126 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191}
!128 = !DIEnumerator(name: "_Align1Shl0", value: 1, isUnsigned: true)
!129 = !DIEnumerator(name: "_Align1Shl1", value: 2, isUnsigned: true)
!130 = !DIEnumerator(name: "_Align1Shl2", value: 4, isUnsigned: true)
!131 = !DIEnumerator(name: "_Align1Shl3", value: 8, isUnsigned: true)
!132 = !DIEnumerator(name: "_Align1Shl4", value: 16, isUnsigned: true)
!133 = !DIEnumerator(name: "_Align1Shl5", value: 32, isUnsigned: true)
!134 = !DIEnumerator(name: "_Align1Shl6", value: 64, isUnsigned: true)
!135 = !DIEnumerator(name: "_Align1Shl7", value: 128, isUnsigned: true)
!136 = !DIEnumerator(name: "_Align1Shl8", value: 256, isUnsigned: true)
!137 = !DIEnumerator(name: "_Align1Shl9", value: 512, isUnsigned: true)
!138 = !DIEnumerator(name: "_Align1Shl10", value: 1024, isUnsigned: true)
!139 = !DIEnumerator(name: "_Align1Shl11", value: 2048, isUnsigned: true)
!140 = !DIEnumerator(name: "_Align1Shl12", value: 4096, isUnsigned: true)
!141 = !DIEnumerator(name: "_Align1Shl13", value: 8192, isUnsigned: true)
!142 = !DIEnumerator(name: "_Align1Shl14", value: 16384, isUnsigned: true)
!143 = !DIEnumerator(name: "_Align1Shl15", value: 32768, isUnsigned: true)
!144 = !DIEnumerator(name: "_Align1Shl16", value: 65536, isUnsigned: true)
!145 = !DIEnumerator(name: "_Align1Shl17", value: 131072, isUnsigned: true)
!146 = !DIEnumerator(name: "_Align1Shl18", value: 262144, isUnsigned: true)
!147 = !DIEnumerator(name: "_Align1Shl19", value: 524288, isUnsigned: true)
!148 = !DIEnumerator(name: "_Align1Shl20", value: 1048576, isUnsigned: true)
!149 = !DIEnumerator(name: "_Align1Shl21", value: 2097152, isUnsigned: true)
!150 = !DIEnumerator(name: "_Align1Shl22", value: 4194304, isUnsigned: true)
!151 = !DIEnumerator(name: "_Align1Shl23", value: 8388608, isUnsigned: true)
!152 = !DIEnumerator(name: "_Align1Shl24", value: 16777216, isUnsigned: true)
!153 = !DIEnumerator(name: "_Align1Shl25", value: 33554432, isUnsigned: true)
!154 = !DIEnumerator(name: "_Align1Shl26", value: 67108864, isUnsigned: true)
!155 = !DIEnumerator(name: "_Align1Shl27", value: 134217728, isUnsigned: true)
!156 = !DIEnumerator(name: "_Align1Shl28", value: 268435456, isUnsigned: true)
!157 = !DIEnumerator(name: "_Align1Shl29", value: 536870912, isUnsigned: true)
!158 = !DIEnumerator(name: "_Align1Shl30", value: 1073741824, isUnsigned: true)
!159 = !DIEnumerator(name: "_Align1Shl31", value: 2147483648, isUnsigned: true)
!160 = !DIEnumerator(name: "_Align1Shl32", value: 4294967296, isUnsigned: true)
!161 = !DIEnumerator(name: "_Align1Shl33", value: 8589934592, isUnsigned: true)
!162 = !DIEnumerator(name: "_Align1Shl34", value: 17179869184, isUnsigned: true)
!163 = !DIEnumerator(name: "_Align1Shl35", value: 34359738368, isUnsigned: true)
!164 = !DIEnumerator(name: "_Align1Shl36", value: 68719476736, isUnsigned: true)
!165 = !DIEnumerator(name: "_Align1Shl37", value: 137438953472, isUnsigned: true)
!166 = !DIEnumerator(name: "_Align1Shl38", value: 274877906944, isUnsigned: true)
!167 = !DIEnumerator(name: "_Align1Shl39", value: 549755813888, isUnsigned: true)
!168 = !DIEnumerator(name: "_Align1Shl40", value: 1099511627776, isUnsigned: true)
!169 = !DIEnumerator(name: "_Align1Shl41", value: 2199023255552, isUnsigned: true)
!170 = !DIEnumerator(name: "_Align1Shl42", value: 4398046511104, isUnsigned: true)
!171 = !DIEnumerator(name: "_Align1Shl43", value: 8796093022208, isUnsigned: true)
!172 = !DIEnumerator(name: "_Align1Shl44", value: 17592186044416, isUnsigned: true)
!173 = !DIEnumerator(name: "_Align1Shl45", value: 35184372088832, isUnsigned: true)
!174 = !DIEnumerator(name: "_Align1Shl46", value: 70368744177664, isUnsigned: true)
!175 = !DIEnumerator(name: "_Align1Shl47", value: 140737488355328, isUnsigned: true)
!176 = !DIEnumerator(name: "_Align1Shl48", value: 281474976710656, isUnsigned: true)
!177 = !DIEnumerator(name: "_Align1Shl49", value: 562949953421312, isUnsigned: true)
!178 = !DIEnumerator(name: "_Align1Shl50", value: 1125899906842624, isUnsigned: true)
!179 = !DIEnumerator(name: "_Align1Shl51", value: 2251799813685248, isUnsigned: true)
!180 = !DIEnumerator(name: "_Align1Shl52", value: 4503599627370496, isUnsigned: true)
!181 = !DIEnumerator(name: "_Align1Shl53", value: 9007199254740992, isUnsigned: true)
!182 = !DIEnumerator(name: "_Align1Shl54", value: 18014398509481984, isUnsigned: true)
!183 = !DIEnumerator(name: "_Align1Shl55", value: 36028797018963968, isUnsigned: true)
!184 = !DIEnumerator(name: "_Align1Shl56", value: 72057594037927936, isUnsigned: true)
!185 = !DIEnumerator(name: "_Align1Shl57", value: 144115188075855872, isUnsigned: true)
!186 = !DIEnumerator(name: "_Align1Shl58", value: 288230376151711744, isUnsigned: true)
end_hunk_3
