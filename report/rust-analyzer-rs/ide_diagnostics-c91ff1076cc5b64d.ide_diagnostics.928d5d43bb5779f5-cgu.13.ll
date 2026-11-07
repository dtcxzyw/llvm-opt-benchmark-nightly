Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_diagnostics-c91ff1076cc5b64d.ide_diagnostics.928d5d43bb5779f5-cgu.13?download=true
inline.NumInlined: 1160
inline.NumDeleted: 496
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_unsafe14missing_unsafe:switch.lookup

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprEECscA5P7HRgTCP_15ide_diagnostics.exit67.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprEECscA5P7HRgTCP_15ide_diagnostics.exit67thread-pre-split.i.i, %bb.bm
  %i.gd = phi i32 [ %.pr40.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprEECscA5P7HRgTCP_15ide_diagnostics.exit67thread-pre-split.i.i ], [ %i.fx, %bb.bm ] ; 2 uses
  %i.ge = icmp eq i32 %i.gd, -1
  br i1 %i.ge, label %.invoke, label %bb.bq, !prof !10

bb.bq:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprEECscA5P7HRgTCP_15ide_diagnostics.exit67.i.i
  %i.gf = add nuw i32 %i.gd, 1
  store i32 %i.gf, ptr %i.eo, align 8, !noalias !738
  %i.gg = load i64, ptr %.sroa.4.0.i.i.i, align 8, !range !6, !noalias !760, !noundef !5
  %i.gh = load ptr, ptr %i.fn, align 8, !noalias !760, !nonnull !5, !noundef !5
  %i.gi = shl nuw nsw i64 %i.gg, 2
  %.sroa.0.0.in.idx.i.i72.i.i = xor i64 %i.gi, 4
  %.sroa.0.0.in.i.i73.i.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.sroa.0.0.in.idx.i.i72.i.i
  %.sroa.0.0.i.i74.i.i = load i16, ptr %.sroa.0.0.in.i.i73.i.i, align 4, !noalias !760, !noundef !5
  %i.gj = invoke noundef range(i16 0, 329) i16 @_RNvXNtCsjJXvCMGntp8_6syntax11syntax_nodeNtB2_12RustLanguageNtNtCs9GitHPCrz2Q_5rowan3api8Language13kind_from_raw(i16 noundef %.sroa.0.0.i.i74.i.i)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCscA5P7HRgTCP_15ide_diagnostics.exit.i76.i.i unwind label %bb.br, !noalias !738

bb.br:                                            ; preds = %bb.bq
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gl = load i32, ptr %i.eo, align 4, !noalias !738, !noundef !5
  %i.gm = add i32 %i.gl, -1                       ; 2 uses
  store i32 %i.gm, ptr %i.eo, align 4, !noalias !738
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.bs, label %.body63.i.i

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4.0.i.i.i) #30
          to label %.body63.i.i unwind label %bb.bv, !noalias !738

_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCscA5P7HRgTCP_15ide_diagnostics.exit.i76.i.i: ; preds = %bb.bq
  %i.go = icmp eq i16 %i.gj, 202
  %i.gp = load i32, ptr %i.eo, align 8, !noalias !738, !noundef !5
  %i.gq = add i32 %i.gp, -1                       ; 4 uses
  store i32 %i.gq, ptr %i.eo, align 8, !noalias !738
  %i.gr = icmp eq i32 %i.gq, 0                    ; 2 uses
  br i1 %i.go, label %_RNvXs9R_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9FieldExprNtBa_7AstNode4cast.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCscA5P7HRgTCP_15ide_diagnostics.exit.i76.i.i
  br i1 %i.gr, label %bb.bu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9FieldExprEECscA5P7HRgTCP_15ide_diagnostics.exit84.i.i

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4.0.i.i.i) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9FieldExprEECscA5P7HRgTCP_15ide_diagnostics.exit84thread-pre-split.i.i unwind label %.loopexit.i.i, !noalias !738

bb.bv:                                            ; preds = %bb.bs
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !738
  unreachable

_RNvXs9R_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9FieldExprNtBa_7AstNode4cast.exit.i.i: ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCscA5P7HRgTCP_15ide_diagnostics.exit.i76.i.i
  br i1 %i.gr, label %.invoke.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9FieldExprEECscA5P7HRgTCP_15ide_diagnostics.exit84thread-pre-split.i.i: ; preds = %bb.bu
  %.pr44.i.i = load i32, ptr %i.eo, align 8, !noalias !738
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9FieldExprEECscA5P7HRgTCP_15ide_diagnostics.exit84.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9FieldExprEECscA5P7HRgTCP_15ide_diagnostics.exit84.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9FieldExprEECscA5P7HRgTCP_15ide_diagnostics.exit84thread-pre-split.i.i, %bb.bt
  %i.gt = phi i32 [ %.pr44.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9FieldExprEECscA5P7HRgTCP_15ide_diagnostics.exit84thread-pre-split.i.i ], [ %i.gq, %bb.bt ] ; 2 uses
  %i.gu = icmp eq i32 %i.gt, -1
  br i1 %i.gu, label %.invoke, label %bb.bw, !prof !10

bb.bw:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9FieldExprEECscA5P7HRgTCP_15ide_diagnostics.exit84.i.i
  %i.gv = add nuw i32 %i.gt, 1
  store i32 %i.gv, ptr %i.eo, align 8, !noalias !738
  %i.gw = load i64, ptr %.sroa.4.0.i.i.i, align 8, !range !6, !noalias !761, !noundef !5
  %i.gx = load ptr, ptr %i.fn, align 8, !noalias !761, !nonnull !5, !noundef !5
  %i.gy = shl nuw nsw i64 %i.gw, 2
  %.sroa.0.0.in.idx.i.i87.i.i = xor i64 %i.gy, 4
  %.sroa.0.0.in.i.i88.i.i = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.sroa.0.0.in.idx.i.i87.i.i
  %.sroa.0.0.i.i89.i.i = load i16, ptr %.sroa.0.0.in.i.i88.i.i, align 4, !noalias !761, !noundef !5
  %i.gz = invoke noundef range(i16 0, 329) i16 @_RNvXNtCsjJXvCMGntp8_6syntax11syntax_nodeNtB2_12RustLanguageNtNtCs9GitHPCrz2Q_5rowan3api8Language13kind_from_raw(i16 noundef %.sroa.0.0.i.i89.i.i)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCscA5P7HRgTCP_15ide_diagnostics.exit.i91.i.i unwind label %bb.bx, !noalias !738

bb.bx:                                            ; preds = %bb.bw
  %i.ha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hb = load i32, ptr %i.eo, align 4, !noalias !738, !noundef !5
  %i.hc = add i32 %i.hb, -1                       ; 2 uses
  store i32 %i.hc, ptr %i.eo, align 4, !noalias !738
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.by, label %.body63.i.i

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4.0.i.i.i) #30
          to label %.body63.i.i unwind label %bb.cb, !noalias !738

_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCscA5P7HRgTCP_15ide_diagnostics.exit.i91.i.i: ; preds = %bb.bw
  %i.he = icmp eq i16 %i.gz, 279
  %i.hf = load i32, ptr %i.eo, align 8, !noalias !738, !noundef !5
  %i.hg = add i32 %i.hf, -1                       ; 4 uses
  store i32 %i.hg, ptr %i.eo, align 8, !noalias !738
  %i.hh = icmp eq i32 %i.hg, 0                    ; 2 uses
  br i1 %i.he, label %_RNvXshj_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7RefExprNtBa_7AstNode4cast.exit.i.i, label %bb.bz

bb.bz:                                            ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCscA5P7HRgTCP_15ide_diagnostics.exit.i91.i.i
  br i1 %i.hh, label %bb.ca, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RefExprEECscA5P7HRgTCP_15ide_diagnostics.exit99.i.i

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4.0.i.i.i) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RefExprEECscA5P7HRgTCP_15ide_diagnostics.exit99thread-pre-split.i.i unwind label %.loopexit.i.i, !noalias !738

bb.cb:                                            ; preds = %bb.by
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !738
  unreachable

_RNvXshj_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7RefExprNtBa_7AstNode4cast.exit.i.i: ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCscA5P7HRgTCP_15ide_diagnostics.exit.i91.i.i
  br i1 %i.hh, label %.invoke.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i: ; preds = %bb.bi, %.body63.i.i
  br i1 %.sroa.013.0.i.i, label %bb.dt, label %.body.i.i

.split.thread.i.i:                                ; preds = %bb.di, %bb.bp
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

.split.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke295.i.i, %bb.dk, %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit69.i.i: ; preds = %bb.bp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.de, i64 48 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 8, !noalias !738, !noundef !5
  %i.hl = add i32 %i.hk, -1                       ; 2 uses
  store i32 %i.hl, ptr %i.hj, align 8, !noalias !738
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %.invoke295.i.i, label %thread-pre-split.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RefExprEECscA5P7HRgTCP_15ide_diagnostics.exit99thread-pre-split.i.i: ; preds = %bb.ca
  %.pr53.i.i = load i32, ptr %i.eo, align 8, !noalias !738
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RefExprEECscA5P7HRgTCP_15ide_diagnostics.exit99.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RefExprEECscA5P7HRgTCP_15ide_diagnostics.exit99.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RefExprEECscA5P7HRgTCP_15ide_diagnostics.exit99thread-pre-split.i.i, %bb.bz
  %i.hn = phi i32 [ %.pr53.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RefExprEECscA5P7HRgTCP_15ide_diagnostics.exit99thread-pre-split.i.i ], [ %i.hg, %bb.bz ] ; 2 uses
  %i.ho = icmp eq i32 %i.hn, -1
  br i1 %i.ho, label %.invoke, label %bb.cc, !prof !10

.invoke:                                          ; preds = %bb.az, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RefExprEECscA5P7HRgTCP_15ide_diagnostics.exit99.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9FieldExprEECscA5P7HRgTCP_15ide_diagnostics.exit84.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprEECscA5P7HRgTCP_15ide_diagnostics.exit67.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.cont unwind label %.loopexit.split-lp.i.i, !noalias !738

.cont:                                            ; preds = %.invoke
  unreachable

bb.cc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RefExprEECscA5P7HRgTCP_15ide_diagnostics.exit99.i.i
  %i.hp = add nuw i32 %i.hn, 1
  store i32 %i.hp, ptr %i.eo, align 8, !noalias !738
  %i.hq = load i64, ptr %.sroa.4.0.i.i.i, align 8, !range !6, !noalias !762, !noundef !5
  %i.hr = load ptr, ptr %i.fn, align 8, !noalias !762, !nonnull !5, !noundef !5
  %i.hs = shl nuw nsw i64 %i.hq, 2
  %.sroa.0.0.in.idx.i.i104.i.i = xor i64 %i.hs, 4
  %.sroa.0.0.in.i.i105.i.i = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.sroa.0.0.in.idx.i.i104.i.i
  %.sroa.0.0.i.i106.i.i = load i16, ptr %.sroa.0.0.in.i.i105.i.i, align 4, !noalias !762, !noundef !5
  %i.ht = invoke noundef range(i16 0, 329) i16 @_RNvXNtCsjJXvCMGntp8_6syntax11syntax_nodeNtB2_12RustLanguageNtNtCs9GitHPCrz2Q_5rowan3api8Language13kind_from_raw(i16 noundef %.sroa.0.0.i.i106.i.i)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCscA5P7HRgTCP_15ide_diagnostics.exit.i108.i.i unwind label %bb.cd, !noalias !738

bb.cd:                                            ; preds = %bb.cc
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hv = load i32, ptr %i.eo, align 4, !noalias !738, !noundef !5
  %i.hw = add i32 %i.hv, -1                       ; 2 uses
  store i32 %i.hw, ptr %i.eo, align 4, !noalias !738
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.ce, label %.body63.i.i

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4.0.i.i.i) #30
          to label %.body63.i.i unwind label %bb.ch, !noalias !738

_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCscA5P7HRgTCP_15ide_diagnostics.exit.i108.i.i: ; preds = %bb.cc
  %i.hy = icmp eq i16 %i.ht, 179
  br i1 %i.hy, label %_RNvXs7D_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7BinExprNtBa_7AstNode4cast.exit.i.i, label %bb.cf

bb.cf:                                            ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCscA5P7HRgTCP_15ide_diagnostics.exit.i108.i.i
  %i.hz = load i32, ptr %i.eo, align 4, !noalias !738, !noundef !5
  %i.ia = add i32 %i.hz, -1                       ; 2 uses
  store i32 %i.ia, ptr %i.eo, align 4, !noalias !738
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %bb.cg, label %bb.dj

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4.0.i.i.i) #30
          to label %bb.dj unwind label %.loopexit.split-lp.i.i, !noalias !738

bb.ch:                                            ; preds = %bb.ce
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !738
  unreachable

_RNvXs7D_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7BinExprNtBa_7AstNode4cast.exit.i.i: ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCscA5P7HRgTCP_15ide_diagnostics.exit.i108.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !740
  store ptr %.sroa.4.0.i.i.i, ptr %i.i, align 8, !noalias !740
  %i.id = invoke i16 @_RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7BinExpr7op_kind(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %3 unwind label %bb.ci, !noalias !738

bb.ci:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i19.i.i.i, %bb.cl, %_RNvXs7D_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7BinExprNtBa_7AstNode4cast.exit.i.i
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %.body120.i.i

.body120.i.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i, %.loopexit.split-lp59.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.ci
  %eh.lpad-body121.i.i = phi { ptr, i32 } [ %i.ie, %bb.ci ], [ %lpad.loopexit.split-lp389, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i ], [ %lpad.loopexit.split-lp389, %.loopexit.split-lp59.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.if = load i32, ptr %i.eo, align 4, !noalias !738, !noundef !5
  %i.ig = add i32 %i.if, -1                       ; 2 uses
  store i32 %i.ig, ptr %i.eo, align 4, !noalias !738
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %bb.cj, label %.body63.i.i

bb.cj:                                            ; preds = %.body120.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4.0.i.i.i) #30
          to label %.body63.i.i unwind label %bb.dl, !noalias !738

3:                                                ; preds = %_RNvXs7D_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7BinExprNtBa_7AstNode4cast.exit.i.i
  %.sroa.016.0.extract.trunc.i.i = trunc i16 %i.id to i8 ; 3 uses
  %.not21.i.i = icmp eq i8 %.sroa.016.0.extract.trunc.i.i, -1
  br i1 %.not21.i.i, label %bb.de, label %bb.ck

bb.ck:                                            ; preds = %3
  %4 = icmp ne i8 %.sroa.016.0.extract.trunc.i.i, 5
  call void @llvm.assume(i1 %4)
  %i.ii = icmp eq i8 %.sroa.016.0.extract.trunc.i.i, 6
  br i1 %i.ii, label %bb.cl, label %bb.de

bb.cl:                                            ; preds = %bb.ck
  %i.ij = invoke { i64, ptr } @_RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7BinExpr3lhs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.cm unwind label %bb.ci, !noalias !738 ; 2 uses

bb.cm:                                            ; preds = %bb.cl
  %i.ik = extractvalue { i64, ptr } %i.ij, 0
  %.not22.i.i = icmp eq i64 %i.ik, -1
  br i1 %.not22.i.i, label %bb.de, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.il = extractvalue { i64, ptr } %i.ij, 1      ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.il) ]
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 60
  %i.in = load i8, ptr %i.im, align 4, !range !7, !noalias !738, !noundef !5
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %bb.cp, label %bb.co, !prof !10

.loopexit.split-lp59.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cp, %bb.cw, %.invoke.i.i.i, %.invoke3.i.i.i
  %lpad.loopexit.split-lp389 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 48 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !noalias !738, !noundef !5
  %i.ir = add i32 %i.iq, -1                       ; 2 uses
  store i32 %i.ir, ptr %i.ip, align 4, !noalias !738
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i, label %.body120.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i: ; preds = %.loopexit.split-lp59.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.il) #30
          to label %.body120.i.i unwind label %bb.dc, !noalias !738

bb.co:                                            ; preds = %bb.cn
  %i.it = getelementptr inbounds nuw i8, ptr %i.il, i64 56
  %i.iu = load i32, ptr %i.it, align 8, !noalias !738, !noundef !5
  br label %.noexc5.i.i.i

bb.cp:                                            ; preds = %bb.cn
  %i.iv = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.il)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp59.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !738

.noexc5.i.i.i:                                    ; preds = %bb.cp, %bb.co
  %.sroa.0.0.i.i116.i.i = phi i32 [ %i.iu, %bb.co ], [ %i.iv, %bb.cp ] ; 3 uses
  %i.iw = load i64, ptr %i.il, align 8, !range !6, !noalias !738, !noundef !5
  %i.ix = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.iy = trunc nuw i64 %i.iw to i1
  %i.iz = load ptr, ptr %i.ix, align 8, !noalias !738, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.iy, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %.noexc5.i.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load i64, ptr %i.ja, align 8, !noalias !738, !noundef !5 ; 2 uses
  %i.jc = icmp ugt i64 %i.jb, 4294967295
  %i.jd = shl nuw i64 %i.jb, 32
  %.sroa.09.0.insert.insert.i.i.i.i.i = select i1 %i.jc, i64 513, i64 %i.jd ; 2 uses
  %i.je = trunc i64 %.sroa.09.0.insert.insert.i.i.i.i.i to i1
  br i1 %i.je, label %bb.cr, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i, !prof !10

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !740
  br label %.invoke3.i.i.i

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i: ; preds = %bb.cq
  %.sroa.6.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i.i to i32
  br label %bb.ct

bb.cs:                                            ; preds = %.noexc5.i.i.i
  %i.jf = load i32, ptr %i.iz, align 8, !noalias !738, !noundef !5
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i
  %.sroa.02.0.i.i.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i ], [ %i.jf, %bb.cs ]
  %i.jg = add i32 %.sroa.02.0.i.i.i.i, %.sroa.0.0.i.i116.i.i ; 2 uses
  %.not.i.i117.i.i = icmp ugt i32 %.sroa.0.0.i.i116.i.i, %i.jg
  br i1 %.not.i.i117.i.i, label %.invoke.i.i.i, label %bb.cu, !prof !10

bb.cu:                                            ; preds = %bb.ct
  %i.jh = getelementptr inbounds nuw i8, ptr %i.de, i64 60
  %i.ji = load i8, ptr %i.jh, align 4, !range !7, !noalias !738, !noundef !5
  %i.jj = trunc nuw i8 %i.ji to i1
  br i1 %i.jj, label %bb.cw, label %bb.cv, !prof !10

bb.cv:                                            ; preds = %bb.cu
  %i.jk = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.jl = load i32, ptr %i.jk, align 8, !noalias !738, !noundef !5
  br label %.noexc15.i.i.i

bb.cw:                                            ; preds = %bb.cu
  %i.jm = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.de)
          to label %.noexc15.i.i.i unwind label %.loopexit.split-lp59.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !738

.noexc15.i.i.i:                                   ; preds = %bb.cw, %bb.cv
  %.sroa.0.0.i8.i.i.i = phi i32 [ %i.jl, %bb.cv ], [ %i.jm, %bb.cw ] ; 3 uses
  %i.jn = load i64, ptr %i.de, align 8, !range !6, !noalias !738, !noundef !5
  %i.jo = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.jp = trunc nuw i64 %i.jn to i1
  %i.jq = load ptr, ptr %i.jo, align 8, !noalias !738, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.jp, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %.noexc15.i.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load i64, ptr %i.jr, align 8, !noalias !738, !noundef !5 ; 2 uses
  %i.jt = icmp ugt i64 %i.js, 4294967295
  %i.ju = shl nuw i64 %i.js, 32
  %.sroa.09.0.insert.insert.i.i11.i.i.i = select i1 %i.jt, i64 513, i64 %i.ju ; 2 uses
  %i.jv = trunc i64 %.sroa.09.0.insert.insert.i.i11.i.i.i to i1
  br i1 %i.jv, label %bb.cy, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i12.i.i.i, !prof !10

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !740
  br label %.invoke3.i.i.i

.invoke3.i.i.i:                                   ; preds = %bb.cy, %bb.cr
  %.sink.i.i.i = phi ptr [ %i.h, %bb.cr ], [ %i.g, %bb.cy ] ; 2 uses
  store i8 2, ptr %.sink.i.i.i, align 1, !noalias !740
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %.sink.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @435) #31
          to label %.cont4.i.i.i unwind label %.loopexit.split-lp59.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !738

.cont4.i.i.i:                                     ; preds = %.invoke3.i.i.i
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i12.i.i.i: ; preds = %bb.cx
  %.sroa.6.0.extract.shift.i.i.i13.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i11.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i14.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i13.i.i.i to i32
  br label %bb.da

bb.cz:                                            ; preds = %.noexc15.i.i.i
  %i.jw = load i32, ptr %i.jq, align 8, !noalias !738, !noundef !5
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i12.i.i.i
  %.sroa.02.0.i9.i.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i14.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i12.i.i.i ], [ %i.jw, %bb.cz ]
  %i.jx = add i32 %.sroa.02.0.i9.i.i.i, %.sroa.0.0.i8.i.i.i ; 2 uses
  %.not.i10.i.i.i = icmp ugt i32 %.sroa.0.0.i8.i.i.i, %i.jx
  br i1 %.not.i10.i.i.i, label %.invoke.i.i.i, label %bb.db, !prof !10

.invoke.i.i.i:                                    ; preds = %bb.da, %bb.ct
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #31
          to label %.cont.i.i.i unwind label %.loopexit.split-lp59.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !738

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.db:                                            ; preds = %bb.da
  %i.jy = getelementptr inbounds nuw i8, ptr %i.il, i64 48 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 8, !noalias !738, !noundef !5
  %i.ka = add i32 %i.jz, -1                       ; 2 uses
  store i32 %i.ka, ptr %i.jy, align 8, !noalias !738
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i19.i.i.i, label %bb.dd

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i19.i.i.i: ; preds = %bb.db
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.il) #30
          to label %bb.dd unwind label %bb.ci, !noalias !738

bb.dc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i
  %i.kc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !738
  unreachable

bb.dd:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i19.i.i.i, %bb.db
  %.not.i.i98.i = icmp ule i32 %.sroa.0.0.i.i116.i.i, %.sroa.0.0.i8.i.i.i
  %i.kd = icmp ule i32 %i.jx, %i.jg
  %.sroa.0.0.i118.i.i = and i1 %.not.i.i98.i, %i.kd
  br i1 %.sroa.0.0.i118.i.i, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.cm, %bb.ck, %3
  %i.ke = load i32, ptr %i.eo, align 4, !noalias !738, !noundef !5
  %i.kf = add i32 %i.ke, -1                       ; 2 uses
  store i32 %i.kf, ptr %i.eo, align 4, !noalias !738
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %bb.df, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECscA5P7HRgTCP_15ide_diagnostics.exit124.i.i

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4.0.i.i.i) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECscA5P7HRgTCP_15ide_diagnostics.exit124.i.i unwind label %.loopexit.split-lp.i.i, !noalias !738

bb.dg:                                            ; preds = %bb.dd
  %i.kh = load i32, ptr %i.eo, align 8, !noalias !738, !noundef !5
  %i.ki = add i32 %i.kh, -1                       ; 3 uses
  store i32 %i.ki, ptr %i.eo, align 8, !noalias !738
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %bb.dh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECscA5P7HRgTCP_15ide_diagnostics.exit127.i.i

bb.dh:                                            ; preds = %bb.dg
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4.0.i.i.i) #30
          to label %._RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECscA5P7HRgTCP_15ide_diagnostics.exit127_crit_edge.i.i unwind label %.loopexit.i.i, !noalias !738

._RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECscA5P7HRgTCP_15ide_diagnostics.exit127_crit_edge.i.i: ; preds = %bb.dh
  %.pre.i.i = load i32, ptr %i.eo, align 8, !noalias !738
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECscA5P7HRgTCP_15ide_diagnostics.exit127.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECscA5P7HRgTCP_15ide_diagnostics.exit127.i.i: ; preds = %._RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECscA5P7HRgTCP_15ide_diagnostics.exit127_crit_edge.i.i, %bb.dg
  %i.kk = phi i32 [ %.pre.i.i, %._RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECscA5P7HRgTCP_15ide_diagnostics.exit127_crit_edge.i.i ], [ %i.ki, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !740
  %i.kl = add i32 %i.kk, -1                       ; 2 uses
  store i32 %i.kl, ptr %i.eo, align 8, !noalias !738
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %bb.di, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit129.i.i

bb.di:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECscA5P7HRgTCP_15ide_diagnostics.exit127.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4.0.i.i.i) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit129.i.i unwind label %.split.thread.i.i, !noalias !738

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit129.i.i: ; preds = %bb.di, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECscA5P7HRgTCP_15ide_diagnostics.exit127.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.de, i64 48 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 8, !noalias !738, !noundef !5
  %i.kp = add i32 %i.ko, -1                       ; 2 uses
  store i32 %i.kp, ptr %i.kn, align 8, !noalias !738
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %.invoke295.i.i, label %thread-pre-split.i.i

.invoke295.i.i:                                   ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit129.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit69.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.de) #30
          to label %thread-pre-split.i.i unwind label %.split.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !738

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECscA5P7HRgTCP_15ide_diagnostics.exit124.i.i: ; preds = %bb.df, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !740
  br label %bb.dj

bb.dj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECscA5P7HRgTCP_15ide_diagnostics.exit124.i.i, %bb.cg, %bb.cf
  %i.kr = load i32, ptr %i.eo, align 4, !noalias !738, !noundef !5
  %i.ks = add i32 %i.kr, -1                       ; 2 uses
  store i32 %i.ks, ptr %i.eo, align 4, !noalias !738
  %i.kt = icmp eq i32 %i.ks, 0
  br i1 %i.kt, label %bb.dk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit133.i.i

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.4.0.i.i.i) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit133.i.i unwind label %.split.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !738

bb.dl:                                            ; preds = %bb.dw, %bb.du, %bb.cj, %bb.bi, %.body.i.i
  %i.ku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !738
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit133.i.i: ; preds = %bb.dk, %bb.dj
  %.val45.i.i = load ptr, ptr %i.j, align 8, !noalias !740 ; 6 uses
  %.val46.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !740, !noundef !5 ; 3 uses
  %i.kv = icmp eq ptr %.val46.i.i, null
  br i1 %i.kv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECscA5P7HRgTCP_15ide_diagnostics.exit.i134.i.i, label %bb.dm

bb.dm:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit133.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %.val46.i.i, i64 48 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !noalias !738, !noundef !5
  %i.ky = add i32 %i.kx, -1                       ; 2 uses
  store i32 %i.ky, ptr %i.kw, align 4, !noalias !738
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %bb.dn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECscA5P7HRgTCP_15ide_diagnostics.exit.i134.i.i

bb.dn:                                            ; preds = %bb.dm
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val46.i.i) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECscA5P7HRgTCP_15ide_diagnostics.exit.i134.i.i unwind label %bb.do, !noalias !738

bb.do:                                            ; preds = %bb.dn
  %i.la = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.lb = icmp eq ptr %.val45.i.i, null
  br i1 %i.lb, label %.body101.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.lc = getelementptr inbounds nuw i8, ptr %.val45.i.i, i64 48 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !noalias !738, !noundef !5
  %i.le = add i32 %i.ld, -1                       ; 2 uses
  store i32 %i.le, ptr %i.lc, align 4, !noalias !738
  %i.lf = icmp eq i32 %i.le, 0
  br i1 %i.lf, label %bb.dq, label %.body101.i

bb.dq:                                            ; preds = %bb.dp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val45.i.i) #30
          to label %.body101.i unwind label %bb.ds, !noalias !738

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECscA5P7HRgTCP_15ide_diagnostics.exit.i134.i.i: ; preds = %bb.dn, %bb.dm, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit133.i.i
  %i.lg = icmp eq ptr %.val45.i.i, null
  br i1 %i.lg, label %.thread231.i, label %bb.dr

bb.dr:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECscA5P7HRgTCP_15ide_diagnostics.exit.i134.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %.val45.i.i, i64 48 ; 2 uses
  %i.li = load i32, ptr %i.lh, align 4, !noalias !738, !noundef !5
  %i.lj = add i32 %i.li, -1                       ; 2 uses
  store i32 %i.lj, ptr %i.lh, align 4, !noalias !738
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B27_B25_6parentENvYINtNtB29_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB25_E4fromEINtNtBG_4skip4SkipB19_EEECscA5P7HRgTCP_15ide_diagnostics.exit136.sink.split.i.i, label %.thread231.i

bb.ds:                                            ; preds = %bb.dq
  %i.ll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !738
  unreachable

bb.dt:                                            ; preds = %.split.thread.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i
  %.pn2449.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.split.thread.i.i ], [ %.pn.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.de, i64 48 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !noalias !738, !noundef !5
  %i.lo = add i32 %i.ln, -1                       ; 2 uses
  store i32 %i.lo, ptr %i.lm, align 4, !noalias !738
  %i.lp = icmp eq i32 %i.lo, 0
  br i1 %i.lp, label %bb.du, label %.body.i.i

bb.du:                                            ; preds = %bb.dt
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.de) #30
          to label %.body.i.i unwind label %bb.dl, !noalias !738

bb.dv:                                            ; preds = %bb.ac
  %i.lq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lr = load i32, ptr %i.cy, align 4, !noalias !738, !noundef !5
  %i.ls = add i32 %i.lr, -1                       ; 2 uses
  store i32 %i.ls, ptr %i.cy, align 4, !noalias !738
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %bb.dw, label %.body101.i

bb.dw:                                            ; preds = %bb.dv
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cj) #30
          to label %.body101.i unwind label %bb.dl, !noalias !738

.thread226.i:                                     ; preds = %bb.bg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !740
  br label %bb.eb

.thread231.i:                                     ; preds = %bb.dr, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECscA5P7HRgTCP_15ide_diagnostics.exit.i134.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !740
  br label %bb.dy

bb.dx:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B27_B25_6parentENvYINtNtB29_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB25_E4fromEINtNtBG_4skip4SkipB19_EEECscA5P7HRgTCP_15ide_diagnostics.exit136.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !740
  %.not35.i = icmp eq ptr %.sroa.0.0.ph.i.i, null
  br i1 %.not35.i, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %.thread231.i
  %.sroa.0.0.i97234.i = phi ptr [ %i.de, %.thread231.i ], [ %.sroa.0.0.ph.i.i, %bb.dx ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !740
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i97234.i, i64 48 ; 8 uses
  %i.lv = load i32, ptr %i.lu, align 4, !noalias !763, !noundef !5 ; 2 uses
  %i.lw = icmp eq i32 %i.lv, -1
  br i1 %i.lw, label %bb.ea, label %bb.dz, !prof !10

bb.dz:                                            ; preds = %bb.dy
  %i.lx = add nuw i32 %i.lv, 1
  store i32 %i.lx, ptr %i.lu, align 4, !noalias !763
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan11syntax_textNtB2_10SyntaxText3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.v, ptr noundef nonnull %.sroa.0.0.i97234.i)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit.i unwind label %bb.gd, !noalias !738

bb.ea:                                            ; preds = %bb.dy
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc105.i unwind label %bb.gd, !noalias !738

.noexc105.i:                                      ; preds = %bb.ea
  unreachable

bb.eb:                                            ; preds = %bb.dx, %.thread226.i
  store i64 -1, ptr %i.aa, align 8, !alias.scope !738
  %i.ly = load i32, ptr %i.cy, align 4, !noalias !738, !noundef !5
  %i.lz = add i32 %i.ly, -1                       ; 2 uses
  store i32 %i.lz, ptr %i.cy, align 4, !noalias !738
  %i.ma = icmp eq i32 %i.lz, 0
  br i1 %i.ma, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i106.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECscA5P7HRgTCP_15ide_diagnostics.exit108.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i106.i: ; preds = %bb.eb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cj) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECscA5P7HRgTCP_15ide_diagnostics.exit108.i unwind label %bb.g, !noalias !738

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprNtB18_3PatEECscA5P7HRgTCP_15ide_diagnostics.exit95.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i93.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECscA5P7HRgTCP_15ide_diagnostics.exit108.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !740
end_hunk_0
