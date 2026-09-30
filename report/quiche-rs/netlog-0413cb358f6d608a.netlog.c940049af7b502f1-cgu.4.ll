Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/netlog-0413cb358f6d608a.netlog.c940049af7b502f1-cgu.4?download=true
inline.NumInlined: 135
inline.NumDeleted: 85
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCshhfsHpF03Qr_6netlog:bb.a
  %i.cz = add i64 %.sroa.5.0.i.i, %i.cb, !dbg !6903 ; 2 uses
    #dbg_value(i64 %i.cz, !6410, !DIExpression(), !6299)
  %i.da = add i64 %i.cz, 1, !dbg !6904            ; 2 uses
  store i64 %i.da, ptr %i.g, align 8, !dbg !6904, !alias.scope !6386, !noalias !6416
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !6905

.loopexit64.i:                                    ; preds = %bb.u, %bb.t
    #dbg_value(i64 0, !6767, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6290)
    #dbg_value(i64 poison, !6767, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6290)
  store i64 %.val13, ptr %i.g, align 8, !dbg !6906, !alias.scope !6386, !noalias !6416
  br label %bb.ah, !dbg !6907

bb.v:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6774), !dbg !6908
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6775), !dbg !6908
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6776), !dbg !6908
    #dbg_value(i1 false, !6697, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6228)
    #dbg_value(i64 %i.ck, !6699, !DIExpression(), !6304)
  %.promoted.i.i = load i64, ptr %i.cj, align 8, !alias.scope !6777, !noalias !6778 ; 2 uses
  %i.db = add i64 %.promoted.i.i, %i.ck, !dbg !6909 ; 2 uses
  %i.dc = icmp ult i64 %i.db, %.val13, !dbg !6910
  br i1 %i.dc, label %.lr.ph.i28.i, label %._crit_edge.i.i, !dbg !6910

.lr.ph.i28.i:                                     ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !6777, !noalias !6778, !noundef !520
  %i.df = load i64, ptr %i.g, align 8, !alias.scope !6777, !noalias !6778 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !6777, !noalias !6778 ; 2 uses
  %i.di = sub i64 %i.ci, %i.dh
  %invariant.op = sub i64 1, %i.df, !dbg !6911
  br label %.lr.ph.split.i.i, !dbg !6911

._crit_edge.i.i:                                  ; preds = %bb.y, %bb.v
  store i64 %.val13, ptr %i.cj, align 8, !dbg !6912, !alias.scope !6777, !noalias !6778
  br label %bb.ah, !dbg !6913

.lr.ph.split.i.i:                                 ; preds = %bb.y, %.lr.ph.i28.i
  %i.dj = phi i64 [ %.sink94.i.i, %bb.y ], [ %i.cd, %.lr.ph.i28.i ] ; 3 uses
  %i.dk = phi i64 [ %i.du, %bb.y ], [ %i.db, %.lr.ph.i28.i ]
  %i.dl = phi i64 [ %.sink95.i.i, %bb.y ], [ %.promoted.i.i, %.lr.ph.i28.i ] ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dk, !dbg !6914
  %i.dn = load i8, ptr %i.dm, align 1, !dbg !6915, !alias.scope !6775, !noalias !6780, !noundef !520
    #dbg_value(i8 %i.dn, !6721, !DIExpression(), !6226)
    #dbg_value(i8 %i.dn, !6700, !DIExpression(), !6306)
  %i.do = and i8 %i.dn, 63, !dbg !6916
  %i.dp = zext nneg i8 %i.do to i64, !dbg !6917
  %i.dq = shl nuw i64 1, %i.dp, !dbg !6918
  %i.dr = and i64 %i.dq, %i.de, !dbg !6918
  %.not.i29.i = icmp eq i64 %i.dr, 0, !dbg !6918
  br i1 %.not.i29.i, label %bb.w, label %bb.x, !dbg !6911

bb.w:                                             ; preds = %.lr.ph.split.i.i
  %i.ds = add i64 %i.dl, %i.ci, !dbg !6919
  br label %bb.y, !dbg !6920

bb.x:                                             ; preds = %.lr.ph.split.i.i
    #dbg_value(i64 %i.df, !6781, !DIExpression(), !6309)
    #dbg_value(i64 %i.dj, !6782, !DIExpression(), !6309)
    #dbg_value(ptr undef, !6784, !DIExpression(DW_OP_deref), !6312)
    #dbg_value(ptr undef, !6786, !DIExpression(DW_OP_deref), !6312)
  %..i.i30.i = tail call noundef i64 @llvm.umax.i64(i64 %i.dj, i64 %i.df), !dbg !6921 ; 2 uses
    #dbg_value(i64 %..i.i30.i, !6702, !DIExpression(), !6313)
    #dbg_value(i64 %..i.i30.i, !6703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6314)
    #dbg_value(i64 %i.ci, !6703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6314)
    #dbg_value(ptr undef, !6713, !DIExpression(), !6221)
    #dbg_value(ptr undef, !6710, !DIExpression(), !6219)
    #dbg_value(ptr undef, !6667, !DIExpression(), !6217)
    #dbg_value(ptr undef, !6668, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6315)
  %i.dt = icmp ult i64 %..i.i30.i, %i.ci, !dbg !6922
  br i1 %i.dt, label %.lr.ph, label %.preheader60.i.i.preheader, !dbg !6923

bb.y:                                             ; preds = %bb.ac, %bb.ab, %bb.w
  %.sink95.i.i = phi i64 [ %i.eq, %bb.ac ], [ %i.ep, %bb.ab ], [ %i.ds, %bb.w ] ; 3 uses
  %.sink94.i.i = phi i64 [ 0, %bb.ac ], [ %i.di, %bb.ab ], [ 0, %bb.w ] ; 2 uses
  store i64 %.sink95.i.i, ptr %i.cj, align 8, !dbg !6924, !alias.scope !6777, !noalias !6778
  store i64 %.sink94.i.i, ptr %i.cc, align 8, !dbg !6924, !alias.scope !6777, !noalias !6778
  %i.du = add i64 %.sink95.i.i, %i.ck, !dbg !6909 ; 2 uses
    #dbg_value(i64 %i.du, !6732, !DIExpression(), !6238)
    #dbg_value(i64 %i.du, !6726, !DIExpression(), !6233)
  %i.dv = icmp ult i64 %i.du, %.val13, !dbg !6910
  br i1 %i.dv, label %.lr.ph.split.i.i, label %._crit_edge.i.i, !dbg !6910

bb.z:                                             ; preds = %.lr.ph
  %i.dw = add nuw nsw i64 %.sroa.04.0.i.i102, 1, !dbg !6925 ; 2 uses
    #dbg_value(i64 %i.dw, !6703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6314)
    #dbg_value(i64 %i.dw, !6703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6314)
    #dbg_value(ptr undef, !6713, !DIExpression(), !6221)
    #dbg_value(ptr undef, !6710, !DIExpression(), !6219)
    #dbg_value(ptr undef, !6667, !DIExpression(), !6217)
    #dbg_value(ptr undef, !6668, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6315)
  %i.dx = icmp ult i64 %i.dw, %i.ci, !dbg !6922
  br i1 %i.dx, label %.lr.ph, label %.preheader60.i.i.preheader, !dbg !6923

.preheader60.i.i.preheader:                       ; preds = %bb.z, %bb.x
    #dbg_value(i64 %i.df, !6706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6316)
    #dbg_value(ptr undef, !6685, !DIExpression(), !6206)
    #dbg_value(ptr undef, !6673, !DIExpression(), !6204)
    #dbg_value(ptr undef, !6670, !DIExpression(), !6202)
    #dbg_value(ptr undef, !6667, !DIExpression(), !6200)
    #dbg_value(ptr undef, !6668, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6317)
  %i.dy = icmp ult i64 %i.dj, %i.df, !dbg !6926
  br i1 %i.dy, label %.lr.ph104, label %.split.us.i31.i, !dbg !6927

.lr.ph:                                           ; preds = %bb.x, %bb.z
  %.sroa.04.0.i.i102 = phi i64 [ %i.dw, %bb.z ], [ %..i.i30.i, %bb.x ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.i.i102, !6703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6314)
    #dbg_value(i64 %.sroa.04.0.i.i102, !6749, !DIExpression(), !6266)
    #dbg_value(i64 %.sroa.04.0.i.i102, !6711, !DIExpression(), !6318)
    #dbg_value(i64 %.sroa.04.0.i.i102, !6746, !DIExpression(), !6261)
    #dbg_value(i64 %.sroa.04.0.i.i102, !6703, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6314)
    #dbg_value(i64 %.sroa.04.0.i.i102, !6704, !DIExpression(), !6319)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.04.0.i.i102, !dbg !6928
  %i.ea = load i8, ptr %i.dz, align 1, !dbg !6928, !alias.scope !6776, !noalias !6790, !noundef !520
  %i.eb = add i64 %.sroa.04.0.i.i102, %i.dl, !dbg !6929 ; 2 uses
    #dbg_value(i64 %i.eb, !6742, !DIExpression(), !6248)
    #dbg_value(i64 %i.eb, !6737, !DIExpression(), !6243)
  %i.ec = icmp ult i64 %i.eb, %.val13, !dbg !6930
  tail call void @llvm.assume(i1 %i.ec), !dbg !6931
  %i.ed = getelementptr inbounds nuw i8, ptr %.val, i64 %i.eb, !dbg !6932
  %i.ee = load i8, ptr %i.ed, align 1, !dbg !6933, !alias.scope !6775, !noalias !6780, !noundef !520
  %.not45.i.i = icmp eq i8 %i.ea, %i.ee, !dbg !6928
  br i1 %.not45.i.i, label %bb.z, label %bb.ac, !dbg !6928

.preheader60.i.i:                                 ; preds = %bb.aa
    #dbg_value(i64 %i.eh, !6706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6316)
    #dbg_value(ptr undef, !6685, !DIExpression(), !6206)
    #dbg_value(ptr undef, !6673, !DIExpression(), !6204)
    #dbg_value(ptr undef, !6670, !DIExpression(), !6202)
    #dbg_value(ptr undef, !6667, !DIExpression(), !6200)
    #dbg_value(ptr undef, !6668, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6317)
  %i.ef = icmp ult i64 %i.dj, %i.eh, !dbg !6926
  br i1 %i.ef, label %.lr.ph104, label %.split.us.i31.i, !dbg !6927

.split.us.i31.i:                                  ; preds = %.preheader60.i.i.preheader, %.preheader60.i.i
  %i.eg = add i64 %i.dl, %i.ci, !dbg !6934        ; 2 uses
  store i64 %i.eg, ptr %i.cj, align 8, !dbg !6934, !alias.scope !6777, !noalias !6778
  store i64 0, ptr %i.cc, align 8, !dbg !6935, !alias.scope !6777, !noalias !6778
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !6936

.lr.ph104:                                        ; preds = %.preheader60.i.i.preheader, %.preheader60.i.i
  %.sroa.2.0.i.i103 = phi i64 [ %i.eh, %.preheader60.i.i ], [ %i.df, %.preheader60.i.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.i.i103, !6706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6316)
    #dbg_value(i64 %.sroa.2.0.i.i103, !6755, !DIExpression(), !6276)
    #dbg_value(i64 %.sroa.2.0.i.i103, !6752, !DIExpression(), !6271)
  %i.eh = add i64 %.sroa.2.0.i.i103, -1, !dbg !6937 ; 6 uses
    #dbg_value(i64 %i.eh, !6706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6316)
    #dbg_value(i64 %i.eh, !6707, !DIExpression(), !6320)
  %i.ei = icmp ult i64 %i.eh, %i.ci, !dbg !6938
  br i1 %i.ei, label %bb.aa, label %.split56.us.i.i, !dbg !6938

bb.aa:                                            ; preds = %.lr.ph104
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.eh, !dbg !6938
  %i.ek = load i8, ptr %i.ej, align 1, !dbg !6938, !alias.scope !6776, !noalias !6790, !noundef !520
  %i.el = add i64 %i.eh, %i.dl, !dbg !6939        ; 2 uses
    #dbg_value(i64 %i.el, !6742, !DIExpression(), !6256)
    #dbg_value(i64 %i.el, !6737, !DIExpression(), !6252)
  %i.em = icmp ult i64 %i.el, %.val13, !dbg !6940
  tail call void @llvm.assume(i1 %i.em), !dbg !6941
  %i.en = getelementptr inbounds nuw i8, ptr %.val, i64 %i.el, !dbg !6942
  %i.eo = load i8, ptr %i.en, align 1, !dbg !6943, !alias.scope !6775, !noalias !6780, !noundef !520
  %.not44.i.i = icmp eq i8 %i.ek, %i.eo, !dbg !6938
  br i1 %.not44.i.i, label %.preheader60.i.i, label %bb.ab, !dbg !6938

.split56.us.i.i:                                  ; preds = %.lr.ph104
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.eh, i64 noundef range(i64 0, -9223372036854775808) %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21, !dbg !6938, !noalias !6792
  unreachable, !dbg !6938

bb.ab:                                            ; preds = %bb.aa
  %i.ep = add i64 %i.dl, %i.dh, !dbg !6944
  br label %bb.y, !dbg !6945

bb.ac:                                            ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %i.dl, %invariant.op
  %i.eq = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i102, !dbg !6946
  br label %bb.y, !dbg !6947

bb.ad:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6793), !dbg !6948
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6794), !dbg !6948
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6795), !dbg !6948
    #dbg_value(i1 true, !6697, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6227)
    #dbg_value(i64 %i.ck, !6699, !DIExpression(), !6325)
  %.promoted.i32.i = load i64, ptr %i.cj, align 8, !alias.scope !6796, !noalias !6797 ; 2 uses
  %i.er = add i64 %.promoted.i32.i, %i.ck, !dbg !6949 ; 2 uses
  %i.es = icmp ult i64 %i.er, %.val13, !dbg !6950
  br i1 %i.es, label %.lr.ph.i35.i, label %._crit_edge.i33.i, !dbg !6950

.lr.ph.i35.i:                                     ; preds = %bb.ad
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !6796, !noalias !6797, !noundef !520
  %i.ev = load i64, ptr %i.g, align 8, !alias.scope !6796, !noalias !6797
  %.fr235.i = freeze i64 %i.ev, !dbg !6951        ; 7 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !6796, !noalias !6797
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.fr235.i, i64 range(i64 0, -9223372036854775808) %i.ci), !dbg !6951
  %i.ey = add i64 %.fr235.i, -1, !dbg !6951       ; 2 uses
  %.first_iter.i36.i = icmp ult i64 %i.ey, %i.ci
  %exitcond.not.i37.i106.not = icmp ult i64 %.fr235.i, %i.ci
  %invariant.op146 = sub i64 1, %.fr235.i, !dbg !6951
  %.not58.i.us.i109 = icmp eq i64 %.fr235.i, 0    ; 2 uses
  br label %.lr.ph.split.us.i.i, !dbg !6951

.lr.ph.split.us.i.i:                              ; preds = %bb.ag, %.lr.ph.i35.i
  %i.ez = phi i64 [ %i.fy, %bb.ag ], [ %i.er, %.lr.ph.i35.i ]
  %i.fa = phi i64 [ %.sink.i38.i, %bb.ag ], [ %.promoted.i32.i, %.lr.ph.i35.i ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ez, !dbg !6952
  %i.fc = load i8, ptr %i.fb, align 1, !dbg !6953, !alias.scope !6794, !noalias !6798, !noundef !520
    #dbg_value(i8 %i.fc, !6721, !DIExpression(), !6224)
    #dbg_value(i8 %i.fc, !6700, !DIExpression(), !6327)
  %i.fd = and i8 %i.fc, 63, !dbg !6954
  %i.fe = zext nneg i8 %i.fd to i64, !dbg !6955
  %i.ff = shl nuw i64 1, %i.fe, !dbg !6956
  %i.fg = and i64 %i.ff, %i.eu, !dbg !6956
  %.not.us.i.i = icmp eq i64 %i.fg, 0, !dbg !6956
  br i1 %.not.us.i.i, label %bb.af, label %.preheader59.i.i.preheader, !dbg !6951

.preheader59.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i
    #dbg_value(i64 %.fr235.i, !6703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6328)
    #dbg_value(ptr undef, !6713, !DIExpression(), !6220)
    #dbg_value(ptr undef, !6710, !DIExpression(), !6218)
    #dbg_value(ptr undef, !6667, !DIExpression(), !6213)
    #dbg_value(ptr undef, !6668, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6329)
  br i1 %exitcond.not.i37.i106.not, label %.lr.ph108, label %.preheader.i39.preheader.i, !dbg !6957

.preheader59.i.i:                                 ; preds = %.lr.ph108
  %i.fh = add i64 %.sroa.04.0.us.i.i107, 1, !dbg !6958 ; 2 uses
    #dbg_value(i64 %i.fh, !6703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6328)
    #dbg_value(i64 %i.fh, !6703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6328)
    #dbg_value(ptr undef, !6713, !DIExpression(), !6220)
    #dbg_value(ptr undef, !6710, !DIExpression(), !6218)
    #dbg_value(ptr undef, !6667, !DIExpression(), !6213)
    #dbg_value(ptr undef, !6668, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6329)
  %exitcond.not.i37.i = icmp eq i64 %i.fh, %umax.i.i, !dbg !6959
  br i1 %exitcond.not.i37.i, label %.preheader.i39.preheader.i, label %.lr.ph108, !dbg !6957

.preheader.i39.preheader.i:                       ; preds = %.preheader59.i.i, %.preheader59.i.i.preheader
    #dbg_value(ptr undef, !6685, !DIExpression(), !6205)
    #dbg_value(ptr undef, !6685, !DIExpression(), !6205)
    #dbg_value(ptr undef, !6673, !DIExpression(), !6203)
    #dbg_value(ptr undef, !6673, !DIExpression(), !6203)
    #dbg_value(ptr undef, !6670, !DIExpression(), !6201)
    #dbg_value(ptr undef, !6670, !DIExpression(), !6201)
    #dbg_value(ptr undef, !6667, !DIExpression(), !6194)
    #dbg_value(ptr undef, !6667, !DIExpression(), !6194)
    #dbg_value(ptr undef, !6668, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6330)
    #dbg_value(ptr undef, !6668, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6330)
  br i1 %.first_iter.i36.i, label %.preheader.i39.us.i.preheader, label %.preheader.i39.i

.preheader.i39.us.i.preheader:                    ; preds = %.preheader.i39.preheader.i
    #dbg_value(i64 %.fr235.i, !6706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6331)
  br i1 %.not58.i.us.i109, label %.split.us.i41.i, label %.lr.ph111, !dbg !6960

.preheader.i39.us.i:                              ; preds = %.lr.ph111
    #dbg_value(i64 %i.fi, !6706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6331)
    #dbg_value(ptr undef, !6685, !DIExpression(), !6205)
    #dbg_value(ptr undef, !6673, !DIExpression(), !6203)
    #dbg_value(ptr undef, !6670, !DIExpression(), !6201)
    #dbg_value(ptr undef, !6667, !DIExpression(), !6194)
    #dbg_value(ptr undef, !6668, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6330)
  %.not58.i.us.i = icmp eq i64 %i.fi, 0, !dbg !6961
  br i1 %.not58.i.us.i, label %.split.us.i41.i, label %.lr.ph111, !dbg !6960

.lr.ph111:                                        ; preds = %.preheader.i39.us.i.preheader, %.preheader.i39.us.i
  %.sroa.2.0.us.i.us.i110 = phi i64 [ %i.fi, %.preheader.i39.us.i ], [ %.fr235.i, %.preheader.i39.us.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.us.i.us.i110, !6706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6331)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i110, !6755, !DIExpression(), !6274)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i110, !6752, !DIExpression(), !6269)
  %i.fi = add i64 %.sroa.2.0.us.i.us.i110, -1, !dbg !6962 ; 4 uses
    #dbg_value(i64 %i.fi, !6706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6331)
    #dbg_value(i64 %i.fi, !6707, !DIExpression(), !6332)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fi, !dbg !6963
  %i.fk = load i8, ptr %i.fj, align 1, !dbg !6963, !alias.scope !6795, !noalias !6799, !noundef !520
  %i.fl = add i64 %i.fi, %i.fa, !dbg !6964        ; 2 uses
    #dbg_value(i64 %i.fl, !6742, !DIExpression(), !6254)
    #dbg_value(i64 %i.fl, !6737, !DIExpression(), !6250)
  %i.fm = icmp ult i64 %i.fl, %.val13, !dbg !6965
  tail call void @llvm.assume(i1 %i.fm), !dbg !6966
  %i.fn = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fl, !dbg !6967
  %i.fo = load i8, ptr %i.fn, align 1, !dbg !6968, !alias.scope !6794, !noalias !6798, !noundef !520
  %.not44.us.i.us.i = icmp eq i8 %i.fk, %i.fo, !dbg !6963
  br i1 %.not44.us.i.us.i, label %.preheader.i39.us.i, label %.split.us.i, !dbg !6963

.split.us.i:                                      ; preds = %.lr.ph111
  %i.fp = add i64 %i.fa, %i.ex, !dbg !6969
  br label %bb.ag, !dbg !6970

.lr.ph108:                                        ; preds = %.preheader59.i.i.preheader, %.preheader59.i.i
  %.sroa.04.0.us.i.i107 = phi i64 [ %i.fh, %.preheader59.i.i ], [ %.fr235.i, %.preheader59.i.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i107, !6703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6328)
    #dbg_value(i64 %.sroa.04.0.us.i.i107, !6749, !DIExpression(), !6264)
    #dbg_value(i64 %.sroa.04.0.us.i.i107, !6711, !DIExpression(), !6333)
    #dbg_value(i64 %.sroa.04.0.us.i.i107, !6746, !DIExpression(), !6259)
    #dbg_value(i64 %.sroa.04.0.us.i.i107, !6703, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6328)
    #dbg_value(i64 %.sroa.04.0.us.i.i107, !6704, !DIExpression(), !6334)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.04.0.us.i.i107, !dbg !6971
  %i.fr = load i8, ptr %i.fq, align 1, !dbg !6971, !alias.scope !6795, !noalias !6799, !noundef !520
  %i.fs = add i64 %.sroa.04.0.us.i.i107, %i.fa, !dbg !6972 ; 2 uses
    #dbg_value(i64 %i.fs, !6742, !DIExpression(), !6246)
    #dbg_value(i64 %i.fs, !6737, !DIExpression(), !6241)
  %i.ft = icmp ult i64 %i.fs, %.val13, !dbg !6973
  tail call void @llvm.assume(i1 %i.ft), !dbg !6974
  %i.fu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fs, !dbg !6975
  %i.fv = load i8, ptr %i.fu, align 1, !dbg !6976, !alias.scope !6794, !noalias !6798, !noundef !520
  %.not45.us.i.i = icmp eq i8 %i.fr, %i.fv, !dbg !6971
  br i1 %.not45.us.i.i, label %.preheader59.i.i, label %bb.ae, !dbg !6971

.preheader.i39.i:                                 ; preds = %.preheader.i39.preheader.i
    #dbg_value(i64 %i.ev, !6706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6331)
  br i1 %.not58.i.us.i109, label %.split.us.i41.i, label %.split56.us.i40.i, !dbg !6960

.split56.us.i40.i:                                ; preds = %.preheader.i39.i
    #dbg_value(i64 %i.ev, !6755, !DIExpression(), !6274)
    #dbg_value(i64 %i.ev, !6752, !DIExpression(), !6269)
    #dbg_value(i64 %i.ey, !6706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6331)
    #dbg_value(i64 %i.ey, !6707, !DIExpression(), !6332)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ey, i64 noundef range(i64 0, -9223372036854775808) %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21, !dbg !6963, !noalias !6800
  unreachable, !dbg !6963

bb.ae:                                            ; preds = %.lr.ph108
  %.reass302.i.reass.reass = add i64 %i.fa, %invariant.op146
  %i.fw = add i64 %.reass302.i.reass.reass, %.sroa.04.0.us.i.i107, !dbg !6977
  br label %bb.ag, !dbg !6978

bb.af:                                            ; preds = %.lr.ph.split.us.i.i
  %i.fx = add i64 %i.fa, %i.ci, !dbg !6979
  br label %bb.ag, !dbg !6980

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.split.us.i
  %.sink.i38.i = phi i64 [ %i.fx, %bb.af ], [ %i.fw, %bb.ae ], [ %i.fp, %.split.us.i ] ; 3 uses
  store i64 %.sink.i38.i, ptr %i.cj, align 8, !dbg !6981, !alias.scope !6796, !noalias !6797
  %i.fy = add i64 %.sink.i38.i, %i.ck, !dbg !6949 ; 2 uses
    #dbg_value(i64 %i.fy, !6732, !DIExpression(), !6236)
    #dbg_value(i64 %i.fy, !6726, !DIExpression(), !6231)
  %i.fz = icmp ult i64 %i.fy, %.val13, !dbg !6950
  br i1 %i.fz, label %.lr.ph.split.us.i.i, label %._crit_edge.i33.i, !dbg !6950

._crit_edge.i33.i:                                ; preds = %bb.ag, %bb.ad
  store i64 %.val13, ptr %i.cj, align 8, !dbg !6982, !alias.scope !6796, !noalias !6797
  br label %bb.ah, !dbg !6983

.split.us.i41.i:                                  ; preds = %.preheader.i39.us.i.preheader, %.preheader.i39.us.i, %.preheader.i39.i
  %i.ga = add i64 %i.fa, %i.ci, !dbg !6984        ; 2 uses
  store i64 %i.ga, ptr %i.cj, align 8, !dbg !6984, !alias.scope !6796, !noalias !6797
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !6985

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %.split186.us.i.thread, %.split.us.i41.i, %.split.us.i31.i, %.loopexit63.i, %.loopexit62.split.us.i, %.split186.us.i
  %.sroa.9.0 = phi i64 [ %.val13, %.split186.us.i ], [ %i.eg, %.split.us.i31.i ], [ %.lcssa45, %.loopexit62.split.us.i ], [ %i.da, %.loopexit63.i ], [ %i.ga, %.split.us.i41.i ], [ %.val13, %.split186.us.i.thread ], !dbg !6986
  %.sroa.4.015 = phi i64 [ %.val13, %.split186.us.i ], [ %i.dl, %.split.us.i31.i ], [ %.lcssa45, %.loopexit62.split.us.i ], [ %i.cz, %.loopexit63.i ], [ %i.fa, %.split.us.i41.i ], [ %.val13, %.split186.us.i.thread ], !dbg !6986
    #dbg_value(ptr %.val, !6367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6377)
    #dbg_value(ptr %.val, !6360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6384)
    #dbg_value(ptr %.val, !6380, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6385)
    #dbg_value(i64 %.sroa.4.015, !6371, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6377)
    #dbg_value(i64 %.sroa.4.015, !6361, !DIExpression(), !6801)
    #dbg_value(i64 %.sroa.4.015, !6381, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6385)
    #dbg_value(i64 %.sroa.9.0, !6362, !DIExpression(), !6801)
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !6987 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !6987, !noundef !520 ; 2 uses
    #dbg_value(i64 %i.gc, !6802, !DIExpression(), !6806)
    #dbg_value(i64 %i.gc, !6381, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6385)
    #dbg_value(i64 %i.gc, !6371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6377)
    #dbg_value(ptr %.val, !6372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6807)
    #dbg_value(i64 poison, !6372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6807)
  %i.gd = sub nuw i64 %.sroa.4.015, %i.gc, !dbg !6988
    #dbg_value(i64 %i.gd, !6373, !DIExpression(), !6808)
    #dbg_value(ptr %.val, !6803, !DIExpression(), !6806)
  %i.ge = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gc, !dbg !6989
    #dbg_value(ptr %i.ge, !6363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6809)
    #dbg_value(i64 %i.gd, !6363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6809)
  store i64 %.sroa.9.0, ptr %i.gb, align 8, !dbg !6990
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCshhfsHpF03Qr_6netlog.exit, !dbg !6991

bb.ah:                                            ; preds = %bb.p, %.preheader.i, %._crit_edge.i33.i, %._crit_edge.i.i, %.loopexit64.i, %bb.q
    #dbg_value(ptr %0, !6810, !DIExpression(), !6339)
  store i8 1, ptr %i.a, align 1, !dbg !6992, !alias.scope !6814
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !6993
  %i.gg = load i8, ptr %i.gf, align 8, !dbg !6993, !range !6366, !alias.scope !6814, !noundef !520
  %i.gh = trunc nuw i8 %i.gg to i1, !dbg !6993
  br i1 %i.gh, label %._crit_edge.i, label %bb.ai, !dbg !6993

._crit_edge.i:                                    ; preds = %bb.ah
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !dbg !6994, !alias.scope !6814
  %.phi.trans.insert13.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre14.i = load i64, ptr %.phi.trans.insert13.i, align 8, !dbg !6995, !alias.scope !6814
  br label %bb.aj, !dbg !6993

bb.ai:                                            ; preds = %bb.ah
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !6996
  %i.gj = load i64, ptr %i.gi, align 8, !dbg !6996, !alias.scope !6814, !noundef !520 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !6997
  %i.gl = load i64, ptr %i.gk, align 8, !dbg !6997, !alias.scope !6814, !noundef !520 ; 2 uses
  %.not.i14 = icmp eq i64 %i.gj, %i.gl, !dbg !6996
  br i1 %.not.i14, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCshhfsHpF03Qr_6netlog.exit, label %bb.aj, !dbg !6996

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i
  %i.gm = phi i64 [ %.pre14.i, %._crit_edge.i ], [ %i.gj, %bb.ai ], !dbg !6995
  %i.gn = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.gl, %bb.ai ], !dbg !6994 ; 2 uses
    #dbg_value(ptr %.val, !6815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6348)
    #dbg_value(ptr %.val, !6820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6349)
    #dbg_value(i64 poison, !6815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6348)
    #dbg_value(i64 poison, !6820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6349)
    #dbg_value(i64 %i.gn, !6823, !DIExpression(), !6352)
    #dbg_value(i64 %i.gn, !6821, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6349)
    #dbg_value(i64 %i.gn, !6816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6348)
    #dbg_value(i64 %i.gm, !6816, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6348)
    #dbg_value(i64 %i.gm, !6821, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6349)
    #dbg_value(ptr %.val, !6817, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6353)
    #dbg_value(i64 poison, !6817, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6353)
  %i.go = sub nuw i64 %i.gm, %i.gn, !dbg !6998
    #dbg_value(i64 %i.go, !6818, !DIExpression(), !6354)
    #dbg_value(ptr %.val, !6824, !DIExpression(), !6352)
  %i.gp = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gn, !dbg !6999
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCshhfsHpF03Qr_6netlog.exit, !dbg !7000

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCshhfsHpF03Qr_6netlog.exit: ; preds = %bb.aj, %bb.ai, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, %bb.a
  %.sroa.4.1 = phi i64 [ undef, %bb.a ], [ %i.gd, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %i.go, %bb.aj ], [ undef, %bb.ai ], !dbg !6365
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ %i.ge, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %i.gp, %bb.aj ], [ null, %bb.ai ], !dbg !6365
  %i.gq = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0, !dbg !7001
  %i.gr = insertvalue { ptr, i64 } %i.gq, i64 %.sroa.4.1, 1, !dbg !7001
  ret { ptr, i64 } %i.gr, !dbg !7001
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringB1p_NtB19_4LeafE16push_with_handleCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7004 {
bb.a:
    #dbg_value(ptr %1, !7025, !DIExpression(), !7031)
    #dbg_value(ptr %1, !7019, !DIExpression(), !7041)
    #dbg_value(ptr %1, !7042, !DIExpression(), !7048)
    #dbg_value(ptr %1, !7039, !DIExpression(), !7050)
    #dbg_value(ptr %1, !7025, !DIExpression(), !7052)
    #dbg_value(ptr %1, !7053, !DIExpression(), !7057)
    #dbg_value(ptr %1, !7039, !DIExpression(), !7059)
    #dbg_value(ptr %1, !7025, !DIExpression(), !7062)
    #dbg_value(ptr %1, !7032, !DIExpression(), !7063)
    #dbg_value(ptr %1, !7039, !DIExpression(), !7064)
    #dbg_declare(ptr %2, !7020, !DIExpression(), !7065)
    #dbg_declare(ptr %3, !7021, !DIExpression(), !7066)
    #dbg_declare(ptr poison, !7067, !DIExpression(), !7071)
    #dbg_declare(ptr poison, !7072, !DIExpression(), !7078)
    #dbg_declare(ptr poison, !7067, !DIExpression(), !7080)
    #dbg_declare(ptr poison, !7072, !DIExpression(), !7083)
  %i.a = load ptr, ptr %1, align 8, !dbg !7116, !nonnull !520, !noundef !520 ; 4 uses
    #dbg_value(ptr %i.a, !7022, !DIExpression(DW_OP_plus_uconst, 538, DW_OP_stack_value), !7084)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 538, !dbg !7117 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !dbg !7117, !noundef !520 ; 3 uses
    #dbg_value(i16 %i.c, !7085, !DIExpression(), !7088)
    #dbg_value(i16 %i.c, !7089, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7097)
    #dbg_value(i16 %i.c, !7023, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7098)
    #dbg_value(i16 %i.c, !7054, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7057)
    #dbg_value(i16 %i.c, !7099, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7103)
    #dbg_value(i16 %i.c, !7104, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7108)
    #dbg_value(i16 %i.c, !7033, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7063)
    #dbg_value(i16 %i.c, !7099, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7110)
    #dbg_value(i16 %i.c, !7104, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7113)
  %i.d = icmp ult i16 %i.c, 11, !dbg !7118
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !7118, !prof !1027

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #17
          to label %bb.e unwind label %bb.d, !dbg !7119

bb.c:                                             ; preds = %bb.a
  %i.e = zext nneg i16 %i.c to i64, !dbg !7120    ; 3 uses
    #dbg_value(i64 %i.e, !7089, !DIExpression(), !7097)
    #dbg_value(i64 %i.e, !7023, !DIExpression(), !7098)
    #dbg_value(i64 %i.e, !7054, !DIExpression(), !7057)
    #dbg_value(i64 %i.e, !7099, !DIExpression(), !7103)
    #dbg_value(i64 %i.e, !7104, !DIExpression(), !7108)
    #dbg_value(i64 %i.e, !7033, !DIExpression(), !7063)
    #dbg_value(i64 %i.e, !7099, !DIExpression(), !7110)
    #dbg_value(i64 %i.e, !7104, !DIExpression(), !7113)
  %i.f = add nuw nsw i16 %i.c, 1, !dbg !7121
  store i16 %i.f, ptr %i.b, align 2, !dbg !7121
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7122
    #dbg_value(ptr %i.g, !7100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7103)
    #dbg_value(i64 11, !7100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7103)
    #dbg_value(ptr %i.g, !7105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7108)
    #dbg_value(i64 11, !7105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7108)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.e, !dbg !7123
    #dbg_value(ptr %i.h, !7068, !DIExpression(), !7114)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !7124
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 272, !dbg !7125
    #dbg_value(ptr %i.i, !7100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7110)
    #dbg_value(i64 11, !7100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7110)
    #dbg_value(ptr %i.i, !7105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7113)
    #dbg_value(i64 11, !7105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7113)
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.e, !dbg !7126
    #dbg_value(ptr %i.j, !7068, !DIExpression(), !7115)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !dbg !7127
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !7128
  %i.l = load i64, ptr %i.k, align 8, !dbg !7128, !noundef !520
    #dbg_value(ptr %i.a, !7094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7097)
    #dbg_value(i64 %i.l, !7094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7097)
  store ptr %i.a, ptr %0, align 8, !dbg !7129
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7129
  store i64 %i.l, ptr %i.m, align 8, !dbg !7129
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7129
  store i64 %i.e, ptr %i.n, align 8, !dbg !7129
  ret void, !dbg !7130

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #18
          to label %bb.g unwind label %bb.f, !dbg !7131

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.g, %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !7132
  unreachable, !dbg !7132

bb.g:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #18
          to label %bb.h unwind label %bb.f, !dbg !7131

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.o, !dbg !7132
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCshhfsHpF03Qr_6netlog4http11parse_event(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7308 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
end_hunk_0
