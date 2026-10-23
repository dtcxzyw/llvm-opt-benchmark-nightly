Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_ssr-f5db77c992f4af7d.ide_ssr.284584ac21e5de80-cgu.03?download=true
inline.NumInlined: 749
inline.NumDeleted: 249
begin_hunk_0_@_RNvMNtCs3smBju6uAx0_7ide_ssr8matchingNtB2_7Matcher18attempt_match_node:bb.a
  %i.po = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !266, !inline_history !194
  unreachable

bb.fg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i213.invoke, %bb.ev, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i207, %.noexc109, %bb.ek
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %.body113

.body113:                                         ; preds = %bb.fg, %bb.em, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEECs3smBju6uAx0_7ide_ssr.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i210, %bb.fb
  %eh.lpad-body114 = phi { ptr, i32 } [ %i.oy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i210 ], [ %i.oy, %bb.fb ], [ %i.pp, %bb.fg ], [ %.pn.i216, %bb.em ], [ %.pn.i216, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEECs3smBju6uAx0_7ide_ssr.exit.i ] ; 2 uses
  %i.pq = load i32, ptr %i.fo, align 4, !noundef !4
  %i.pr = add i32 %i.pq, -1                       ; 2 uses
  store i32 %i.pr, ptr %i.fo, align 4
  %i.ps = icmp eq i32 %i.pr, 0
  br i1 %i.ps, label %bb.fh, label %common.resume

bb.fh:                                            ; preds = %.body113
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val77) #22
          to label %common.resume unwind label %bb.ad

_RNvMNtCs3smBju6uAx0_7ide_ssr8matchingNtB2_7Matcher26attempt_match_ufcs_to_ufcs.exit: ; preds = %.noexc110, %.noexc109
  %i.pt = load i32, ptr %i.fo, align 4, !noundef !4
  %i.pu = add i32 %i.pt, -1                       ; 2 uses
  store i32 %i.pu, ptr %i.fo, align 4
  %i.pv = icmp eq i32 %i.pu, 0
  br i1 %i.pv, label %bb.fi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECs3smBju6uAx0_7ide_ssr.exit118

bb.fi:                                            ; preds = %_RNvMNtCs3smBju6uAx0_7ide_ssr8matchingNtB2_7Matcher26attempt_match_ufcs_to_ufcs.exit
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val77) #22
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECs3smBju6uAx0_7ide_ssr.exit118

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECs3smBju6uAx0_7ide_ssr.exit118: ; preds = %_RNvMNtCs3smBju6uAx0_7ide_ssr8matchingNtB2_7Matcher26attempt_match_ufcs_to_ufcs.exit, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %_RNvMNtCs3smBju6uAx0_7ide_ssr8matchingNtB2_7Matcher27attempt_match_node_children.exit

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12UfcsCallInfoNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2o_.exit.thread: ; preds = %._crit_edge.i.i, %bb.g, %_RNvXs81_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_8CallExprNtBa_7AstNode4cast.exit.thread
  %i.pw = call noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3)
  %i.px = call noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4)
  %.not63 = icmp eq i16 %i.pw, %i.px
  br i1 %.not63, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12UfcsCallInfoNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2o_.exit.thread
  %i.py = call noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4)
  switch i16 %i.py, label %bb.fl [
    i16 260, label %bb.fs
    i16 273, label %bb.it
    i16 294, label %bb.md
  ]

bb.fk:                                            ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12UfcsCallInfoNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2o_.exit.thread
  %i.pz = call noundef zeroext i1 @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellbEE4withNCNvNtCs3smBju6uAx0_7ide_ssr8matching28recording_match_fail_reasons0bEB1G_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2)
  br i1 %i.pz, label %bb.me, label %bb.mg

bb.fl:                                            ; preds = %bb.fj
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.qa = load i32, ptr %i.bt, align 4, !noalias !268, !noundef !4 ; 2 uses
  %i.qb = icmp eq i32 %i.qa, -1
  br i1 %i.qb, label %bb.fm, label %_RNvMs4_NtCs3smBju6uAx0_7ide_ssr8matchingNtB5_15PatternIterator3new.exit, !prof !5

bb.fm:                                            ; preds = %bb.fl
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #23, !noalias !268
  unreachable

_RNvMs4_NtCs3smBju6uAx0_7ide_ssr8matchingNtB5_15PatternIterator3new.exit: ; preds = %bb.fl
  %i.qc = add nuw i32 %i.qa, 1
  store i32 %i.qc, ptr %i.bt, align 4, !noalias !268
  %i.qd = call { i64, ptr } @_RNvMsk_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_21SyntaxElementChildren3new(ptr noundef nonnull %.val79), !noalias !268 ; 2 uses
  %i.qe = extractvalue { i64, ptr } %i.qd, 0      ; 2 uses
  %i.qf = extractvalue { i64, ptr } %i.qd, 1      ; 4 uses
  %.val.i119 = load ptr, ptr %4, align 8, !alias.scope !267, !nonnull !4, !noundef !4 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.val.i119, i64 48 ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 4, !noalias !268, !noundef !4 ; 2 uses
  %i.qi = icmp eq i32 %i.qh, -1
  br i1 %i.qi, label %bb.fo, label %bb.fn, !prof !5

bb.fn:                                            ; preds = %_RNvMs4_NtCs3smBju6uAx0_7ide_ssr8matchingNtB5_15PatternIterator3new.exit
  %i.qj = add nuw i32 %i.qh, 1
  store i32 %i.qj, ptr %i.qg, align 4, !noalias !268
  %i.qk = invoke { i64, ptr } @_RNvMsk_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_21SyntaxElementChildren3new(ptr noundef nonnull %.val.i119)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit unwind label %bb.fp ; 2 uses

bb.fo:                                            ; preds = %_RNvMs4_NtCs3smBju6uAx0_7ide_ssr8matchingNtB5_15PatternIterator3new.exit
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #23
          to label %.noexc224 unwind label %bb.fp

.noexc224:                                        ; preds = %bb.fo
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit: ; preds = %bb.fn
  %i.ql = extractvalue { i64, ptr } %i.qk, 0
  %i.qm = extractvalue { i64, ptr } %i.qk, 1
  call fastcc void @_RNvMNtCs3smBju6uAx0_7ide_ssr8matchingNtB2_7Matcher23attempt_match_sequences(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.qe, ptr %i.qf, i64 noundef %i.ql, ptr %i.qm), !noalias !269, !inline_history !270
  br label %_RNvMNtCs3smBju6uAx0_7ide_ssr8matchingNtB2_7Matcher27attempt_match_node_children.exit

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %lpad.thr_comm565 = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.qn = icmp eq i64 %i.qe, 2
  br i1 %i.qn, label %common.resume, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qf) ], !noalias !271
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qf, i64 48 ; 2 uses
  %i.qp = load i32, ptr %i.qo, align 4, !noalias !271, !noundef !4
  %i.qq = add i32 %i.qp, -1                       ; 2 uses
  store i32 %i.qq, ptr %i.qo, align 4, !noalias !271
  %i.qr = icmp eq i32 %i.qq, 0
  br i1 %i.qr, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i.i.i.i, label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i.i.i.i: ; preds = %bb.fq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.qf) #22
          to label %common.resume unwind label %bb.fr

bb.fr:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i.i.i.i
  %i.qs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !271, !inline_history !270
  unreachable

bb.fs:                                            ; preds = %bb.fj
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.qt = getelementptr inbounds nuw i8, ptr %.val78, i64 184
  %i.qu = load i64, ptr %i.qt, align 8, !alias.scope !276, !noalias !277, !noundef !4
  %i.qv = icmp eq i64 %i.qu, 0
  br i1 %i.qv, label %select.unfold572, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.qw = getelementptr inbounds nuw i8, ptr %.val78, i64 160
  %i.qx = getelementptr inbounds nuw i8, ptr %.val78, i64 192
  %i.qy = call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3), !noalias !277 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278), !noalias !277
  call void @llvm.experimental.noalias.scope.decl(metadata !279), !noalias !277
  %i.qz = lshr i64 %i.qy, 57
  %i.ra = trunc nuw nsw i64 %i.qz to i8
  %i.rb = getelementptr inbounds nuw i8, ptr %.val78, i64 168
  %i.rc = load i64, ptr %i.rb, align 8, !alias.scope !280, !noalias !277, !noundef !4 ; 2 uses
  %i.rd = load ptr, ptr %i.qw, align 8, !alias.scope !280, !noalias !277, !nonnull !4, !noundef !4 ; 2 uses
  %i.re = insertelement <16 x i8> poison, i8 %i.ra, i64 0
  %i.rf = shufflevector <16 x i8> %i.re, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fw, %bb.ft
  %.sroa.9.0.i.i.i284 = phi i64 [ 0, %bb.ft ], [ %i.rw, %bb.fw ]
  %.pn.i.i285 = phi i64 [ %i.qy, %bb.ft ], [ %i.rx, %bb.fw ]
  %.sroa.01.0.i.i.i286 = and i64 %.pn.i.i285, %i.rc ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 %.sroa.01.0.i.i.i286
  %.sroa.0.0.copyload.i24.i.i287 = load <16 x i8>, ptr %i.rg, align 1, !noalias !281 ; 2 uses
  %i.rh = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i287, %i.rf
  %i.ri = bitcast <16 x i1> %i.rh to i16          ; 2 uses
  %.not.i.not30.i.i288 = icmp eq i16 %i.ri, 0
  br i1 %.not.i.not30.i.i288, label %._crit_edge.i.i292, label %.lr.ph.i.i289

.lr.ph.i.i289:                                    ; preds = %bb.fu, %bb.fv
  %.sroa.06.0.i31.i.i290 = phi i16 [ %i.rv, %bb.fv ], [ %i.ri, %bb.fu ] ; 3 uses
  %i.rj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i290, i1 true)
  %i.rk = zext nneg i16 %i.rj to i64
  %i.rl = add i64 %.sroa.01.0.i.i.i286, %i.rk
  %i.rm = and i64 %i.rl, %i.rc
  %i.rn = sub nsw i64 0, %i.rm
  %i.ro = getelementptr inbounds [48 x i8], ptr %i.rd, i64 %i.rn ; 2 uses
  %i.rp = getelementptr inbounds i8, ptr %i.ro, i64 -48
  %i.rq = call noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2_10EquivalentBq_E10equivalentCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.rp), !noalias !282
  br i1 %i.rq, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12ResolvedPathNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2o_.exit, label %bb.fv, !prof !244

._crit_edge.i.i292:                               ; preds = %bb.fv, %bb.fu
  %i.rr = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i287, splat (i8 -1)
  %i.rs = bitcast <16 x i1> %i.rr to i16
  %i.rt = icmp eq i16 %i.rs, 0
  br i1 %i.rt, label %bb.fw, label %select.unfold572, !prof !5

bb.fv:                                            ; preds = %.lr.ph.i.i289
  %i.ru = add i16 %.sroa.06.0.i31.i.i290, -1
  %i.rv = and i16 %i.ru, %.sroa.06.0.i31.i.i290   ; 2 uses
  %.not.i.not.i.i291 = icmp eq i16 %i.rv, 0
  br i1 %.not.i.not.i.i291, label %._crit_edge.i.i292, label %.lr.ph.i.i289

bb.fw:                                            ; preds = %._crit_edge.i.i292
  %i.rw = add i64 %.sroa.9.0.i.i.i284, 16         ; 2 uses
  %i.rx = add i64 %.sroa.01.0.i.i.i286, %i.rw
  br label %bb.fu

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12ResolvedPathNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2o_.exit: ; preds = %.lr.ph.i.i289
  %i.ry = getelementptr inbounds i8, ptr %i.ro, i64 -40
  %i.rz = load i32, ptr %i.bt, align 4, !noalias !283, !noundef !4 ; 2 uses
  %i.sa = icmp eq i32 %i.rz, -1
  br i1 %i.sa, label %bb.fx, label %_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr.exit283, !prof !5

bb.fx:                                            ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12ResolvedPathNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2o_.exit
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #23, !noalias !283
  unreachable

_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr.exit283: ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCs3smBju6uAx0_7ide_ssr9resolving12ResolvedPathNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB2o_.exit
  %i.sb = add nuw i32 %i.rz, 1
  store i32 %i.sb, ptr %i.bt, align 4, !noalias !283
  %i.sc = call fastcc noundef ptr @_RNvXsft_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4PathNtBa_7AstNode4cast(ptr noundef nonnull %.val79) #26, !inline_history !217 ; 8 uses
  %.not38.i = icmp eq ptr %i.sc, null
  br i1 %.not38.i, label %bb.ga, label %bb.fy, !prof !5

select.unfold572:                                 ; preds = %._crit_edge.i.i292, %bb.fs
  call fastcc void @_RNvMNtCs3smBju6uAx0_7ide_ssr8matchingNtB2_7Matcher27attempt_match_node_children(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4), !inline_history !217
  br label %_RNvMNtCs3smBju6uAx0_7ide_ssr8matchingNtB2_7Matcher18attempt_match_path.exit

bb.fy:                                            ; preds = %_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr.exit283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !284
  %.val63.i = load ptr, ptr %4, align 8, !alias.scope !275, !nonnull !4, !noundef !4 ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.val63.i, i64 48 ; 2 uses
  %i.se = load i32, ptr %i.sd, align 4, !noalias !283, !noundef !4 ; 2 uses
  %i.sf = icmp eq i32 %i.se, -1
  br i1 %i.sf, label %bb.fz, label %bb.gd, !prof !5

bb.fz:                                            ; preds = %bb.fy
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #23
          to label %.noexc281 unwind label %bb.gc

.noexc281:                                        ; preds = %bb.fz
  unreachable

bb.ga:                                            ; preds = %_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs3smBju6uAx0_7ide_ssr.exit283
  call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #27, !noalias !283, !inline_history !217
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs3smBju6uAx0_7ide_ssr.exit277: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEECs3smBju6uAx0_7ide_ssr.exit, %bb.gi, %bb.gc
  %.pn56.i = phi { ptr, i32 } [ %i.sk, %bb.gc ], [ %.pn54.i, %bb.gi ], [ %.pn54.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEECs3smBju6uAx0_7ide_ssr.exit ] ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sc, i64 48 ; 2 uses
  %i.sh = load i32, ptr %i.sg, align 4, !noalias !283, !noundef !4
  %i.si = add i32 %i.sh, -1                       ; 2 uses
  store i32 %i.si, ptr %i.sg, align 4, !noalias !283
  %i.sj = icmp eq i32 %i.si, 0
  br i1 %i.sj, label %bb.gb, label %common.resume

bb.gb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs3smBju6uAx0_7ide_ssr.exit277
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.sc) #22
          to label %common.resume unwind label %bb.hl

bb.gc:                                            ; preds = %bb.fz, %bb.hn, %bb.hy, %bb.gg, %bb.gd
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs3smBju6uAx0_7ide_ssr.exit277

bb.gd:                                            ; preds = %bb.fy
  %i.sl = add nuw i32 %i.se, 1
  store i32 %i.sl, ptr %i.sd, align 4, !noalias !283
  %i.sm = invoke fastcc noundef ptr @_RNvXsft_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4PathNtBa_7AstNode4cast(ptr noundef nonnull %.val63.i)
          to label %bb.ge unwind label %bb.gc, !inline_history !217 ; 9 uses

bb.ge:                                            ; preds = %bb.gd
  %.not39.i = icmp eq ptr %i.sm, null
  br i1 %.not39.i, label %bb.gg, label %bb.gf, !prof !5

bb.gf:                                            ; preds = %bb.ge
  store ptr %i.sm, ptr %i.af, align 8, !noalias !284
  %i.sn = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr(ptr nonnull %i.sc)
          to label %bb.gk unwind label %bb.gj, !noalias !283, !inline_history !217 ; 17 uses

bb.gg:                                            ; preds = %bb.ge
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #23
          to label %bb.gh unwind label %bb.gc, !noalias !283, !inline_history !217

bb.gh:                                            ; preds = %bb.gg
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEECs3smBju6uAx0_7ide_ssr.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECs3smBju6uAx0_7ide_ssr.exit231, %bb.il, %bb.hu, %bb.hv, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit273, %bb.he, %bb.gm, %bb.gl, %bb.gn, %bb.ht, %bb.gj
  %.pn54.i = phi { ptr, i32 } [ %i.ss, %bb.gj ], [ %i.su, %bb.gm ], [ %i.vd, %bb.hu ], [ %.pn52.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit273 ], [ %i.vd, %bb.ht ], [ %i.su, %bb.gn ], [ %i.su, %bb.gl ], [ %.pn52.i, %bb.he ], [ %i.vd, %bb.hv ], [ %.pn50.i, %bb.il ], [ %.pn50.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECs3smBju6uAx0_7ide_ssr.exit231 ] ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 48 ; 2 uses
  %i.sp = load i32, ptr %i.so, align 4, !noalias !283, !noundef !4
  %i.sq = add i32 %i.sp, -1                       ; 2 uses
  store i32 %i.sq, ptr %i.so, align 4, !noalias !283
  %i.sr = icmp eq i32 %i.sq, 0
  br i1 %i.sr, label %bb.gi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs3smBju6uAx0_7ide_ssr.exit277

bb.gi:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEECs3smBju6uAx0_7ide_ssr.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.sm) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs3smBju6uAx0_7ide_ssr.exit277 unwind label %bb.hl

bb.gj:                                            ; preds = %.invoke, %bb.hm, %bb.ig, %bb.ir, %bb.ii, %bb.ic, %bb.hz, %bb.gf
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEECs3smBju6uAx0_7ide_ssr.exit

bb.gk:                                            ; preds = %bb.gf
  %i.st = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr(ptr nonnull %i.sm)
          to label %bb.go unwind label %bb.gl, !noalias !283, !inline_history !217 ; 16 uses

bb.gl:                                            ; preds = %bb.gk
  %i.su = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.sv = icmp eq ptr %i.sn, null
  br i1 %i.sv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEECs3smBju6uAx0_7ide_ssr.exit, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sn, i64 48 ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 4, !noalias !283, !noundef !4
  %i.sy = add i32 %i.sx, -1                       ; 2 uses
  store i32 %i.sy, ptr %i.sw, align 4, !noalias !283
  %i.sz = icmp eq i32 %i.sy, 0
  br i1 %i.sz, label %bb.gn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEECs3smBju6uAx0_7ide_ssr.exit

bb.gn:                                            ; preds = %bb.gm
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.sn) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEECs3smBju6uAx0_7ide_ssr.exit unwind label %bb.hl

bb.go:                                            ; preds = %bb.gk
  %.not40.i = icmp eq ptr %i.sn, null             ; 2 uses
  %.not41.i = icmp eq ptr %i.st, null             ; 3 uses
  %or.cond.i124 = or i1 %.not40.i, %.not41.i
  br i1 %or.cond.i124, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  br i1 %.not40.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit250, label %bb.hr

bb.gq:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !284
  %i.ta = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes14GenericArgListECs3smBju6uAx0_7ide_ssr(ptr nonnull %i.sn)
          to label %bb.gs unwind label %bb.gy, !noalias !283, !inline_history !217 ; 4 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes20ParenthesizedArgListEECs3smBju6uAx0_7ide_ssr.exit: ; preds = %bb.hp, %bb.ho, %bb.hq, %bb.hj, %bb.hi, %bb.hk, %bb.gy
  %.pn.i125 = phi { ptr, i32 } [ %i.ut, %bb.ho ], [ %i.tj, %bb.gy ], [ %i.ut, %bb.hp ], [ %i.ue, %bb.hj ], [ %i.ue, %bb.hk ], [ %i.ue, %bb.hi ], [ %i.ut, %bb.hq ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.st) ], !noalias !283
  %i.tb = getelementptr inbounds nuw i8, ptr %i.st, i64 48 ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 4, !noalias !283, !noundef !4
  %i.td = add i32 %i.tc, -1                       ; 2 uses
  store i32 %i.td, ptr %i.tb, align 4, !noalias !283
  %i.te = icmp eq i32 %i.td, 0
  br i1 %i.te, label %bb.gr, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit273

bb.gr:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes20ParenthesizedArgListEECs3smBju6uAx0_7ide_ssr.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.st) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit273 unwind label %bb.hl

bb.gs:                                            ; preds = %bb.gq
  %i.tf = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes14GenericArgListECs3smBju6uAx0_7ide_ssr(ptr nonnull %i.st)
          to label %bb.gt unwind label %bb.ho, !noalias !283, !inline_history !217

bb.gt:                                            ; preds = %bb.gs
  invoke fastcc void @_RINvMNtCs3smBju6uAx0_7ide_ssr8matchingNtB3_7Matcher17attempt_match_optNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14GenericArgListEB5_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ta, ptr noundef %i.tf)
          to label %bb.gu unwind label %bb.gy, !noalias !283, !inline_history !217

bb.gu:                                            ; preds = %bb.gt
  %i.tg = load i64, ptr %i.ae, align 8, !range !15, !noalias !284, !noundef !4
  %.not45.i = icmp eq i64 %i.tg, -2
  br i1 %.not45.i, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !284
  br label %bb.hg

bb.gw:                                            ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !284
  %i.th = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes20ParenthesizedArgListECs3smBju6uAx0_7ide_ssr(ptr nonnull %i.sn)
          to label %bb.gx unwind label %bb.gy, !noalias !283, !inline_history !217 ; 4 uses

bb.gx:                                            ; preds = %bb.gw
  %i.ti = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes20ParenthesizedArgListECs3smBju6uAx0_7ide_ssr(ptr nonnull %i.st)
          to label %bb.gz unwind label %bb.hi, !noalias !283, !inline_history !217

bb.gy:                                            ; preds = %bb.gt, %bb.gq, %bb.gw, %bb.gz
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes20ParenthesizedArgListEECs3smBju6uAx0_7ide_ssr.exit

bb.gz:                                            ; preds = %bb.gx
  invoke fastcc void @_RINvMNtCs3smBju6uAx0_7ide_ssr8matchingNtB3_7Matcher17attempt_match_optNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes20ParenthesizedArgListEB5_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.th, ptr noundef %i.ti)
          to label %bb.ha unwind label %bb.gy, !noalias !283, !inline_history !217

bb.ha:                                            ; preds = %bb.gz
  %i.tk = load i64, ptr %i.ad, align 8, !range !15, !noalias !284, !noundef !4
  %.not47.i = icmp eq i64 %i.tk, -2
  br i1 %.not47.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !284
  br label %bb.hg

bb.hc:                                            ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !284
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.st) ], !noalias !283
  %i.tl = getelementptr inbounds nuw i8, ptr %i.st, i64 48 ; 2 uses
  %i.tm = load i32, ptr %i.tl, align 4, !noalias !283, !noundef !4
  %i.tn = add i32 %i.tm, -1                       ; 2 uses
  store i32 %i.tn, ptr %i.tl, align 4, !noalias !283
  %i.to = icmp eq i32 %i.tn, 0
  br i1 %i.to, label %bb.hd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit270

bb.hd:                                            ; preds = %bb.hc
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.st) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit270 unwind label %bb.hf

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit273: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes20ParenthesizedArgListEECs3smBju6uAx0_7ide_ssr.exit, %bb.gr, %bb.hf
  %.pn52.i = phi { ptr, i32 } [ %i.tt, %bb.hf ], [ %.pn.i125, %bb.gr ], [ %.pn.i125, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes20ParenthesizedArgListEECs3smBju6uAx0_7ide_ssr.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sn) ], !noalias !283
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sn, i64 48 ; 2 uses
  %i.tq = load i32, ptr %i.tp, align 4, !noalias !283, !noundef !4
  %i.tr = add i32 %i.tq, -1                       ; 2 uses
  store i32 %i.tr, ptr %i.tp, align 4, !noalias !283
  %i.ts = icmp eq i32 %i.tr, 0
  br i1 %i.ts, label %bb.he, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEECs3smBju6uAx0_7ide_ssr.exit

bb.he:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit273
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.sn) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEECs3smBju6uAx0_7ide_ssr.exit unwind label %bb.hl

bb.hf:                                            ; preds = %bb.hd, %bb.hh
  %i.tt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit273

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit270: ; preds = %bb.hc, %bb.hd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sn) ], !noalias !283
  %i.tu = getelementptr inbounds nuw i8, ptr %i.sn, i64 48 ; 2 uses
  %i.tv = load i32, ptr %i.tu, align 4, !noalias !283, !noundef !4
  %i.tw = add i32 %i.tv, -1                       ; 2 uses
  store i32 %i.tw, ptr %i.tu, align 4, !noalias !283
  %i.tx = icmp eq i32 %i.tw, 0
  br i1 %i.tx, label %.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit264

.invoke:                                          ; preds = %bb.hw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit270
  %i.ty = phi ptr [ %i.sn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit270 ], [ %i.st, %bb.hw ]
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ty) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit264 unwind label %bb.gj

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit264: ; preds = %.invoke, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit250, %bb.hw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit270
  %i.tz = load ptr, ptr %2, align 8, !alias.scope !274, !align !11, !noundef !4
  %.not48.i = icmp eq ptr %i.tz, null
  br i1 %.not48.i, label %bb.hx, label %bb.hz

bb.hg:                                            ; preds = %bb.hb, %bb.gv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.st) ], !noalias !283
  %i.ua = getelementptr inbounds nuw i8, ptr %i.st, i64 48 ; 2 uses
  %i.ub = load i32, ptr %i.ua, align 4, !noalias !283, !noundef !4
  %i.uc = add i32 %i.ub, -1                       ; 2 uses
  store i32 %i.uc, ptr %i.ua, align 4, !noalias !283
  %i.ud = icmp eq i32 %i.uc, 0
  br i1 %i.ud, label %bb.hh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit261

bb.hh:                                            ; preds = %bb.hg
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.st) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs3smBju6uAx0_7ide_ssr.exit261 unwind label %bb.hf

bb.hi:                                            ; preds = %bb.gx
  %i.ue = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMNtCs3smBju6uAx0_7ide_ssr8matchingNtB2_7Matcher18attempt_match_node:bb.a
  %i.zs = add i32 %i.zr, -1                       ; 2 uses
  store i32 %i.zs, ptr %i.zq, align 4, !noalias !290
  %i.zt = icmp eq i32 %i.zs, 0
  br i1 %i.zt, label %bb.ki, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit353

bb.ki:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit349
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ze) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit353 unwind label %.thread588.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kj:                                            ; preds = %bb.kf
  %i.zu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zp, i64 48 ; 2 uses
  %i.zw = load i32, ptr %i.zv, align 4, !noalias !290, !noundef !4
  %i.zx = add i32 %i.zw, -1                       ; 2 uses
  store i32 %i.zx, ptr %i.zv, align 4, !noalias !290
  %i.zy = icmp eq i32 %i.zx, 0
  br i1 %i.zy, label %bb.kk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit351

bb.kk:                                            ; preds = %bb.kj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.zp) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit351 unwind label %bb.kt

bb.kl:                                            ; preds = %bb.kf
  %i.zz = load i64, ptr %i.l, align 8, !range !15, !noalias !289, !noundef !4
  %.not71.i = icmp eq i64 %i.zz, -2
  br i1 %.not71.i, label %bb.ko, label %bb.km

bb.km:                                            ; preds = %bb.kl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !289
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zp, i64 48 ; 2 uses
  %i.aab = load i32, ptr %i.aaa, align 4, !noalias !290, !noundef !4
  %i.aac = add i32 %i.aab, -1                     ; 2 uses
  store i32 %i.aac, ptr %i.aaa, align 4, !noalias !290
  %i.aad = icmp eq i32 %i.aac, 0
  br i1 %i.aad, label %bb.kn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit349

bb.kn:                                            ; preds = %bb.km
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.zp) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit349 unwind label %.loopexit.split-lp608.loopexit.split-lp.loopexit.split-lp

bb.ko:                                            ; preds = %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !289
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zp, i64 48 ; 2 uses
  %i.aaf = load i32, ptr %i.aae, align 4, !noalias !290, !noundef !4
  %i.aag = add i32 %i.aaf, -1                     ; 2 uses
  store i32 %i.aag, ptr %i.aae, align 4, !noalias !290
  %i.aah = icmp eq i32 %i.aag, 0
  br i1 %i.aah, label %bb.kp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit347

bb.kp:                                            ; preds = %bb.ko
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.zp) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit347 unwind label %.loopexit.split-lp608.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit347: ; preds = %bb.ko, %bb.kp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !289
  %i.aai = getelementptr inbounds nuw i8, ptr %i.ze, i64 48 ; 2 uses
  %i.aaj = load i32, ptr %i.aai, align 8, !noalias !290, !noundef !4
  %i.aak = add i32 %i.aaj, -1                     ; 2 uses
  store i32 %i.aak, ptr %i.aai, align 8, !noalias !290
  %i.aal = icmp eq i32 %i.aak, 0
  br i1 %i.aal, label %bb.kq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit

bb.kq:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit347
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ze) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit unwind label %.thread588.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit347, %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !289
  br label %bb.kr

bb.kr:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit, %bb.jz
  %i.aam = getelementptr inbounds nuw i8, ptr %i.yf, i64 48 ; 2 uses
  %i.aan = load i32, ptr %i.aam, align 4, !noalias !290, !noundef !4
  %i.aao = add i32 %i.aan, -1                     ; 2 uses
  store i32 %i.aao, ptr %i.aam, align 4, !noalias !290
  %i.aap = icmp eq i32 %i.aao, 0
  br i1 %i.aap, label %.invoke805, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs3smBju6uAx0_7ide_ssr.exit.sink.split

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit353: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit349, %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !289
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs3smBju6uAx0_7ide_ssr.exit340

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs3smBju6uAx0_7ide_ssr.exit340: ; preds = %bb.ku, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i338, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit353
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.yf, i64 48 ; 2 uses
  %i.aar = load i32, ptr %i.aaq, align 4, !noalias !287, !noundef !4
  %i.aas = add i32 %i.aar, -1                     ; 2 uses
  store i32 %i.aas, ptr %i.aaq, align 4, !noalias !287
  %i.aat = icmp eq i32 %i.aas, 0
  br i1 %i.aat, label %bb.ks, label %bb.kv

bb.ks:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs3smBju6uAx0_7ide_ssr.exit340
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.yf) #22
          to label %bb.kv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kt:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit378, %bb.ix, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i.i.i368, %bb.js, %bb.kc, %bb.kk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i329, %bb.ky, %bb.lh, %bb.ln, %bb.mc
  %i.aau = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !287, !inline_history !225
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke805, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs3smBju6uAx0_7ide_ssr.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i, %bb.ks
  %lpad.loopexit.split-lp1051 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit360

bb.ku:                                            ; preds = %bb.jy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yy) ], !noalias !287
  %i.aav = getelementptr inbounds nuw i8, ptr %i.yy, i64 48 ; 2 uses
  %i.aaw = load i32, ptr %i.aav, align 4, !noalias !287, !noundef !4
  %i.aax = add i32 %i.aaw, -1                     ; 2 uses
  store i32 %i.aax, ptr %i.aav, align 4, !noalias !287
  %i.aay = icmp eq i32 %i.aax, 0
  br i1 %i.aay, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i338, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs3smBju6uAx0_7ide_ssr.exit340

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i338: ; preds = %bb.ku
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.yy) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs3smBju6uAx0_7ide_ssr.exit340 unwind label %.thread588.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kv:                                            ; preds = %bb.ks, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs3smBju6uAx0_7ide_ssr.exit340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !289
  %.val103.i = load i64, ptr %i.p, align 8, !range !9, !noalias !289, !noundef !4
  %.val104.i = load ptr, ptr %i.xx, align 8, !noalias !289 ; 3 uses
  %i.aaz = icmp eq i64 %.val103.i, 2
  br i1 %i.aaz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val104.i) ], !noalias !287
  %i.aba = getelementptr inbounds nuw i8, ptr %.val104.i, i64 48 ; 2 uses
  %i.abb = load i32, ptr %i.aba, align 4, !noalias !287, !noundef !4
  %i.abc = add i32 %i.abb, -1                     ; 2 uses
  store i32 %i.abc, ptr %i.aba, align 4, !noalias !287
  %i.abd = icmp eq i32 %i.abc, 0
  br i1 %i.abd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i.i.i: ; preds = %bb.kw
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val104.i) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit unwind label %bb.iv

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit: ; preds = %bb.kw, %bb.kv, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs3smBju6uAx0_7ide_ssr.exit.sink.split.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !289
  br label %_RNvMNtCs3smBju6uAx0_7ide_ssr8matchingNtB2_7Matcher31attempt_match_record_field_list.exit

.loopexit.split-lp603.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ju, %bb.jy
  %lpad.loopexit.split-lp1056 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yy) ], !noalias !287
  %i.abe = getelementptr inbounds nuw i8, ptr %i.yy, i64 48 ; 2 uses
  %i.abf = load i32, ptr %i.abe, align 4, !noalias !287, !noundef !4
  %i.abg = add i32 %i.abf, -1                     ; 2 uses
  store i32 %i.abg, ptr %i.abe, align 4, !noalias !287
  %i.abh = icmp eq i32 %i.abg, 0
  br i1 %i.abh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i329, label %.thread581

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i329: ; preds = %.loopexit.split-lp603.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.yy) #22
          to label %.thread581 unwind label %bb.kt

bb.kx:                                            ; preds = %bb.ji
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yf) ], !noalias !290
  %i.abi = getelementptr inbounds nuw i8, ptr %i.yf, i64 48 ; 2 uses
  %i.abj = load i32, ptr %i.abi, align 4, !noalias !290, !noundef !4
  %i.abk = add i32 %i.abj, -1                     ; 2 uses
  store i32 %i.abk, ptr %i.abi, align 4, !noalias !290
  %i.abl = icmp eq i32 %i.abk, 0
  br i1 %i.abl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs3smBju6uAx0_7ide_ssr.exit.backedge

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i: ; preds = %bb.kx
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.yf) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs3smBju6uAx0_7ide_ssr.exit.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs3smBju6uAx0_7ide_ssr.exit.sink.split: ; preds = %.invoke805, %bb.jv, %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !289
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs3smBju6uAx0_7ide_ssr.exit.backedge

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs3smBju6uAx0_7ide_ssr.exit.backedge: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs3smBju6uAx0_7ide_ssr.exit.sink.split, %bb.kx, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit.sink.split.i
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs3smBju6uAx0_7ide_ssr.exit

.body318:                                         ; preds = %.loopexit.split-lp613.loopexit.split-lp.loopexit.split-lp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs3smBju6uAx0_7ide_ssr.exit308, %bb.lh, %bb.la, %bb.lb
  %.pn87.i = phi { ptr, i32 } [ %i.abr, %bb.la ], [ %.pn85.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs3smBju6uAx0_7ide_ssr.exit308 ], [ %i.abr, %bb.lb ], [ %.pn85.i, %bb.lh ], [ %lpad.loopexit.split-lp1082, %.loopexit.split-lp613.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.abm = load i32, ptr %i.xj, align 4, !noalias !290, !noundef !4
  %i.abn = add i32 %i.abm, -1                     ; 2 uses
  store i32 %i.abn, ptr %i.xj, align 4, !noalias !290
  %i.abo = icmp eq i32 %i.abn, 0
  br i1 %i.abo, label %bb.ky, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit321

bb.ky:                                            ; preds = %.body318
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.xc) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit321 unwind label %bb.kt

.loopexit.split-lp613.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.le, %bb.lm, %bb.lx, %bb.jb
  %lpad.loopexit.split-lp1082 = landingpad { ptr, i32 }
          cleanup
  br label %.body318

bb.kz:                                            ; preds = %bb.ja
  %i.abp = add nuw i32 %i.xk, 1
  store i32 %i.abp, ptr %i.xj, align 4, !noalias !290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.xc, ptr %i.a, align 8
  %i.abq = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.lc unwind label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.abr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abs = load i32, ptr %i.xj, align 4, !noundef !4
  %i.abt = add i32 %i.abs, -1                     ; 2 uses
  store i32 %i.abt, ptr %i.xj, align 4
  %i.abu = icmp eq i32 %i.abt, 0
  br i1 %i.abu, label %bb.lb, label %.body318

bb.lb:                                            ; preds = %bb.la
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.xc) #22
          to label %.body318 unwind label %bb.lf

bb.lc:                                            ; preds = %bb.kz
  %i.abv = icmp eq i16 %i.abq, 272
  br i1 %i.abv, label %bb.lg, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.abw = load i32, ptr %i.xj, align 4, !noundef !4
  %i.abx = add i32 %i.abw, -1                     ; 2 uses
  store i32 %i.abx, ptr %i.xj, align 4
  %i.aby = icmp eq i32 %i.abx, 0
  br i1 %i.aby, label %bb.le, label %.thread592

bb.le:                                            ; preds = %bb.ld
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.xc) #22
          to label %.thread592 unwind label %.loopexit.split-lp613.loopexit.split-lp.loopexit.split-lp

bb.lf:                                            ; preds = %bb.lb
  %i.abz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

.thread592:                                       ; preds = %bb.ld, %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ly

bb.lg:                                            ; preds = %bb.lc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !289
  store ptr %i.xc, ptr %i.t, align 8, !noalias !289
  %i.aca = invoke noundef ptr @_RNvMso_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes15RecordExprField10field_name(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t)
          to label %bb.lj unwind label %bb.li, !noalias !290, !inline_history !225 ; 6 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs3smBju6uAx0_7ide_ssr.exit308: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs3smBju6uAx0_7ide_ssr.exit, %bb.ln, %bb.li
  %.pn85.i = phi { ptr, i32 } [ %i.ace, %bb.li ], [ %.pn83.i, %bb.ln ], [ %.pn83.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs3smBju6uAx0_7ide_ssr.exit ] ; 2 uses
  %i.acb = load i32, ptr %i.xj, align 4, !noalias !290, !noundef !4
  %i.acc = add i32 %i.acb, -1                     ; 2 uses
  store i32 %i.acc, ptr %i.xj, align 4, !noalias !290
  %i.acd = icmp eq i32 %i.acc, 0
  br i1 %i.acd, label %bb.lh, label %.body318

bb.lh:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs3smBju6uAx0_7ide_ssr.exit308
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.xc) #22
          to label %.body318 unwind label %bb.kt

bb.li:                                            ; preds = %bb.lw, %bb.lg
  %i.ace = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs3smBju6uAx0_7ide_ssr.exit308

bb.lj:                                            ; preds = %bb.lg
  %.not82.i = icmp eq ptr %i.aca, null
  br i1 %.not82.i, label %bb.ll, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !289
  store ptr %i.aca, ptr %i.s, align 8, !noalias !289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !289
  invoke void @_RNvMs0_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes7NameRef4text(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
          to label %bb.lo unwind label %bb.lr, !noalias !290, !inline_history !225

bb.ll:                                            ; preds = %bb.lj
  %i.acf = load i32, ptr %i.xj, align 4, !noalias !290, !noundef !4
  %i.acg = add i32 %i.acf, -1                     ; 2 uses
  store i32 %i.acg, ptr %i.xj, align 4, !noalias !290
  %i.ach = icmp eq i32 %i.acg, 0
  br i1 %i.ach, label %bb.lm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldECs3smBju6uAx0_7ide_ssr.exit311

bb.lm:                                            ; preds = %bb.ll
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.xc) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldECs3smBju6uAx0_7ide_ssr.exit311 unwind label %.loopexit.split-lp613.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs3smBju6uAx0_7ide_ssr.exit: ; preds = %bb.mb, %bb.ma, %bb.mc, %bb.lr
  %.pn83.i = phi { ptr, i32 } [ %i.adg, %bb.mb ], [ %i.aco, %bb.lr ], [ %i.adg, %bb.mc ], [ %i.adg, %bb.ma ] ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.aca, i64 48 ; 2 uses
  %i.acj = load i32, ptr %i.aci, align 4, !noalias !290, !noundef !4
  %i.ack = add i32 %i.acj, -1                     ; 2 uses
  store i32 %i.ack, ptr %i.aci, align 4, !noalias !290
  %i.acl = icmp eq i32 %i.ack, 0
  br i1 %i.acl, label %bb.ln, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs3smBju6uAx0_7ide_ssr.exit308

bb.ln:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs3smBju6uAx0_7ide_ssr.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aca) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs3smBju6uAx0_7ide_ssr.exit308 unwind label %bb.kt

bb.lo:                                            ; preds = %bb.lk
  invoke void @_RNvXs2_NtCsjJXvCMGntp8_6syntax10token_textNtCs42xZ1oUXfIG_8smol_str7SmolStrINtNtCshzWfHUSfYae_4core7convert4FromNtB5_9TokenTextE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.q)
          to label %bb.lp unwind label %bb.lr, !noalias !290, !inline_history !225

bb.lp:                                            ; preds = %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !289
  %i.acm = load i32, ptr %i.xj, align 4, !noalias !290, !noundef !4 ; 2 uses
  %i.acn = icmp eq i32 %i.acm, -1
  br i1 %i.acn, label %bb.lq, label %bb.ls, !prof !5

bb.lq:                                            ; preds = %bb.lp
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #23
          to label %.noexc304 unwind label %bb.ma

.noexc304:                                        ; preds = %bb.lq
  unreachable

bb.lr:                                            ; preds = %bb.lk, %bb.lo, %bb.lv, %bb.ls
  %i.aco = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs3smBju6uAx0_7ide_ssr.exit

bb.ls:                                            ; preds = %bb.lp
  %i.acp = add nuw i32 %i.acm, 1
  store i32 %i.acp, ptr %i.xj, align 4, !noalias !290
  %i.acq = invoke noundef ptr @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs42xZ1oUXfIG_8smol_str7SmolStrINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull %i.xc)
          to label %bb.lt unwind label %bb.lr, !inline_history !225 ; 3 uses

bb.lt:                                            ; preds = %bb.ls
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !289
  %i.acr = icmp eq ptr %i.acq, null
  br i1 %i.acr, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs3smBju6uAx0_7ide_ssr.exit, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acq, i64 48 ; 2 uses
  %i.act = load i32, ptr %i.acs, align 4, !noalias !290, !noundef !4
  %i.acu = add i32 %i.act, -1                     ; 2 uses
  store i32 %i.acu, ptr %i.acs, align 4, !noalias !290
  %i.acv = icmp eq i32 %i.acu, 0
  br i1 %i.acv, label %bb.lv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs3smBju6uAx0_7ide_ssr.exit

bb.lv:                                            ; preds = %bb.lu
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.acq) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs3smBju6uAx0_7ide_ssr.exit unwind label %bb.lr

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs3smBju6uAx0_7ide_ssr.exit: ; preds = %bb.lu, %bb.lt, %bb.lv
  %i.acw = getelementptr inbounds nuw i8, ptr %i.aca, i64 48 ; 2 uses
  %i.acx = load i32, ptr %i.acw, align 4, !noalias !290, !noundef !4
  %i.acy = add i32 %i.acx, -1                     ; 2 uses
  store i32 %i.acy, ptr %i.acw, align 4, !noalias !290
  %i.acz = icmp eq i32 %i.acy, 0
  br i1 %i.acz, label %bb.lw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs3smBju6uAx0_7ide_ssr.exit

bb.lw:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs3smBju6uAx0_7ide_ssr.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aca) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs3smBju6uAx0_7ide_ssr.exit unwind label %bb.li

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs3smBju6uAx0_7ide_ssr.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs3smBju6uAx0_7ide_ssr.exit, %bb.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !289
  %i.ada = load i32, ptr %i.xj, align 4, !noalias !290, !noundef !4
  %i.adb = add i32 %i.ada, -1                     ; 2 uses
  store i32 %i.adb, ptr %i.xj, align 4, !noalias !290
  %i.adc = icmp eq i32 %i.adb, 0
  br i1 %i.adc, label %bb.lx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldECs3smBju6uAx0_7ide_ssr.exit

bb.lx:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs3smBju6uAx0_7ide_ssr.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.xc) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldECs3smBju6uAx0_7ide_ssr.exit unwind label %.loopexit.split-lp613.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldECs3smBju6uAx0_7ide_ssr.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs3smBju6uAx0_7ide_ssr.exit, %bb.lx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !289
  br label %bb.ly

bb.ly:                                            ; preds = %.thread592, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldECs3smBju6uAx0_7ide_ssr.exit311, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldECs3smBju6uAx0_7ide_ssr.exit
  %i.add = load i32, ptr %i.xj, align 4, !noalias !290, !noundef !4
  %i.ade = add i32 %i.add, -1                     ; 2 uses
  store i32 %i.ade, ptr %i.xj, align 4, !noalias !290
  %i.adf = icmp eq i32 %i.ade, 0
  br i1 %i.adf, label %bb.lz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit.backedge

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit.backedge: ; preds = %bb.ly, %bb.lz
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit

bb.lz:                                            ; preds = %bb.ly
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.xc) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit.backedge unwind label %bb.iy

bb.ma:                                            ; preds = %bb.lq
  %i.adg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  call void @llvm.experimental.noalias.scope.decl(metadata !294), !noalias !290
  %i.adh = load i8, ptr %i.r, align 8, !range !295, !alias.scope !296, !noalias !290, !noundef !4
  %switch.i.i = icmp samesign ult i8 %i.adh, 25
  br i1 %switch.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs3smBju6uAx0_7ide_ssr.exit, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.adi = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !297), !noalias !290
  call void @llvm.experimental.noalias.scope.decl(metadata !298), !noalias !290
  %i.adj = load ptr, ptr %i.adi, align 8, !alias.scope !299, !noalias !290, !nonnull !4, !noundef !4
  %i.adk = atomicrmw add ptr %i.adj, i64 -1 release, align 8, !noalias !300
  %i.adl = icmp eq i64 %i.adk, 1
  br i1 %i.adl, label %bb.mc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs3smBju6uAx0_7ide_ssr.exit

bb.mc:                                            ; preds = %bb.mb
  fence acquire, !noalias !290
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.adi) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs3smBju6uAx0_7ide_ssr.exit unwind label %bb.kt

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldECs3smBju6uAx0_7ide_ssr.exit311: ; preds = %bb.ll, %bb.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !289
  br label %bb.ly

_RNvMNtCs3smBju6uAx0_7ide_ssr8matchingNtB2_7Matcher31attempt_match_record_field_list.exit: ; preds = %bb.jq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs3smBju6uAx0_7ide_ssr.exit, %bb.jo
  call void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs42xZ1oUXfIG_8smol_str7SmolStrINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v), !noalias !287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMNtCs3smBju6uAx0_7ide_ssr8matchingNtB2_7Matcher27attempt_match_node_children.exit

bb.md:                                            ; preds = %bb.fj
  call fastcc void @_RNvMNtCs3smBju6uAx0_7ide_ssr8matchingNtB2_7Matcher24attempt_match_token_tree(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %4)
  br label %_RNvMNtCs3smBju6uAx0_7ide_ssr8matchingNtB2_7Matcher27attempt_match_node_children.exit

bb.me:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.adm = load i32, ptr %i.bt, align 4, !noalias !301, !noundef !4 ; 2 uses
  %i.adn = icmp eq i32 %i.adm, -1
  br i1 %i.adn, label %bb.mf, label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit, !prof !5

bb.mf:                                            ; preds = %bb.me
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #23, !noalias !301
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit: ; preds = %bb.me
  %i.ado = add nuw i32 %i.adm, 1
  store i32 %i.ado, ptr %i.bt, align 4, !noalias !301
  call void @_RNvMNtCs9GitHPCrz2Q_5rowan11syntax_textNtB2_10SyntaxText3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bi, ptr noundef nonnull %.val79)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.adp = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3)
          to label %bb.mj unwind label %bb.mi

bb.mg:                                            ; preds = %bb.fk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECs3smBju6uAx0_7ide_ssr.exit140
  %.sroa.018.0 = phi i64 [ %.sroa.018.0.copyload19, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECs3smBju6uAx0_7ide_ssr.exit140 ], [ -1, %bb.fk ]
  store i64 %.sroa.018.0, ptr %0, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  br label %_RNvMNtCs3smBju6uAx0_7ide_ssr8matchingNtB2_7Matcher27attempt_match_node_children.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECs3smBju6uAx0_7ide_ssr.exit136: ; preds = %bb.mm, %bb.mn, %bb.mi
  %.pn = phi { ptr, i32 } [ %i.adu, %bb.mi ], [ %i.aea, %bb.mn ], [ %i.aea, %bb.mm ] ; 2 uses
  %.val75 = load ptr, ptr %i.bi, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %.val75, i64 48 ; 2 uses
  %i.adr = load i32, ptr %i.adq, align 4, !noundef !4
  %i.ads = add i32 %i.adr, -1                     ; 2 uses
  store i32 %i.ads, ptr %i.adq, align 4
  %i.adt = icmp eq i32 %i.ads, 0
  br i1 %i.adt, label %bb.mh, label %common.resume

bb.mh:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECs3smBju6uAx0_7ide_ssr.exit136
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val75) #22
          to label %common.resume unwind label %bb.ad

bb.mi:                                            ; preds = %bb.mp, %bb.ml, %bb.mk, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit
  %i.adu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECs3smBju6uAx0_7ide_ssr.exit136

bb.mj:                                            ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit
  store i16 %i.adp, ptr %i.bh, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %.val = load ptr, ptr %4, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.adw = load i32, ptr %i.adv, align 4, !noalias !302, !noundef !4 ; 2 uses
  %i.adx = icmp eq i32 %i.adw, -1
  br i1 %i.adx, label %bb.ml, label %bb.mk, !prof !5

bb.mk:                                            ; preds = %bb.mj
  %i.ady = add nuw i32 %i.adw, 1
  store i32 %i.ady, ptr %i.adv, align 4, !noalias !302
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan11syntax_textNtB2_10SyntaxText3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bg, ptr noundef nonnull %.val)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit134 unwind label %bb.mi

bb.ml:                                            ; preds = %bb.mj
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #23
          to label %.noexc133 unwind label %bb.mi

.noexc133:                                        ; preds = %bb.ml
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit134: ; preds = %bb.mk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %i.adz = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4)
          to label %bb.mo unwind label %bb.mm

bb.mm:                                            ; preds = %bb.mo, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit134
  %i.aea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val74 = load ptr, ptr %i.bg, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %.val74, i64 48 ; 2 uses
  %i.aec = load i32, ptr %i.aeb, align 4, !noundef !4
  %i.aed = add i32 %i.aec, -1                     ; 2 uses
  store i32 %i.aed, ptr %i.aeb, align 4
  %i.aee = icmp eq i32 %i.aed, 0
  br i1 %i.aee, label %bb.mn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECs3smBju6uAx0_7ide_ssr.exit136

bb.mn:                                            ; preds = %bb.mm
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val74) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan11syntax_text10SyntaxTextECs3smBju6uAx0_7ide_ssr.exit136 unwind label %bb.ad

bb.mo:                                            ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode4text.exit134
  store i16 %i.adz, ptr %i.bf, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store ptr %i.bi, ptr %i.be, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @_RNvXs0_NtCs9GitHPCrz2Q_5rowan11syntax_textNtB5_10SyntaxTextNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  %i.aef = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.bh, ptr %i.aef, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr @_RNvXs6_NtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB5_10SyntaxKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.bg, ptr %i.aeg, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr @_RNvXs0_NtCs9GitHPCrz2Q_5rowan11syntax_textNtB5_10SyntaxTextNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.452.0..sroa_idx, align 8
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store ptr %i.bf, ptr %i.aeh, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 56
end_hunk_1
