Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/syntax-43d35de622208d94.syntax.e5f0618c8c3ca174-cgu.01?download=true
inline.NumInlined: 3091
inline.NumDeleted: 981
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs_NtNtCsjJXvCMGntp8_6syntax3ast4precNtNtNtB6_9generated5nodes4Expr20needs_parens_in_stmt:bb.a
          cleanup
  store i64 %.sroa.03.0, ptr %i.e, align 8
  store ptr %.sroa.10.0, ptr %i.j, align 8
  br label %.body

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit45: ; preds = %bb.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprEBJ_.exit.sink.split.i43
  store i64 %.sroa.03.0, ptr %i.e, align 8
  store ptr %.sroa.10.0, ptr %i.j, align 8
  switch i64 %.sroa.03.0, label %bb.b [
    i64 5, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEEB15_.exit62
    i64 12, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEEB15_.exit62
    i64 14, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEEB15_.exit62
    i64 19, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEEB15_.exit62
    i64 21, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEEB15_.exit62
    i64 34, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEEB15_.exit62
  ]

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEEB15_.exit62: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit45, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit45, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit45, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit45, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit45, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit45, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprEBJ_.exit.sink.split.i.i60, %bb.co, %bb.ab
  %i.z = phi ptr [ %i.k, %bb.ab ], [ %i.k, %bb.co ], [ %i.k, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprEBJ_.exit.sink.split.i.i60 ], [ %.sroa.10.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit45 ], [ %.sroa.10.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit45 ], [ %.sroa.10.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit45 ], [ %.sroa.10.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit45 ], [ %.sroa.10.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit45 ], [ %.sroa.10.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit45 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !6, !noundef !6
  %i.ac = add i32 %i.ab, -1                       ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 4, !noalias !6
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit47.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit47

bb.i:                                             ; preds = %bb.c
  %i.ae = load i64, ptr %1, align 8, !range !1041, !noundef !6 ; 2 uses
  %i.af = icmp ne i64 %i.ae, 18
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ae, 19
  br i1 %i.ag, label %bb.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetElseEEB15_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetElseEEB15_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit.sink.split.i, %bb.cn, %bb.bz, %bb.by, %bb.by, %bb.by, %bb.by, %bb.by, %bb.by, %bb.by, %bb.by, %bb.by, %bb.w, %bb.i, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !noalias !6, !noundef !6
  %i.aj = add i32 %i.ai, -1                       ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 4, !noalias !6
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit47.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit47

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val40 = load ptr, ptr %i.al, align 8, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %.val40, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !noundef !6 ; 2 uses
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %bb.k, label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i, !prof !12

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #21
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %bb.k
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i: ; preds = %bb.j
  %i.ap = add nuw i32 %i.an, 1
  store i32 %i.ap, ptr %i.am, align 4
  %i.aq = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.val40)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc51:                                         ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i
  store ptr %i.aq, ptr %i.d, align 8
  %i.ar = invoke noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc.i:                                         ; preds = %.noexc51
  %.not12.i.i = icmp eq ptr %i.ar, null
  br i1 %.not12.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetElseEEB1o_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc.i, %.noexc7.i
  %i.as = phi ptr [ %i.bf, %.noexc7.i ], [ %i.ar, %.noexc.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1042
  store ptr %i.as, ptr %i.c, align 8, !noalias !1042
  %i.at = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !noalias !1043, !noundef !6
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !noalias !1043
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %.body.i

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.as) #19
          to label %.body.i unwind label %bb.q

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.az = icmp eq i16 %i.at, 224
  br i1 %i.az, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7LetElseNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !noalias !1044, !noundef !6
  %i.bc = add i32 %i.bb, -1                       ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 4, !noalias !1044
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.p, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7LetElseNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.as) #19
          to label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7LetElseNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.m
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7LetElseNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1042
  %i.bf = invoke noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc7.i:                                        ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7LetElseNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i.i
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetElseEEB1o_.exit.i, label %.lr.ph.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes7LetElseNvYB2M_NtB2S_7AstNode4castE0B1Z_.exit.i.i, %bb.p, %.noexc51
  %lpad.loopexit.split-lp258 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.au, %bb.l ], [ %i.au, %bb.m ], [ %lpad.loopexit.split-lp258, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.val4.i = load ptr, ptr %i.d, align 8, !noundef !6 ; 3 uses
  %i.bg = icmp eq ptr %.val4.i, null
  br i1 %i.bg, label %.body, label %bb.r

bb.r:                                             ; preds = %.body.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.val4.i, i64 48 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !noundef !6
  %i.bj = add i32 %i.bi, -1                       ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 4
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.s, label %.body

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4.i) #19
          to label %.body unwind label %bb.v

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7LetElseNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1042
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetElseEEB1o_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetElseEEB1o_.exit.i: ; preds = %.noexc7.i, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7LetElseNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.i, %.noexc.i
  %i.bl = phi ptr [ %i.as, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes7LetElseNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EEBU_.exit.i ], [ null, %.noexc.i ], [ null, %.noexc7.i ] ; 3 uses
  %.val3.i = load ptr, ptr %i.d, align 8, !noundef !6 ; 3 uses
  %i.bm = icmp eq ptr %.val3.i, null
  br i1 %i.bm, label %bb.w, label %bb.t

bb.t:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetElseEEB1o_.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.val3.i, i64 48 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !noundef !6
  %i.bp = add i32 %i.bo, -1                       ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 4
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i) #19
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.s
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.w:                                             ; preds = %bb.t, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetElseEEB1o_.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not18 = icmp eq ptr %i.bl, null
  br i1 %.not18, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetElseEEB15_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !noalias !1045, !noundef !6
  %i.bu = add i32 %i.bt, -1                       ; 2 uses
  store i32 %i.bu, ptr %i.bs, align 4, !noalias !1045
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.y, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetElseEEB15_.exit55

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bl) #19
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetElseEEB15_.exit55 unwind label %.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetElseEEB15_.exit55: ; preds = %bb.x, %bb.y
  %i.bw = icmp eq i64 %.val38, 4
  br i1 %i.bw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetElseEEB15_.exit55
  %i.bx = invoke i16 @_RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7BinExpr7op_kind(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.ab, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetElseEEB15_.exit55
  %i.by = invoke fastcc { i64, ptr } @_RNvXsvy_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(i64 %.val38, ptr %.val39)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ab:                                            ; preds = %bb.z
  %2 = and i16 %i.bx, 255
  %i.bz = icmp eq i16 %2, 3
  br i1 %i.bz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEEB15_.exit62, label %bb.aa

bb.ac:                                            ; preds = %bb.aa
  %i.ca = extractvalue { i64, ptr } %i.by, 0
  %i.cb = extractvalue { i64, ptr } %i.by, 1
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit87.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit87.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit87.i.backedge, %bb.ac
  %.sroa.0.0135.i = phi i64 [ %i.ca, %bb.ac ], [ %.sroa.01.0.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit87.i.backedge ] ; 4 uses
  %storemerge.i = phi ptr [ %i.cb, %bb.ac ], [ %.sroa.11.0.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit87.i.backedge ] ; 66 uses
  switch i64 %.sroa.0.0135.i, label %bb.cn [
    i64 4, label %bb.ad
    i64 5, label %bb.co
    i64 6, label %bb.ae
    i64 9, label %bb.af
    i64 12, label %bb.co
    i64 14, label %bb.co
    i64 17, label %bb.ag
    i64 19, label %bb.co
    i64 21, label %bb.co
    i64 26, label %bb.ah
    i64 27, label %bb.ai
    i64 28, label %bb.co
    i64 29, label %bb.aj
    i64 30, label %bb.ak
    i64 34, label %bb.co
    i64 36, label %bb.al
  ]

bb.ad:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit87.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  store ptr %storemerge.i, ptr %i.b, align 8
  %i.cc = invoke { i64, ptr } @_RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7BinExpr3rhs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.ao unwind label %bb.am

bb.ae:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit87.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  %i.cd = invoke fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4ExprEB6_(ptr nonnull %storemerge.i)
          to label %bb.au unwind label %bb.as     ; 2 uses

bb.af:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit87.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  %i.ce = invoke fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4ExprEB6_(ptr nonnull %storemerge.i) #22
          to label %_RNvMsh_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes11ClosureExpr4body.exit.i unwind label %bb.aw ; 2 uses

bb.ag:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit87.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  %i.cf = invoke fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4ExprEB6_(ptr nonnull %storemerge.i)
          to label %bb.bb unwind label %bb.az     ; 2 uses

bb.ah:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit87.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  %i.cg = invoke fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4ExprEB6_(ptr nonnull %storemerge.i)
          to label %bb.bf unwind label %bb.bd     ; 2 uses

bb.ai:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit87.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  store ptr %storemerge.i, ptr %i.a, align 8
  %i.ch = invoke { i64, ptr } @_RNvXs7_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes9RangeExprNtB7_9RangeItem3end(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.bj unwind label %bb.bh

bb.aj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit87.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  %i.ci = invoke fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4ExprEB6_(ptr nonnull %storemerge.i)
          to label %bb.bn unwind label %bb.bl     ; 2 uses

bb.ak:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit87.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  %i.cj = invoke fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4ExprEB6_(ptr nonnull %storemerge.i)
          to label %bb.br unwind label %bb.bp     ; 2 uses

bb.al:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEBJ_.exit87.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i) ]
  %i.ck = invoke fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4ExprEB6_(ptr nonnull %storemerge.i)
          to label %bb.bv unwind label %bb.bt     ; 2 uses

bb.am:                                            ; preds = %bb.ad
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 48 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !noalias !1046, !noundef !6
  %i.co = add i32 %i.cn, -1                       ; 2 uses
  store i32 %i.co, ptr %i.cm, align 4, !noalias !1046
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.an, label %.body

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %storemerge.i) #19
          to label %.body unwind label %bb.ar

bb.ao:                                            ; preds = %bb.ad
  %i.cq = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 48 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !noalias !1047, !noundef !6
  %i.cs = add i32 %i.cr, -1                       ; 2 uses
  store i32 %i.cs, ptr %i.cq, align 4, !noalias !1047
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.ap, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprEBJ_.exit60.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %storemerge.i) #19
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprEBJ_.exit60.i unwind label %bb.aq

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprEBJ_.exit.i: ; preds = %bb.cb, %bb.aq
  %.sroa.12.0.i = phi ptr [ %.sroa.11.0.i, %bb.cb ], [ %storemerge.i, %bb.aq ] ; 21 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.01.0.i, %bb.cb ], [ %.sroa.0.0135.i, %bb.aq ]
  %.pn17.i = phi { ptr, i32 } [ %i.fy, %bb.cb ], [ %i.cu, %bb.aq ] ; 20 uses
  %.sroa.014.1.i = phi i1 [ true, %bb.cb ], [ %.sroa.014.2.i, %bb.aq ]
  %.sroa.013.1.i = phi i1 [ true, %bb.cb ], [ %.sroa.013.2.i, %bb.aq ]
  %.sroa.012.1.i = phi i1 [ true, %bb.cb ], [ %.sroa.012.2.i, %bb.aq ]
  %.sroa.011.1.i = phi i1 [ true, %bb.cb ], [ %.sroa.011.2.i, %bb.aq ]
  %.sroa.010.1.i = phi i1 [ true, %bb.cb ], [ %.sroa.010.2.i, %bb.aq ]
  %.sroa.09.1.i = phi i1 [ true, %bb.cb ], [ %.sroa.09.2.i, %bb.aq ]
  %.sroa.08.1.i = phi i1 [ true, %bb.cb ], [ %.sroa.08.2.i, %bb.aq ]
  %.sroa.07.1.i = phi i1 [ true, %bb.cb ], [ %.sroa.07.2.i, %bb.aq ]
  %.sroa.06.1.i = phi i1 [ true, %bb.cb ], [ %.sroa.06.2.i, %bb.aq ]
  switch i64 %.sroa.0.1.i, label %bb.cc [
    i64 4, label %bb.cd
    i64 6, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprEBJ_.exit.thread152.i
    i64 9, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprEBJ_.exit.thread168.i
    i64 17, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprEBJ_.exit.thread184.i
    i64 26, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprEBJ_.exit.thread200.i
    i64 27, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprEBJ_.exit.thread216.i
    i64 29, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprEBJ_.exit.thread232.i
    i64 30, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprEBJ_.exit.thread248.i
    i64 36, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprEBJ_.exit.thread264.i
  ]

bb.aq:                                            ; preds = %bb.bw, %bb.bs, %bb.bo, %bb.bk, %bb.bg, %bb.bc, %bb.ay, %bb.av, %bb.ap
  %.sroa.014.2.i = phi i1 [ true, %bb.bw ], [ true, %bb.bs ], [ true, %bb.bo ], [ true, %bb.bk ], [ true, %bb.bg ], [ true, %bb.bc ], [ false, %bb.ay ], [ true, %bb.av ], [ true, %bb.ap ]
  %.sroa.013.2.i = phi i1 [ false, %bb.bw ], [ true, %bb.bs ], [ true, %bb.bo ], [ true, %bb.bk ], [ true, %bb.bg ], [ true, %bb.bc ], [ true, %bb.ay ], [ true, %bb.av ], [ true, %bb.ap ]
  %.sroa.012.2.i = phi i1 [ true, %bb.bw ], [ true, %bb.bs ], [ true, %bb.bo ], [ true, %bb.bk ], [ false, %bb.bg ], [ true, %bb.bc ], [ true, %bb.ay ], [ true, %bb.av ], [ true, %bb.ap ]
  %.sroa.011.2.i = phi i1 [ true, %bb.bw ], [ false, %bb.bs ], [ true, %bb.bo ], [ true, %bb.bk ], [ true, %bb.bg ], [ true, %bb.bc ], [ true, %bb.ay ], [ true, %bb.av ], [ true, %bb.ap ]
  %.sroa.010.2.i = phi i1 [ true, %bb.bw ], [ true, %bb.bs ], [ true, %bb.bo ], [ false, %bb.bk ], [ true, %bb.bg ], [ true, %bb.bc ], [ true, %bb.ay ], [ true, %bb.av ], [ true, %bb.ap ]
  %.sroa.09.2.i = phi i1 [ true, %bb.bw ], [ true, %bb.bs ], [ true, %bb.bo ], [ true, %bb.bk ], [ true, %bb.bg ], [ false, %bb.bc ], [ true, %bb.ay ], [ true, %bb.av ], [ true, %bb.ap ]
  %.sroa.08.2.i = phi i1 [ true, %bb.bw ], [ true, %bb.bs ], [ true, %bb.bo ], [ true, %bb.bk ], [ true, %bb.bg ], [ true, %bb.bc ], [ true, %bb.ay ], [ false, %bb.av ], [ true, %bb.ap ]
  %.sroa.07.2.i = phi i1 [ true, %bb.bw ], [ true, %bb.bs ], [ true, %bb.bo ], [ true, %bb.bk ], [ true, %bb.bg ], [ true, %bb.bc ], [ true, %bb.ay ], [ true, %bb.av ], [ false, %bb.ap ]
  %.sroa.06.2.i = phi i1 [ true, %bb.bw ], [ true, %bb.bs ], [ false, %bb.bo ], [ true, %bb.bk ], [ true, %bb.bg ], [ true, %bb.bc ], [ true, %bb.ay ], [ true, %bb.av ], [ true, %bb.ap ]
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprEBJ_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprEBJ_.exit60.i: ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BreakExprEBJ_.exit63.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BreakExprEBJ_.exit63.i: ; preds = %bb.bw, %bb.bv, %bb.bs, %bb.br, %bb.bo, %bb.bn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9RangeExprEBJ_.exit75.i, %bb.bg, %bb.bf, %bb.bc, %bb.bb, %bb.ay, %_RNvMsh_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes11ClosureExpr4body.exit.i, %bb.av, %bb.au, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprEBJ_.exit60.i
  %.pn.i = phi { i64, ptr } [ %i.cc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprEBJ_.exit60.i ], [ %i.cj, %bb.bs ], [ %i.cd, %bb.av ], [ %i.ce, %bb.ay ], [ %i.cf, %bb.bc ], [ %i.ch, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9RangeExprEBJ_.exit75.i ], [ %i.cg, %bb.bg ], [ %i.ci, %bb.bo ], [ %i.cd, %bb.au ], [ %i.ce, %_RNvMsh_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes11ClosureExpr4body.exit.i ], [ %i.cf, %bb.bb ], [ %i.cg, %bb.bf ], [ %i.ci, %bb.bn ], [ %i.cj, %bb.br ], [ %i.ck, %bb.bv ], [ %i.ck, %bb.bw ] ; 2 uses
  %.sroa.01.0.i = extractvalue { i64, ptr } %.pn.i, 0 ; 3 uses
  %.sroa.11.0.i = extractvalue { i64, ptr } %.pn.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.01.0.i, -1
  br i1 %.not.i, label %bb.by, label %bb.bx

bb.ar:                                            ; preds = %.invoke.i, %bb.bu, %bb.bq, %bb.bm, %bb.bi, %bb.be, %bb.ba, %bb.ax, %bb.at, %bb.an
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.as:                                            ; preds = %bb.ae
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 48 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !noalias !1048, !noundef !6
  %i.cz = add i32 %i.cy, -1                       ; 2 uses
  store i32 %i.cz, ptr %i.cx, align 4, !noalias !1048
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.at, label %.body

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %storemerge.i) #19
          to label %.body unwind label %bb.ar

bb.au:                                            ; preds = %bb.ae
  %i.db = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 48 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !noalias !1049, !noundef !6
  %i.dd = add i32 %i.dc, -1                       ; 2 uses
  store i32 %i.dd, ptr %i.db, align 4, !noalias !1049
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.av, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BreakExprEBJ_.exit63.i

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %storemerge.i) #19
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BreakExprEBJ_.exit63.i unwind label %bb.aq

bb.aw:                                            ; preds = %bb.af
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 48 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !noalias !1050, !noundef !6
  %i.di = add i32 %i.dh, -1                       ; 2 uses
  store i32 %i.di, ptr %i.dg, align 4, !noalias !1050
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.ax, label %.body

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %storemerge.i) #19
          to label %.body unwind label %bb.ar

end_hunk_0
