Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.01?download=true
inline.NumInlined: 3404
inline.NumDeleted: 1092
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs9_0B7_:bb.a
_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i101.i.i: ; preds = %bb.ky
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.yp) #24
          to label %.body108.i.i unwind label %bb.la

bb.kz:                                            ; preds = %bb.kx, %bb.kw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yp) ]
  %i.za = getelementptr inbounds nuw i8, ptr %i.yp, i64 48 ; 2 uses
  %i.zb = load i32, ptr %i.za, align 4, !noundef !5
  %i.zc = add i32 %i.zb, -1                       ; 2 uses
  store i32 %i.zc, ptr %i.za, align 4
  %i.zd = icmp eq i32 %i.zc, 0
  br i1 %i.zd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i12.i106.i.i, label %bb.lb

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i12.i106.i.i: ; preds = %bb.kz
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.yp) #24
          to label %bb.lb unwind label %bb.ks

bb.la:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i101.i.i
  %i.ze = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.lb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i12.i106.i.i, %bb.kz, %.noexc.i102.i.i, %bb.ku
  %.sroa.4.0.i104.i.i = phi ptr [ %i.yp, %.noexc.i102.i.i ], [ undef, %bb.ku ], [ undef, %bb.kz ], [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i12.i106.i.i ] ; 2 uses
  %.sroa.03.0.i105.i.i = phi i64 [ %i.yo, %.noexc.i102.i.i ], [ -1, %bb.ku ], [ -1, %bb.kz ], [ -1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i12.i106.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vm) ]
  %i.zf = getelementptr inbounds nuw i8, ptr %i.vm, i64 48 ; 2 uses
  %i.zg = load i32, ptr %i.zf, align 4, !noundef !5
  %i.zh = add i32 %i.zg, -1                       ; 2 uses
  store i32 %i.zh, ptr %i.zf, align 4
  %i.zi = icmp eq i32 %i.zh, 0
  br i1 %i.zi, label %bb.lc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8ExprStmtECsf8NQSppxkmK_14ide_completion.exit87.i.i

bb.lc:                                            ; preds = %bb.lb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.vm) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8ExprStmtECsf8NQSppxkmK_14ide_completion.exit87.i.i unwind label %bb.jm

bb.ld:                                            ; preds = %bb.kr
  %i.zj = add nuw i32 %i.yh, 1
  store i32 %i.zj, ptr %i.vt, align 4
  %i.zk = invoke fastcc { i64, ptr } @_RNvXsmZ_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ExprNtBa_7AstNode4cast(ptr noundef nonnull %i.vm)
          to label %bb.le unwind label %bb.jm     ; 2 uses

bb.le:                                            ; preds = %bb.ld
  %i.zl = extractvalue { i64, ptr } %i.zk, 0      ; 2 uses
  %.not31.i.i = icmp eq i64 %i.zl, -1
  %i.zm = extractvalue { i64, ptr } %i.zk, 1
  %spec.select.i.i = select i1 %.not31.i.i, ptr undef, ptr %i.zm
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8ExprStmtECsf8NQSppxkmK_14ide_completion.exit87.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit89.i.i: ; preds = %bb.kh, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8ExprStmtECsf8NQSppxkmK_14ide_completion.exit87.i.i
  %i.zn = trunc nuw i8 %.sroa.020.2.i.i to i1
  br i1 %i.zn, label %bb.lf, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs3_0B7_.exit.i

bb.lf:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit89.i.i
  %i.zo = load i32, ptr %i.de, align 8, !noundef !5
  %i.zp = add i32 %i.zo, -1                       ; 2 uses
  store i32 %i.zp, ptr %i.de, align 8
  %i.zq = icmp eq i32 %i.zp, 0
  br i1 %i.zq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs3_0B7_.exit.i

.thread.i.i:                                      ; preds = %bb.jd, %bb.jc, %bb.iv, %bb.iu, %.body.i.i
  %.pn3310.i.i = phi { ptr, i32 } [ %.pn33.i.i, %.body.i.i ], [ %i.vh, %bb.jc ], [ %i.vh, %bb.jd ], [ %i.uw, %bb.iu ], [ %i.uw, %bb.iv ] ; 2 uses
  %i.zr = load i32, ptr %i.de, align 8, !noundef !5
  %i.zs = add i32 %i.zr, -1                       ; 2 uses
  store i32 %i.zs, ptr %i.de, align 8
  %i.zt = icmp eq i32 %i.zs, 0
  br i1 %i.zt, label %bb.lg, label %.body268

bb.lg:                                            ; preds = %.thread.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #24
          to label %.body268 unwind label %bb.ki

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs3_0B7_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i, %bb.lf, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit89.i.i
  %.sroa.9.1.i.i = phi ptr [ %.sroa.9.2.i.i, %bb.lf ], [ %.sroa.9.2.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit89.i.i ], [ %.sroa.9.1.ph.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i ] ; 6 uses
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.2.i.i, %bb.lf ], [ %.sroa.0.2.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit89.i.i ], [ %.sroa.0.1.ph.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i ]
  %.not.i261 = icmp eq i64 %.sroa.0.1.i.i, -1
  br i1 %.not.i261, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtEECsf8NQSppxkmK_14ide_completion.exit, label %bb.lh

bb.lh:                                            ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs3_0B7_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.1.i.i) ]
  %i.zu = getelementptr i8, ptr %.sroa.9.1.i.i, i64 16
  %.val.i.i = load ptr, ptr %i.zu, align 8, !noundef !5 ; 9 uses
  %.not.i.i7.i = icmp eq ptr %.val.i.i, null      ; 2 uses
  br i1 %.not.i.i7.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.i.i, label %bb.lj

bb.li:                                            ; preds = %bb.ll
  %i.zv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i.i, i64 48 ; 2 uses
  %i.zx = load i32, ptr %i.zw, align 8, !noundef !5
  %i.zy = add i32 %i.zx, -1                       ; 2 uses
  store i32 %i.zy, ptr %i.zw, align 8
  %i.zz = icmp eq i32 %i.zy, 0
  br i1 %i.zz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i, label %.body268

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i: ; preds = %bb.li
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.9.1.i.i) #24
          to label %.body268 unwind label %bb.lm

bb.lj:                                            ; preds = %bb.lh
  %i.aaa = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48 ; 2 uses
  %i.aab = load i32, ptr %i.aaa, align 4, !noundef !5 ; 2 uses
  %i.aac = icmp eq i32 %i.aab, -1
  br i1 %i.aac, label %bb.ll, label %bb.lk, !prof !12

bb.lk:                                            ; preds = %bb.lj
  %i.aad = add nuw i32 %i.aab, 1
  store i32 %i.aad, ptr %i.aaa, align 4
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.i.i

bb.ll:                                            ; preds = %bb.lj
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc8.i.i unwind label %bb.li

.noexc8.i.i:                                      ; preds = %bb.ll
  unreachable

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.i.i: ; preds = %bb.lk, %bb.lh
  %i.aae = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i.i, i64 48 ; 2 uses
  %i.aaf = load i32, ptr %i.aae, align 8, !noundef !5
  %i.aag = add i32 %i.aaf, -1                     ; 2 uses
  store i32 %i.aag, ptr %i.aae, align 8
  %i.aah = icmp eq i32 %i.aag, 0
  br i1 %i.aah, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i9.i.i, label %_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs4_00B9_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i9.i.i: ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.9.1.i.i) #24
          to label %_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs4_00B9_.exit.i unwind label %bb.in

bb.lm:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i
  %i.aai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs4_00B9_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i9.i.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.i.i
  br i1 %.not.i.i7.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtEECsf8NQSppxkmK_14ide_completion.exit, label %bb.ln

bb.ln:                                            ; preds = %_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs4_00B9_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %.val.i.i, ptr %i.k, align 8
  %i.aaj = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %bb.lq unwind label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.aak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48 ; 2 uses
  %i.aam = load i32, ptr %i.aal, align 4, !noundef !5
  %i.aan = add i32 %i.aam, -1                     ; 2 uses
  store i32 %i.aan, ptr %i.aal, align 4
  %i.aao = icmp eq i32 %i.aan, 0
  br i1 %i.aao, label %bb.lp, label %.body268

bb.lp:                                            ; preds = %bb.lo
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i) #24
          to label %.body268 unwind label %bb.lt

bb.lq:                                            ; preds = %bb.ln
  %i.aap = icmp eq i16 %i.aaj, 226
  br i1 %i.aap, label %bb.lu, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.aaq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48 ; 2 uses
  %i.aar = load i32, ptr %i.aaq, align 4, !noundef !5
  %i.aas = add i32 %i.aar, -1                     ; 2 uses
  store i32 %i.aas, ptr %i.aaq, align 4
  %i.aat = icmp eq i32 %i.aas, 0
  br i1 %i.aat, label %bb.ls, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs4_0B7_.exit.thread431

bb.ls:                                            ; preds = %bb.lr
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i) #24
          to label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs4_0B7_.exit.thread431 unwind label %bb.in

bb.lt:                                            ; preds = %bb.lp
  %i.aau = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs4_0B7_.exit.thread431: ; preds = %bb.lr, %bb.ls
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtEECsf8NQSppxkmK_14ide_completion.exit

bb.lu:                                            ; preds = %bb.lq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.aav = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48 ; 2 uses
  %i.aaw = load i32, ptr %i.aav, align 4, !noundef !5
  %i.aax = add i32 %i.aaw, -1                     ; 2 uses
  store i32 %i.aax, ptr %i.aav, align 4
  %i.aay = icmp eq i32 %i.aax, 0
  br i1 %i.aay, label %bb.lv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtEECsf8NQSppxkmK_14ide_completion.exit

bb.lv:                                            ; preds = %bb.lu
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtEECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.in

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.jk, %bb.jh, %_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs4_00B9_.exit.i, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs3_0B7_.exit.i, %bb.lu, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs4_0B7_.exit.thread431, %bb.lv
  %i.aaz = phi i1 [ false, %bb.lv ], [ true, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs4_0B7_.exit.thread431 ], [ false, %bb.lu ], [ true, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs3_0B7_.exit.i ], [ true, %_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs4_00B9_.exit.i ], [ true, %bb.jh ], [ true, %bb.jk ]
  %4 = phi i8 [ 1, %bb.lv ], [ 0, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs4_0B7_.exit.thread431 ], [ 1, %bb.lu ], [ 0, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs3_0B7_.exit.i ], [ 0, %_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs4_00B9_.exit.i ], [ 0, %bb.jh ], [ 0, %bb.jk ]
  %.val136 = load ptr, ptr %i.rm, align 8, !noundef !5 ; 8 uses
  %.not.i273 = icmp eq ptr %.val136, null
  br i1 %.not.i273, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs5_0B7_.exit.thread, label %bb.lw

bb.lw:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtEECsf8NQSppxkmK_14ide_completion.exit
  %i.aba = getelementptr inbounds nuw i8, ptr %.val136, i64 48 ; 10 uses
  %i.abb = load i32, ptr %i.aba, align 4, !noundef !5 ; 2 uses
  %i.abc = icmp eq i32 %i.abb, -1
  br i1 %i.abc, label %.invoke847, label %bb.lx, !prof !12

bb.lx:                                            ; preds = %bb.lw
  %i.abd = add nuw i32 %i.abb, 1
  store i32 %i.abd, ptr %i.aba, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %.val136, ptr %i.j, align 8
  %i.abe = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.ma unwind label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.abf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abg = load i32, ptr %i.aba, align 4, !noundef !5
  %i.abh = add i32 %i.abg, -1                     ; 2 uses
  store i32 %i.abh, ptr %i.aba, align 4
  %i.abi = icmp eq i32 %i.abh, 0
  br i1 %i.abi, label %bb.lz, label %.body268

bb.lz:                                            ; preds = %bb.ly
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val136) #24
          to label %.body268 unwind label %bb.md

bb.ma:                                            ; preds = %bb.lx
  %i.abj = icmp eq i16 %i.abe, 198
  br i1 %i.abj, label %bb.me, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.abk = load i32, ptr %i.aba, align 4, !noundef !5
  %i.abl = add i32 %i.abk, -1                     ; 2 uses
  store i32 %i.abl, ptr %i.aba, align 4
  %i.abm = icmp eq i32 %i.abl, 0
  br i1 %i.abm, label %bb.mc, label %.thread433

bb.mc:                                            ; preds = %bb.mb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val136) #24
          to label %.thread433 unwind label %bb.in

bb.md:                                            ; preds = %bb.lz
  %i.abn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

.thread433:                                       ; preds = %bb.mb, %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs9_0s9_0B9_.exit

bb.me:                                            ; preds = %bb.ma
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.abo = invoke fastcc noundef ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token(ptr nonnull %.val136, i16 noundef 3)
          to label %bb.mh unwind label %bb.mf     ; 3 uses

bb.mf:                                            ; preds = %bb.mj, %bb.me
  %i.abp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abq = load i32, ptr %i.aba, align 4, !noundef !5
  %i.abr = add i32 %i.abq, -1                     ; 2 uses
  store i32 %i.abr, ptr %i.aba, align 4
  %i.abs = icmp eq i32 %i.abr, 0
  br i1 %i.abs, label %bb.mg, label %.body268

bb.mg:                                            ; preds = %bb.mf
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val136) #24
          to label %.body268 unwind label %bb.ml

bb.mh:                                            ; preds = %bb.me
  %i.abt = icmp ne ptr %i.abo, null               ; 3 uses
  br i1 %i.abt, label %bb.mi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsf8NQSppxkmK_14ide_completion.exit.i280

bb.mi:                                            ; preds = %bb.mh
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abo, i64 48 ; 2 uses
  %i.abv = load i32, ptr %i.abu, align 4, !noundef !5
  %i.abw = add i32 %i.abv, -1                     ; 2 uses
  store i32 %i.abw, ptr %i.abu, align 4
  %i.abx = icmp eq i32 %i.abw, 0
  br i1 %i.abx, label %bb.mj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsf8NQSppxkmK_14ide_completion.exit.i280

bb.mj:                                            ; preds = %bb.mi
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.abo) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsf8NQSppxkmK_14ide_completion.exit.i280 unwind label %bb.mf

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsf8NQSppxkmK_14ide_completion.exit.i280: ; preds = %bb.mj, %bb.mi, %bb.mh
  %i.aby = load i32, ptr %i.aba, align 4, !noundef !5
  %i.abz = add i32 %i.aby, -1                     ; 2 uses
  store i32 %i.abz, ptr %i.aba, align 4
  %i.aca = icmp eq i32 %i.abz, 0
  br i1 %i.aca, label %bb.mk, label %_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs9_0s9_0B9_.exit

bb.mk:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsf8NQSppxkmK_14ide_completion.exit.i280
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val136) #24
          to label %_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs9_0s9_0B9_.exit unwind label %bb.in

bb.ml:                                            ; preds = %bb.mg
  %i.acb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs9_0s9_0B9_.exit: ; preds = %bb.mk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsf8NQSppxkmK_14ide_completion.exit.i280, %.thread433
  %.sroa.049.0.ph = phi i1 [ false, %.thread433 ], [ %i.abt, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsf8NQSppxkmK_14ide_completion.exit.i280 ], [ %i.abt, %bb.mk ] ; 3 uses
  %.val.i.pr = load ptr, ptr %i.rm, align 8       ; 11 uses
  %.not.i.i284 = icmp eq ptr %.val.i.pr, null
  br i1 %.not.i.i284, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs5_0B7_.exit.thread, label %bb.mm

bb.mm:                                            ; preds = %_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs9_0s9_0B9_.exit
  %i.acc = getelementptr inbounds nuw i8, ptr %.val.i.pr, i64 48 ; 16 uses
  %i.acd = load i32, ptr %i.acc, align 4, !noundef !5 ; 2 uses
  %i.ace = icmp eq i32 %i.acd, -1
  br i1 %i.ace, label %.invoke847, label %bb.mn, !prof !12

bb.mn:                                            ; preds = %bb.mm
  %i.acf = add nuw i32 %i.acd, 1
  store i32 %i.acf, ptr %i.acc, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %.val.i.pr, ptr %i.i, align 8
  %i.acg = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.mq unwind label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.ach = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aci = load i32, ptr %i.acc, align 4, !noundef !5
  %i.acj = add i32 %i.aci, -1                     ; 2 uses
  store i32 %i.acj, ptr %i.acc, align 4
  %i.ack = icmp eq i32 %i.acj, 0
  br i1 %i.ack, label %bb.mp, label %.body268

bb.mp:                                            ; preds = %bb.mo
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.pr) #24
          to label %.body268 unwind label %bb.mt

bb.mq:                                            ; preds = %bb.mn
  %i.acl = icmp eq i16 %i.acg, 198
  br i1 %i.acl, label %bb.mu, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.acm = load i32, ptr %i.acc, align 4, !noundef !5
  %i.acn = add i32 %i.acm, -1                     ; 2 uses
  store i32 %i.acn, ptr %i.acc, align 4
  %i.aco = icmp eq i32 %i.acn, 0
  br i1 %i.aco, label %bb.ms, label %.thread4.i

bb.ms:                                            ; preds = %bb.mr
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.pr) #24
          to label %.thread4.i unwind label %bb.in

bb.mt:                                            ; preds = %bb.mp
  %i.acp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

.thread4.i:                                       ; preds = %bb.ms, %bb.mr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs5_0B7_.exit

bb.mu:                                            ; preds = %bb.mq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.acq = invoke fastcc noundef ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token(ptr nonnull %.val.i.pr, i16 noundef 3) #28
          to label %.noexc.i.i288 unwind label %bb.mx ; 3 uses

.noexc.i.i288:                                    ; preds = %bb.mu
  %.not.i.i.i289 = icmp eq ptr %i.acq, null
  br i1 %.not.i.i.i289, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8ExprStmtE6filterNCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs5_00EB1W_.exit.i, label %bb.mv

bb.mv:                                            ; preds = %.noexc.i.i288
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 48 ; 2 uses
  %i.acs = load i32, ptr %i.acr, align 4, !noundef !5
  %i.act = add i32 %i.acs, -1                     ; 2 uses
  store i32 %i.act, ptr %i.acr, align 4
  %i.acu = icmp eq i32 %i.act, 0
  br i1 %i.acu, label %bb.mw, label %bb.mz

bb.mw:                                            ; preds = %bb.mv
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.acq) #24
          to label %bb.mz unwind label %bb.mx

bb.mx:                                            ; preds = %bb.mw, %bb.mu
  %i.acv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acw = load i32, ptr %i.acc, align 4, !noundef !5
  %i.acx = add i32 %i.acw, -1                     ; 2 uses
  store i32 %i.acx, ptr %i.acc, align 4
  %i.acy = icmp eq i32 %i.acx, 0
  br i1 %i.acy, label %bb.my, label %.body268

bb.my:                                            ; preds = %bb.mx
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.pr) #24
          to label %.body268 unwind label %bb.nb

bb.mz:                                            ; preds = %bb.mw, %bb.mv
end_hunk_0
begin_hunk_1_@_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs9_0B7_:bb.a
  %i.afh = icmp eq i32 %i.afg, -1
  br i1 %i.afh, label %.invoke847, label %bb.of, !prof !12

bb.of:                                            ; preds = %bb.oe
  %i.afi = add nuw i32 %i.afg, 1
  store i32 %i.afi, ptr %i.aff, align 4
  br label %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10take_while9TakeWhileIB10_INtNtNtBa_7sources10successors10SuccessorsNtNtB1I_6cursor10SyntaxNodeNvMs4_B7g_B7e_6parentENvYB1D_INtNtBc_7convert4FromB7e_E4fromENCNCB3c_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtB2m_3ast9generated5nodes7LetStmtENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB8Q_NCINvNvBat_8find_map5checkB1D_B9v_NvYB9v_NtB9B_7AstNode4castE0E0E0B8Q_EB3i_.exit.i

.invoke847:                                       ; preds = %bb.oe, %bb.mm, %bb.lw, %bb.io
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.cont848 unwind label %bb.in

.cont848:                                         ; preds = %.invoke847
  unreachable

_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10take_while9TakeWhileIB10_INtNtNtBa_7sources10successors10SuccessorsNtNtB1I_6cursor10SyntaxNodeNvMs4_B7g_B7e_6parentENvYB1D_INtNtBc_7convert4FromB7e_E4fromENCNCB3c_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtB2m_3ast9generated5nodes7LetStmtENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB8Q_NCINvNvBat_8find_map5checkB1D_B9v_NvYB9v_NtB9B_7AstNode4castE0E0E0B8Q_EB3i_.exit.i: ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs5_0B7_.exit.thread, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs5_0B7_.exit, %bb.of
  %.sroa.0.0.i287447 = phi i1 [ false, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs5_0B7_.exit.thread ], [ %.sroa.0.0.i287.ph, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs5_0B7_.exit ], [ %.sroa.0.0.i287.ph, %bb.of ] ; 2 uses
  %.sroa.049.0440446 = phi i1 [ %.sroa.049.0440.ph, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs5_0B7_.exit.thread ], [ %.sroa.049.0.ph, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs5_0B7_.exit ], [ %.sroa.049.0.ph, %bb.of ]
  %.val135445 = phi ptr [ null, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs5_0B7_.exit.thread ], [ null, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs5_0B7_.exit ], [ %.val135.pr, %bb.of ]
  store i64 1, ptr %i.aw, align 8, !alias.scope !543
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store ptr %.val135445, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !543
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 28 ; 4 uses
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 44 ; 6 uses
  store i8 2, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !543
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  store i8 2, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !544
  %i.afk = invoke noundef ptr @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB4W_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10take_while9TakeWhileIBO_INtNtNtBa_7sources10successors10SuccessorsNtNtB1q_6cursor10SyntaxNodeNvMs4_B7b_B79_6parentENvYB1l_INtNtBc_7convert4FromB79_E4fromENCNCB2U_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtB24_3ast9generated5nodes7LetStmtENCINvNvXsi_B4W_B59_B43_8try_fold7flattenB5V_uB8L_NCINvNvB43_8find_map5checkB1l_B9q_NvYB9q_NtB9w_7AstNode4castE0E0E0B8L_EB30_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.4.0..sroa_idx.i, ptr noalias nofree noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.afj)
          to label %.noexc308 unwind label %bb.on ; 2 uses

.noexc308:                                        ; preds = %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10take_while9TakeWhileIB10_INtNtNtBa_7sources10successors10SuccessorsNtNtB1I_6cursor10SyntaxNodeNvMs4_B7g_B7e_6parentENvYB1D_INtNtBc_7convert4FromB7e_E4fromENCNCB3c_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtB2m_3ast9generated5nodes7LetStmtENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB8Q_NCINvNvBat_8find_map5checkB1D_B9v_NvYB9v_NtB9B_7AstNode4castE0E0E0B8Q_EB3i_.exit.i
  %.not26.i = icmp eq ptr %i.afk, null
  br i1 %.not26.i, label %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10take_while9TakeWhileIB10_INtNtNtBa_7sources10successors10SuccessorsNtNtB1I_6cursor10SyntaxNodeNvMs4_B7g_B7e_6parentENvYB1D_INtNtBc_7convert4FromB7e_E4fromENCNCB3c_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtB2m_3ast9generated5nodes7LetStmtENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB8Q_NCINvNvBat_8find_map5checkB1D_B9v_NvYB9v_NtB9B_7AstNode4castE0E0E0B8Q_EB3i_.exit.thread.i, label %bb.oo

_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10take_while9TakeWhileIB10_INtNtNtBa_7sources10successors10SuccessorsNtNtB1I_6cursor10SyntaxNodeNvMs4_B7g_B7e_6parentENvYB1D_INtNtBc_7convert4FromB7e_E4fromENCNCB3c_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtB2m_3ast9generated5nodes7LetStmtENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB8Q_NCINvNvBat_8find_map5checkB1D_B9v_NvYB9v_NtB9B_7AstNode4castE0E0E0B8Q_EB3i_.exit.thread.i: ; preds = %.noexc308
  %.val32.pre.i = load i8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 4, !range !11, !alias.scope !544
  %i.afl = icmp eq i8 %.val32.pre.i, 2
  %.val31.i = load ptr, ptr %i.afj, align 8, !alias.scope !544 ; 3 uses
  %i.afm = icmp eq ptr %.val31.i, null
  %or.cond.i35.i = select i1 %i.afl, i1 true, i1 %i.afm
  br i1 %or.cond.i35.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtB12_3map3MapINtNtNtB14_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2J_B2H_6parentENvYINtNtB2L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2H_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00EEEB5J_.exit37.i, label %bb.og

bb.og:                                            ; preds = %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10take_while9TakeWhileIB10_INtNtNtBa_7sources10successors10SuccessorsNtNtB1I_6cursor10SyntaxNodeNvMs4_B7g_B7e_6parentENvYB1D_INtNtBc_7convert4FromB7e_E4fromENCNCB3c_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtB2m_3ast9generated5nodes7LetStmtENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB8Q_NCINvNvBat_8find_map5checkB1D_B9v_NvYB9v_NtB9B_7AstNode4castE0E0E0B8Q_EB3i_.exit.thread.i
  %i.afn = getelementptr inbounds nuw i8, ptr %.val31.i, i64 48 ; 2 uses
  %i.afo = load i32, ptr %i.afn, align 4, !noundef !5
  %i.afp = add i32 %i.afo, -1                     ; 2 uses
  store i32 %i.afp, ptr %i.afn, align 4
  %i.afq = icmp eq i32 %i.afp, 0
  br i1 %i.afq, label %bb.oh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtB12_3map3MapINtNtNtB14_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2J_B2H_6parentENvYINtNtB2L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2H_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00EEEB5J_.exit37.i

bb.oh:                                            ; preds = %bb.og
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val31.i) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtB12_3map3MapINtNtNtB14_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2J_B2H_6parentENvYINtNtB2L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2H_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00EEEB5J_.exit37.i unwind label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.afr = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !544
  br label %.body310

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtB12_3map3MapINtNtNtB14_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2J_B2H_6parentENvYINtNtB2L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2H_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00EEEB5J_.exit37.i: ; preds = %bb.oh, %bb.og, %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10take_while9TakeWhileIB10_INtNtNtBa_7sources10successors10SuccessorsNtNtB1I_6cursor10SyntaxNodeNvMs4_B7g_B7e_6parentENvYB1D_INtNtBc_7convert4FromB7e_E4fromENCNCB3c_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtB2m_3ast9generated5nodes7LetStmtENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB8Q_NCINvNvBat_8find_map5checkB1D_B9v_NvYB9v_NtB9B_7AstNode4castE0E0E0B8Q_EB3i_.exit.thread.i
  store i8 2, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !544
  %i.afs = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  %i.aft = load i8, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i, align 4, !range !11, !alias.scope !544, !noundef !5
  switch i8 %i.aft, label %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_10take_while9TakeWhileINtNtBc_3map3MapINtNtNtBe_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B3A_B3y_6parentENvYINtNtB3C_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBg_7convert4FromB3y_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00EuINtNtNtBg_3ops12control_flow11ControlFlowNtNtNtNtB57_3ast9generated5nodes7LetStmtENCINvNvB1j_8find_map5checkB4E_B8k_NvYB8k_NtB8q_7AstNode4castE0E0B6A_.exit40.thread.i [
    i8 2, label %.thread452
    i8 0, label %bb.oj
  ]

bb.oj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtB12_3map3MapINtNtNtB14_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2J_B2H_6parentENvYINtNtB2L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2H_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00EEEB5J_.exit37.i
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !545
  store ptr %i.afu, ptr %i.e, align 8, !noalias !545
  %i.afv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.a, ptr %i.afv, align 8, !noalias !545
  %i.afw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i, ptr %i.afw, align 8, !noalias !545
  %i.afx = invoke { i64, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1F_B1D_6parentENvYINtNtB1H_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBc_7convert4FromB1D_E4fromENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvXs0_NtB8_10take_whileINtB5o_9TakeWhileppEB4v_8try_fold5checkB2J_uINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtB3c_3ast9generated5nodes7LetStmtENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00QNCINvNvB4v_8find_map5checkB2J_B72_NvYB72_NtB78_7AstNode4castE0E0IB6o_B6n_EEB7R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.afs, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %.noexc309 unwind label %bb.on ; 2 uses

.noexc309:                                        ; preds = %bb.oj
  %i.afy = extractvalue { i64, ptr } %i.afx, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !545
  %i.afz = trunc nuw i64 %i.afy to i1
  %i.aga = extractvalue { i64, ptr } %i.afx, 1    ; 2 uses
  %.not28.i = icmp ne ptr %i.aga, null
  %or.cond53.not.i = select i1 %i.afz, i1 %.not28.i, i1 false
  br i1 %or.cond53.not.i, label %bb.oo, label %._RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_10take_while9TakeWhileINtNtBc_3map3MapINtNtNtBe_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B3A_B3y_6parentENvYINtNtB3C_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBg_7convert4FromB3y_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00EuINtNtNtBg_3ops12control_flow11ControlFlowNtNtNtNtB57_3ast9generated5nodes7LetStmtENCINvNvB1j_8find_map5checkB4E_B8k_NvYB8k_NtB8q_7AstNode4castE0E0B6A_.exit40.thread_crit_edge.i

._RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_10take_while9TakeWhileINtNtBc_3map3MapINtNtNtBe_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B3A_B3y_6parentENvYINtNtB3C_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBg_7convert4FromB3y_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00EuINtNtNtBg_3ops12control_flow11ControlFlowNtNtNtNtB57_3ast9generated5nodes7LetStmtENCINvNvB1j_8find_map5checkB4E_B8k_NvYB8k_NtB8q_7AstNode4castE0E0B6A_.exit40.thread_crit_edge.i: ; preds = %.noexc309
  %.val30.pre.i = load i8, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i, align 4, !range !11, !alias.scope !544
  %i.agb = icmp eq i8 %.val30.pre.i, 2
  br label %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_10take_while9TakeWhileINtNtBc_3map3MapINtNtNtBe_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B3A_B3y_6parentENvYINtNtB3C_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBg_7convert4FromB3y_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00EuINtNtNtBg_3ops12control_flow11ControlFlowNtNtNtNtB57_3ast9generated5nodes7LetStmtENCINvNvB1j_8find_map5checkB4E_B8k_NvYB8k_NtB8q_7AstNode4castE0E0B6A_.exit40.thread.i

_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_10take_while9TakeWhileINtNtBc_3map3MapINtNtNtBe_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B3A_B3y_6parentENvYINtNtB3C_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBg_7convert4FromB3y_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00EuINtNtNtBg_3ops12control_flow11ControlFlowNtNtNtNtB57_3ast9generated5nodes7LetStmtENCINvNvB1j_8find_map5checkB4E_B8k_NvYB8k_NtB8q_7AstNode4castE0E0B6A_.exit40.thread.i: ; preds = %._RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_10take_while9TakeWhileINtNtBc_3map3MapINtNtNtBe_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B3A_B3y_6parentENvYINtNtB3C_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBg_7convert4FromB3y_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00EuINtNtNtBg_3ops12control_flow11ControlFlowNtNtNtNtB57_3ast9generated5nodes7LetStmtENCINvNvB1j_8find_map5checkB4E_B8k_NvYB8k_NtB8q_7AstNode4castE0E0B6A_.exit40.thread_crit_edge.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtB12_3map3MapINtNtNtB14_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2J_B2H_6parentENvYINtNtB2L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2H_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00EEEB5J_.exit37.i
  %.val30.i = phi i1 [ %i.agb, %._RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_10take_while9TakeWhileINtNtBc_3map3MapINtNtNtBe_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B3A_B3y_6parentENvYINtNtB3C_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBg_7convert4FromB3y_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00EuINtNtNtBg_3ops12control_flow11ControlFlowNtNtNtNtB57_3ast9generated5nodes7LetStmtENCINvNvB1j_8find_map5checkB4E_B8k_NvYB8k_NtB8q_7AstNode4castE0E0B6A_.exit40.thread_crit_edge.i ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtB12_3map3MapINtNtNtB14_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2J_B2H_6parentENvYINtNtB2L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2H_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00EEEB5J_.exit37.i ]
  %.val.i304 = load ptr, ptr %i.afs, align 8, !alias.scope !544 ; 3 uses
  %i.agc = icmp eq ptr %.val.i304, null
  %or.cond.i41.i = select i1 %.val30.i, i1 true, i1 %i.agc
  br i1 %or.cond.i41.i, label %.thread452, label %bb.ok

bb.ok:                                            ; preds = %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_10take_while9TakeWhileINtNtBc_3map3MapINtNtNtBe_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B3A_B3y_6parentENvYINtNtB3C_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBg_7convert4FromB3y_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00EuINtNtNtBg_3ops12control_flow11ControlFlowNtNtNtNtB57_3ast9generated5nodes7LetStmtENCINvNvB1j_8find_map5checkB4E_B8k_NvYB8k_NtB8q_7AstNode4castE0E0B6A_.exit40.thread.i
  %i.agd = getelementptr inbounds nuw i8, ptr %.val.i304, i64 48 ; 2 uses
  %i.age = load i32, ptr %i.agd, align 4, !noundef !5
  %i.agf = add i32 %i.age, -1                     ; 2 uses
  store i32 %i.agf, ptr %i.agd, align 4
  %i.agg = icmp eq i32 %i.agf, 0
  br i1 %i.agg, label %bb.ol, label %.thread452

bb.ol:                                            ; preds = %bb.ok
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i304) #24
          to label %.thread452 unwind label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.agh = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !544
  br label %.body310

bb.on:                                            ; preds = %bb.ou, %bb.oj, %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10take_while9TakeWhileIB10_INtNtNtBa_7sources10successors10SuccessorsNtNtB1I_6cursor10SyntaxNodeNvMs4_B7g_B7e_6parentENvYB1D_INtNtBc_7convert4FromB7e_E4fromENCNCB3c_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtB2m_3ast9generated5nodes7LetStmtENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB8Q_NCINvNvBat_8find_map5checkB1D_B9v_NvYB9v_NtB9B_7AstNode4castE0E0E0B8Q_EB3i_.exit.i
  %i.agi = landingpad { ptr, i32 }
          cleanup
  br label %.body310

.body310:                                         ; preds = %bb.op, %bb.oq, %bb.on, %bb.oi, %bb.om
  %eh.lpad-body311 = phi { ptr, i32 } [ %i.afr, %bb.oi ], [ %i.agh, %bb.om ], [ %i.agi, %bb.on ], [ %i.agk, %bb.oq ], [ %i.agk, %bb.op ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtBG_10take_while9TakeWhileINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtB1K_6cursor10SyntaxNodeNvMs4_B4E_B4C_6parentENvYB1F_INtNtB4_7convert4FromB4C_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00ENCB66_0EEB6c_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aw) #26
          to label %.body268 unwind label %bb.qr

.thread452:                                       ; preds = %bb.ol, %bb.ok, %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_10take_while9TakeWhileINtNtBc_3map3MapINtNtNtBe_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B3A_B3y_6parentENvYINtNtB3C_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBg_7convert4FromB3y_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00EuINtNtNtBg_3ops12control_flow11ControlFlowNtNtNtNtB57_3ast9generated5nodes7LetStmtENCINvNvB1j_8find_map5checkB4E_B8k_NvYB8k_NtB8q_7AstNode4castE0E0B6A_.exit40.thread.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10take_while9TakeWhileINtNtB12_3map3MapINtNtNtB14_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B2J_B2H_6parentENvYINtNtB2L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB2H_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00EEEB5J_.exit37.i
  store i8 2, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !544
  br label %bb.ow

bb.oo:                                            ; preds = %.noexc308, %.noexc309
  %.sroa.0.0.i305.ph = phi ptr [ %i.afk, %.noexc308 ], [ %i.aga, %.noexc309 ] ; 5 uses
  %i.agj = invoke fastcc noundef ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token(ptr nonnull %.sroa.0.0.i305.ph, i16 noundef 3)
          to label %bb.or unwind label %bb.op     ; 3 uses

bb.op:                                            ; preds = %bb.ot, %bb.oo
  %i.agk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i305.ph, i64 48 ; 2 uses
  %i.agm = load i32, ptr %i.agl, align 4, !noundef !5
  %i.agn = add i32 %i.agm, -1                     ; 2 uses
  store i32 %i.agn, ptr %i.agl, align 4
  %i.ago = icmp eq i32 %i.agn, 0
  br i1 %i.ago, label %bb.oq, label %.body310

bb.oq:                                            ; preds = %bb.op
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i305.ph) #24
          to label %.body310 unwind label %bb.ov

bb.or:                                            ; preds = %bb.oo
  %i.agp = icmp eq ptr %i.agj, null               ; 2 uses
  br i1 %i.agp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsf8NQSppxkmK_14ide_completion.exit.i313, label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agj, i64 48 ; 2 uses
  %i.agr = load i32, ptr %i.agq, align 4, !noundef !5
  %i.ags = add i32 %i.agr, -1                     ; 2 uses
  store i32 %i.ags, ptr %i.agq, align 4
  %i.agt = icmp eq i32 %i.ags, 0
  br i1 %i.agt, label %bb.ot, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsf8NQSppxkmK_14ide_completion.exit.i313

bb.ot:                                            ; preds = %bb.os
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.agj) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsf8NQSppxkmK_14ide_completion.exit.i313 unwind label %bb.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsf8NQSppxkmK_14ide_completion.exit.i313: ; preds = %bb.ot, %bb.os, %bb.or
  %i.agu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i305.ph, i64 48 ; 2 uses
  %i.agv = load i32, ptr %i.agu, align 4, !noundef !5
  %i.agw = add i32 %i.agv, -1                     ; 2 uses
  store i32 %i.agw, ptr %i.agu, align 4
  %i.agx = icmp eq i32 %i.agw, 0
  br i1 %i.agx, label %bb.ou, label %_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs9_0sa_0B9_.exit

bb.ou:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsf8NQSppxkmK_14ide_completion.exit.i313
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i305.ph) #24
          to label %_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs9_0sa_0B9_.exit unwind label %bb.on

bb.ov:                                            ; preds = %bb.oq
  %i.agy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ow:                                            ; preds = %.thread452, %_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs9_0sa_0B9_.exit
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtBG_10take_while9TakeWhileINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtB1K_6cursor10SyntaxNodeNvMs4_B4E_B4C_6parentENvYB1F_INtNtB4_7convert4FromB4C_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00ENCB66_0EEB6c_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aw)
          to label %bb.oy unwind label %bb.in

_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs9_0sa_0B9_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsf8NQSppxkmK_14ide_completion.exit.i313, %bb.ou
  br i1 %i.agp, label %bb.ox, label %bb.ow

bb.ox:                                            ; preds = %_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_refs9_0sa_0B9_.exit
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtBG_10take_while9TakeWhileINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtB1K_6cursor10SyntaxNodeNvMs4_B4E_B4C_6parentENvYB1F_INtNtB4_7convert4FromB4C_E4fromENCNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis14left_ancestors00ENCB66_0EEB6c_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aw)
          to label %bb.pb unwind label %bb.in

bb.oy:                                            ; preds = %bb.ow
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %brmerge = or i1 %i.aaz, %.sroa.049.0440446
  br i1 %brmerge, label %bb.pa, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.agz = xor i1 %.sroa.0.0.i287447, true
  %i.aha = zext i1 %i.agz to i8
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oy, %bb.oz, %bb.pb
  %.sroa.054.0 = phi i8 [ 1, %bb.pb ], [ %i.aha, %bb.oz ], [ 0, %bb.oy ]
  %i.ahb = invoke noundef zeroext i1 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix11is_in_value(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bb)
          to label %bb.pc unwind label %bb.in

bb.pb:                                            ; preds = %bb.ox
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.pa

bb.pc:                                            ; preds = %bb.pa
  %i.ahc = invoke fastcc { i64, ptr } @_RNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis29fetch_immediate_impl_or_trait(ptr noundef nonnull align 8 %i.eo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.eq, ptr nonnull %3)
          to label %bb.pd unwind label %bb.in     ; 2 uses

bb.pd:                                            ; preds = %bb.pc
  %i.ahd = extractvalue { i64, ptr } %i.ahc, 0
  %i.ahe = extractvalue { i64, ptr } %i.ahc, 1    ; 4 uses
  switch i64 %i.ahd, label %bb.pg [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplNtB18_5TraitEECsf8NQSppxkmK_14ide_completion.exit
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplNtB18_5TraitEECsf8NQSppxkmK_14ide_completion.exit.fold.split
  ]

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplNtB18_5TraitEECsf8NQSppxkmK_14ide_completion.exit.fold.split: ; preds = %bb.pd
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplNtB18_5TraitEECsf8NQSppxkmK_14ide_completion.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplNtB18_5TraitEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.pd, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplNtB18_5TraitEECsf8NQSppxkmK_14ide_completion.exit.fold.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplECsf8NQSppxkmK_14ide_completion.exit.sink.split.i, %bb.pg
  %.sroa.0350.0 = phi ptr [ null, %bb.pd ], [ null, %bb.pg ], [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplECsf8NQSppxkmK_14ide_completion.exit.sink.split.i ], [ %i.ahe, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplNtB18_5TraitEECsf8NQSppxkmK_14ide_completion.exit.fold.split ] ; 4 uses
  %.val134 = load ptr, ptr %i.rm, align 8, !noundef !5 ; 8 uses
  %.not.i317 = icmp eq ptr %.val134, null
  br i1 %.not.i317, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8MatchArmECsf8NQSppxkmK_14ide_completion.exit340, label %bb.pe

bb.pe:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplNtB18_5TraitEECsf8NQSppxkmK_14ide_completion.exit
  %i.ahf = getelementptr inbounds nuw i8, ptr %.val134, i64 48 ; 10 uses
  %i.ahg = load i32, ptr %i.ahf, align 4, !noundef !5 ; 2 uses
  %i.ahh = icmp eq i32 %i.ahg, -1
  br i1 %i.ahh, label %bb.pf, label %bb.pk, !prof !12

bb.pf:                                            ; preds = %bb.pe
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc318 unwind label %bb.pj

.noexc318:                                        ; preds = %bb.pf
  unreachable

bb.pg:                                            ; preds = %bb.pd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ahe) ]
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahe, i64 48 ; 2 uses
  %i.ahj = load i32, ptr %i.ahi, align 4, !noundef !5
  %i.ahk = add i32 %i.ahj, -1                     ; 2 uses
  store i32 %i.ahk, ptr %i.ahi, align 4
  %i.ahl = icmp eq i32 %i.ahk, 0
  br i1 %i.ahl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplECsf8NQSppxkmK_14ide_completion.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplNtB18_5TraitEECsf8NQSppxkmK_14ide_completion.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplECsf8NQSppxkmK_14ide_completion.exit.sink.split.i: ; preds = %bb.pg
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ahe) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplNtB18_5TraitEECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.in

.body325:                                         ; preds = %.body336, %bb.pt, %bb.pl, %bb.pm, %bb.pj
  %.pn118 = phi { ptr, i32 } [ %i.ahu, %bb.pl ], [ %i.ahr, %bb.pj ], [ %i.ahu, %bb.pm ], [ %eh.lpad-body337, %bb.pt ], [ %eh.lpad-body337, %.body336 ] ; 3 uses
  %i.ahm = icmp eq ptr %.sroa.0350.0, null
  br i1 %i.ahm, label %.body268, label %bb.ph

bb.ph:                                            ; preds = %.body325
  %i.ahn = getelementptr inbounds nuw i8, ptr %.sroa.0350.0, i64 48 ; 2 uses
  %i.aho = load i32, ptr %i.ahn, align 4, !noundef !5
  %i.ahp = add i32 %i.aho, -1                     ; 2 uses
  store i32 %i.ahp, ptr %i.ahn, align 4
  %i.ahq = icmp eq i32 %i.ahp, 0
  br i1 %i.ahq, label %bb.pi, label %.body268

bb.pi:                                            ; preds = %bb.ph
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0350.0) #24
          to label %.body268 unwind label %bb.qr

bb.pj:                                            ; preds = %bb.qp, %bb.pp, %bb.pf
  %i.ahr = landingpad { ptr, i32 }
          cleanup
  br label %.body325

bb.pk:                                            ; preds = %bb.pe
  %i.ahs = add nuw i32 %i.ahg, 1
  store i32 %i.ahs, ptr %i.ahf, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.val134, ptr %i.d, align 8
  %i.aht = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.pn unwind label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.ahu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahv = load i32, ptr %i.ahf, align 4, !noundef !5
  %i.ahw = add i32 %i.ahv, -1                     ; 2 uses
  store i32 %i.ahw, ptr %i.ahf, align 4
  %i.ahx = icmp eq i32 %i.ahw, 0
  br i1 %i.ahx, label %bb.pm, label %.body325

bb.pm:                                            ; preds = %bb.pl
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val134) #24
          to label %.body325 unwind label %bb.pq

bb.pn:                                            ; preds = %bb.pk
  %i.ahy = icmp eq i16 %i.aht, 241
  br i1 %i.ahy, label %bb.pr, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.ahz = load i32, ptr %i.ahf, align 4, !noundef !5
  %i.aia = add i32 %i.ahz, -1                     ; 2 uses
  store i32 %i.aia, ptr %i.ahf, align 4
  %i.aib = icmp eq i32 %i.aia, 0
  br i1 %i.aib, label %bb.pp, label %.thread456

bb.pp:                                            ; preds = %bb.po
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val134) #24
          to label %.thread456 unwind label %bb.pj

bb.pq:                                            ; preds = %bb.pm
  %i.aic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

.thread456:                                       ; preds = %bb.po, %bb.pp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8MatchArmECsf8NQSppxkmK_14ide_completion.exit340

bb.pr:                                            ; preds = %bb.pn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aid = invoke fastcc noundef ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token(ptr nonnull %.val134, i16 noundef 33)
          to label %bb.pu unwind label %bb.ps     ; 10 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8MatchArmECsf8NQSppxkmK_14ide_completion.exit340: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplNtB18_5TraitEECsf8NQSppxkmK_14ide_completion.exit, %bb.qp, %bb.qo, %.thread456
  %.sroa.062.0 = phi i8 [ 0, %.thread456 ], [ %.sroa.062.1, %bb.qp ], [ %.sroa.062.1, %bb.qo ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplNtB18_5TraitEECsf8NQSppxkmK_14ide_completion.exit ]
  %i.aie = zext i1 %i.da to i8
  %i.aif = zext i1 %i.dk to i8
  %i.aig = zext i1 %.sroa.0.0.i287447 to i8
  %i.aih = zext i1 %i.uf to i8
  %i.aii = zext i1 %i.ahb to i8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.429, i64 44, i1 false)
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.570.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4, i64 12, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8367, i64 12, i1 false)
  store i64 %.sroa.016.0, ptr %0, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.2.0, ptr %.sroa.469.0..sroa_idx, align 8
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.034.0, ptr %.sroa.671.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.236.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.024.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.226.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %storemerge98, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.0.0.i249, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.sroa.0350.0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %i.aie, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 %i.aif, ptr %.sroa.16.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 130
  store i8 %i.aig, ptr %.sroa.17.0..sroa_idx, align 2
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 131
  store i8 %i.aih, ptr %.sroa.18.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 %.sroa.054.0, ptr %.sroa.19.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 133
  store i8 %4, ptr %.sroa.20.0..sroa_idx, align 1
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 134
  store i8 %i.aii, ptr %.sroa.21.0..sroa_idx, align 2
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 135
  store i8 %.sroa.06.0422, ptr %.sroa.22.0..sroa_idx, align 1
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 %.sroa.062.0, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 137
  store i8 %i.dc, ptr %.sroa.24.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.aij = load i32, ptr %i.de, align 8, !noundef !5
  %i.aik = add i32 %i.aij, -1                     ; 2 uses
  store i32 %i.aik, ptr %i.de, align 8
  %i.ail = icmp eq i32 %i.aik, 0
  br i1 %i.ail, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i327, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit328

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i327: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8MatchArmECsf8NQSppxkmK_14ide_completion.exit340
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #24
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit328

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit328: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8MatchArmECsf8NQSppxkmK_14ide_completion.exit340, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i327
  ret void

bb.ps:                                            ; preds = %bb.qm, %bb.pr
  %i.aim = landingpad { ptr, i32 }
          cleanup
  br label %.body336

.body336:                                         ; preds = %bb.qc, %bb.qd, %bb.ps
  %eh.lpad-body337 = phi { ptr, i32 } [ %i.aim, %bb.ps ], [ %i.ajh, %bb.qd ], [ %i.ajh, %bb.qc ] ; 2 uses
  %i.ain = load i32, ptr %i.ahf, align 4, !noundef !5
  %i.aio = add i32 %i.ain, -1                     ; 2 uses
  store i32 %i.aio, ptr %i.ahf, align 4
  %i.aip = icmp eq i32 %i.aio, 0
  br i1 %i.aip, label %bb.pt, label %.body325

bb.pt:                                            ; preds = %.body336
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val134) #24
          to label %.body325 unwind label %bb.qr

bb.pu:                                            ; preds = %bb.pr
  %.not117 = icmp eq ptr %i.aid, null
  br i1 %.not117, label %bb.qo, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.aiq = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.air = load i8, ptr %i.aiq, align 4, !range !19, !noundef !5
  %i.ais = trunc nuw i8 %i.air to i1
  br i1 %i.ais, label %bb.px, label %bb.pw, !prof !12

bb.pw:                                            ; preds = %bb.pv
  %i.ait = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aiu = load i32, ptr %i.ait, align 8, !noundef !5
  br label %.noexc.i331

bb.px:                                            ; preds = %bb.pv
  %i.aiv = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %3)
          to label %.noexc.i331 unwind label %bb.qc

.noexc.i331:                                      ; preds = %bb.px, %bb.pw
  %.sroa.0.0.i.i332 = phi i32 [ %i.aiu, %bb.pw ], [ %i.aiv, %bb.px ] ; 2 uses
  %i.aiw = load i64, ptr %3, align 8, !range !10, !noundef !5
  %i.aix = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aiy = trunc nuw i64 %i.aiw to i1
  %i.aiz = load ptr, ptr %i.aix, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.aiy, label %bb.py, label %bb.qa

bb.py:                                            ; preds = %.noexc.i331
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 8
  %i.ajb = load i64, ptr %i.aja, align 8, !noundef !5 ; 2 uses
  %i.ajc = icmp ugt i64 %i.ajb, 4294967295
  %i.ajd = shl nuw i64 %i.ajb, 32
  %.sroa.09.0.insert.insert.i.i.i = select i1 %i.ajc, i64 513, i64 %i.ajd ; 2 uses
  %i.aje = trunc i64 %.sroa.09.0.insert.insert.i.i.i to i1
  br i1 %i.aje, label %bb.pz, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i, !prof !12

bb.pz:                                            ; preds = %bb.py
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %.invoke1.i

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i: ; preds = %bb.py
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i to i32
  br label %bb.qb

bb.qa:                                            ; preds = %.noexc.i331
  %i.ajf = load i32, ptr %i.aiz, align 8, !noundef !5
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i
  %.sroa.02.0.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i ], [ %i.ajf, %bb.qa ]
  %i.ajg = xor i32 %.sroa.0.0.i.i332, -1
  %.not.i.i333 = icmp ugt i32 %.sroa.02.0.i.i, %i.ajg
  br i1 %.not.i.i333, label %.invoke.i, label %bb.qe, !prof !12

bb.qc:                                            ; preds = %.invoke.i, %.invoke1.i, %bb.qg, %bb.px
  %i.ajh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aid, i64 48 ; 2 uses
  %i.ajj = load i32, ptr %i.aji, align 4, !noundef !5
  %i.ajk = add i32 %i.ajj, -1                     ; 2 uses
  store i32 %i.ajk, ptr %i.aji, align 4
  %i.ajl = icmp eq i32 %i.ajk, 0
  br i1 %i.ajl, label %bb.qd, label %.body336

bb.qd:                                            ; preds = %bb.qc
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aid) #24
          to label %.body336 unwind label %bb.qn

bb.qe:                                            ; preds = %bb.qb
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aid, i64 60
  %i.ajn = load i8, ptr %i.ajm, align 4, !range !19, !noundef !5
  %i.ajo = trunc nuw i8 %i.ajn to i1
  br i1 %i.ajo, label %bb.qg, label %bb.qf, !prof !12

bb.qf:                                            ; preds = %bb.qe
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.aid, i64 56
  %i.ajq = load i32, ptr %i.ajp, align 8, !noundef !5
  br label %.noexc12.i

bb.qg:                                            ; preds = %bb.qe
  %i.ajr = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.aid)
          to label %.noexc12.i unwind label %bb.qc

.noexc12.i:                                       ; preds = %bb.qg, %bb.qf
  %.sroa.0.0.i5.i = phi i32 [ %i.ajq, %bb.qf ], [ %i.ajr, %bb.qg ] ; 2 uses
  %i.ajs = load i64, ptr %i.aid, align 8, !range !10, !noundef !5
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.aid, i64 8
  %i.aju = trunc nuw i64 %i.ajs to i1
  %i.ajv = load ptr, ptr %i.ajt, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.aju, label %bb.qh, label %bb.qj

bb.qh:                                            ; preds = %.noexc12.i
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 8
  %i.ajx = load i64, ptr %i.ajw, align 8, !noundef !5 ; 2 uses
  %i.ajy = icmp ugt i64 %i.ajx, 4294967295
  %i.ajz = shl nuw i64 %i.ajx, 32
  %.sroa.09.0.insert.insert.i.i8.i = select i1 %i.ajy, i64 513, i64 %i.ajz ; 2 uses
  %i.aka = trunc i64 %.sroa.09.0.insert.insert.i.i8.i to i1
  br i1 %i.aka, label %bb.qi, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i9.i, !prof !12

bb.qi:                                            ; preds = %bb.qh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %.invoke1.i

.invoke1.i:                                       ; preds = %bb.qi, %bb.pz
  %.sink.i = phi ptr [ %i.c, %bb.pz ], [ %i.b, %bb.qi ] ; 2 uses
  store i8 2, ptr %.sink.i, align 1
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 43, ptr noundef nonnull %.sink.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #27
          to label %.cont2.i unwind label %bb.qc

.cont2.i:                                         ; preds = %.invoke1.i
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i9.i: ; preds = %bb.qh
  %.sroa.6.0.extract.shift.i.i.i10.i = lshr i64 %.sroa.09.0.insert.insert.i.i8.i, 32
  %.sroa.6.0.extract.trunc.i.i.i11.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i10.i to i32
  br label %bb.qk

bb.qj:                                            ; preds = %.noexc12.i
  %i.akb = load i32, ptr %i.ajv, align 8, !noundef !5
  br label %bb.qk

bb.qk:                                            ; preds = %bb.qj, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i9.i
  %.sroa.02.0.i6.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i11.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i9.i ], [ %i.akb, %bb.qj ]
end_hunk_1
