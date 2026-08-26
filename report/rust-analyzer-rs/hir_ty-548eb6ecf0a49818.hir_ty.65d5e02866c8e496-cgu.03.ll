Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.03?download=true
inline.NumInlined: 6210
inline.NumDeleted: 2657
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4exprNtB2_24BodyValidationDiagnostic7collect:bb.a
bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val29122.i.i) #48
          to label %.thread96.i.i unwind label %bb.bd, !noalias !7821

_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs8K4cjrcxBsw_6hir_ty.exit.i.i.i: ; preds = %bb.ay
  %i.jg = icmp eq i16 %i.jb, 214
  br i1 %i.jg, label %_RNvXsb1_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_6IfExprNtBa_7AstNode4cast.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs8K4cjrcxBsw_6hir_ty.exit.i.i.i
  %i.jh = load i32, ptr %i.ib, align 4, !noalias !7821, !noundef !18
  %i.ji = add i32 %i.jh, -1                       ; 2 uses
  store i32 %i.ji, ptr %i.ib, align 4, !noalias !7821
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %bb.bc, label %.thread91.i.i

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val29122.i.i) #48
          to label %.thread91.i.i unwind label %bb.av, !noalias !7821

bb.bd:                                            ; preds = %bb.ba
  %i.jk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !7821
  unreachable

.thread91.i.i:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECs8K4cjrcxBsw_6hir_ty.exit63.i.i, %bb.bc, %bb.bb, %bb.aq
  %.sroa.082.0118.i.i = phi ptr [ %.sroa.082.0121.i.i, %bb.bb ], [ %.sroa.082.0121.i.i, %bb.bc ], [ %.sroa.6.0.copyload.i, %bb.aq ], [ %.val29122.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECs8K4cjrcxBsw_6hir_ty.exit63.i.i ] ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.082.0118.i.i, i64 48 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !noalias !7821, !noundef !18
  %i.jn = add i32 %i.jm, -1                       ; 2 uses
  store i32 %i.jn, ptr %i.jl, align 4, !noalias !7821
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %bb.be, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECs8K4cjrcxBsw_6hir_ty.exit60.i.i

bb.be:                                            ; preds = %.thread91.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.082.0118.i.i) #48
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECs8K4cjrcxBsw_6hir_ty.exit60.i.i unwind label %bb.ar, !noalias !7821

_RNvXsb1_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_6IfExprNtBa_7AstNode4cast.exit.i.i: ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs8K4cjrcxBsw_6hir_ty.exit.i.i.i
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.082.0121.i.i, i64 48 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !noalias !7821, !noundef !18
  %i.jr = add i32 %i.jq, -1                       ; 2 uses
  store i32 %i.jr, ptr %i.jp, align 4, !noalias !7821
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %bb.bf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECs8K4cjrcxBsw_6hir_ty.exit63.i.i

bb.bf:                                            ; preds = %_RNvXsb1_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_6IfExprNtBa_7AstNode4cast.exit.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.082.0121.i.i) #48
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECs8K4cjrcxBsw_6hir_ty.exit63.i.i unwind label %.thread92.i.i, !noalias !7821

.thread92.i.i:                                    ; preds = %bb.bf
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %.thread96.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECs8K4cjrcxBsw_6hir_ty.exit63.i.i: ; preds = %bb.bf, %_RNvXsb1_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_6IfExprNtBa_7AstNode4cast.exit.i.i
  %i.ju = getelementptr i8, ptr %.val29122.i.i, i64 16
  %.val29.i.i = load ptr, ptr %i.ju, align 8, !noalias !7821, !noundef !18 ; 2 uses
  %.not.i46.i.i = icmp eq ptr %.val29.i.i, null
  br i1 %.not.i46.i.i, label %.thread91.i.i, label %.lr.ph.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECs8K4cjrcxBsw_6hir_ty.exit60.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs8K4cjrcxBsw_6hir_ty.exit.sink.split.i79.invoke.i.i, %bb.bo, %bb.bn, %bb.be, %.thread91.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.hq, i64 48 ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !noalias !7821, !noundef !18
  %i.jx = add i32 %i.jw, -1                       ; 2 uses
  store i32 %i.jx, ptr %i.jv, align 4, !noalias !7821
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %bb.bg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs8K4cjrcxBsw_6hir_ty.exit64.i.i

bb.bg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECs8K4cjrcxBsw_6hir_ty.exit60.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.hq) #48
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs8K4cjrcxBsw_6hir_ty.exit64.i.i unwind label %.loopexit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs8K4cjrcxBsw_6hir_ty.exit64.i.i: ; preds = %bb.bg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECs8K4cjrcxBsw_6hir_ty.exit60.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !7830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !7830
  br label %_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4exprNtB4_13ExprValidator26check_for_unnecessary_else.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8K4cjrcxBsw_6hir_ty.exit.i.i: ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !7830
  store i32 %.sroa.769.0289.i, ptr %i.fb, align 8, !noalias !7830
  store i64 -9223372036854775804, ptr %i.ap, align 8, !noalias !7830
  invoke fastcc void @_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4expr24BodyValidationDiagnosticE8push_mutBL_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cq, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.ap)
          to label %bb.bh unwind label %.loopexit95.i

bb.bh:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs8K4cjrcxBsw_6hir_ty.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !7830
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.082.0121.i.i, i64 48 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !noalias !7818, !noundef !18
  %i.kb = add i32 %i.ka, -1                       ; 2 uses
  store i32 %i.kb, ptr %i.jz, align 4, !noalias !7818
  %i.kc = icmp eq i32 %i.kb, 0
  br i1 %i.kc, label %bb.bi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECs8K4cjrcxBsw_6hir_ty.exit67.i.i

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.082.0121.i.i) #48
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECs8K4cjrcxBsw_6hir_ty.exit67.i.i unwind label %bb.ar, !noalias !7818

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECs8K4cjrcxBsw_6hir_ty.exit67.i.i: ; preds = %bb.bi, %bb.bh
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hq, i64 48 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !noalias !7818, !noundef !18
  %i.kf = add i32 %i.ke, -1                       ; 2 uses
  store i32 %i.kf, ptr %i.kd, align 4, !noalias !7818
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %bb.bj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs8K4cjrcxBsw_6hir_ty.exit68.i.i

bb.bj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECs8K4cjrcxBsw_6hir_ty.exit67.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.hq) #48
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs8K4cjrcxBsw_6hir_ty.exit68.i.i unwind label %.loopexit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs8K4cjrcxBsw_6hir_ty.exit68.i.i: ; preds = %bb.bj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECs8K4cjrcxBsw_6hir_ty.exit67.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !7830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !7830
  br label %_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4exprNtB4_13ExprValidator26check_for_unnecessary_else.exit.i

bb.bk:                                            ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs8K4cjrcxBsw_6hir_ty.exit.i.i, %bb.au
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kh = load i32, ptr %i.ib, align 4, !noalias !7821, !noundef !18
  %i.ki = add i32 %i.kh, -1                       ; 2 uses
  store i32 %i.ki, ptr %i.ib, align 4, !noalias !7821
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %bb.bl, label %.thread96.i.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val29122.i.i) #48
          to label %.thread96.i.i unwind label %bb.bm, !noalias !7821

bb.bm:                                            ; preds = %bb.bl, %bb.at, %bb.an
  %i.kk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !7818
  unreachable

bb.bn:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 48 ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !noalias !7846, !noundef !18
  %i.kn = add i32 %i.km, -1                       ; 2 uses
  store i32 %i.kn, ptr %i.kl, align 4, !noalias !7846
  %i.ko = icmp eq i32 %i.kn, 0
  br i1 %i.ko, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs8K4cjrcxBsw_6hir_ty.exit.sink.split.i79.invoke.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECs8K4cjrcxBsw_6hir_ty.exit60.i.i

bb.bo:                                            ; preds = %bb.ap
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 48 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !noalias !7821, !noundef !18
  %i.kr = add i32 %i.kq, -1                       ; 2 uses
  store i32 %i.kr, ptr %i.kp, align 4, !noalias !7821
  %i.ks = icmp eq i32 %i.kr, 0
  br i1 %i.ks, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs8K4cjrcxBsw_6hir_ty.exit.sink.split.i79.invoke.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECs8K4cjrcxBsw_6hir_ty.exit60.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs8K4cjrcxBsw_6hir_ty.exit.sink.split.i79.invoke.i.i: ; preds = %bb.bo, %bb.bn
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i) #48
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECs8K4cjrcxBsw_6hir_ty.exit60.i.i unwind label %.loopexit90.i, !noalias !7821

bb.bp:                                            ; preds = %bb.y, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !7849)
  call void @llvm.experimental.noalias.scope.decl(metadata !7852)
  switch i32 %narrow.i, label %_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4exprNtB4_13ExprValidator26check_for_unnecessary_else.exit.i [
    i32 4, label %bb.br
    i32 6, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bp
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.sink.i11.i = phi i64 [ 16, %bb.bq ], [ 24, %bb.bp ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.068.0290.i, i64 %.sink.i11.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !7854
  call void @llvm.experimental.noalias.scope.decl(metadata !7855)
  call void @llvm.experimental.noalias.scope.decl(metadata !7858)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !7861
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, i64 noundef 8, i1 noundef zeroext false, i64 noundef 16, i64 noundef 128)
          to label %.noexc30 unwind label %.loopexit

.noexc30:                                         ; preds = %bb.br
  %i.ku = load i64, ptr %i.ai, align 8, !range !103, !noalias !7861, !noundef !18
  %i.kv = trunc nuw i64 %i.ku to i1
  %i.kw = load i64, ptr %i.ed, align 8, !range !104, !noalias !7861, !noundef !18 ; 3 uses
  br i1 %i.kv, label %bb.bs, label %bb.bt, !prof !105

bb.bs:                                            ; preds = %.noexc30
  %i.kx = load i64, ptr %i.ee, align 8, !noalias !7861
  br label %.invoke379

.invoke379:                                       ; preds = %bb.fh, %bb.bs
  %i.ky = phi i64 [ %i.kw, %bb.bs ], [ %i.sv, %bb.fh ]
  %i.kz = phi i64 [ %i.kx, %bb.bs ], [ %i.sw, %bb.fh ]
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ky, i64 %i.kz) #46
          to label %.cont380 unwind label %.loopexit.split-lp

.cont380:                                         ; preds = %.invoke379
  unreachable

.body.i.i:                                        ; preds = %bb.eg, %bb.ed, %bb.dy, %bb.dr, %bb.do, %.body.i, %bb.de, %.body56.i, %bb.cm, %bb.cf, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.pe, %bb.ed ], [ %i.pk, %bb.eg ], [ %.pn.i.i.i, %bb.dr ], [ %i.ox, %bb.dy ], [ %i.ni, %bb.cm ], [ %i.my, %bb.cf ], [ %eh.lpad-body57.i, %.body56.i ], [ %eh.lpad-body48.i, %.body.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %i.oc, %bb.de ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %i.oj, %bb.do ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsac2KdDyt5gh_11typed_arena5ArenaINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEEB2s_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.an) #44
          to label %.body unwind label %bb.eh, !noalias !7852

.loopexit.i.i:                                    ; preds = %bb.dw, %bb.du, %bb.dt, %bb.dp, %bb.df, %.lr.ph.i.preheader.i.i.i, %_RNvMs0_NtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysisNtB5_13MatchCheckCtx24compute_match_usefulness.exit.i.i.i, %bb.cp, %bb.cn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEB1S_.exit.i.i.i, %bb.cd, %bb.cc, %bb.cb, %bb.ca
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %.noexc.i.i, %bb.bu, %bb.bt
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bt:                                            ; preds = %.noexc30
  %i.la = load ptr, ptr %i.ee, align 8, !noalias !7861, !nonnull !18, !noundef !18
  %i.lb = icmp samesign ugt i64 %i.kw, 7
  call void @llvm.assume(i1 %i.lb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !7861
  store i64 0, ptr %i.an, align 8, !alias.scope !7862, !noalias !7854
  store i64 %i.kw, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !7862, !noalias !7854
  store ptr %i.la, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !7862, !noalias !7854
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !7862, !noalias !7854
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !7862, !noalias !7854
  store i64 0, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !7862, !noalias !7854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !7854
  %.val.i12.i = load ptr, ptr %i.ct, align 8, !alias.scope !7863, !noalias !7852, !nonnull !18, !noundef !18
  %.val8.i.i = load ptr, ptr %i.cu, align 8, !alias.scope !7863, !noalias !7852, !nonnull !18, !align !113, !noundef !18
  %i.lc = invoke { i32, i32 } @_RNvXsW_CsileJQcQObtj_7hir_defNtB5_13DefWithBodyIdNtB5_9HasModule6module(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cm, ptr noundef nonnull %.val.i12.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.val8.i.i)
          to label %bb.bu unwind label %.loopexit.split-lp.i.i, !noalias !7852 ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %i.ld = extractvalue { i32, i32 } %i.lc, 0      ; 2 uses
  %i.le = extractvalue { i32, i32 } %i.lc, 1      ; 2 uses
  %i.lf = load ptr, ptr %i.cp, align 8, !alias.scope !7863, !noalias !7852, !nonnull !18, !noundef !18
  call void @llvm.experimental.noalias.scope.decl(metadata !7864)
  %i.lg = load ptr, ptr %i.ct, align 8, !alias.scope !7863, !noalias !7867, !nonnull !18, !noundef !18 ; 3 uses
  %i.lh = load ptr, ptr %i.cu, align 8, !alias.scope !7863, !noalias !7867, !nonnull !18, !align !113, !noundef !18 ; 3 uses
  %i.li = invoke { i32, i32 } @_RINvMs8_NvCsileJQcQObtj_7hir_defsi_1__NtB8_10ModuleIdLt5krateDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EB12_(i32 noundef range(i32 1, 0) %i.ld, i32 noundef %i.le, ptr noundef nonnull %i.lg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.lh)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !7852 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bu
  %i.lj = extractvalue { i32, i32 } %i.li, 0
  %i.lk = extractvalue { i32, i32 } %i.li, 1
  %i.ll = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB5_16UnstableFeatures5query(ptr noundef nonnull %i.lg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.lh, i32 noundef %i.lj, i32 noundef %i.lk)
          to label %bb.bv unwind label %.loopexit.split-lp.i.i, !noalias !7852

bb.bv:                                            ; preds = %.noexc.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 33
  %i.ln = load i8, ptr %i.lm, align 1, !range !127, !noalias !7867, !noundef !18
  store i32 %i.ld, ptr %i.am, align 8, !alias.scope !7864, !noalias !7854
  store i32 %i.le, ptr %i.ef, align 4, !alias.scope !7864, !noalias !7854
  store ptr %i.lg, ptr %i.eg, align 8, !alias.scope !7864, !noalias !7854
  store ptr %i.lh, ptr %i.eh, align 8, !alias.scope !7864, !noalias !7854
  store i8 %i.ln, ptr %i.ei, align 8, !alias.scope !7864, !noalias !7854
  store ptr %i.lf, ptr %i.ej, align 8, !alias.scope !7864, !noalias !7854
  store ptr %i.ay, ptr %i.ek, align 8, !alias.scope !7864, !noalias !7854
  %i.lo = load ptr, ptr %i.kt, align 8, !alias.scope !7852, !noalias !7849, !nonnull !18, !noundef !18 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.lq = load i64, ptr %i.lp, align 8, !alias.scope !7852, !noalias !7849, !noundef !18 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.lq, 5
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 %.idx.i.i
  %i.ls = icmp eq i64 %i.lq, 0
  br i1 %i.ls, label %._crit_edge.i.i, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %bb.bv, %bb.bz
  %.sroa.03.031.i.i = phi ptr [ %i.lt, %bb.bz ], [ %i.lo, %bb.bv ] ; 8 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.03.031.i.i, i64 32 ; 2 uses
  %i.lu = load i32, ptr %.sroa.03.031.i.i, align 8, !range !7806, !noalias !7852, !noundef !18 ; 2 uses
  %i.lv = icmp samesign ugt i32 %i.lu, 1
  %i.lw = zext nneg i32 %i.lu to i64
  %i.lx = add nsw i64 %i.lw, -1
  %i.ly = select i1 %i.lv, i64 %i.lx, i64 0
  switch i64 %i.ly, label %bb.bw [
    i64 0, label %bb.bx
    i64 1, label %bb.by
    i64 2, label %bb.bz
  ]

._crit_edge.i.i:                                  ; preds = %bb.bz, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !7854
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsac2KdDyt5gh_11typed_arena5ArenaINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEEB2s_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.an)
          to label %.noexc32 unwind label %.loopexit

.noexc32:                                         ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !7854
  br label %_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4exprNtB4_13ExprValidator26check_for_unnecessary_else.exit.i

bb.bw:                                            ; preds = %.lr.ph.i13.i
  unreachable

bb.bx:                                            ; preds = %.lr.ph.i13.i
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.03.031.i.i, i64 16
  %i.ma = load i32, ptr %i.lz, align 8, !range !53, !noalias !7852, !noundef !18
  %i.mb = trunc nuw i32 %i.ma to i1
  br i1 %i.mb, label %bb.bz, label %bb.ca

bb.by:                                            ; preds = %.lr.ph.i13.i
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.03.031.i.i, i64 8
  %i.md = load i8, ptr %i.mc, align 8, !range !127, !noalias !7852, !noundef !18
  %i.me = trunc nuw i8 %i.md to i1
  %i.mf = load i8, ptr %i.cr, align 4, !range !127, !alias.scope !7863, !noalias !7852
  %i.mg = trunc nuw i8 %i.mf to i1
  %or.cond.i14.i = select i1 %i.me, i1 %i.mg, i1 false
  br i1 %or.cond.i14.i, label %bb.ec, label %bb.bz

bb.bz:                                            ; preds = %bb.ef, %bb.eb, %bb.ea, %bb.by, %bb.bx, %.lr.ph.i13.i
  %i.mh = icmp eq ptr %i.lt, %i.lr
  br i1 %i.mh, label %._crit_edge.i.i, label %.lr.ph.i13.i

bb.ca:                                            ; preds = %bb.bx
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.03.031.i.i, i64 24
  %i.mj = load i32, ptr %i.mi, align 8, !noalias !7852, !noundef !18 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.03.031.i.i, i64 8
  %i.ml = load i32, ptr %i.mk, align 8, !range !53, !noalias !7852, !noundef !18
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.03.031.i.i, i64 12
  %i.mn = load i32, ptr %i.mm, align 4, !noalias !7852
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  %i.mo = load ptr, ptr %i.co, align 8, !alias.scope !7863, !noalias !7868, !nonnull !18, !align !113, !noundef !18
  %i.mp = invoke noundef zeroext i1 @_RNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_15InferenceResult21pat_has_type_mismatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.mo, i32 noundef %i.mj)
          to label %.noexc10.i.i unwind label %.loopexit.i.i, !noalias !7852

.noexc10.i.i:                                     ; preds = %bb.ca
  %.not.i15.i = xor i1 %i.mp, true
  %i.mq = trunc nuw i32 %i.ml to i1
  %or.cond30.i.i = and i1 %i.mq, %.not.i15.i
  br i1 %or.cond30.i.i, label %bb.cb, label %bb.ea

bb.cb:                                            ; preds = %.noexc10.i.i
  %i.mr = load ptr, ptr %i.co, align 8, !alias.scope !7863, !noalias !7868, !nonnull !18, !align !113, !noundef !18
  %i.ms = invoke noundef ptr @_RNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_15InferenceResult24type_of_expr_with_adjust(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.mr, i32 noundef %i.mn)
          to label %.noexc11.i.i unwind label %.loopexit.i.i, !noalias !7852 ; 5 uses

.noexc11.i.i:                                     ; preds = %bb.cb
  %.not.i.i16.i = icmp eq ptr %i.ms, null
  br i1 %.not.i.i16.i, label %bb.ea, label %bb.cc

bb.cc:                                            ; preds = %.noexc11.i.i
  %i.mt = invoke noundef zeroext i1 @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty23references_non_lt_error(ptr noundef nonnull %i.ms)
          to label %.noexc12.i.i unwind label %.loopexit.i.i, !noalias !7852

.noexc12.i.i:                                     ; preds = %bb.cc
  br i1 %i.mt, label %bb.ea, label %bb.cd

bb.cd:                                            ; preds = %.noexc12.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !7872
  store i8 0, ptr %i.ah, align 1, !noalias !7872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !7872
  invoke fastcc void @_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4exprNtB4_13ExprValidator13lower_pattern(ptr noalias nofree noundef align 16 captures(address) dereferenceable(128) %i.ag, ptr noundef nonnull align 8 dereferenceable(608) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.am, i32 noundef %i.mj, ptr noalias nofree noundef dereferenceable(1) %i.ah)
          to label %.noexc13.i.i unwind label %.loopexit.i.i, !noalias !7852

.noexc13.i.i:                                     ; preds = %bb.cd
  %i.mu = load i8, ptr %i.ah, align 1, !range !127, !noalias !7872, !noundef !18
  %i.mv = trunc nuw i8 %i.mu to i1
  %i.mw = load i8, ptr %i.ag, align 16, !range !7873, !noalias !7872
  %i.mx = icmp eq i8 %i.mw, 15
  %or.cond.i.i.i = select i1 %i.mv, i1 true, i1 %i.mx
  br i1 %or.cond.i.i.i, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %.noexc13.i.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10IndexedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ez)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEB1S_.exit.i.i.i unwind label %bb.cf, !noalias !7874

bb.cf:                                            ; preds = %bb.ce
  %i.my = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10IndexedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ez)
          to label %.body.i.i unwind label %bb.cg, !noalias !7874

bb.cg:                                            ; preds = %bb.cf
  %i.mz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !7874
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEB1S_.exit.i.i.i: ; preds = %bb.ce
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10IndexedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ez)
          to label %.noexc14.i.i unwind label %.loopexit.i.i, !noalias !7852

bb.ch:                                            ; preds = %.noexc13.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !7872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.af, ptr noundef nonnull align 16 dereferenceable(128) %i.ag, i64 128, i1 false), !noalias !7872
  call void @llvm.experimental.noalias.scope.decl(metadata !7875)
  call void @llvm.experimental.noalias.scope.decl(metadata !7878)
  %i.na = load i64, ptr %i.an, align 8, !noalias !7880, !noundef !18
  %.not.i.i.i17.i = icmp eq i64 %i.na, 0
  br i1 %.not.i.i.i17.i, label %bb.ci, label %bb.cj, !prof !109

bb.ci:                                            ; preds = %bb.ch
  %i.nb = load i64, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !7880, !noundef !18 ; 4 uses
  %i.nc = icmp ult i64 %i.nb, 72057594037927936
  call void @llvm.assume(i1 %i.nc)
  %i.nd = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !range !61, !noalias !7880, !noundef !18
  %i.ne = icmp samesign ult i64 %i.nb, %i.nd
  br i1 %i.ne, label %_RNvMCsac2KdDyt5gh_11typed_arenaINtB2_5ArenaINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE15alloc_fast_pathB1W_.exit.thread.i.i.i, label %_RNvMCsac2KdDyt5gh_11typed_arenaINtB2_5ArenaINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE15alloc_fast_pathB1W_.exit.i.i.i

bb.cj:                                            ; preds = %bb.ch
  invoke void @_RNvNtCshzWfHUSfYae_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #46
          to label %bb.cl unwind label %bb.cm, !noalias !7881

_RNvMCsac2KdDyt5gh_11typed_arenaINtB2_5ArenaINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE15alloc_fast_pathB1W_.exit.thread.i.i.i: ; preds = %bb.ci
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !7882, !noalias !7885
  %i.nf = getelementptr inbounds nuw [128 x i8], ptr %.pre.i.i.i.i, i64 %i.nb ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.nf, ptr noundef nonnull align 16 dereferenceable(128) %i.ag, i64 128, i1 false), !noalias !7874
  %i.ng = add nuw nsw i64 %i.nb, 1
  store i64 %i.ng, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !7882, !noalias !7885
  br label %bb.co

bb.ck:                                            ; preds = %bb.cm
  %i.nh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !7887
  unreachable

bb.cl:                                            ; preds = %bb.cj
  unreachable

bb.cm:                                            ; preds = %bb.cj
  %i.ni = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEB1S_(ptr noalias nofree noundef nonnull align 16 dereferenceable(128) %i.af) #44
          to label %.body.i.i unwind label %bb.ck, !noalias !7887

_RNvMCsac2KdDyt5gh_11typed_arenaINtB2_5ArenaINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE15alloc_fast_pathB1W_.exit.i.i.i: ; preds = %bb.ci
  %.sroa.0.0.copyload33.i.i.i = load ptr, ptr %i.af, align 16, !alias.scope !7888, !noalias !7872 ; 2 uses
  %.sroa.635.0.copyload37.i.i.i = load i64, ptr %.sroa.635.0..sroa_idx36.i.i.i, align 16, !alias.scope !7888, !noalias !7872 ; 2 uses
  %.not28.i.i.i = icmp eq i64 %.sroa.635.0.copyload37.i.i.i, -1
  br i1 %.not28.i.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %_RNvMCsac2KdDyt5gh_11typed_arenaINtB2_5ArenaINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE15alloc_fast_pathB1W_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !7872
  store ptr %.sroa.0.0.copyload33.i.i.i, ptr %i.u, align 16, !noalias !7872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.er, i64 88, i1 false), !noalias !7872
  store i64 %.sroa.635.0.copyload37.i.i.i, ptr %.sroa.635.0..sroa_idx.i.i.i, align 16, !noalias !7872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.eq, i64 24, i1 false), !noalias !7872
  %i.nj = invoke fastcc noundef nonnull align 16 ptr @_RNvMCsac2KdDyt5gh_11typed_arenaINtB2_5ArenaINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE15alloc_slow_pathB1W_(ptr noundef nonnull align 8 %i.an, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(128) %i.u)
          to label %.noexc15.i.i unwind label %.loopexit.i.i, !noalias !7852

.noexc15.i.i:                                     ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !7872
  br label %bb.cp

bb.co:                                            ; preds = %_RNvMCsac2KdDyt5gh_11typed_arenaINtB2_5ArenaINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE15alloc_fast_pathB1W_.exit.i.i.i, %_RNvMCsac2KdDyt5gh_11typed_arenaINtB2_5ArenaINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE15alloc_fast_pathB1W_.exit.thread.i.i.i
  %.sroa.0.042.i.i.i = phi ptr [ %i.nf, %_RNvMCsac2KdDyt5gh_11typed_arenaINtB2_5ArenaINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE15alloc_fast_pathB1W_.exit.thread.i.i.i ], [ %.sroa.0.0.copyload33.i.i.i, %_RNvMCsac2KdDyt5gh_11typed_arenaINtB2_5ArenaINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE15alloc_fast_pathB1W_.exit.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.042.i.i.i) ]
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %.noexc15.i.i
  %.sroa.08.0.i.i.i = phi ptr [ %i.nj, %.noexc15.i.i ], [ %.sroa.0.042.i.i.i, %bb.co ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !7872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !7872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !7872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !7872
  store ptr %.sroa.08.0.i.i.i, ptr %i.ac, align 8, !noalias !7872
  store i8 0, ptr %i.es, align 8, !noalias !7872
  %i.nk = invoke noundef zeroext i1 @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty23references_non_lt_error(ptr noundef nonnull %i.ms)
          to label %.noexc16.i.i unwind label %.loopexit.i.i, !noalias !7852

.noexc16.i.i:                                     ; preds = %bb.cp
  br i1 %i.nk, label %_RNvMs0_NtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysisNtB5_13MatchCheckCtx24compute_match_usefulness.exit.thread.i.i.i, label %.lr.ph.i.preheader.i.i.i

_RNvMs0_NtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysisNtB5_13MatchCheckCtx24compute_match_usefulness.exit.i.i.i: ; preds = %.noexc18.i.i
  invoke void @_RINvNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis10usefulness24compute_match_usefulnessNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEB1w_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ac, i64 noundef 1, ptr noundef nonnull %i.ms, i1 noundef zeroext false, i64 noundef 500000)
          to label %.noexc16.i.i.a unwind label %.loopexit.i.i, !noalias !7852

.noexc16.i.i.a:                                   ; preds = %_RNvMs0_NtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysisNtB5_13MatchCheckCtx24compute_match_usefulness.exit.i.i.i
  %.pr.i.i.i = load i64, ptr %i.ad, align 8, !noalias !7872
  %5 = icmp eq i64 %.pr.i.i.i, -1
  br i1 %5, label %_RNvMs0_NtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysisNtB5_13MatchCheckCtx24compute_match_usefulness.exit.thread.i.i.i, label %bb.cq

.lr.ph.i.preheader.i.i.i:                         ; preds = %.noexc16.i.i
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i.i, i64 88
  %i.nm = load ptr, ptr %i.nl, align 8, !noalias !7889, !nonnull !18, !noundef !18
  %i.nn = invoke noundef zeroext i1 @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty23references_non_lt_error(ptr noundef nonnull %i.nm)
          to label %.noexc18.i.i unwind label %.loopexit.i.i, !noalias !7852

.noexc18.i.i:                                     ; preds = %.lr.ph.i.preheader.i.i.i
  br i1 %i.nn, label %_RNvMs0_NtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysisNtB5_13MatchCheckCtx24compute_match_usefulness.exit.thread.i.i.i, label %_RNvMs0_NtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysisNtB5_13MatchCheckCtx24compute_match_usefulness.exit.i.i.i

bb.cq:                                            ; preds = %.noexc16.i.i.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 72, i1 false), !noalias !7872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !7872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !7872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !7872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.et, i64 24, i1 false), !noalias !7872
  %i.no = load i64, ptr %i.eu, align 8, !noalias !7872, !noundef !18 ; 2 uses
  %i.np = icmp ult i64 %i.no, 82351536043346213
  call void @llvm.assume(i1 %i.np)
  %i.nq = icmp eq i64 %i.no, 0
  br i1 %i.nq, label %bb.cr, label %bb.cw

bb.cr:                                            ; preds = %bb.cq
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.ct unwind label %bb.cs, !noalias !7874

bb.cs:                                            ; preds = %bb.cr
  %i.nr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body60.i unwind label %bb.cu, !noalias !7874

bb.ct:                                            ; preds = %bb.cr
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEEB2j_.exit.i unwind label %bb.dj

bb.cu:                                            ; preds = %bb.cs
  %i.ns = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !7874
  unreachable

bb.cv:                                            ; preds = %bb.cy
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body60.i

bb.cw:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !7872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !7872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.et, i64 24, i1 false), !noalias !7872
  %.val.i.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !7863, !noalias !7868, !nonnull !18, !noundef !18 ; 2 uses
  %.val32.i.i.i = load ptr, ptr %i.cu, align 8, !alias.scope !7863, !noalias !7868, !nonnull !18, !align !113, !noundef !18 ; 2 uses
  %i.nt = invoke { i32, i32 } @_RNvXsW_CsileJQcQObtj_7hir_defNtB5_13DefWithBodyIdNtB5_9HasModule6module(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cm, ptr noundef nonnull %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.val32.i.i.i)
          to label %bb.cx unwind label %bb.di, !noalias !7874 ; 2 uses

bb.cx:                                            ; preds = %bb.cw
  %i.nu = extractvalue { i32, i32 } %i.nt, 0
  %i.nv = extractvalue { i32, i32 } %i.nt, 1
  %i.nw = invoke { i32, i32 } @_RINvMs8_NvCsileJQcQObtj_7hir_defsi_1__NtB8_10ModuleIdLt5krateDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_ECs8K4cjrcxBsw_6hir_ty(i32 noundef %i.nu, i32 noundef %i.nv, ptr noundef nonnull %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.val32.i.i.i)
          to label %bb.cy unwind label %bb.di, !noalias !7874 ; 2 uses

bb.cy:                                            ; preds = %bb.cx
  %i.nx = extractvalue { i32, i32 } %i.nw, 0
  %i.ny = extractvalue { i32, i32 } %i.nw, 1
  invoke fastcc void @_RNvNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4expr18missing_match_arms(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.am, ptr noundef nonnull %i.ms, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v, i1 noundef zeroext false, i32 noundef %i.nx, i32 noundef %i.ny)
          to label %bb.cz unwind label %bb.cv, !noalias !7874

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !7872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !7894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !7872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !7872
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis8MatchArmNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEINtNtBJ_10usefulness10UsefulnessB1A_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.db unwind label %bb.da, !noalias !7874

bb.da:                                            ; preds = %bb.cz
  %i.nz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis8MatchArmNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEINtNtBQ_10usefulness10UsefulnessB1H_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body56.i unwind label %bb.dc, !noalias !7874

bb.db:                                            ; preds = %bb.cz
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis8MatchArmNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEINtNtBQ_10usefulness10UsefulnessB1H_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis8MatchArmNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEINtNtB1c_10usefulness10UsefulnessB23_EEEEB2b_.exit58.i unwind label %bb.dd

bb.dc:                                            ; preds = %bb.da
  %i.oa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !7874
  unreachable

bb.dd:                                            ; preds = %bb.db
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %.body56.i

.body56.i:                                        ; preds = %bb.dd, %bb.da
  %eh.lpad-body57.i = phi { ptr, i32 } [ %i.ob, %bb.dd ], [ %i.nz, %bb.da ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_set11DenseBitSetjEEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ev) #44
          to label %.body.i.i unwind label %bb.dh, !noalias !7874

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis8MatchArmNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEINtNtB1c_10usefulness10UsefulnessB23_EEEEB2b_.exit58.i: ; preds = %bb.db
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_set11DenseBitSetjEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %bb.df unwind label %bb.de, !noalias !7852

bb.de:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis8MatchArmNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEINtNtB1c_10usefulness10UsefulnessB23_EEEEB2b_.exit58.i
  %i.oc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_set11DenseBitSetjEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %.body.i.i unwind label %bb.dg, !noalias !7852

bb.df:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis8MatchArmNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEINtNtB1c_10usefulness10UsefulnessB23_EEEEB2b_.exit58.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_set11DenseBitSetjEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_set11DenseBitSetjEEECs8K4cjrcxBsw_6hir_ty.exit53.i unwind label %.loopexit.i.i

bb.dg:                                            ; preds = %bb.de
  %i.od = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !7852
  unreachable

bb.dh:                                            ; preds = %bb.dr, %.body.i, %bb.di, %.body60.i, %.body56.i
  %i.oe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !7874
  unreachable

.body60.i:                                        ; preds = %bb.dj, %bb.di, %bb.cv, %bb.cs
  %.pn.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i, %bb.cv ], [ %lpad.thr_comm.i.i.i, %bb.di ], [ %i.of, %bb.dj ], [ %i.nr, %bb.cs ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis8MatchArmNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEINtNtB1c_10usefulness10UsefulnessB23_EEEEB2b_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #44
          to label %bb.dr unwind label %bb.dh, !noalias !7874

bb.di:                                            ; preds = %bb.cx, %bb.cw
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEEB2j_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #44
          to label %.body60.i unwind label %bb.dh, !noalias !7874

bb.dj:                                            ; preds = %bb.ct
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %.body60.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEEB2j_.exit.i: ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !7872
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis8MatchArmNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEINtNtBJ_10usefulness10UsefulnessB1A_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.dl unwind label %bb.dk, !noalias !7874

bb.dk:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEEB2j_.exit.i
  %i.og = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis8MatchArmNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEINtNtBQ_10usefulness10UsefulnessB1H_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body.i unwind label %bb.dm, !noalias !7874

bb.dl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEEB2j_.exit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis8MatchArmNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEINtNtBQ_10usefulness10UsefulnessB1H_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis8MatchArmNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEINtNtB1c_10usefulness10UsefulnessB23_EEEEB2b_.exit.i unwind label %bb.dn

bb.dm:                                            ; preds = %bb.dk
  %i.oh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !7874
  unreachable

bb.dn:                                            ; preds = %bb.dl
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.dn, %bb.dk
  %eh.lpad-body48.i = phi { ptr, i32 } [ %i.oi, %bb.dn ], [ %i.og, %bb.dk ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_set11DenseBitSetjEEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ev) #44
          to label %.body.i.i unwind label %bb.dh, !noalias !7874

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis8MatchArmNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEINtNtB1c_10usefulness10UsefulnessB23_EEEEB2b_.exit.i: ; preds = %bb.dl
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_set11DenseBitSetjEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %bb.dp unwind label %bb.do, !noalias !7852

bb.do:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis8MatchArmNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEINtNtB1c_10usefulness10UsefulnessB23_EEEEB2b_.exit.i
  %i.oj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_set11DenseBitSetjEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %.body.i.i unwind label %bb.dq, !noalias !7852

bb.dp:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis8MatchArmNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEINtNtB1c_10usefulness10UsefulnessB23_EEEEB2b_.exit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_set11DenseBitSetjEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %.noexc20.i.i unwind label %.loopexit.i.i

bb.dq:                                            ; preds = %bb.do
  %i.ok = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !7852
  unreachable

.noexc20.i.i:                                     ; preds = %bb.dv, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !7872
  br label %.noexc14.i.i

bb.dr:                                            ; preds = %.body60.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_set11DenseBitSetjEEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ev) #44
          to label %.body.i.i unwind label %bb.dh, !noalias !7874

_RNvMs0_NtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysisNtB5_13MatchCheckCtx24compute_match_usefulness.exit.thread.i.i.i: ; preds = %.noexc18.i.i, %.noexc16.i.i.a, %.noexc16.i.i
  %i.ol = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !7872
  %i.om = icmp ult i64 %i.ol, 2
  br i1 %i.om, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %_RNvMs0_NtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysisNtB5_13MatchCheckCtx24compute_match_usefulness.exit.thread.i.i.i
  %i.on = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4exprNtB6_13ExprValidator24check_non_exhaustive_let10___CALLSITE, i64 16) monotonic, align 8, !noalias !7872 ; 3 uses
  switch i8 %i.on, label %bb.dt [
    i8 0, label %bb.dv
    i8 1, label %bb.du
    i8 2, label %bb.du
  ], !prof !143

bb.dt:                                            ; preds = %bb.ds
  %i.oo = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4exprNtB6_13ExprValidator24check_non_exhaustive_let10___CALLSITE)
          to label %.noexc21.i.i unwind label %.loopexit.i.i, !noalias !7852 ; 2 uses

.noexc21.i.i:                                     ; preds = %bb.dt
  %i.op = icmp eq i8 %i.oo, 0
  br i1 %i.op, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.ds, %.noexc21.i.i, %bb.ds
  %.sroa.015.0.i.i.i = phi i8 [ %i.oo, %.noexc21.i.i ], [ %i.on, %bb.ds ], [ %i.on, %bb.ds ]
  %i.oq = load ptr, ptr @_RNvNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4exprNtB6_13ExprValidator24check_non_exhaustive_let10___CALLSITE, align 8, !noalias !7872, !nonnull !18, !align !113, !noundef !18
  %i.or = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.oq, i8 noundef %.sroa.015.0.i.i.i)
          to label %.noexc22.i.i unwind label %.loopexit.i.i, !noalias !7852

.noexc22.i.i:                                     ; preds = %bb.du
  br i1 %i.or, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %.noexc23.i.i, %.noexc22.i.i, %.noexc21.i.i, %bb.ds, %_RNvMs0_NtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysisNtB5_13MatchCheckCtx24compute_match_usefulness.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !7872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !7872
  br label %.noexc20.i.i

bb.dw:                                            ; preds = %.noexc22.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !7872
  %i.os = load ptr, ptr @_RNvNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4exprNtB6_13ExprValidator24check_non_exhaustive_let10___CALLSITE, align 8, !noalias !7872, !nonnull !18, !align !113, !noundef !18 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !7872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !7872
  store <2 x ptr> <ptr @300, ptr inttoptr (i64 45 to ptr)>, ptr %i.z, align 16, !noalias !7872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !7872
  store ptr %i.a, ptr %i.y, align 8, !noalias !7872
  store ptr %i.z, ptr %i.aa, align 8, !noalias !7872
  store ptr @9, ptr %i.ew, align 8, !noalias !7872
  store ptr %i.y, ptr %i.ex, align 8, !noalias !7872
  store ptr @301, ptr %i.ey, align 8, !noalias !7872
  store i64 1, ptr %i.ab, align 8, !noalias !7872
  store ptr %i.aa, ptr %.sroa.017.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !7872
  store i64 2, ptr %.sroa.017.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !7872
  store ptr %i.ot, ptr %.sroa.418.0..sroa_idx.i.i.i, align 8, !noalias !7872
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.os, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab)
          to label %.noexc23.i.i unwind label %.loopexit.i.i, !noalias !7852

.noexc23.i.i:                                     ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !7872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !7872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !7872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !7872
  br label %bb.dv

.noexc14.i.i:                                     ; preds = %.noexc20.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEB1S_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !7872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !7872
  br label %bb.ea

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_set11DenseBitSetjEEECs8K4cjrcxBsw_6hir_ty.exit53.i: ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !7872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !7872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !7872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !7854
  store i64 -9223372036854775806, ptr %i.ak, align 8, !noalias !7854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i.i, i64 24, i1 false), !noalias !7854
  store i32 %i.mj, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !noalias !7854
  %i.ou = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !7895, !noalias !7898, !noundef !18 ; 3 uses
  %i.ov = load i64, ptr %i.cq, align 8, !range !61, !alias.scope !7895, !noalias !7898, !noundef !18
  %i.ow = icmp eq i64 %i.ou, %i.ov
  br i1 %i.ow, label %bb.dx, label %bb.eb

bb.dx:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_set11DenseBitSetjEEECs8K4cjrcxBsw_6hir_ty.exit53.i
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4expr24BodyValidationDiagnosticE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %bb.eb unwind label %bb.dy, !noalias !7898

bb.dy:                                            ; preds = %bb.dx
  %i.ox = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4expr24BodyValidationDiagnosticEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ak) #44
          to label %.body.i.i unwind label %bb.dz, !noalias !7852

bb.dz:                                            ; preds = %bb.dy
  %i.oy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !7852
  unreachable

bb.ea:                                            ; preds = %.noexc14.i.i, %.noexc12.i.i, %.noexc11.i.i, %.noexc10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  br label %bb.bz

bb.eb:                                            ; preds = %bb.dx, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_set11DenseBitSetjEEECs8K4cjrcxBsw_6hir_ty.exit53.i
  %i.oz = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7895, !noalias !7898, !nonnull !18, !noundef !18
  %i.pa = getelementptr inbounds nuw [48 x i8], ptr %i.oz, i64 %i.ou
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pa, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false), !noalias !7852
  %i.pb = add i64 %i.ou, 1
  store i64 %i.pb, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !7895, !noalias !7898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !7854
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  br label %bb.bz

bb.ec:                                            ; preds = %bb.by
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.03.031.i.i, i64 4
  %i.pd = load i32, ptr %i.pc, align 4, !noalias !7852, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !7854
  store i64 0, ptr %i.al, align 8, !noalias !7854
  store ptr inttoptr (i64 8 to ptr), ptr %i.el, align 8, !noalias !7854
  store i64 0, ptr %i.em, align 8, !noalias !7854
  invoke fastcc void @_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4exprNtB4_13ExprValidator21check_unused_must_use(ptr noundef nonnull align 8 dereferenceable(608) %i.ay, i32 noundef %i.pd, ptr noalias nofree noundef align 8 dereferenceable(24) %i.al)
          to label %bb.ee unwind label %bb.eg, !noalias !7852

bb.ed:                                            ; preds = %bb.ee
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.pf = load ptr, ptr %i.el, align 8, !noalias !7854, !nonnull !18, !noundef !18 ; 3 uses
  %i.pg = load i64, ptr %i.al, align 8, !range !61, !noalias !7854, !noundef !18
  %i.ph = load i64, ptr %i.em, align 8, !noalias !7854, !noundef !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !7854
  %i.pi = icmp ult i64 %i.ph, 192153584101141163
  call void @llvm.assume(i1 %i.pi)
  %i.pj = getelementptr inbounds nuw [48 x i8], ptr %i.pf, i64 %i.ph
  store ptr %i.pf, ptr %i.aj, align 8, !noalias !7854
  store i64 %i.pg, ptr %i.en, align 8, !noalias !7854
  store ptr %i.pf, ptr %i.eo, align 8, !noalias !7854
  store ptr %i.pj, ptr %i.ep, align 8, !noalias !7854
  invoke void @_RNvXs0_NtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB7_3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4expr24BodyValidationDiagnosticEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.aj)
          to label %bb.ef unwind label %bb.ed, !noalias !7852

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !7854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !7854
  br label %bb.bz

bb.eg:                                            ; preds = %bb.ec
  %i.pk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4expr24BodyValidationDiagnosticEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al) #44
          to label %.body.i.i unwind label %bb.eh, !noalias !7852

bb.eh:                                            ; preds = %bb.eg, %.body.i.i
  %i.pl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !7852
  unreachable

bb.ei:                                            ; preds = %bb.y, %bb.y
  %i.pm = getelementptr i8, ptr %.sroa.068.0290.i, i64 40
  %.val9.i = load i32, ptr %i.pm, align 8         ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7900)
  %i.pn = load i8, ptr %i.cr, align 4, !range !127, !alias.scope !7903, !noalias !7904, !noundef !18
  %i.po = trunc nuw i8 %i.pn to i1
  br i1 %i.po, label %bb.ej, label %_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4exprNtB4_13ExprValidator26check_for_unnecessary_else.exit.i

bb.ej:                                            ; preds = %bb.ei
  %i.pp = load ptr, ptr %i.co, align 8, !alias.scope !7903, !noalias !7904, !nonnull !18, !align !113, !noundef !18 ; 9 uses
  %i.pq = invoke noundef zeroext i1 @_RNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_15InferenceResult26exprs_have_type_mismatches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.pp)
          to label %.noexc33 unwind label %.loopexit

.noexc33:                                         ; preds = %bb.ej
  %i.pr = icmp ne i32 %i.fp, 11
  %or.cond.not.i = or i1 %i.pr, %i.pq
  br i1 %or.cond.not.i, label %_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4exprNtB4_13ExprValidator26check_for_unnecessary_else.exit.i, label %bb.ek

bb.ek:                                            ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !7906
  invoke void @_RNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_15InferenceResult17method_resolution(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.pp, i32 noundef %.sroa.769.0289.i)
          to label %.noexc34 unwind label %.loopexit

.noexc34:                                         ; preds = %bb.ek
  %i.ps = load i32, ptr %i.t, align 8, !noalias !7906, !noundef !18 ; 7 uses
  %.not.i18.i = icmp eq i32 %i.ps, 0
  br i1 %.not.i18.i, label %bb.fa, label %bb.el

bb.el:                                            ; preds = %.noexc34
  %i.pt = load i32, ptr %i.dz, align 4, !noalias !7906, !noundef !18 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !7906
  %.not.i.i19.i = icmp eq i32 %.sroa.0.0297.i, 2
  br i1 %.not.i.i19.i, label %bb.em, label %._RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4expr20FilterMapNextCheckerE18get_or_insert_withNCNvMs_BK_NtBK_13ExprValidator13validate_call0EBO_.exit_crit_edge.i.i

._RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4expr20FilterMapNextCheckerE18get_or_insert_withNCNvMs_BK_NtBK_13ExprValidator13validate_call0EBO_.exit_crit_edge.i.i: ; preds = %bb.el
  %i.pu = trunc nuw i32 %.sroa.0.0297.i to i1
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics4expr20FilterMapNextCheckerE18get_or_insert_withNCNvMs_BK_NtBK_13ExprValidator13validate_call0EBO_.exit.i.i

bb.em:                                            ; preds = %bb.el
  %i.pv = load ptr, ptr %i.ea, align 8, !alias.scope !7903, !noalias !7907, !align !702, !noundef !18 ; 3 uses
  %.not.i.i.i22.i = icmp eq ptr %i.pv, null
  br i1 %.not.i.i.i22.i, label %.invoke, label %bb.en, !prof !105

bb.en:                                            ; preds = %bb.em
end_hunk_0
