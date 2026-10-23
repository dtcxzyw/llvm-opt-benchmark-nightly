Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.13?download=true
inline.NumInlined: 1304
inline.NumDeleted: 582
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix11is_in_value:bb.a
bb.ad:                                            ; preds = %bb.ac
  %i.bh = load i32, ptr %i.k, align 4, !noundef !5
  %i.bi = add i32 %i.bh, -1                       ; 2 uses
  store i32 %i.bi, ptr %i.k, align 4
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.ae, label %.thread61

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val14) #31
  br label %.thread61

bb.af:                                            ; preds = %bb.ab
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ag:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %.sroa.0.015.i, label %bb.f, label %bb.z

.thread61:                                        ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit

bb.ah:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.val14, ptr %i.b, align 8, !noalias !677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !677
  %i.bl = invoke { i64, ptr } @_RNvMs8_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes9IndexExpr5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.ak unwind label %bb.aj, !noalias !677 ; 2 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit12.i27: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i10.i30, %bb.an, %bb.aj
  %.pn.i28 = phi { ptr, i32 } [ %i.bp, %bb.aj ], [ %i.by, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i10.i30 ], [ %i.by, %bb.an ] ; 2 uses
  %i.bm = load i32, ptr %i.k, align 4, !noalias !677, !noundef !5
  %i.bn = add i32 %i.bm, -1                       ; 2 uses
  store i32 %i.bn, ptr %i.k, align 4, !noalias !677
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.ai, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit39

bb.ai:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit12.i27
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val14) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit39 unwind label %bb.ap

bb.aj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i33, %bb.ah
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit12.i27

bb.ak:                                            ; preds = %bb.ah
  %i.bq = extractvalue { i64, ptr } %i.bl, 0      ; 2 uses
  %i.br = extractvalue { i64, ptr } %i.bl, 1      ; 7 uses
  store i64 %i.bq, ptr %i.a, align 8, !noalias !677
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.br, ptr %i.bs, align 8, !noalias !677
  %.not.i29 = icmp eq i64 %i.bq, -1
  br i1 %.not.i29, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit.i31, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bt = invoke fastcc noundef zeroext i1 @_RNvXsvA_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %bb.am unwind label %bb.an     ; 2 uses

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 48 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !noundef !5
  %i.bw = add i32 %i.bv, -1                       ; 2 uses
  store i32 %i.bw, ptr %i.bu, align 4
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i33, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit.i31

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i33: ; preds = %bb.am
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.br) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit.i31 unwind label %bb.aj

bb.an:                                            ; preds = %bb.al
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 48 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !noundef !5
  %i.cb = add i32 %i.ca, -1                       ; 2 uses
  store i32 %i.cb, ptr %i.bz, align 4
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i10.i30, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit12.i27

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i10.i30: ; preds = %bb.an
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.br) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit12.i27 unwind label %bb.ap

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit.i31: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i33, %bb.am, %bb.ak
  %.sroa.0.015.i32 = phi i1 [ %i.bt, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i33 ], [ %i.bt, %bb.am ], [ false, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !677
  %i.cd = load i32, ptr %i.k, align 4, !noalias !677, !noundef !5
  %i.ce = add i32 %i.cd, -1                       ; 2 uses
  store i32 %i.ce, ptr %i.k, align 4, !noalias !677
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.ao, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix11is_in_values_0B7_.exit

bb.ao:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit.i31
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val14) #31
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix11is_in_values_0B7_.exit

bb.ap:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i10.i30, %bb.ai
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix11is_in_values_0B7_.exit: ; preds = %bb.ao, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %.thread61, %bb.g, %bb.f, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix11is_in_values_0B7_.exit
  %.sroa.0.2 = phi i1 [ %.sroa.0.015.i32, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix11is_in_values_0B7_.exit ], [ false, %.thread61 ], [ true, %bb.f ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit39: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit12.i27, %bb.ai, %bb.aa, %bb.ab, %.body.thread, %bb.aq
  %eh.lpad-body47 = phi { ptr, i32 } [ %eh.lpad-body48, %.body.thread ], [ %.pn.i28, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit12.i27 ], [ %eh.lpad-body48, %bb.aq ], [ %i.bc, %bb.aa ], [ %i.bc, %bb.ab ], [ %.pn.i28, %bb.ai ]
  resume { ptr, i32 } %eh.lpad-body47

.body.thread:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit12.i, %bb.r, %bb.k, %bb.l, %.body.thread55
  %eh.lpad-body48 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread55 ], [ %i.w, %bb.k ], [ %i.w, %bb.l ], [ %.pn.i, %bb.r ], [ %.pn.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsf8NQSppxkmK_14ide_completion.exit12.i ] ; 2 uses
  %i.ch = load i32, ptr %i.k, align 4, !noundef !5
  %i.ci = add i32 %i.ch, -1                       ; 2 uses
  store i32 %i.ci, ptr %i.k, align 4
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.aq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit39

bb.aq:                                            ; preds = %.body.thread
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val14) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit39 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix15is_in_condition(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %.val = load ptr, ptr %i.r, align 8, !noundef !5 ; 35 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 57 uses
  %i.t = load i32, ptr %i.s, align 4, !noundef !5 ; 3 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.c, label %bb.d, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = add nuw i32 %i.t, 1                      ; 2 uses
  store i32 %i.v, ptr %i.s, align 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ], !noalias !682
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %.invoke, label %bb.f, !prof !6

.body:                                            ; preds = %bb.ck, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i12, %bb.cg, %bb.ch, %.split.thread, %bb.bl, %bb.bm, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit33, %bb.bb, %bb.at, %bb.au, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit54, %bb.aj, %bb.ab, %bb.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit75, %bb.o, %bb.g, %bb.h, %.noexc20
  %.pn53.i = phi { ptr, i32 } [ %.pn.i115, %bb.cg ], [ %i.ac, %bb.g ], [ %i.bu, %bb.ab ], [ %i.df, %bb.at ], [ %lpad.thr_comm, %.split.thread ], [ %i.fg, %.noexc20 ], [ %.pn45.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit33 ], [ %.pn48.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit54 ], [ %.pn51.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit75 ], [ %i.ge, %bb.ck ], [ %i.ac, %bb.h ], [ %.pn51.i, %bb.o ], [ %i.bu, %bb.ac ], [ %.pn48.i, %bb.aj ], [ %i.df, %bb.au ], [ %.pn45.i, %bb.bb ], [ %i.eq, %bb.bm ], [ %i.eq, %bb.bl ], [ %.pn.i115, %bb.ch ], [ %i.ge, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i12 ]
  %i.x = load i32, ptr %i.s, align 4, !noundef !5
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.s, align 4
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit91

bb.e:                                             ; preds = %.body
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit91 unwind label %bb.z

bb.f:                                             ; preds = %bb.d
  %i.aa = add nuw i32 %i.t, 2
  store i32 %i.aa, ptr %i.s, align 4, !noalias !682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.val, ptr %i.c, align 8, !noalias !682
  %i.ab = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.i unwind label %bb.g, !noalias !682

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load i32, ptr %i.s, align 4, !noalias !682, !noundef !5
  %i.ae = add i32 %i.ad, -1                       ; 2 uses
  store i32 %i.ae, ptr %i.s, align 4, !noalias !682
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %.body unwind label %bb.l, !noalias !682

bb.i:                                             ; preds = %bb.f
  %i.ag = icmp eq i16 %i.ab, 214
  br i1 %i.ag, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load i32, ptr %i.s, align 4, !noalias !682, !noundef !5
  %i.ai = add i32 %i.ah, -1                       ; 3 uses
  store i32 %i.ai, ptr %i.s, align 4, !noalias !682
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %thread-pre-split unwind label %.split.thread

bb.l:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29, !noalias !682
  unreachable

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !682
  store ptr %.val, ptr %i.o, align 8, !noalias !682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !682
  %i.al = invoke { i64, ptr } @_RNvMs3_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes6IfExpr9condition(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o)
          to label %bb.q unwind label %bb.p, !noalias !682, !inline_history !680 ; 2 uses

thread-pre-split:                                 ; preds = %bb.k
  %.pr = load i32, ptr %i.s, align 4, !noalias !682
  br label %bb.n

bb.n:                                             ; preds = %thread-pre-split, %bb.j
  %i.am = phi i32 [ %.pr, %thread-pre-split ], [ %i.ai, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %.invoke, label %bb.aa, !prof !6

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit75: ; preds = %bb.v, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i73, %bb.p
  %.pn51.i = phi { ptr, i32 } [ %i.ar, %bb.p ], [ %i.bc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i73 ], [ %i.bc, %bb.v ] ; 2 uses
  %i.ao = load i32, ptr %i.s, align 4, !noundef !5
  %i.ap = add i32 %i.ao, -1                       ; 2 uses
  store i32 %i.ap, ptr %i.s, align 4
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.o, label %.body

bb.o:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit75
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %.body unwind label %bb.z

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i70, %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit75

bb.q:                                             ; preds = %bb.m
  %i.as = extractvalue { i64, ptr } %i.al, 0      ; 2 uses
  %.not50.i = icmp eq i64 %i.as, -1
  br i1 %.not50.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = extractvalue { i64, ptr } %i.al, 1      ; 7 uses
  store i64 %i.as, ptr %i.n, align 8, !noalias !682
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.at, ptr %i.au, align 8, !noalias !682
  %i.av = invoke fastcc noundef zeroext i1 @_RNvXsvA_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %bb.w unwind label %bb.v, !inline_history !680

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !682
  %i.aw = load i32, ptr %i.s, align 4, !noalias !682, !noundef !5
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.s, align 4, !noalias !682
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.t, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECsf8NQSppxkmK_14ide_completion.exit79

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECsf8NQSppxkmK_14ide_completion.exit79 unwind label %.split.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECsf8NQSppxkmK_14ide_completion.exit79: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !682
  br label %bb.u

bb.u:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit11, %bb.cj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECsf8NQSppxkmK_14ide_completion.exit23, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10MatchGuardECsf8NQSppxkmK_14ide_completion.exit36, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WhileExprECsf8NQSppxkmK_14ide_completion.exit57, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECsf8NQSppxkmK_14ide_completion.exit79
  %i.az = load i32, ptr %i.s, align 4, !noalias !682, !noundef !5
  %i.ba = add i32 %i.az, -1                       ; 2 uses
  store i32 %i.ba, ptr %i.s, align 4, !noalias !682
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread.sink.split, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread

bb.v:                                             ; preds = %bb.r
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !noundef !5
  %i.bf = add i32 %i.be, -1                       ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 4
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i73, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit75

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i73: ; preds = %bb.v
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.at) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit75 unwind label %bb.z

bb.w:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !noundef !5
  %i.bj = add i32 %i.bi, -1                       ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 4
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i70, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit72

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i70: ; preds = %bb.w
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.at) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit72 unwind label %bb.p

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit72: ; preds = %bb.w, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !682
  %i.bl = load i32, ptr %i.s, align 4, !noundef !5
  %i.bm = add i32 %i.bl, -1                       ; 2 uses
  store i32 %i.bm, ptr %i.s, align 4
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.x, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECsf8NQSppxkmK_14ide_completion.exit

bb.x:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit72
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECsf8NQSppxkmK_14ide_completion.exit unwind label %.split.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit72, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !682
  br label %bb.y

bb.y:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10MatchGuardECsf8NQSppxkmK_14ide_completion.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WhileExprECsf8NQSppxkmK_14ide_completion.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECsf8NQSppxkmK_14ide_completion.exit
  %.sroa.035.0.in.i = phi i1 [ %i.av, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECsf8NQSppxkmK_14ide_completion.exit ], [ %i.cn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WhileExprECsf8NQSppxkmK_14ide_completion.exit ], [ %i.dy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10MatchGuardECsf8NQSppxkmK_14ide_completion.exit ], [ %i.fp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit ], [ %i.hy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit ] ; 2 uses
  %i.bo = load i32, ptr %i.s, align 4, !noundef !5
  %i.bp = add i32 %i.bo, -1                       ; 2 uses
  store i32 %i.bp, ptr %i.s, align 4
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread.sink.split, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread

bb.z:                                             ; preds = %bb.e, %bb.o, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i73, %bb.aj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i52, %bb.bb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i31, %bb.by, %bb.ch, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i12
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29, !inline_history !680
  unreachable

bb.aa:                                            ; preds = %bb.n
  %i.bs = add nuw i32 %i.am, 1
  store i32 %i.bs, ptr %i.s, align 4, !noalias !682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.val, ptr %i.d, align 8, !noalias !682
  %i.bt = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.ad unwind label %bb.ab, !noalias !682

bb.ab:                                            ; preds = %bb.aa
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load i32, ptr %i.s, align 4, !noalias !682, !noundef !5
  %i.bw = add i32 %i.bv, -1                       ; 2 uses
  store i32 %i.bw, ptr %i.s, align 4, !noalias !682
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.ac, label %.body

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %.body unwind label %bb.ag, !noalias !682

bb.ad:                                            ; preds = %bb.aa
  %i.by = icmp eq i16 %i.bt, 324
  br i1 %i.by, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bz = load i32, ptr %i.s, align 4, !noalias !682, !noundef !5
  %i.ca = add i32 %i.bz, -1                       ; 3 uses
  store i32 %i.ca, ptr %i.s, align 4, !noalias !682
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %thread-pre-split101 unwind label %.split.thread

bb.ag:                                            ; preds = %bb.ac
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29, !noalias !682
  unreachable

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !682
  store ptr %.val, ptr %i.m, align 8, !noalias !682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !682
  %i.cd = invoke { i64, ptr } @_RNvMsS_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes9WhileExpr9condition(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m)
          to label %bb.al unwind label %bb.ak, !noalias !682, !inline_history !680 ; 2 uses

thread-pre-split101:                              ; preds = %bb.af
  %.pr102 = load i32, ptr %i.s, align 4, !noalias !682
  br label %bb.ai

bb.ai:                                            ; preds = %thread-pre-split101, %bb.ae
  %i.ce = phi i32 [ %.pr102, %thread-pre-split101 ], [ %i.ca, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cf = icmp eq i32 %i.ce, -1
  br i1 %i.cf, label %.invoke, label %bb.as, !prof !6

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit54: ; preds = %bb.ap, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i52, %bb.ak
  %.pn48.i = phi { ptr, i32 } [ %i.cj, %bb.ak ], [ %i.cr, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i52 ], [ %i.cr, %bb.ap ] ; 2 uses
  %i.cg = load i32, ptr %i.s, align 4, !noundef !5
  %i.ch = add i32 %i.cg, -1                       ; 2 uses
  store i32 %i.ch, ptr %i.s, align 4
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.aj, label %.body

bb.aj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit54
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %.body unwind label %bb.z

bb.ak:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i49, %bb.ah
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit54

bb.al:                                            ; preds = %bb.ah
  %i.ck = extractvalue { i64, ptr } %i.cd, 0      ; 2 uses
  %.not47.i = icmp eq i64 %i.ck, -1
  br i1 %.not47.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cl = extractvalue { i64, ptr } %i.cd, 1      ; 7 uses
  store i64 %i.ck, ptr %i.l, align 8, !noalias !682
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.cl, ptr %i.cm, align 8, !noalias !682
  %i.cn = invoke fastcc noundef zeroext i1 @_RNvXsvA_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %bb.aq unwind label %bb.ap, !inline_history !680

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !682
  %i.co = load i32, ptr %i.s, align 4, !noalias !682, !noundef !5
  %i.cp = add i32 %i.co, -1                       ; 2 uses
  store i32 %i.cp, ptr %i.s, align 4, !noalias !682
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.ao, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WhileExprECsf8NQSppxkmK_14ide_completion.exit57

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WhileExprECsf8NQSppxkmK_14ide_completion.exit57 unwind label %.split.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WhileExprECsf8NQSppxkmK_14ide_completion.exit57: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !682
  br label %bb.u

bb.ap:                                            ; preds = %bb.am
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 48 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !noundef !5
  %i.cu = add i32 %i.ct, -1                       ; 2 uses
  store i32 %i.cu, ptr %i.cs, align 4
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i52, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit54

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i52: ; preds = %bb.ap
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cl) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit54 unwind label %bb.z

bb.aq:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 48 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !noundef !5
  %i.cy = add i32 %i.cx, -1                       ; 2 uses
  store i32 %i.cy, ptr %i.cw, align 4
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i49, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit51

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i49: ; preds = %bb.aq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cl) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit51 unwind label %bb.ak

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit51: ; preds = %bb.aq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !682
  %i.da = load i32, ptr %i.s, align 4, !noundef !5
  %i.db = add i32 %i.da, -1                       ; 2 uses
  store i32 %i.db, ptr %i.s, align 4
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ar, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WhileExprECsf8NQSppxkmK_14ide_completion.exit

bb.ar:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit51
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WhileExprECsf8NQSppxkmK_14ide_completion.exit unwind label %.split.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WhileExprECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit51, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !682
  br label %bb.y

bb.as:                                            ; preds = %bb.ai
  %i.dd = add nuw i32 %i.ce, 1
  store i32 %i.dd, ptr %i.s, align 4, !noalias !682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.val, ptr %i.e, align 8, !noalias !682
  %i.de = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.av unwind label %bb.at, !noalias !682

bb.at:                                            ; preds = %bb.as
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load i32, ptr %i.s, align 4, !noalias !682, !noundef !5
  %i.dh = add i32 %i.dg, -1                       ; 2 uses
  store i32 %i.dh, ptr %i.s, align 4, !noalias !682
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.au, label %.body

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %.body unwind label %bb.ay, !noalias !682

bb.av:                                            ; preds = %bb.as
  %i.dj = icmp eq i16 %i.de, 244
  br i1 %i.dj, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dk = load i32, ptr %i.s, align 4, !noalias !682, !noundef !5
  %i.dl = add i32 %i.dk, -1                       ; 3 uses
  store i32 %i.dl, ptr %i.s, align 4, !noalias !682
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %thread-pre-split107 unwind label %.split.thread

bb.ay:                                            ; preds = %bb.au
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29, !noalias !682
  unreachable

bb.az:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !682
  store ptr %.val, ptr %i.k, align 8, !noalias !682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !682
  %i.do = invoke { i64, ptr } @_RNvMsW_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes10MatchGuard9condition(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %bb.bd unwind label %bb.bc, !noalias !682, !inline_history !680 ; 2 uses

thread-pre-split107:                              ; preds = %bb.ax
  %.pr108 = load i32, ptr %i.s, align 4, !noalias !682
  br label %bb.ba

bb.ba:                                            ; preds = %thread-pre-split107, %bb.aw
  %i.dp = phi i32 [ %.pr108, %thread-pre-split107 ], [ %i.dl, %bb.aw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dq = icmp eq i32 %i.dp, -1
  br i1 %i.dq, label %.invoke, label %bb.bk, !prof !6

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit33: ; preds = %bb.bh, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i31, %bb.bc
  %.pn45.i = phi { ptr, i32 } [ %i.du, %bb.bc ], [ %i.ec, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i31 ], [ %i.ec, %bb.bh ] ; 2 uses
  %i.dr = load i32, ptr %i.s, align 4, !noundef !5
  %i.ds = add i32 %i.dr, -1                       ; 2 uses
  store i32 %i.ds, ptr %i.s, align 4
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.bb, label %.body

bb.bb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit33
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %.body unwind label %bb.z

bb.bc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i28, %bb.az
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit33

bb.bd:                                            ; preds = %bb.az
  %i.dv = extractvalue { i64, ptr } %i.do, 0      ; 2 uses
  %.not44.i = icmp eq i64 %i.dv, -1
  br i1 %.not44.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dw = extractvalue { i64, ptr } %i.do, 1      ; 7 uses
  store i64 %i.dv, ptr %i.j, align 8, !noalias !682
  %i.dx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.dw, ptr %i.dx, align 8, !noalias !682
  %i.dy = invoke fastcc noundef zeroext i1 @_RNvXsvA_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %bb.bi unwind label %bb.bh, !inline_history !680

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !682
  %i.dz = load i32, ptr %i.s, align 4, !noalias !682, !noundef !5
  %i.ea = add i32 %i.dz, -1                       ; 2 uses
  store i32 %i.ea, ptr %i.s, align 4, !noalias !682
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.bg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10MatchGuardECsf8NQSppxkmK_14ide_completion.exit36

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10MatchGuardECsf8NQSppxkmK_14ide_completion.exit36 unwind label %.split.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10MatchGuardECsf8NQSppxkmK_14ide_completion.exit36: ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !682
  br label %bb.u

bb.bh:                                            ; preds = %bb.be
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dw) ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 48 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !noundef !5
  %i.ef = add i32 %i.ee, -1                       ; 2 uses
  store i32 %i.ef, ptr %i.ed, align 4
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i31, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit33

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i31: ; preds = %bb.bh
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.dw) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit33 unwind label %bb.z

bb.bi:                                            ; preds = %bb.be
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dw) ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 48 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !noundef !5
  %i.ej = add i32 %i.ei, -1                       ; 2 uses
  store i32 %i.ej, ptr %i.eh, align 4
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i28, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit30

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i28: ; preds = %bb.bi
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.dw) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit30 unwind label %bb.bc

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit30: ; preds = %bb.bi, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !682
  %i.el = load i32, ptr %i.s, align 4, !noundef !5
  %i.em = add i32 %i.el, -1                       ; 2 uses
  store i32 %i.em, ptr %i.s, align 4
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.bj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10MatchGuardECsf8NQSppxkmK_14ide_completion.exit

bb.bj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit30
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10MatchGuardECsf8NQSppxkmK_14ide_completion.exit unwind label %.split.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10MatchGuardECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit30, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !682
  br label %bb.y

bb.bk:                                            ; preds = %bb.ba
  %i.eo = add nuw i32 %i.dp, 1
  store i32 %i.eo, ptr %i.s, align 4, !noalias !682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.val, ptr %i.f, align 8, !noalias !682
  %i.ep = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %bb.bn unwind label %bb.bl, !noalias !682

bb.bl:                                            ; preds = %bb.bk
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load i32, ptr %i.s, align 4, !noalias !682, !noundef !5
  %i.es = add i32 %i.er, -1                       ; 2 uses
  store i32 %i.es, ptr %i.s, align 4, !noalias !682
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.bm, label %.body

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %.body unwind label %bb.bq, !noalias !682

bb.bn:                                            ; preds = %bb.bk
  %i.eu = icmp eq i16 %i.ep, 179
  br i1 %i.eu, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ev = load i32, ptr %i.s, align 4, !noalias !682, !noundef !5
  %i.ew = add i32 %i.ev, -1                       ; 3 uses
  store i32 %i.ew, ptr %i.s, align 4, !noalias !682
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %thread-pre-split113 unwind label %.split.thread

bb.bq:                                            ; preds = %bb.bm
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29, !noalias !682
  unreachable

bb.br:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !682
  store ptr %.val, ptr %i.i, align 8, !noalias !682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !682
  %i.ez = invoke noundef ptr @_RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7BinExpr8op_token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.bt unwind label %.split, !noalias !682, !inline_history !680 ; 8 uses

thread-pre-split113:                              ; preds = %bb.bp
  %.pr114 = load i32, ptr %i.s, align 4, !noalias !682
  br label %bb.bs

bb.bs:                                            ; preds = %thread-pre-split113, %bb.bo
  %i.fa = phi i32 [ %.pr114, %thread-pre-split113 ], [ %i.ew, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.fb = icmp eq i32 %i.fa, -1
  br i1 %i.fb, label %.invoke, label %bb.ci, !prof !6

.invoke:                                          ; preds = %bb.bs, %bb.ba, %bb.ai, %bb.n, %bb.d
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #30
          to label %.cont unwind label %.split.thread

.cont:                                            ; preds = %.invoke
  unreachable

.noexc20:                                         ; preds = %bb.by, %bb.bx
  br i1 %.sroa.036.2.i, label %bb.cg, label %.body

.split.thread:                                    ; preds = %.invoke, %bb.ci, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i9, %bb.bw, %bb.bp, %bb.bj, %bb.bg, %bb.ax, %bb.ar, %bb.ao, %bb.af, %bb.x, %bb.t, %bb.k, %bb.cf, %bb.cd
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.split:                                           ; preds = %bb.br
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bt:                                            ; preds = %bb.br
  %.not42.i = icmp eq ptr %i.ez, null
  br i1 %.not42.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store ptr %i.ez, ptr %i.h, align 8, !noalias !682
  %i.fc = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %bb.bz unwind label %bb.bx, !noalias !682, !inline_history !680

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !682
  %i.fd = load i32, ptr %i.s, align 4, !noalias !682, !noundef !5
  %i.fe = add i32 %i.fd, -1                       ; 2 uses
  store i32 %i.fe, ptr %i.s, align 4, !noalias !682
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.bw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECsf8NQSppxkmK_14ide_completion.exit23

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECsf8NQSppxkmK_14ide_completion.exit23 unwind label %.split.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECsf8NQSppxkmK_14ide_completion.exit23: ; preds = %bb.bv, %bb.bw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !682
  br label %bb.u

bb.bx:                                            ; preds = %bb.cb, %bb.cc, %bb.bu
  %.sroa.036.2.i = phi i1 [ false, %bb.cc ], [ false, %bb.cb ], [ true, %bb.bu ]
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 48 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !noalias !682, !noundef !5
  %i.fj = add i32 %i.fi, -1                       ; 2 uses
  store i32 %i.fj, ptr %i.fh, align 4, !noalias !682
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.by, label %.noexc20

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ez) #31
          to label %.noexc20 unwind label %bb.z

bb.bz:                                            ; preds = %bb.bu
  %i.fl = icmp eq i16 %i.fc, 48
  br i1 %i.fl, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fm = load i32, ptr %i.s, align 4, !noalias !682, !noundef !5
  %i.fn = add i32 %i.fm, -1                       ; 2 uses
  store i32 %i.fn, ptr %i.s, align 4, !noalias !682
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.cb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix15is_in_condition00EBL_.exit

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix15is_in_condition00EBL_.exit unwind label %bb.bx

bb.cc:                                            ; preds = %bb.bz
  %i.fp = invoke fastcc noundef zeroext i1 @_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix15is_in_condition00B9_(ptr noundef nonnull %.val)
          to label %bb.ce unwind label %bb.bx, !noalias !682, !inline_history !680

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix15is_in_condition00EBL_.exit: ; preds = %bb.ca, %bb.cb
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ez, i64 48 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !noalias !682, !noundef !5
  %i.fs = add i32 %i.fr, -1                       ; 2 uses
  store i32 %i.fs, ptr %i.fq, align 4, !noalias !682
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.cd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit18

bb.cd:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix15is_in_condition00EBL_.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ez) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit18 unwind label %.split.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit18: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix15is_in_condition00EBL_.exit, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !682
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECsf8NQSppxkmK_14ide_completion.exit23

bb.ce:                                            ; preds = %bb.cc
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ez, i64 48 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !noalias !682, !noundef !5
  %i.fw = add i32 %i.fv, -1                       ; 2 uses
  store i32 %i.fw, ptr %i.fu, align 4, !noalias !682
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.cf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit

bb.cf:                                            ; preds = %bb.ce
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ez) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit unwind label %.split.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !682
  br label %bb.y

bb.cg:                                            ; preds = %.split, %.noexc20
  %.pn.i115 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.split ], [ %i.fg, %.noexc20 ] ; 2 uses
  %i.fy = load i32, ptr %i.s, align 4, !noalias !682, !noundef !5
  %i.fz = add i32 %i.fy, -1                       ; 2 uses
  store i32 %i.fz, ptr %i.s, align 4, !noalias !682
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.ch, label %.body

bb.ch:                                            ; preds = %bb.cg
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
          to label %.body unwind label %bb.z

bb.ci:                                            ; preds = %bb.bs
  %i.gb = add nuw i32 %i.fa, 1
  store i32 %i.gb, ptr %i.s, align 4, !noalias !682
  %i.gc = invoke fastcc { i64, ptr } @_RNvXsmZ_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ExprNtBa_7AstNode4cast(ptr noundef nonnull %.val)
          to label %bb.cj unwind label %.split.thread, !noalias !682, !inline_history !680 ; 2 uses

bb.cj:                                            ; preds = %bb.ci
  %i.gd = extractvalue { i64, ptr } %i.gc, 0      ; 2 uses
  %.not41.i = icmp eq i64 %i.gd, -1
  br i1 %.not41.i, label %bb.u, label %bb.cl

bb.ck:                                            ; preds = %.invoke162, %.invoke160, %bb.cu, %bb.cn, %bb.db
  %i.ge = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gj) ], !noalias !682
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gj, i64 48 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !noalias !682, !noundef !5
  %i.gh = add i32 %i.gg, -1                       ; 2 uses
  store i32 %i.gh, ptr %i.gf, align 4, !noalias !682
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i12, label %.body

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i12: ; preds = %bb.ck
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.gj) #31
          to label %.body unwind label %bb.z

bb.cl:                                            ; preds = %bb.cj
  %i.gj = extractvalue { i64, ptr } %i.gc, 1      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !682
  store i64 %i.gd, ptr %i.g, align 8, !noalias !682
  %i.gk = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.gj, ptr %i.gk, align 8, !noalias !682
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 60
  %i.gm = load i8, ptr %i.gl, align 4, !range !11, !noalias !682, !noundef !5
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %bb.cn, label %bb.cm, !prof !6

bb.cm:                                            ; preds = %bb.cl
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  %i.gp = load i32, ptr %i.go, align 8, !noalias !682, !noundef !5
  br label %.noexc

bb.cn:                                            ; preds = %bb.cl
  %i.gq = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.gj)
          to label %.noexc unwind label %bb.ck

.noexc:                                           ; preds = %bb.cn, %bb.cm
  %.sroa.0.0.i = phi i32 [ %i.gp, %bb.cm ], [ %i.gq, %bb.cn ] ; 2 uses
  %i.gr = load i64, ptr %i.gj, align 8, !range !10, !noalias !682, !noundef !5
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gt = trunc nuw i64 %i.gr to i1
  %i.gu = load ptr, ptr %i.gs, align 8, !noalias !682, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.gt, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %.noexc
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !noalias !682, !noundef !5 ; 2 uses
  %i.gx = icmp ugt i64 %i.gw, 4294967295
  %i.gy = shl nuw i64 %i.gw, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.gx, i64 513, i64 %i.gy ; 2 uses
  %i.gz = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.gz, label %bb.cp, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i, !prof !6

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !682
  br label %.invoke162

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %bb.co
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  br label %bb.cr

bb.cq:                                            ; preds = %.noexc
  %i.ha = load i32, ptr %i.gu, align 8, !noalias !682, !noundef !5
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %.sroa.02.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i ], [ %i.ha, %bb.cq ]
  %i.hb = xor i32 %.sroa.0.0.i, -1
  %.not.i133 = icmp ugt i32 %.sroa.02.0.i, %i.hb
  br i1 %.not.i133, label %.invoke160, label %bb.cs, !prof !6

bb.cs:                                            ; preds = %bb.cr
  %i.hc = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  %i.hd = load i8, ptr %i.hc, align 4, !range !11, !noalias !682, !noundef !5
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %bb.cu, label %bb.ct, !prof !6

bb.ct:                                            ; preds = %bb.cs
  %i.hf = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.hg = load i32, ptr %i.hf, align 8, !noalias !682, !noundef !5
  br label %.noexc143

bb.cu:                                            ; preds = %bb.cs
  %i.hh = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.q)
          to label %.noexc143 unwind label %bb.ck

.noexc143:                                        ; preds = %bb.cu, %bb.ct
  %.sroa.0.0.i136 = phi i32 [ %i.hg, %bb.ct ], [ %i.hh, %bb.cu ] ; 2 uses
  %i.hi = load i64, ptr %i.q, align 8, !range !10, !noalias !682, !noundef !5
  %i.hj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.hk = trunc nuw i64 %i.hi to i1
  %i.hl = load ptr, ptr %i.hj, align 8, !noalias !682, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.hk, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %.noexc143
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !noalias !682, !noundef !5 ; 2 uses
  %i.ho = icmp ugt i64 %i.hn, 4294967295
  %i.hp = shl nuw i64 %i.hn, 32
  %.sroa.09.0.insert.insert.i.i139 = select i1 %i.ho, i64 513, i64 %i.hp ; 2 uses
  %i.hq = trunc i64 %.sroa.09.0.insert.insert.i.i139 to i1
  br i1 %i.hq, label %bb.cw, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i140, !prof !6

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !682
  br label %.invoke162

.invoke162:                                       ; preds = %bb.cp, %bb.cw
  %.sink = phi ptr [ %i.b, %bb.cp ], [ %i.a, %bb.cw ] ; 2 uses
  store i8 2, ptr %.sink, align 1, !noalias !682
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 43, ptr noundef nonnull %.sink, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #35
          to label %.cont163 unwind label %bb.ck

.cont163:                                         ; preds = %.invoke162
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i140: ; preds = %bb.cv
  %.sroa.6.0.extract.shift.i.i.i141 = lshr i64 %.sroa.09.0.insert.insert.i.i139, 32
  %.sroa.6.0.extract.trunc.i.i.i142 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i141 to i32
  br label %bb.cy

bb.cx:                                            ; preds = %.noexc143
  %i.hr = load i32, ptr %i.hl, align 8, !noalias !682, !noundef !5
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i140
  %.sroa.02.0.i137 = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i142, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i140 ], [ %i.hr, %bb.cx ]
  %i.hs = xor i32 %.sroa.0.0.i136, -1
  %.not.i138 = icmp ugt i32 %.sroa.02.0.i137, %i.hs
  br i1 %.not.i138, label %.invoke160, label %bb.cz, !prof !6

.invoke160:                                       ; preds = %bb.cy, %bb.cr
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #35
          to label %.cont161 unwind label %bb.ck

.cont161:                                         ; preds = %.invoke160
  unreachable

bb.cz:                                            ; preds = %bb.cy
  %i.ht = icmp eq i32 %.sroa.0.0.i, %.sroa.0.0.i136
  br i1 %i.ht, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gj, i64 48 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 8, !noalias !682, !noundef !5
  %i.hw = add i32 %i.hv, -1                       ; 2 uses
  store i32 %i.hw, ptr %i.hu, align 8, !noalias !682
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i9, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit11

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i9: ; preds = %bb.da
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.gj) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit11 unwind label %.split.thread

bb.db:                                            ; preds = %bb.cz
  %i.hy = invoke noundef zeroext i1 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix15is_in_condition(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix15is_in_condition0s_0B9_.exit unwind label %bb.ck, !inline_history !681

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit11: ; preds = %bb.da, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !682
  br label %bb.u

_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix15is_in_condition0s_0B9_.exit: ; preds = %bb.db
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gj, i64 48 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 8, !noalias !682, !noundef !5
  %i.ib = add i32 %i.ia, -1                       ; 2 uses
  store i32 %i.ib, ptr %i.hz, align 8, !noalias !682
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i: ; preds = %_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix15is_in_condition0s_0B9_.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.gj) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit unwind label %.split.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix15is_in_condition0s_0B9_.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsf8NQSppxkmK_14ide_completion.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !682
  br label %bb.y

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit91: ; preds = %.body, %bb.e
  resume { ptr, i32 } %.pn53.i

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread.sink.split: ; preds = %bb.y, %bb.u
  %.sroa.0.0.ph = phi i1 [ false, %bb.u ], [ %.sroa.035.0.in.i, %bb.y ]
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #31
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread: ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread.sink.split, %bb.y, %bb.a, %bb.u
  %.sroa.0.0 = phi i1 [ false, %bb.u ], [ false, %bb.a ], [ %.sroa.035.0.in.i, %bb.y ], [ %.sroa.0.0.ph, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread.sink.split ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix16complete_postfix(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
