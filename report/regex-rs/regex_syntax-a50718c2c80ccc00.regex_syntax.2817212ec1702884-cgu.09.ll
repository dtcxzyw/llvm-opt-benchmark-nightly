Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.09?download=true
inline.NumInlined: 71
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs_NtCs3roNzt6HBWW_12regex_syntax5debugNtB4_5BytesNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt:bb.a

bb.v:                                             ; preds = %bb.n
  store i32 %.sroa.6138.0.extract.trunc221, ptr %i.c, align 4, !dbg !6587, !alias.scope !6469
  br label %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc16escape_debug_ext.exit, !dbg !6588

bb.w:                                             ; preds = %bb.n
  %i.ao = icmp samesign ult i64 %i.z, 137438953472, !dbg !6589
  %i.ap = add nsw i32 %.sroa.6138.0.extract.trunc221, -127
  %or.cond2.i = icmp ult i32 %i.ap, 33
  %or.cond155.i = select i1 %i.ao, i1 true, i1 %or.cond2.i, !dbg !6589
  %i.aq = add nsw i32 %.sroa.6138.0.extract.trunc221, -57344
  %or.cond3.i = icmp ult i32 %i.aq, 6400
  %or.cond156.i = select i1 %or.cond155.i, i1 true, i1 %or.cond3.i, !dbg !6589
  %i.ar = add nsw i32 %.sroa.6138.0.extract.trunc221, -983040
  %or.cond4.i = icmp ult i32 %i.ar, 65534
  %or.cond157.i = select i1 %or.cond156.i, i1 true, i1 %or.cond4.i, !dbg !6589
  br i1 %or.cond157.i, label %bb.af, label %bb.x, !dbg !6589

bb.x:                                             ; preds = %bb.w
  %i.as = add nsw i32 %.sroa.6138.0.extract.trunc221, -1048576, !dbg !6590
  %or.cond5.i = icmp ult i32 %i.as, 65534, !dbg !6590
  %i.at = icmp eq i64 %.sroa.6138.0.extract.shift220, 32
  %or.cond8.i = or i1 %i.at, %or.cond5.i, !dbg !6590
  br i1 %or.cond8.i, label %bb.af, label %bb.y, !dbg !6590

bb.y:                                             ; preds = %bb.x
  %i.au = icmp samesign ult i64 %i.z, 571230650368, !dbg !6591
  br i1 %i.au, label %.thread159.i, label %bb.z, !dbg !6591

bb.z:                                             ; preds = %bb.y
  %i.av = call fastcc noundef zeroext i1 @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space6lookup(i32 noundef range(i32 0, 1114112) %.sroa.6138.0.extract.trunc221) #19, !dbg !6592, !noalias !6469
  br i1 %i.av, label %bb.af, label %bb.aa, !dbg !6593

bb.aa:                                            ; preds = %bb.z
  %i.aw = icmp samesign ugt i64 %i.z, 3298534883327
  br i1 %i.aw, label %bb.ac, label %bb.ab, !dbg !6594

bb.ab:                                            ; preds = %bb.aa
  %i.ax = icmp samesign ugt i64 %i.z, 743029342207, !dbg !6595
  br i1 %i.ax, label %.thread158.i, label %.thread159.i, !dbg !6595

bb.ac:                                            ; preds = %bb.aa
  %i.ay = call noundef zeroext i1 @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data15grapheme_extend11lookup_slow(i32 noundef range(i32 0, 1114112) %.sroa.6138.0.extract.trunc221) #17, !dbg !6596, !noalias !6469
  br i1 %i.ay, label %bb.af, label %.thread158.i, !dbg !6597

.thread158.i:                                     ; preds = %bb.ac, %bb.ab
  %i.az = call noundef zeroext i1 @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data28default_ignorable_code_point11lookup_slow(i32 noundef range(i32 0, 1114112) %.sroa.6138.0.extract.trunc221) #17, !dbg !6598, !noalias !6469
  br i1 %i.az, label %bb.af, label %bb.ad, !dbg !6599

.thread159.i:                                     ; preds = %bb.ad, %bb.ab, %bb.y
  %i.ba = call fastcc noundef zeroext i1 @_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc11is_assigned(i32 noundef range(i32 0, 1114112) %.sroa.6138.0.extract.trunc221) #19, !dbg !6600, !noalias !6469
  br i1 %i.ba, label %bb.ae, label %bb.af, !dbg !6601

bb.ad:                                            ; preds = %.thread158.i
    #dbg_value(i32 %.sroa.6138.0.extract.trunc221, !6602, !DIExpression(), !6605)
    #dbg_value(i32 %.sroa.6138.0.extract.trunc221, !6607, !DIExpression(), !6611)
  %i.bb = call noundef zeroext i1 @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data2cf11lookup_slow(i32 noundef range(i32 0, 1114112) %.sroa.6138.0.extract.trunc221) #17, !dbg !6613, !noalias !6469
  br i1 %i.bb, label %bb.af, label %.thread159.i, !dbg !6614

bb.ae:                                            ; preds = %.thread159.i
  store i32 %.sroa.6138.0.extract.trunc221, ptr %i.c, align 4, !dbg !6615, !alias.scope !6469
  br label %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc16escape_debug_ext.exit, !dbg !6616

bb.af:                                            ; preds = %bb.ad, %.thread159.i, %.thread158.i, %bb.ac, %bb.z, %bb.x, %bb.w
    #dbg_value(i32 %.sroa.6138.0.extract.trunc221, !6617, !DIExpression(), !6632)
    #dbg_declare(ptr %i.a, !6630, !DIExpression(), !6634)
    #dbg_value(i32 %.sroa.6138.0.extract.trunc221, !6626, !DIExpression(), !6635)
  %i.bc = or i32 %.sroa.6138.0.extract.trunc221, 1, !dbg !6636
    #dbg_value(i32 %i.bc, !6637, !DIExpression(), !6644)
  %i.bd = call range(i32 11, 32) i32 @llvm.ctlz.i32(i32 %i.bc, i1 true), !dbg !6646
  %i.be = lshr i32 %i.bd, 2, !dbg !6636
  %i.bf = zext nneg i32 %i.be to i64, !dbg !6636  ; 2 uses
  %i.bg = add nsw i64 %i.bf, -2, !dbg !6636       ; 2 uses
    #dbg_value(i64 %i.bg, !6628, !DIExpression(), !6647)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.a, i8 0, i64 3, i1 false), !dbg !6648, !noalias !6469
  %i.bh = lshr i64 %i.z, 52, !dbg !6649
  %i.bi = getelementptr inbounds nuw i8, ptr @0, i64 %i.bh, !dbg !6650
  %i.bj = load i8, ptr %i.bi, align 1, !dbg !6650, !range !6651, !noalias !6652, !noundef !26
  store i8 %i.bj, ptr %i.s, align 1, !dbg !6655, !noalias !6469
  %i.bk = lshr i64 %i.z, 48, !dbg !6656
  %i.bl = and i64 %i.bk, 15, !dbg !6657
  %i.bm = getelementptr inbounds nuw i8, ptr @0, i64 %i.bl, !dbg !6658
  %i.bn = load i8, ptr %i.bm, align 1, !dbg !6658, !range !6651, !noalias !6652, !noundef !26
  store i8 %i.bn, ptr %i.t, align 1, !dbg !6659, !noalias !6469
  %i.bo = lshr i64 %i.z, 44, !dbg !6660
  %i.bp = and i64 %i.bo, 15, !dbg !6661
  %i.bq = getelementptr inbounds nuw i8, ptr @0, i64 %i.bp, !dbg !6662
  %i.br = load i8, ptr %i.bq, align 1, !dbg !6662, !range !6651, !noalias !6652, !noundef !26
  store i8 %i.br, ptr %i.u, align 1, !dbg !6663, !noalias !6469
  %i.bs = lshr i64 %i.z, 40, !dbg !6664
  %i.bt = and i64 %i.bs, 15, !dbg !6665
  %i.bu = getelementptr inbounds nuw i8, ptr @0, i64 %i.bt, !dbg !6666
  %i.bv = load i8, ptr %i.bu, align 1, !dbg !6666, !range !6651, !noalias !6652, !noundef !26
  store i8 %i.bv, ptr %i.v, align 1, !dbg !6667, !noalias !6469
  %i.bw = lshr i64 %i.z, 36, !dbg !6668
  %i.bx = and i64 %i.bw, 15, !dbg !6669
  %i.by = getelementptr inbounds nuw i8, ptr @0, i64 %i.bx, !dbg !6670
  %i.bz = load i8, ptr %i.by, align 1, !dbg !6670, !range !6651, !noalias !6652, !noundef !26
  store i8 %i.bz, ptr %i.w, align 1, !dbg !6671, !noalias !6469
  %i.ca = and i64 %.sroa.6138.0.extract.shift220, 15, !dbg !6672
  %i.cb = getelementptr inbounds nuw i8, ptr @0, i64 %i.ca, !dbg !6673
  %i.cc = load i8, ptr %i.cb, align 1, !dbg !6673, !range !6651, !noalias !6652, !noundef !26
  store i8 %i.cc, ptr %i.x, align 1, !dbg !6674, !noalias !6469
  store i8 125, ptr %i.y, align 1, !dbg !6675, !noalias !6469
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg, !dbg !6676
  store i8 92, ptr %i.cd, align 1, !dbg !6676, !noalias !6469
  %i.ce = getelementptr i8, ptr %i.a, i64 %i.bf, !dbg !6677 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 -1, !dbg !6677
  store i8 117, ptr %i.cf, align 1, !dbg !6677, !noalias !6469
  store i8 123, ptr %i.ce, align 1, !dbg !6678, !noalias !6469
  %i.cg = trunc nuw nsw i64 %i.bg to i8, !dbg !6679
    #dbg_value(i8 %i.cg, !6548, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !6680)
    #dbg_value(i8 10, !6548, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !6680)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 1 dereferenceable(10) %i.a, i64 10, i1 false), !dbg !6681
  br label %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc16escape_debug_ext.exit, !dbg !6682

_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc16escape_debug_ext.exit: ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.ae, %bb.af
  %.sink240 = phi i8 [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.u ], [ -128, %bb.v ], [ -128, %bb.ae ], [ %i.cg, %bb.af ]
  %.sink = phi i8 [ 2, %bb.o ], [ 2, %bb.p ], [ 2, %bb.q ], [ 2, %bb.r ], [ 2, %bb.s ], [ 2, %bb.t ], [ 2, %bb.u ], [ -127, %bb.v ], [ -127, %bb.ae ], [ 10, %bb.af ]
  store i8 %.sink240, ptr %.sroa.417.0..sroa_idx.i, align 4, !dbg !6486, !alias.scope !6469
  store i8 %.sink, ptr %.sroa.518.0..sroa_idx.i, align 1, !dbg !6486, !alias.scope !6469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6683
    #dbg_value(ptr %i.c, !6254, !DIExpression(), !6684)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6685
  store ptr %i.c, ptr %i.b, align 8, !dbg !6685
  store ptr @_RNvXsc_NtCsj6eKBz9Db1c_4core4charNtB5_11EscapeDebugNtNtB7_3fmt7Display3fmt, ptr %.sroa.484.0..sroa_idx, align 8, !dbg !6685
    #dbg_value(ptr @5, !6295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6320)
    #dbg_value(ptr %i.b, !6295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6320)
  %i.ch = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @5, ptr noundef nonnull %i.b), !dbg !6686
    #dbg_value(i1 %i.ch, !6363, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6687)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6689
  br i1 %i.ch, label %.loopexit, label %.backedge, !dbg !6690

bb.ag:                                            ; preds = %bb.i
    #dbg_value(ptr @31, !6295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6314)
    #dbg_value(ptr inttoptr (i64 5 to ptr), !6295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6314)
    #dbg_value(ptr @31, !6300, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6691)
    #dbg_value(i64 2, !6300, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6691)
  %i.ci = call noundef zeroext i1 %i.l(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 2) #19, !dbg !6692
    #dbg_value(i1 %i.ci, !6363, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6693)
  br i1 %i.ci, label %.loopexit, label %.backedge, !dbg !6695

.backedge:                                        ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc16escape_debug_ext.exit, %bb.l, %bb.ag, %bb.aj
  %.sroa.8.0.be = phi i64 [ %i.cm, %bb.aj ], [ %i.ag, %bb.ag ], [ %i.ag, %bb.l ], [ %i.ag, %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc16escape_debug_ext.exit ] ; 2 uses
  %.sroa.010.0.be = phi ptr [ %i.cn, %bb.aj ], [ %i.ah, %bb.ag ], [ %i.ah, %bb.l ], [ %i.ah, %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc16escape_debug_ext.exit ] ; 2 uses
    #dbg_value(ptr %.sroa.010.0.be, !6355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6358)
    #dbg_value(ptr %.sroa.010.0.be, !6339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6344)
    #dbg_value(ptr %.sroa.010.0.be, !6330, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6332)
    #dbg_value(ptr %.sroa.010.0.be, !6213, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6395)
    #dbg_value(i64 %.sroa.8.0.be, !6355, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6358)
    #dbg_value(i64 %.sroa.8.0.be, !6339, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6344)
    #dbg_value(i64 %.sroa.8.0.be, !6330, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6332)
    #dbg_value(i64 %.sroa.8.0.be, !6213, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6395)
  %i.cj = call i64 @_RNvNtCs3roNzt6HBWW_12regex_syntax5debug11utf8_decode(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.010.0.be, i64 noundef %.sroa.8.0.be), !dbg !6404 ; 2 uses
  %i.ck = and i64 %i.cj, 255, !dbg !6404
  %.not = icmp eq i64 %i.ck, 2, !dbg !6404
  br i1 %.not, label %._crit_edge, label %bb.c, !dbg !6405

bb.ah:                                            ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !6696
  br label %.loopexit, !dbg !6697

bb.ai:                                            ; preds = %bb.d
  %i.cl = icmp eq i64 %.sroa.8.0217, 0, !dbg !6699
  br i1 %i.cl, label %bb.ak, label %bb.aj, !dbg !6699, !prof !6041

bb.aj:                                            ; preds = %bb.ai
  %i.cm = add i64 %.sroa.8.0217, -1, !dbg !6700
    #dbg_value(i64 %i.cm, !6340, !DIExpression(), !6701)
    #dbg_value(i64 %i.cm, !6356, !DIExpression(), !6358)
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.010.0218, i64 1, !dbg !6702
    #dbg_value(ptr %i.cn, !6213, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6395)
    #dbg_value(ptr %i.cn, !6330, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6332)
    #dbg_value(ptr %i.cn, !6339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6344)
    #dbg_value(ptr %i.cn, !6355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6358)
    #dbg_value(ptr %i.cn, !6330, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6396)
    #dbg_value(ptr %i.cn, !6339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6398)
    #dbg_value(ptr %i.cn, !6355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6401)
    #dbg_value(i64 %i.cm, !6213, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6395)
    #dbg_value(i64 %i.cm, !6330, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6332)
    #dbg_value(i64 %i.cm, !6339, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6344)
    #dbg_value(i64 %i.cm, !6355, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6358)
    #dbg_value(i64 %i.cm, !6330, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6396)
    #dbg_value(i64 %i.cm, !6339, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6398)
    #dbg_value(i64 %i.cm, !6355, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6401)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !6696
  br label %.backedge, !dbg !6703

bb.ak:                                            ; preds = %bb.ai
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #18, !dbg !6705
  unreachable, !dbg !6705

._crit_edge:                                      ; preds = %.backedge, %bb.b
    #dbg_value(ptr @30, !6295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6322)
    #dbg_value(ptr inttoptr (i64 3 to ptr), !6295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6322)
    #dbg_value(ptr @30, !6306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6706)
    #dbg_value(i64 1, !6306, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6706)
  %i.co = call noundef zeroext i1 %i.l(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 1) #19, !dbg !6707
    #dbg_value(i1 %i.co, !6363, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6708)
  br label %.loopexit, !dbg !6711

.loopexit:                                        ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc16escape_debug_ext.exit, %bb.ag, %bb.l, %._crit_edge, %bb.ah, %bb.a
  %.sroa.0.1 = phi i1 [ %i.co, %._crit_edge ], [ true, %bb.a ], [ true, %bb.ah ], [ true, %bb.l ], [ true, %bb.ag ], [ true, %_RNvMNtNtCsj6eKBz9Db1c_4core4char7methodsc16escape_debug_ext.exit ], !dbg !6291
  ret i1 %.sroa.0.1, !dbg !6712
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtCsj6eKBz9Db1c_4core4charNtB5_11EscapeDebugNtNtB7_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !6713 {
bb.a:
    #dbg_value(ptr %0, !6718, !DIExpression(), !6720)
    #dbg_value(ptr %1, !6719, !DIExpression(), !6720)
  %i.a = tail call noundef zeroext i1 @_RNvXs2_NtCsj6eKBz9Db1c_4core6escapeINtB5_15EscapeIterInnerKja_NtB5_12MaybeEscapedENtNtB7_3fmt7Display3fmtCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !6721
  ret i1 %i.a, !dbg !6722
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtCs3roNzt6HBWW_12regex_syntax3ast5printINtB5_6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterENtNtB7_7visitor7Visitor28visit_class_set_binary_op_inB9_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorINtNtNtB9_3ast7visitor7Visitor28visit_class_set_binary_op_in(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_11NestLimiterQNtB5_6ParserENtNtB7_7visitor7Visitor24visit_class_set_item_preB9_(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_11NestLimiterQNtB5_6ParserENtNtB7_7visitor7Visitor29visit_class_set_binary_op_preB9_(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtCs3roNzt6HBWW_12regex_syntax3ast5printINtB5_6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterENtNtB7_7visitor7Visitor24visit_class_set_item_preB9_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorINtNtNtB9_3ast7visitor7Visitor24visit_class_set_item_pre(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorINtNtNtB9_3ast7visitor7Visitor29visit_class_set_binary_op_pre(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_11NestLimiterQNtB5_6ParserENtNtB7_7visitor7Visitor25visit_class_set_item_postB9_(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_11NestLimiterQNtB5_6ParserENtNtB7_7visitor7Visitor30visit_class_set_binary_op_postB9_(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtCs3roNzt6HBWW_12regex_syntax3ast5printINtB5_6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterENtNtB7_7visitor7Visitor25visit_class_set_item_postB9_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorINtNtNtB9_3ast7visitor7Visitor25visit_class_set_item_post(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorINtNtNtB9_3ast7visitor7Visitor30visit_class_set_binary_op_post(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_11NestLimiterQNtB5_6ParserENtNtB7_7visitor7Visitor9visit_preB9_(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_11NestLimiterQNtB5_6ParserENtNtB7_7visitor7Visitor10visit_postB9_(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtCs3roNzt6HBWW_12regex_syntax3ast5printINtB5_6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterENtNtB7_7visitor7Visitor9visit_preB9_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtCs3roNzt6HBWW_12regex_syntax3ast5printINtB5_6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterENtNtB7_7visitor7Visitor10visit_postB9_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtCs3roNzt6HBWW_12regex_syntax3ast5printINtB5_6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterENtNtB7_7visitor7Visitor6finishB9_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtCs3roNzt6HBWW_12regex_syntax3ast5printINtB5_6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterENtNtB7_7visitor7Visitor20visit_alternation_inB9_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorINtNtNtB9_3ast7visitor7Visitor9visit_pre(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorINtNtNtB9_3ast7visitor7Visitor10visit_post(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorINtNtNtB9_3ast7visitor7Visitor6finish(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorINtNtNtB9_3ast7visitor7Visitor20visit_alternation_in(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCs3roNzt6HBWW_12regex_syntax3ast7visitor11ClassInductNtBI_10ClassFrameEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBJ_7visitor5FrameEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs3roNzt6HBWW_12regex_syntax3ast7visitor11ClassInductNtBP_10ClassFrameEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBQ_7visitor5FrameEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data13cn_planes_0_311lookup_slow(i32 noundef range(i32 0, 1114112)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data15grapheme_extend11lookup_slow(i32 noundef range(i32 0, 1114112)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data28default_ignorable_code_point11lookup_slow(i32 noundef range(i32 0, 1114112)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data2cf11lookup_slow(i32 noundef range(i32 0, 1114112)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs3roNzt6HBWW_12regex_syntax3ast7visitor11ClassInductNtBP_10ClassFrameEE8grow_oneBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBQ_7visitor5FrameEE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvNtCsj6eKBz9Db1c_4core5ascii14escape_default(i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCsj6eKBz9Db1c_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i1, i8 } @_RNvMs_NtCsj6eKBz9Db1c_4core6escapeINtB4_15EscapeIterInnerKj4_NtB4_13AlwaysEscapedE4nextCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef align 4 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtCsj6eKBz9Db1c_4core6escapeINtB5_15EscapeIterInnerKja_NtB5_12MaybeEscapedENtNtB7_3fmt7Display3fmtCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
end_hunk_0
