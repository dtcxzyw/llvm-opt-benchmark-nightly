Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.07?download=true
inline.NumInlined: 1915
inline.NumDeleted: 865
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCs6oosyzwIepl_6ide_db7imports13import_assets21path_import_candidate:bb.a

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i.i: ; preds = %bb.z
  %i.as = add nuw i32 %i.aq, 1
  store i32 %i.as, ptr %i.ap, align 4, !noalias !1606
  %i.at = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %i.y)
          to label %.noexc56.i.i.i unwind label %bb.am, !noalias !1606

.noexc56.i.i.i:                                   ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i.i
  store ptr %i.at, ptr %i.d, align 8, !noalias !1606
  %i.au = invoke noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !1606 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %.noexc56.i.i.i
  %.not12.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not12.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i, %.noexc7.i.i.i.i
  %i.av = phi ptr [ %i.bi, %.noexc7.i.i.i.i ], [ %i.au, %.noexc.i.i.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1607
  store ptr %i.av, ptr %i.c, align 8, !noalias !1607
  %i.aw = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.ad unwind label %bb.ab, !noalias !1606

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !noalias !1606, !noundef !5
  %i.ba = add i32 %i.az, -1                       ; 2 uses
  store i32 %i.ba, ptr %i.ay, align 4, !noalias !1606
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.ac, label %.body.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.av) #37
          to label %.body.i.i.i.i unwind label %bb.ag, !noalias !1606

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.bc = icmp eq i16 %i.aw, 317
  br i1 %i.bc, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes11UseTreeListNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECs6oosyzwIepl_6ide_db.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !noalias !1606, !noundef !5
  %i.bf = add i32 %i.be, -1                       ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 4, !noalias !1606
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.af, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes11UseTreeListNvYB2M_NtB2S_7AstNode4castE0Cs6oosyzwIepl_6ide_db.exit.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.av) #37
          to label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes11UseTreeListNvYB2M_NtB2S_7AstNode4castE0Cs6oosyzwIepl_6ide_db.exit.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !1606

bb.ag:                                            ; preds = %bb.ac
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1606
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes11UseTreeListNvYB2M_NtB2S_7AstNode4castE0Cs6oosyzwIepl_6ide_db.exit.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1607
  %i.bi = invoke noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc7.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !1606 ; 2 uses

.noexc7.i.i.i.i:                                  ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes11UseTreeListNvYB2M_NtB2S_7AstNode4castE0Cs6oosyzwIepl_6ide_db.exit.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes11UseTreeListNvYB2M_NtB2S_7AstNode4castE0Cs6oosyzwIepl_6ide_db.exit.i.i.i.i.i, %bb.af
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %.noexc56.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.ac, %bb.ab
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ax, %bb.ab ], [ %i.ax, %bb.ac ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 3 uses
  %.val3.i.i.i.i = load ptr, ptr %i.d, align 8, !noalias !1606, !noundef !5 ; 3 uses
  %i.bj = icmp eq ptr %.val3.i.i.i.i, null
  br i1 %i.bj, label %.body58.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.body.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 48 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !noalias !1606, !noundef !5
  %i.bm = add i32 %i.bl, -1                       ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 4, !noalias !1606
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.ai, label %.body58.i.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i.i.i.i) #37
          to label %.body58.i.i.i unwind label %bb.al, !noalias !1606

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes11UseTreeListNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECs6oosyzwIepl_6ide_db.exit.i.i.i.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1607
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i.i: ; preds = %.noexc7.i.i.i.i, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes11UseTreeListNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECs6oosyzwIepl_6ide_db.exit.i.i.i.i, %.noexc.i.i.i.i
  %i.bo = phi ptr [ %i.av, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes11UseTreeListNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECs6oosyzwIepl_6ide_db.exit.i.i.i.i ], [ null, %.noexc.i.i.i.i ], [ null, %.noexc7.i.i.i.i ] ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !noalias !1606, !noundef !5 ; 3 uses
  %i.bp = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.bp, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 48 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !noalias !1606, !noundef !5
  %i.bs = add i32 %i.br, -1                       ; 2 uses
  store i32 %i.bs, ptr %i.bq, align 4, !noalias !1606
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i.i) #37
          to label %bb.ao unwind label %bb.am, !noalias !1606

bb.al:                                            ; preds = %bb.ai
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1606
  unreachable

.noexc83:                                         ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1606
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #38
          to label %.noexc85 unwind label %.thread135

.noexc85:                                         ; preds = %.noexc83
  unreachable

bb.am:                                            ; preds = %bb.aq, %bb.ak, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i.i, %bb.aa
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body58.i.i.i

.body58.i.i.i:                                    ; preds = %bb.am, %bb.ai, %bb.ah, %.body.i.i.i.i
  %eh.lpad-body59.i.i.i = phi { ptr, i32 } [ %i.bv, %bb.am ], [ %eh.lpad-body.i.i.i.i, %bb.ai ], [ %eh.lpad-body.i.i.i.i, %bb.ah ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ] ; 2 uses
  %i.bw = load i32, ptr %i.ap, align 4, !noalias !1606, !noundef !5
  %i.bx = add i32 %i.bw, -1                       ; 2 uses
  store i32 %i.bx, ptr %i.ap, align 4, !noalias !1606
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.an, label %.thread

bb.an:                                            ; preds = %.body58.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.y) #37
          to label %.thread unwind label %bb.ar, !noalias !1606

bb.ao:                                            ; preds = %bb.ak, %bb.aj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1606
  %.not43.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not43.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 48 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !noalias !1606, !noundef !5
  %i.cb = add i32 %i.ca, -1                       ; 2 uses
  store i32 %i.cb, ptr %i.bz, align 4, !noalias !1606
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.aq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit64.i.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bo) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit64.i.i.i unwind label %bb.am, !noalias !1606

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i: ; preds = %bb.ao
  %i.cd = load i32, ptr %i.ap, align 4, !noalias !1606, !noundef !5
  %i.ce = add i32 %i.cd, -1                       ; 2 uses
  store i32 %i.ce, ptr %i.ap, align 4, !noalias !1606
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.sink.split.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.sink.split.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit64.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i
  %.sroa.20.sroa.0.2.ph.i.i.i = phi i24 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit64.i.i.i ], [ 65793, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i ]
  %.sroa.185.2.ph.i.i.i = phi i64 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit64.i.i.i ], [ 4294967296, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i ]
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.y) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.i.i.i unwind label %.thread135

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.sink.split.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit64.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i
  %.sroa.20.sroa.0.2.i.i.i = phi i24 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit64.i.i.i ], [ 65793, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i ], [ %.sroa.20.sroa.0.2.ph.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.sink.split.i.i.i ] ; 2 uses
  %.sroa.185.2.i.i.i = phi i64 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit64.i.i.i ], [ 4294967296, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit.i.i.i ], [ %.sroa.185.2.ph.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.sink.split.i.i.i ]
  %spec.select46.i.i.i = select i1 %i.r, i64 %.sroa.185.2.i.i.i, i64 4294967296
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListEECs6oosyzwIepl_6ide_db.exit64.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.cg = load i32, ptr %i.ap, align 4, !noalias !1606, !noundef !5
  %i.ch = add i32 %i.cg, -1                       ; 2 uses
  store i32 %i.ch, ptr %i.ap, align 4, !noalias !1606
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.sink.split.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.i.i.i: ; preds = %bb.y, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.i.i.i, %bb.x
  %.sroa.18.sroa.0.3.i.i.i = phi i24 [ %.sroa.20.sroa.0.2.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.i.i.i ], [ %.sroa.18.sroa.0.1.i.i.i, %bb.x ], [ %.sroa.18.sroa.0.1.i.i.i, %bb.y ]
  %.sroa.20.sroa.0.3.i.i.i = phi i24 [ %.sroa.20.sroa.0.2.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.i.i.i ], [ %.sroa.20.sroa.0.1.i.i.i, %bb.x ], [ %.sroa.20.sroa.0.1.i.i.i, %bb.y ]
  %.sroa.185.3.i.i.i = phi i64 [ %spec.select46.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.i.i.i ], [ %spec.select.i.i.i, %bb.x ], [ %spec.select.i.i.i, %bb.y ]
  %.sroa.0.3.i.i.i = phi i64 [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.i.i.i ], [ %spec.select45.i.i.i, %bb.x ], [ %spec.select45.i.i.i, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1606
  %i.cj = zext nneg i24 %.sroa.20.sroa.0.3.i.i.i to i64
  %i.ck = shl nuw nsw i64 %i.cj, 40
  %i.cl = zext nneg i24 %.sroa.18.sroa.0.3.i.i.i to i64
  %i.cm = shl nuw nsw i64 %i.cl, 8
  %i.cn = or i64 %i.cm, %.sroa.185.3.i.i.i
  %i.co = or i64 %i.cn, %i.ck
  %6 = or i64 %i.co, %.sroa.0.3.i.i.i
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathE6map_orNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets19PathDefinitionKindsNCNvB1L_21path_import_candidate0EB1P_.exit

bb.ar:                                            ; preds = %bb.bb, %bb.an
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1606
  unreachable

bb.as:                                            ; preds = %bb.f
  %i.cq = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !1606
  %i.cr = icmp ult i64 %i.cq, 5
  br i1 %i.cr, label %bb.at, label %bb.x

bb.at:                                            ; preds = %bb.as
  %i.cs = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCs6oosyzwIepl_6ide_db7imports13import_assetsNtB4_19PathDefinitionKinds16deduce_from_path10___CALLSITE, i64 16) monotonic, align 8, !noalias !1606 ; 3 uses
  switch i8 %i.cs, label %bb.au [
    i8 0, label %bb.x
    i8 1, label %bb.av
    i8 2, label %bb.av
  ], !prof !19

bb.au:                                            ; preds = %bb.at
  %i.ct = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtCs6oosyzwIepl_6ide_db7imports13import_assetsNtB4_19PathDefinitionKinds16deduce_from_path10___CALLSITE)
          to label %bb.aw unwind label %bb.ba, !noalias !1606 ; 2 uses

bb.av:                                            ; preds = %bb.at, %bb.aw, %bb.at
  %.sroa.027.0.i.i.i = phi i8 [ %i.ct, %bb.aw ], [ %i.cs, %bb.at ], [ %i.cs, %bb.at ]
  %i.cu = load ptr, ptr @_RNvNvMNtNtCs6oosyzwIepl_6ide_db7imports13import_assetsNtB4_19PathDefinitionKinds16deduce_from_path10___CALLSITE, align 8, !noalias !1606, !nonnull !5, !align !6, !noundef !5
  %i.cv = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cu, i8 noundef %.sroa.027.0.i.i.i)
          to label %bb.ax unwind label %bb.ba, !noalias !1606

bb.aw:                                            ; preds = %bb.au
  %i.cw = icmp eq i8 %i.ct, 0
  br i1 %i.cw, label %bb.x, label %bb.av

bb.ax:                                            ; preds = %bb.av
  br i1 %i.cv, label %bb.ay, label %bb.x

bb.ay:                                            ; preds = %bb.ax
  %i.cx = load ptr, ptr @_RNvNvMNtNtCs6oosyzwIepl_6ide_db7imports13import_assetsNtB4_19PathDefinitionKinds16deduce_from_path10___CALLSITE, align 8, !noalias !1606, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1606
  store ptr %i.j, ptr %i.g, align 8, !noalias !1606
  %.sroa.437.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXNtCs9GitHPCrz2Q_5rowan3apiINtB2_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs6oosyzwIepl_6ide_db, ptr %.sroa.437.0..sroa_idx.i.i.i, align 8, !noalias !1606
  store ptr @27, ptr %i.h, align 8, !noalias !1606
  %i.cz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %i.cz, align 8, !noalias !1606
  store ptr %i.h, ptr %i.i, align 8, !noalias !1606
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @28, ptr %i.da, align 8, !noalias !1606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1606
  store i64 1, ptr %i.f, align 8, !noalias !1606
  %.sroa.029.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %.sroa.029.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1606
  %.sroa.029.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1, ptr %.sroa.029.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1606
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.cy, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1606
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.az unwind label %bb.ba, !noalias !1606

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1606
  br label %bb.x

bb.ba:                                            ; preds = %bb.ay, %bb.av, %bb.au, %bb.e
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !noalias !1606, !nonnull !5, !noundef !5 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 48 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !noalias !1606, !noundef !5
  %i.dd = add i32 %i.dc, -1                       ; 2 uses
  store i32 %i.dd, ptr %i.db, align 4, !noalias !1606
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.bb, label %.thread

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i) #37
          to label %.thread unwind label %bb.ar, !noalias !1606

.thread135:                                       ; preds = %bb.bt, %bb.bq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.sink.split.i.i.i, %bb.d, %bb.u, %bb.y, %.noexc83
  %.sroa.059.1.ph = phi i1 [ true, %.noexc83 ], [ true, %bb.y ], [ true, %bb.u ], [ true, %bb.d ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.sink.split.i.i.i ], [ false, %bb.bq ], [ true, %bb.bt ]
  %.sroa.060.1.ph = phi i1 [ true, %.noexc83 ], [ true, %bb.y ], [ true, %bb.u ], [ true, %bb.d ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECs6oosyzwIepl_6ide_db.exit67.sink.split.i.i.i ], [ false, %bb.bq ], [ false, %bb.bt ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathE6map_orNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets19PathDefinitionKindsNCNvB1L_21path_import_candidate0EB1P_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.i.i.i, %bb.b, %bb.a
  %.sroa.05.0.i = phi i64 [ 72340172838076673, %bb.a ], [ %6, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.i.i.i ], [ 72340172838076673, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.0.sroa.11.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathE6map_orNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets19PathDefinitionKindsNCNvB1L_21path_import_candidate0EB1P_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %3, ptr %i.q, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl12resolve_path(ptr noalias nofree noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.m, ptr noundef nonnull align 8 %i.df, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %bb.bh unwind label %bb.bf

bb.bd:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathE6map_orNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets19PathDefinitionKindsNCNvB1L_21path_import_candidate0EB1P_.exit
  %.sroa.057.0.copyload = load i64, ptr %4, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  %.sroa.0120.0.copyload = load i64, ptr %5, align 8
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.0.sroa.11.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4121.0..sroa_idx, i64 16, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit100, %bb.bd
  %.sroa.10.sroa.0.sroa.11.sroa.0.0 = phi i64 [ %.sroa.0120.0.copyload, %bb.bd ], [ %.sroa.0117.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit100 ]
  %.sroa.10.sroa.0.sroa.0.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.bd ], [ %.sroa.462.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit100 ]
  %.sroa.10.sroa.0.sroa.10.0 = phi i64 [ 0, %bb.bd ], [ %.sroa.5.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit100 ]
  %.sroa.10.sroa.11.0 = phi i64 [ %.sroa.057.0.copyload, %bb.bd ], [ %.sroa.029.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit100 ]
  %.sroa.04.0 = phi i64 [ 0, %bb.bd ], [ %i.fb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit100 ]
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.10.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.sroa.0.sroa.0.0, ptr %.sroa.10.0..sroa_idx8, align 8
  %.sroa.10.sroa.0.sroa.10.0..sroa.10.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.sroa.0.sroa.10.0, ptr %.sroa.10.sroa.0.sroa.10.0..sroa.10.0..sroa_idx8.sroa_idx, align 8
  %.sroa.10.sroa.0.sroa.11.0..sroa.10.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.sroa.0.sroa.11.sroa.0.0, ptr %.sroa.10.sroa.0.sroa.11.0..sroa.10.0..sroa_idx8.sroa_idx, align 8
  %.sroa.10.sroa.0.sroa.11.sroa.10.0..sroa.10.sroa.0.sroa.11.0..sroa.10.0..sroa_idx8.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.0.sroa.11.sroa.10.0..sroa.10.sroa.0.sroa.11.0..sroa.10.0..sroa_idx8.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.0.sroa.11.sroa.10, i64 16, i1 false)
  %.sroa.10.sroa.10.0..sroa.10.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.05.0.i, ptr %.sroa.10.sroa.10.0..sroa.10.0..sroa_idx8.sroa_idx, align 8
  %.sroa.10.sroa.11.0..sroa.10.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.10.sroa.11.0, ptr %.sroa.10.sroa.11.0..sroa.10.0..sroa_idx8.sroa_idx, align 8
  %.sroa.12.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.0.sroa.11.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameEECs6oosyzwIepl_6ide_db.exit

bb.bf:                                            ; preds = %bb.cd, %bb.ci, %bb.cf, %bb.bn, %bb.bm, %bb.bj, %bb.bc
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body97

.body97:                                          ; preds = %bb.ca, %bb.cb, %bb.bf
  %eh.lpad-body98 = phi { ptr, i32 } [ %i.dg, %bb.bf ], [ %i.eq, %bb.cb ], [ %i.eq, %bb.ca ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !noundef !5
  %i.dj = add i32 %i.di, -1                       ; 2 uses
  store i32 %i.dj, ptr %i.dh, align 4
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.bg, label %.thread

bb.bg:                                            ; preds = %.body97
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #37
          to label %.thread unwind label %bb.cr

bb.bh:                                            ; preds = %bb.bc
  %i.dl = load i32, ptr %i.m, align 4, !range !33, !noundef !5 ; 3 uses
  %.not68 = icmp eq i32 %i.dl, -1
  br i1 %.not68, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dm = icmp ne i32 %i.dl, 4
  call void @llvm.assume(i1 %i.dm)
  %i.dn = icmp eq i32 %i.dl, 3
  br i1 %i.dn, label %bb.bk, label %bb.bl

bb.bj:                                            ; preds = %bb.bk, %bb.bh
  %i.do = invoke noundef ptr @_RNvMsf_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes4Path15first_qualifier(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %bb.by unwind label %bb.bf     ; 6 uses

bb.bk:                                            ; preds = %bb.bi
  %i.dp = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.dq = load i8, ptr %i.dp, align 4, !range !35, !noundef !5
  switch i8 %i.dq, label %bb.bl [
    i8 2, label %bb.bm
    i8 7, label %bb.bn
    i8 8, label %bb.bj
  ]

bb.bl:                                            ; preds = %bb.bk, %bb.bi
  store i64 -1, ptr %0, align 8
  br label %bb.bs

bb.bm:                                            ; preds = %bb.bk
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ds = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  invoke void @_RNvMsi_Cs8Xq8PKFYOms_3hirNtB5_3Adt2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.dr, ptr noundef nonnull %i.ds, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @14)
          to label %bb.bo unwind label %bb.bf

bb.bn:                                            ; preds = %bb.bk
  %i.dt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.du = load i32, ptr %i.dt, align 4, !range !23, !noundef !5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.dw = load i32, ptr %i.dv, align 4, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.dx = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  invoke void @_RNvMsF_Cs8Xq8PKFYOms_3hirNtB5_9TypeAlias2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, i32 noundef %i.du, i32 noundef %i.dw, ptr noundef nonnull %i.dx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @14)
          to label %bb.br unwind label %bb.bf

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.0.sroa.11.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dy = load <2 x i64>, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.031.sroa.0.0.copyload = load ptr, ptr %i.l, align 8
  %.sroa.031.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dz = load <2 x i64>, ptr %.sroa.031.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bp

bb.bp:                                            ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit, %bb.bo
  %.sroa.10.sroa.0.sroa.0.1 = phi ptr [ %.sroa.031.sroa.0.0.copyload, %bb.bo ], [ %.val81, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit ]
  %i.ea = phi <2 x i64> [ %i.dz, %bb.bo ], [ %i.ej, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit ]
  %i.eb = phi <2 x i64> [ %i.dy, %bb.bo ], [ %i.ei, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit ]
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !noundef !5
  %i.ee = add i32 %i.ed, -1                       ; 2 uses
  store i32 %i.ee, ptr %i.ec, align 4
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.bq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit89

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit89 unwind label %.thread135

bb.br:                                            ; preds = %bb.bn
  %.val81 = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.09.0.copyload.i = load i32, ptr %.val81, align 8, !noalias !1608 ; 2 uses
  %i.eg = icmp ne i32 %.sroa.09.0.copyload.i, 27
  call void @llvm.assume(i1 %i.eg)
  %i.eh = icmp eq i32 %.sroa.09.0.copyload.i, 7
  br i1 %i.eh, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit: ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.0.sroa.11.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ei = load <2 x i64>, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.037.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ej = load <2 x i64>, ptr %.sroa.037.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bp

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread: ; preds = %bb.br
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.ch, %bb.cm, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread, %bb.bl
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !noundef !5
  %i.em = add i32 %i.el, -1                       ; 2 uses
  store i32 %i.em, ptr %i.ek, align 4
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.bt, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit91

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit91 unwind label %.thread135

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit89: ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.sroa.0.sroa.0.1, ptr %.sroa.10.0..sroa_idx9, align 8
  %.sroa.10.sroa.0.sroa.10.0..sroa.10.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.ea, ptr %.sroa.10.sroa.0.sroa.10.0..sroa.10.0..sroa_idx9.sroa_idx, align 8
  %.sroa.10.sroa.0.sroa.11.sroa.10.0..sroa.10.sroa.0.sroa.11.0..sroa.10.0..sroa_idx9.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.0.sroa.11.sroa.10.0..sroa.10.sroa.0.sroa.11.0..sroa.10.0..sroa_idx9.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.0.sroa.11.sroa.10, i64 16, i1 false)
  %.sroa.10.sroa.10.0..sroa.10.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.eb, ptr %.sroa.10.sroa.10.0..sroa.10.0..sroa_idx9.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.0.sroa.11.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.bv unwind label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit89
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit108 unwind label %bb.bw

bb.bv:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit89
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameEECs6oosyzwIepl_6ide_db.exit

bb.bw:                                            ; preds = %bb.bu
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

end_hunk_0
