Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.10?download=true
inline.NumInlined: 539
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value8contains:bb.a
  br i1 %i.fk, label %.lr.ph.i.i15.i, label %bb.am, !dbg !16831

bb.am:                                            ; preds = %bb.al
  %i.fl = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fj, i64 noundef range(i64 0, -9223372036854775808) %i.fi), !dbg !16832, !noalias !16338
  %i.fm = extractvalue { i64, i64 } %i.fl, 0, !dbg !16832
    #dbg_value(i64 %i.fm, !4887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15503)
    #dbg_value(i64 poison, !4887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15503)
  %i.fn = trunc nuw i64 %i.fm to i1, !dbg !16833
  br i1 %i.fn, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, !dbg !16833

.lr.ph.i.i15.i:                                   ; preds = %bb.al, %bb.an
  %.sroa.04.015.i.i16.i = phi i64 [ %i.fr, %bb.an ], [ 0, %bb.al ] ; 2 uses
    #dbg_value(i64 %.sroa.04.015.i.i16.i, !4883, !DIExpression(), !15504)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.sroa.04.015.i.i16.i, !dbg !16834
  %i.fp = load i8, ptr %i.fo, align 1, !dbg !16834, !alias.scope !16339, !noalias !16338, !noundef !1568
  %i.fq = icmp eq i8 %i.fp, %i.fh, !dbg !16834
  br i1 %i.fq, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i, label %bb.an, !dbg !16834

bb.an:                                            ; preds = %.lr.ph.i.i15.i
  %i.fr = add nuw nsw i64 %.sroa.04.015.i.i16.i, 1, !dbg !16835 ; 2 uses
    #dbg_value(i64 %i.fr, !4883, !DIExpression(), !15504)
  %exitcond.not.i27.i.i = icmp eq i64 %i.fr, %i.fi, !dbg !16836
  br i1 %exitcond.not.i27.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph.i.i15.i, !dbg !16836

bb.ao:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16340), !dbg !16837
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16341), !dbg !16837
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16342), !dbg !16837
    #dbg_value(i1 false, !16274, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15446)
    #dbg_value(i64 %i.fd, !16276, !DIExpression(), !15511)
  %.promoted.i.i.i = load i64, ptr %i.fc, align 8, !alias.scope !16343, !noalias !16344 ; 2 uses
  %i.fs = add i64 %.promoted.i.i.i, %i.fd, !dbg !16838 ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %i.ex, !dbg !16839
  br i1 %i.ft, label %.lr.ph.i28.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, !dbg !16839

.lr.ph.i28.i.i:                                   ; preds = %bb.ao
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !16343, !noalias !16344, !noundef !1568
  %i.fw = load i64, ptr %i.eq, align 8, !alias.scope !16343, !noalias !16344 ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.fy = load i64, ptr %i.fx, align 8, !alias.scope !16343, !noalias !16344 ; 2 uses
  %i.fz = sub i64 %i.fb, %i.fy
  %invariant.op = sub i64 1, %i.fw, !dbg !16840
  br label %.lr.ph.split.i.i.i, !dbg !16840

.lr.ph.split.i.i.i:                               ; preds = %bb.ar, %.lr.ph.i28.i.i
  %.sink94.i.i53.i = phi i64 [ %.sink94.i.i.i, %bb.ar ], [ %i.es, %.lr.ph.i28.i.i ] ; 3 uses
  %.sink95.i.i50.i = phi i64 [ %.sink95.i.i.i, %bb.ar ], [ %.promoted.i.i.i, %.lr.ph.i28.i.i ] ; 5 uses
  %i.ga = phi i64 [ %i.gk, %bb.ar ], [ %i.fs, %.lr.ph.i28.i.i ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ga, !dbg !16841
  %i.gc = load i8, ptr %i.gb, align 1, !dbg !16842, !alias.scope !16341, !noalias !16345, !noundef !1568
    #dbg_value(i8 %i.gc, !16299, !DIExpression(), !15444)
    #dbg_value(i8 %i.gc, !16277, !DIExpression(), !15513)
  %i.gd = and i8 %i.gc, 63, !dbg !16843
  %i.ge = zext nneg i8 %i.gd to i64, !dbg !16844
  %i.gf = shl nuw i64 1, %i.ge, !dbg !16845
  %i.gg = and i64 %i.gf, %i.fv, !dbg !16845
  %.not.i29.i.i = icmp eq i64 %i.gg, 0, !dbg !16845
  br i1 %.not.i29.i.i, label %bb.ap, label %bb.aq, !dbg !16840

bb.ap:                                            ; preds = %.lr.ph.split.i.i.i
  %i.gh = add i64 %.sink95.i.i50.i, %i.fb, !dbg !16846
  br label %bb.ar, !dbg !16847

bb.aq:                                            ; preds = %.lr.ph.split.i.i.i
    #dbg_value(i64 %i.fw, !16346, !DIExpression(), !15518)
    #dbg_value(i64 %i.fw, !16349, !DIExpression(), !15519)
    #dbg_value(i64 %.sink94.i.i53.i, !16347, !DIExpression(), !15518)
    #dbg_value(i64 %.sink94.i.i53.i, !16350, !DIExpression(), !15519)
  %i.gi = tail call i64 @llvm.umax.i64(i64 %i.fw, i64 %.sink94.i.i53.i), !dbg !16848 ; 2 uses
    #dbg_value(i64 %i.gi, !16279, !DIExpression(), !15520)
    #dbg_value(i64 %i.gi, !16280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15521)
    #dbg_value(i64 %i.fb, !16280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15521)
    #dbg_value(ptr undef, !16291, !DIExpression(), !15439)
    #dbg_value(ptr undef, !16287, !DIExpression(), !15437)
    #dbg_value(ptr undef, !16234, !DIExpression(), !15435)
    #dbg_value(ptr undef, !16237, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15522)
  %i.gj = icmp ult i64 %i.gi, %i.fb, !dbg !16849
  br i1 %i.gj, label %.lr.ph148, label %.preheader60.i.i.i.preheader, !dbg !16850

bb.ar:                                            ; preds = %bb.av, %bb.au, %bb.ap
  %.sink95.i.i.i = phi i64 [ %i.hf, %bb.av ], [ %i.he, %bb.au ], [ %i.gh, %bb.ap ] ; 2 uses
  %.sink94.i.i.i = phi i64 [ 0, %bb.av ], [ %i.fz, %bb.au ], [ 0, %bb.ap ]
  %i.gk = add i64 %.sink95.i.i.i, %i.fd, !dbg !16838 ; 2 uses
    #dbg_value(i64 %i.gk, !16310, !DIExpression(), !15456)
    #dbg_value(i64 %i.gk, !16304, !DIExpression(), !15451)
  %i.gl = icmp ult i64 %i.gk, %i.ex, !dbg !16839
  br i1 %i.gl, label %.lr.ph.split.i.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, !dbg !16839

bb.as:                                            ; preds = %.lr.ph148
  %i.gm = add nuw nsw i64 %.sroa.04.0.i.i.i147, 1, !dbg !16851 ; 2 uses
    #dbg_value(i64 %i.gm, !16280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15521)
    #dbg_value(i64 %i.gm, !16280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15521)
    #dbg_value(ptr undef, !16291, !DIExpression(), !15439)
    #dbg_value(ptr undef, !16287, !DIExpression(), !15437)
    #dbg_value(ptr undef, !16234, !DIExpression(), !15435)
    #dbg_value(ptr undef, !16237, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15522)
  %i.gn = icmp ult i64 %i.gm, %i.fb, !dbg !16849
  br i1 %i.gn, label %.lr.ph148, label %.preheader60.i.i.i.preheader, !dbg !16850

.preheader60.i.i.i.preheader:                     ; preds = %bb.as, %bb.aq
    #dbg_value(i64 %i.fw, !16283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15523)
    #dbg_value(ptr undef, !16261, !DIExpression(), !15424)
    #dbg_value(ptr undef, !16248, !DIExpression(), !15422)
    #dbg_value(ptr undef, !16245, !DIExpression(), !15420)
    #dbg_value(ptr undef, !16234, !DIExpression(), !15418)
    #dbg_value(ptr undef, !16237, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15524)
  %i.go = icmp ult i64 %.sink94.i.i53.i, %i.fw, !dbg !16852
  br i1 %i.go, label %.lr.ph150, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, !dbg !16853

.lr.ph148:                                        ; preds = %bb.aq, %bb.as
  %.sroa.04.0.i.i.i147 = phi i64 [ %i.gm, %bb.as ], [ %i.gi, %bb.aq ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.i.i.i147, !16280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15521)
    #dbg_value(i64 %.sroa.04.0.i.i.i147, !16330, !DIExpression(), !15484)
    #dbg_value(i64 %.sroa.04.0.i.i.i147, !16288, !DIExpression(), !15525)
    #dbg_value(i64 %.sroa.04.0.i.i.i147, !16325, !DIExpression(), !15479)
    #dbg_value(i64 %.sroa.04.0.i.i.i147, !16280, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15521)
    #dbg_value(i64 %.sroa.04.0.i.i.i147, !16281, !DIExpression(), !15526)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.04.0.i.i.i147, !dbg !16854
  %i.gq = load i8, ptr %i.gp, align 1, !dbg !16854, !alias.scope !16342, !noalias !16352, !noundef !1568
  %i.gr = add i64 %.sroa.04.0.i.i.i147, %.sink95.i.i50.i, !dbg !16855 ; 2 uses
    #dbg_value(i64 %i.gr, !16320, !DIExpression(), !15466)
    #dbg_value(i64 %i.gr, !16315, !DIExpression(), !15461)
  %i.gs = icmp ult i64 %i.gr, %i.ex, !dbg !16856
  tail call void @llvm.assume(i1 %i.gs), !dbg !16857
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.gr, !dbg !16858
  %i.gu = load i8, ptr %i.gt, align 1, !dbg !16859, !alias.scope !16341, !noalias !16345, !noundef !1568
  %.not45.i.i.i = icmp eq i8 %i.gq, %i.gu, !dbg !16854
  br i1 %.not45.i.i.i, label %bb.as, label %bb.av, !dbg !16854

.preheader60.i.i.i:                               ; preds = %bb.at
    #dbg_value(i64 %i.gw, !16283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15523)
    #dbg_value(ptr undef, !16261, !DIExpression(), !15424)
    #dbg_value(ptr undef, !16248, !DIExpression(), !15422)
    #dbg_value(ptr undef, !16245, !DIExpression(), !15420)
    #dbg_value(ptr undef, !16234, !DIExpression(), !15418)
    #dbg_value(ptr undef, !16237, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15524)
  %i.gv = icmp ult i64 %.sink94.i.i53.i, %i.gw, !dbg !16852
  br i1 %i.gv, label %.lr.ph150, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, !dbg !16853

.lr.ph150:                                        ; preds = %.preheader60.i.i.i.preheader, %.preheader60.i.i.i
  %.sroa.2.0.i.i.i149 = phi i64 [ %i.gw, %.preheader60.i.i.i ], [ %i.fw, %.preheader60.i.i.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.i.i.i149, !16283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15523)
    #dbg_value(i64 %.sroa.2.0.i.i.i149, !16336, !DIExpression(), !15494)
    #dbg_value(i64 %.sroa.2.0.i.i.i149, !16333, !DIExpression(), !15489)
  %i.gw = add i64 %.sroa.2.0.i.i.i149, -1, !dbg !16860 ; 6 uses
    #dbg_value(i64 %i.gw, !16283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15523)
    #dbg_value(i64 %i.gw, !16284, !DIExpression(), !15527)
  %i.gx = icmp ult i64 %i.gw, %i.fb, !dbg !16861
  br i1 %i.gx, label %bb.at, label %.split56.us.i.i.i, !dbg !16861

bb.at:                                            ; preds = %.lr.ph150
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.gw, !dbg !16861
  %i.gz = load i8, ptr %i.gy, align 1, !dbg !16861, !alias.scope !16342, !noalias !16352, !noundef !1568
  %i.ha = add i64 %i.gw, %.sink95.i.i50.i, !dbg !16862 ; 2 uses
    #dbg_value(i64 %i.ha, !16320, !DIExpression(), !15474)
    #dbg_value(i64 %i.ha, !16315, !DIExpression(), !15470)
  %i.hb = icmp ult i64 %i.ha, %i.ex, !dbg !16863
  tail call void @llvm.assume(i1 %i.hb), !dbg !16864
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ha, !dbg !16865
  %i.hd = load i8, ptr %i.hc, align 1, !dbg !16866, !alias.scope !16341, !noalias !16345, !noundef !1568
  %.not44.i.i.i = icmp eq i8 %i.gz, %i.hd, !dbg !16861
  br i1 %.not44.i.i.i, label %.preheader60.i.i.i, label %bb.au, !dbg !16861

.split56.us.i.i.i:                                ; preds = %.lr.ph150
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.gw, i64 noundef range(i64 0, -9223372036854775808) %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #25, !dbg !16861, !noalias !16353
  unreachable, !dbg !16861

bb.au:                                            ; preds = %bb.at
  %i.he = add i64 %.sink95.i.i50.i, %i.fy, !dbg !16867
  br label %bb.ar, !dbg !16868

bb.av:                                            ; preds = %.lr.ph148
  %.reass.i.reass.i.reass.reass = add i64 %.sink95.i.i50.i, %invariant.op
  %i.hf = add i64 %.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i147, !dbg !16869
  br label %bb.ar, !dbg !16870

bb.aw:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16354), !dbg !16871
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16355), !dbg !16871
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16356), !dbg !16871
    #dbg_value(i1 true, !16274, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15445)
    #dbg_value(i64 %i.fd, !16276, !DIExpression(), !15532)
  %.promoted.i31.i.i = load i64, ptr %i.fc, align 8, !alias.scope !16357, !noalias !16358 ; 2 uses
  %i.hg = add i64 %.promoted.i31.i.i, %i.fd, !dbg !16872 ; 2 uses
  %i.hh = icmp ult i64 %i.hg, %i.ex, !dbg !16873
  br i1 %i.hh, label %.lr.ph.i34.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, !dbg !16873

.lr.ph.i34.i.i:                                   ; preds = %bb.aw
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hj = load i64, ptr %i.hi, align 8, !alias.scope !16357, !noalias !16358, !noundef !1568
  %i.hk = load i64, ptr %i.eq, align 8, !alias.scope !16357, !noalias !16358
  %.fr234.i.i = freeze i64 %i.hk, !dbg !16874     ; 7 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hm = load i64, ptr %i.hl, align 8, !alias.scope !16357, !noalias !16358
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr234.i.i, i64 range(i64 0, -9223372036854775808) %i.fb), !dbg !16874
  %i.hn = add i64 %.fr234.i.i, -1, !dbg !16874    ; 2 uses
  %.first_iter.i35.i.i = icmp ult i64 %i.hn, %i.fb
  %exitcond.not.i36.i.i151.not = icmp ult i64 %.fr234.i.i, %i.fb
  %invariant.op191 = sub i64 1, %.fr234.i.i, !dbg !16874
  %.not58.i.us.i.i154 = icmp eq i64 %.fr234.i.i, 0
  br label %.lr.ph.split.us.i.i.i, !dbg !16874

.lr.ph.split.us.i.i.i:                            ; preds = %bb.az, %.lr.ph.i34.i.i
  %.sink.i37.i56.i = phi i64 [ %.sink.i37.i.i, %bb.az ], [ %.promoted.i31.i.i, %.lr.ph.i34.i.i ] ; 5 uses
  %i.ho = phi i64 [ %i.im, %bb.az ], [ %i.hg, %.lr.ph.i34.i.i ]
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ho, !dbg !16875
  %i.hq = load i8, ptr %i.hp, align 1, !dbg !16876, !alias.scope !16355, !noalias !16359, !noundef !1568
    #dbg_value(i8 %i.hq, !16299, !DIExpression(), !15442)
    #dbg_value(i8 %i.hq, !16277, !DIExpression(), !15534)
  %i.hr = and i8 %i.hq, 63, !dbg !16877
  %i.hs = zext nneg i8 %i.hr to i64, !dbg !16878
  %i.ht = shl nuw i64 1, %i.hs, !dbg !16879
  %i.hu = and i64 %i.ht, %i.hj, !dbg !16879
  %.not.us.i.i.i = icmp eq i64 %i.hu, 0, !dbg !16879
  br i1 %.not.us.i.i.i, label %bb.ay, label %.preheader59.i.i.i.preheader, !dbg !16874

.preheader59.i.i.i.preheader:                     ; preds = %.lr.ph.split.us.i.i.i
    #dbg_value(i64 %.fr234.i.i, !16280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15535)
    #dbg_value(ptr undef, !16291, !DIExpression(), !15438)
    #dbg_value(ptr undef, !16287, !DIExpression(), !15436)
    #dbg_value(ptr undef, !16234, !DIExpression(), !15431)
    #dbg_value(ptr undef, !16237, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15536)
  br i1 %exitcond.not.i36.i.i151.not, label %.lr.ph153, label %.preheader.i38.preheader.i.i, !dbg !16880

.preheader59.i.i.i:                               ; preds = %.lr.ph153
  %i.hv = add i64 %.sroa.04.0.us.i.i.i152, 1, !dbg !16881 ; 2 uses
    #dbg_value(i64 %i.hv, !16280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15535)
    #dbg_value(i64 %i.hv, !16280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15535)
    #dbg_value(ptr undef, !16291, !DIExpression(), !15438)
    #dbg_value(ptr undef, !16287, !DIExpression(), !15436)
    #dbg_value(ptr undef, !16234, !DIExpression(), !15431)
    #dbg_value(ptr undef, !16237, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15536)
  %exitcond.not.i36.i.i = icmp eq i64 %i.hv, %umax.i.i.i, !dbg !16882
  br i1 %exitcond.not.i36.i.i, label %.preheader.i38.preheader.i.i, label %.lr.ph153, !dbg !16880

.preheader.i38.preheader.i.i:                     ; preds = %.preheader59.i.i.i, %.preheader59.i.i.i.preheader
    #dbg_value(ptr undef, !16261, !DIExpression(), !15423)
    #dbg_value(ptr undef, !16261, !DIExpression(), !15423)
    #dbg_value(ptr undef, !16248, !DIExpression(), !15421)
    #dbg_value(ptr undef, !16248, !DIExpression(), !15421)
    #dbg_value(ptr undef, !16245, !DIExpression(), !15419)
    #dbg_value(ptr undef, !16245, !DIExpression(), !15419)
    #dbg_value(ptr undef, !16234, !DIExpression(), !15412)
    #dbg_value(ptr undef, !16234, !DIExpression(), !15412)
    #dbg_value(ptr undef, !16237, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15537)
    #dbg_value(ptr undef, !16237, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15537)
  br i1 %.not58.i.us.i.i154, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.preheader.i38.us.i.i.preheader

.preheader.i38.us.i.i.preheader:                  ; preds = %.preheader.i38.preheader.i.i
    #dbg_value(i64 %.fr234.i.i, !16283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15538)
  br i1 %.first_iter.i35.i.i, label %.lr.ph156, label %.split56.us.i39.i.i, !dbg !16883

.preheader.i38.us.i.i:                            ; preds = %.lr.ph156
    #dbg_value(i64 %i.hw, !16283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15538)
    #dbg_value(ptr undef, !16261, !DIExpression(), !15423)
    #dbg_value(ptr undef, !16248, !DIExpression(), !15421)
    #dbg_value(ptr undef, !16245, !DIExpression(), !15419)
    #dbg_value(ptr undef, !16234, !DIExpression(), !15412)
    #dbg_value(ptr undef, !16237, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15537)
  %.not58.i.us.i.i = icmp eq i64 %i.hw, 0, !dbg !16884
  br i1 %.not58.i.us.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph156, !dbg !16883

.lr.ph156:                                        ; preds = %.preheader.i38.us.i.i.preheader, %.preheader.i38.us.i.i
  %.sroa.2.0.us.i.us.i.i155 = phi i64 [ %i.hw, %.preheader.i38.us.i.i ], [ %.fr234.i.i, %.preheader.i38.us.i.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i155, !16283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15538)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i155, !16336, !DIExpression(), !15492)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i155, !16333, !DIExpression(), !15487)
  %i.hw = add i64 %.sroa.2.0.us.i.us.i.i155, -1, !dbg !16885 ; 4 uses
    #dbg_value(i64 %i.hw, !16283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15538)
    #dbg_value(i64 %i.hw, !16284, !DIExpression(), !15539)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.hw, !dbg !16886
  %i.hy = load i8, ptr %i.hx, align 1, !dbg !16886, !alias.scope !16356, !noalias !16360, !noundef !1568
  %i.hz = add i64 %i.hw, %.sink.i37.i56.i, !dbg !16887 ; 2 uses
    #dbg_value(i64 %i.hz, !16320, !DIExpression(), !15472)
    #dbg_value(i64 %i.hz, !16315, !DIExpression(), !15468)
  %i.ia = icmp ult i64 %i.hz, %i.ex, !dbg !16888
  tail call void @llvm.assume(i1 %i.ia), !dbg !16889
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.hz, !dbg !16890
  %i.ic = load i8, ptr %i.ib, align 1, !dbg !16891, !alias.scope !16355, !noalias !16359, !noundef !1568
  %.not44.us.i.us.i.i = icmp eq i8 %i.hy, %i.ic, !dbg !16886
  br i1 %.not44.us.i.us.i.i, label %.preheader.i38.us.i.i, label %.split.us.i.i, !dbg !16886

.split.us.i.i:                                    ; preds = %.lr.ph156
  %i.id = add i64 %.sink.i37.i56.i, %i.hm, !dbg !16892
  br label %bb.az, !dbg !16893

.lr.ph153:                                        ; preds = %.preheader59.i.i.i.preheader, %.preheader59.i.i.i
  %.sroa.04.0.us.i.i.i152 = phi i64 [ %i.hv, %.preheader59.i.i.i ], [ %.fr234.i.i, %.preheader59.i.i.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i.i152, !16280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15535)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i152, !16330, !DIExpression(), !15482)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i152, !16288, !DIExpression(), !15540)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i152, !16325, !DIExpression(), !15477)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i152, !16280, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15535)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i152, !16281, !DIExpression(), !15541)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.04.0.us.i.i.i152, !dbg !16894
  %i.if = load i8, ptr %i.ie, align 1, !dbg !16894, !alias.scope !16356, !noalias !16360, !noundef !1568
  %i.ig = add i64 %.sroa.04.0.us.i.i.i152, %.sink.i37.i56.i, !dbg !16895 ; 2 uses
    #dbg_value(i64 %i.ig, !16320, !DIExpression(), !15464)
    #dbg_value(i64 %i.ig, !16315, !DIExpression(), !15459)
  %i.ih = icmp ult i64 %i.ig, %i.ex, !dbg !16896
  tail call void @llvm.assume(i1 %i.ih), !dbg !16897
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ig, !dbg !16898
  %i.ij = load i8, ptr %i.ii, align 1, !dbg !16899, !alias.scope !16355, !noalias !16359, !noundef !1568
  %.not45.us.i.i.i = icmp eq i8 %i.if, %i.ij, !dbg !16894
  br i1 %.not45.us.i.i.i, label %.preheader59.i.i.i, label %bb.ax, !dbg !16894

.split56.us.i39.i.i:                              ; preds = %.preheader.i38.us.i.i.preheader
    #dbg_value(i64 %i.hk, !16336, !DIExpression(), !15492)
    #dbg_value(i64 %i.hk, !16333, !DIExpression(), !15487)
    #dbg_value(i64 %i.hn, !16283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15538)
    #dbg_value(i64 %i.hn, !16284, !DIExpression(), !15539)
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.hn, i64 noundef range(i64 0, -9223372036854775808) %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #25, !dbg !16886, !noalias !16361
  unreachable, !dbg !16886

bb.ax:                                            ; preds = %.lr.ph153
  %.reass301.i.reass.i.reass.reass = add i64 %.sink.i37.i56.i, %invariant.op191
  %i.ik = add i64 %.reass301.i.reass.i.reass.reass, %.sroa.04.0.us.i.i.i152, !dbg !16900
  br label %bb.az, !dbg !16901

bb.ay:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.il = add i64 %.sink.i37.i56.i, %i.fb, !dbg !16902
  br label %bb.az, !dbg !16903

bb.az:                                            ; preds = %bb.ay, %bb.ax, %.split.us.i.i
  %.sink.i37.i.i = phi i64 [ %i.il, %bb.ay ], [ %i.ik, %bb.ax ], [ %i.id, %.split.us.i.i ] ; 2 uses
  %i.im = add i64 %.sink.i37.i.i, %i.fd, !dbg !16872 ; 2 uses
    #dbg_value(i64 %i.im, !16310, !DIExpression(), !15454)
    #dbg_value(i64 %i.im, !16304, !DIExpression(), !15449)
  %i.in = icmp ult i64 %i.im, %i.ex, !dbg !16873
  br i1 %i.in, label %.lr.ph.split.us.i.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, !dbg !16873

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i: ; preds = %.lr.ph.i.i15.i, %bb.am, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.i, %bb.ai
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, !dbg !16904

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i: ; preds = %bb.ar, %.preheader60.i.i.i.preheader, %.preheader60.i.i.i, %.preheader.i38.preheader.i.i, %bb.az, %.preheader.i38.us.i.i, %bb.an, %bb.y, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i, %bb.aw, %bb.ao, %bb.am, %bb.aj, %bb.ah, %bb.ab, %.preheader.i.i
  %storemerge.i.sink.i.i = phi i8 [ 1, %.preheader60.i.i.i ], [ 0, %bb.ao ], [ 0, %bb.aj ], [ 0, %bb.aw ], [ 1, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i ], [ 0, %bb.am ], [ 1, %.preheader.i38.us.i.i ], [ 0, %.preheader.i.i ], [ 1, %bb.ab ], [ 1, %bb.ah ], [ 0, %bb.an ], [ 1, %.preheader.i38.preheader.i.i ], [ %.promoted225.i.i, %bb.y ], [ 0, %bb.az ], [ 0, %bb.ar ], [ 1, %.preheader60.i.i.i.preheader ]
    #dbg_value(i8 %storemerge.i.sink.i.i, !16002, !DIExpression(), !15542)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16904, !noalias !16037
  br label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, !dbg !16904

bb.ba:                                            ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16362), !dbg !16905
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16363), !dbg !16905
    #dbg_value(ptr poison, !16364, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !15576)
    #dbg_value(ptr poison, !16364, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !15576)
    #dbg_value(ptr poison, !16411, !DIExpression(), !15591)
    #dbg_value(ptr poison, !16428, !DIExpression(), !15592)
    #dbg_value(ptr poison, !16441, !DIExpression(), !15593)
    #dbg_value(ptr poison, !16446, !DIExpression(), !15618)
    #dbg_value(ptr poison, !16449, !DIExpression(), !15619)
    #dbg_value(ptr poison, !16451, !DIExpression(), !15620)
    #dbg_value(ptr poison, !16476, !DIExpression(), !15621)
    #dbg_value(ptr poison, !16499, !DIExpression(), !15622)
    #dbg_value(ptr poison, !16364, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15576)
    #dbg_value(ptr poison, !16478, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !15623)
    #dbg_value(ptr poison, !16500, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !15622)
    #dbg_value(ptr poison, !16505, !DIExpression(), !15630)
    #dbg_value(ptr poison, !16430, !DIExpression(), !15592)
    #dbg_value(ptr poison, !16442, !DIExpression(), !15593)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16385, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15631)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16385, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15631)
    #dbg_value(ptr %.sroa.0.0.i33, !16386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15631)
    #dbg_value(i64 %.sroa.3.0.i32, !16386, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15631)
    #dbg_declare(ptr %i.a, !16396, !DIExpression(), !15632)
    #dbg_value(i64 4, !16523, !DIExpression(), !15635)
    #dbg_value(i64 1, !16526, !DIExpression(), !15638)
    #dbg_value(i64 1, !16529, !DIExpression(), !15642)
    #dbg_value(i64 1, !16533, !DIExpression(), !15645)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15645)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15646)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16527, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15638)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15642)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15645)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15646)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16527, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15638)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15642)
    #dbg_value(ptr %.sroa.0.0.i33, !16388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15647)
    #dbg_value(i64 %.sroa.3.0.i32, !16388, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15647)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16524, !DIExpression(), !15635)
  %i.io = load i8, ptr %.sroa.0.0.i.ph, align 1, !dbg !16906, !alias.scope !16537, !noalias !16538, !noundef !1568 ; 3 uses
    #dbg_value(i8 %i.io, !16389, !DIExpression(), !15648)
    #dbg_value(i8 %i.io, !16540, !DIExpression(), !15651)
  %i.ip = add nsw i64 %.sroa.3.0.i.ph, -1, !dbg !16907 ; 2 uses
    #dbg_value(i64 %i.ip, !16390, !DIExpression(), !15652)
  %i.iq = icmp eq i64 %.sroa.3.0.i.ph, 2, !dbg !16908
  br i1 %i.iq, label %.thread.i.i, label %.lr.ph146, !dbg !16908

.lr.ph146:                                        ; preds = %bb.ba
  %i.ir = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %.sroa.3.0.i.ph, i64 4), !dbg !16909
    #dbg_value(ptr undef, !16499, !DIExpression(), !15622)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15622)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15622)
    #dbg_value(ptr undef, !16500, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15622)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15623)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15623)
    #dbg_value(ptr undef, !16478, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15623)
    #dbg_value(ptr undef, !16476, !DIExpression(), !15621)
    #dbg_declare(ptr poison, !16477, !DIExpression(), !15653)
    #dbg_declare(ptr poison, !16479, !DIExpression(), !15654)
    #dbg_value(ptr undef, !16451, !DIExpression(), !15620)
    #dbg_value(ptr undef, !16449, !DIExpression(), !15619)
    #dbg_value(ptr undef, !16446, !DIExpression(), !15618)
    #dbg_value(ptr undef, !16447, !DIExpression(), !15618)
  br label %bb.bc, !dbg !16910

bb.bb:                                            ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i
    #dbg_value(ptr undef, !16451, !DIExpression(), !15620)
    #dbg_value(ptr undef, !16449, !DIExpression(), !15619)
    #dbg_value(ptr undef, !16446, !DIExpression(), !15618)
    #dbg_value(ptr undef, !16447, !DIExpression(), !15618)
  %i.is = icmp ult i64 %i.ir, %i.iu, !dbg !16911
  br i1 %i.is, label %bb.bc, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.i, !dbg !16910

bb.bc:                                            ; preds = %.lr.ph146, %bb.bb
  %i.it = phi i64 [ %.sroa.3.0.i.ph, %.lr.ph146 ], [ %i.iu, %bb.bb ]
    #dbg_value(i64 %i.it, !16545, !DIExpression(), !15659)
    #dbg_value(i64 %i.it, !16548, !DIExpression(), !15660)
    #dbg_value(i64 1, !16546, !DIExpression(), !15659)
    #dbg_value(i64 1, !16549, !DIExpression(), !15660)
  %i.iu = add nsw i64 %i.it, -1, !dbg !16912      ; 6 uses
    #dbg_value(i64 %i.iu, !16480, !DIExpression(), !15661)
    #dbg_value(ptr poison, !16551, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !15664)
    #dbg_declare(ptr poison, !16556, !DIExpression(), !15665)
    #dbg_value(ptr undef, !16555, !DIExpression(DW_OP_deref), !15664)
    #dbg_value(ptr poison, !16561, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !15669)
    #dbg_value(ptr poison, !16567, !DIExpression(), !15669)
    #dbg_value(i64 %i.iu, !16566, !DIExpression(), !15670)
  %i.iv = icmp ult i64 %i.iu, %.sroa.3.0.i.ph, !dbg !16913
  br i1 %i.iv, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i, label %bb.bd, !dbg !16913

bb.bd:                                            ; preds = %bb.bc
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.iu, i64 noundef range(i64 2, 33) %.sroa.3.0.i.ph, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #25, !dbg !16913, !noalias !16569
  unreachable, !dbg !16913

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i: ; preds = %bb.bc
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.ph, i64 %i.iu, !dbg !16913
  %i.ix = load i8, ptr %i.iw, align 1, !dbg !16913, !alias.scope !16537, !noalias !16570, !noundef !1568 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i8 %i.ix, %i.io, !dbg !16913
  br i1 %.not.i.not.i.i.i, label %bb.bb, label %bb.be, !dbg !16914

bb.be:                                            ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i
  %i.iy = add nuw nsw i64 %.sroa.3.0.i.ph, 15, !dbg !16915
  %i.iz = icmp ult i64 %.sroa.3.0.i32, %i.iy, !dbg !16916
  br i1 %i.iz, label %.lr.ph.split.us.i.i21.i, label %bb.bf, !dbg !16916

.thread.i.i:                                      ; preds = %bb.ba
  %i.ja = icmp ult i64 %.sroa.3.0.i32, 17, !dbg !16916
  br i1 %i.ja, label %.lr.ph.split.us.i.i21.i, label %.thread136.i.i, !dbg !16916

.thread136.i.i:                                   ; preds = %.thread.i.i
    #dbg_value(i8 %i.io, !16540, !DIExpression(), !15651)
    #dbg_value(i8 %i.io, !16389, !DIExpression(), !15648)
  %i.jb = insertelement <16 x i8> poison, i8 %i.io, i64 0, !dbg !16917
  %i.jc = shufflevector <16 x i8> %i.jb, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !16917
    #dbg_value(<16 x i8> %i.jc, !16393, !DIExpression(), !15678)
    #dbg_value(i64 1, !16391, !DIExpression(), !15679)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.ph, i64 1
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !dbg !16918, !alias.scope !16537, !noalias !16538
  br label %bb.bg, !dbg !16918

bb.bf:                                            ; preds = %bb.be
    #dbg_value(i8 %i.io, !16540, !DIExpression(), !15651)
    #dbg_value(i8 %i.io, !16389, !DIExpression(), !15648)
  %i.jd = insertelement <16 x i8> poison, i8 %i.io, i64 0, !dbg !16917
  %i.je = shufflevector <16 x i8> %i.jd, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !16917
    #dbg_value(<16 x i8> %i.je, !16393, !DIExpression(), !15678)
    #dbg_value(i64 %i.iu, !16391, !DIExpression(), !15679)
  br label %bb.bg, !dbg !16918

.lr.ph.split.us.i.i21.i:                          ; preds = %.thread.i.i, %bb.be
    #dbg_value(ptr undef, !16441, !DIExpression(), !15593)
    #dbg_value(ptr undef, !16442, !DIExpression(), !15593)
    #dbg_value(ptr undef, !16430, !DIExpression(), !15592)
    #dbg_value(ptr undef, !16428, !DIExpression(), !15592)
    #dbg_declare(ptr poison, !16429, !DIExpression(), !15680)
    #dbg_declare(ptr poison, !16431, !DIExpression(), !15681)
    #dbg_value(ptr undef, !16411, !DIExpression(), !15591)
    #dbg_value(i64 0, !16571, !DIExpression(), !15690)
    #dbg_value(i64 1, !16585, !DIExpression(), !15693)
    #dbg_value(i64 1, !16588, !DIExpression(), !15697)
    #dbg_value(i64 1, !16571, !DIExpression(), !15699)
    #dbg_value(ptr %.sroa.0.0.i33, !16572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15690)
    #dbg_value(i64 %.sroa.3.0.i32, !16572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15690)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16573, !DIExpression(), !15690)
    #dbg_value(ptr %.sroa.0.0.i33, !16418, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15700)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16418, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15700)
    #dbg_value(ptr %.sroa.0.0.i33, !16572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15699)
    #dbg_value(ptr %.sroa.0.0.i33, !16586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15693)
    #dbg_value(ptr %.sroa.0.0.i33, !16589, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15697)
    #dbg_value(i64 %.sroa.3.0.i32, !16572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15699)
    #dbg_value(i64 %.sroa.3.0.i32, !16586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15693)
    #dbg_value(i64 %.sroa.3.0.i32, !16589, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15697)
  %bcmp.i.i.us24.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %.sroa.0.0.i33, ptr noundef nonnull readonly dereferenceable(1) %.sroa.0.0.i.ph, i64 range(i64 2, 33) %.sroa.3.0.i.ph), !dbg !16919, !alias.scope !16593, !noalias !16594
  %i.jf = icmp eq i32 %bcmp.i.i.us24.i.i.i, 0, !dbg !16919
  br i1 %i.jf, label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5yXxDE1DkoT_4tera.exit.backedge.us.i.i.i, !dbg !16920

.split.us.i.i.i:                                  ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5yXxDE1DkoT_4tera.exit.backedge.us.i.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 1, !dbg !16921 ; 2 uses
    #dbg_value(ptr %i.jg, !16572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15690)
    #dbg_value(i64 %i.ji, !16572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15690)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16573, !DIExpression(), !15690)
    #dbg_value(ptr %i.jg, !16572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15699)
    #dbg_value(ptr %i.jg, !16586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15693)
    #dbg_value(ptr %i.jg, !16589, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15697)
    #dbg_value(i64 %i.ji, !16572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15699)
    #dbg_value(i64 %i.ji, !16586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15693)
    #dbg_value(i64 %i.ji, !16589, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15697)
    #dbg_value(i64 %i.ji, !16573, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !15699)
    #dbg_value(i64 %i.ji, !16590, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !15709)
    #dbg_value(ptr %i.jg, !16418, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15700)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16418, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15700)
    #dbg_value(ptr %i.jg, !16432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15710)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16432, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15710)
    #dbg_value(ptr poison, !16518, !DIExpression(DW_OP_deref), !15711)
    #dbg_declare(ptr poison, !16519, !DIExpression(), !15712)
    #dbg_value(ptr %i.jg, !16517, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15711)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16517, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15711)
    #dbg_value(ptr poison, !16512, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !15713)
    #dbg_value(ptr %i.jg, !16511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15713)
    #dbg_value(ptr %i.jg, !16600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15714)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15713)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15714)
    #dbg_value(ptr poison, !16506, !DIExpression(), !15715)
    #dbg_value(ptr undef, !16505, !DIExpression(), !15630)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16601, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15714)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16598, !DIExpression(), !15716)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16602, !DIExpression(), !15717)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16597, !DIExpression(), !15718)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16601, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15714)
    #dbg_value(ptr %i.jg, !16595, !DIExpression(), !15718)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16596, !DIExpression(), !15718)
  %bcmp.i.i.us.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.jg, ptr noundef nonnull readonly dereferenceable(1) %.sroa.0.0.i.ph, i64 range(i64 2, 33) %.sroa.3.0.i.ph), !dbg !16919, !alias.scope !16593, !noalias !16594
  %i.jh = icmp eq i32 %bcmp.i.i.us.i.i.i, 0, !dbg !16919
  br i1 %i.jh, label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5yXxDE1DkoT_4tera.exit.backedge.us.i.i.i, !dbg !16920

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5yXxDE1DkoT_4tera.exit.backedge.us.i.i.i: ; preds = %.lr.ph.split.us.i.i21.i, %.split.us.i.i.i
end_hunk_0
