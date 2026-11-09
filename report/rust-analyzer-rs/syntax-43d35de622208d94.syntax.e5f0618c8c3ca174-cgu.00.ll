Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/syntax-43d35de622208d94.syntax.e5f0618c8c3ca174-cgu.00?download=true
inline.NumInlined: 2984
inline.NumDeleted: 1143
begin_hunk_0_@_RNvNtNtCsjJXvCMGntp8_6syntax3ast4make5param:bb.a

bb.ac:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtB1u_5green4node9GreenNodeNtNtB2k_5token10GreenTokenEEECsjJXvCMGntp8_6syntax.exit37
  %.not15100 = icmp eq ptr %i.bj, null
  br i1 %.not15100, label %bb.ae, label %bb.ad, !prof !15

bb.ad:                                            ; preds = %bb.ac
  %i.bs = call noundef nonnull ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8new_root(ptr noundef nonnull %i.bj) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bs, ptr %i.a, align 8
  %i.bt = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.ah unwind label %bb.af

bb.ae:                                            ; preds = %.thread101, %bb.ac
  call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #19
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 48 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !noundef !7
  %i.bx = add i32 %i.bw, -1                       ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 4
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.ag, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEBJ_.exit

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bs) #20
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEBJ_.exit unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ad
  %i.bz = icmp eq i16 %i.bt, 254
  br i1 %i.bz, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 48 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !noundef !7
  %i.cc = add i32 %i.cb, -1                       ; 2 uses
  store i32 %i.cc, ptr %i.ca, align 4
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bs) #20
  br label %bb.am

bb.ak:                                            ; preds = %bb.ag
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.al:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.bs

bb.am:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #19
  unreachable

bb.an:                                            ; preds = %bb.x
  %lpad.thr_comm.split-lp82 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtBG_5green4node9GreenNodeNtNtB1w_5token10GreenTokenEECsjJXvCMGntp8_6syntax(i64 %i.bh, ptr %i.bj) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEBJ_.exit unwind label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatEBJ_.exit.sink.split.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeEBJ_.exit.sink.split.i, %bb.w, %bb.an, %.body.thread66, %.body.thread
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #21
  unreachable

.body.thread:                                     ; preds = %bb.n, %bb.i, %.body.thread71
  %eh.lpad-body65 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread71 ], [ %i.y, %bb.i ], [ %i.ai, %bb.n ]
  %.sroa.012.1.lpad-body64 = phi i1 [ %.sroa.012.1.ph, %.body.thread71 ], [ true, %bb.i ], [ true, %bb.n ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtB1d_5green4node9GreenNodeNtNtB23_5token10GreenTokenEEECsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #22
          to label %.body.thread66 unwind label %bb.ao

.body.thread66:                                   ; preds = %.body.thread, %.body, %bb.t
  %.sroa.012.2 = phi i1 [ %.sroa.012.1.lpad-body64, %.body.thread ], [ false, %.body ], [ false, %bb.t ]
  %.pn = phi { ptr, i32 } [ %eh.lpad-body65, %.body.thread ], [ %lpad.thr_comm.split-lp, %.body ], [ %i.as, %bb.t ] ; 2 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtB1d_5green4node9GreenNodeNtNtB23_5token10GreenTokenEEECsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #22
          to label %bb.b unwind label %bb.ao

.noexc43:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeEBJ_.exit.sink.split.i, %bb.ap
  br i1 %.sroa.013.058, label %bb.aq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEBJ_.exit

bb.ap:                                            ; preds = %.thread, %bb.b
  %.pn1860 = phi { ptr, i32 } [ %i.h, %.thread ], [ %.pn, %bb.b ] ; 3 uses
  %.sroa.013.058 = phi i1 [ true, %.thread ], [ false, %bb.b ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !noundef !7
  %i.ci = add i32 %i.ch, -1                       ; 2 uses
  store i32 %i.ci, ptr %i.cg, align 4
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeEBJ_.exit.sink.split.i, label %.noexc43

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeEBJ_.exit.sink.split.i: ; preds = %bb.ap
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #20
          to label %.noexc43 unwind label %bb.ao

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEBJ_.exit: ; preds = %bb.an, %bb.w, %bb.af, %bb.ag, %bb.b, %bb.aq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatEBJ_.exit.sink.split.i, %.noexc43
  %.pn185995 = phi { ptr, i32 } [ %.pn1860, %bb.aq ], [ %.pn1860, %.noexc43 ], [ %.pn1860, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatEBJ_.exit.sink.split.i ], [ %.pn, %bb.b ], [ %i.bu, %bb.ag ], [ %i.bu, %bb.af ], [ %i.bf, %bb.w ], [ %lpad.thr_comm.split-lp82, %bb.an ]
  resume { ptr, i32 } %.pn185995

bb.aq:                                            ; preds = %.noexc43
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !noundef !7
  %i.cm = add i32 %i.cl, -1                       ; 2 uses
  store i32 %i.cm, ptr %i.ck, align 4
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatEBJ_.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEBJ_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatEBJ_.exit.sink.split.i: ; preds = %bb.aq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #20
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEBJ_.exit unwind label %bb.ao
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast4make5token(i16 noundef range(i16 0, 329) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1370 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 11 uses
  %i.h = alloca [2 x i8], align 2                 ; 3 uses
  store i16 %0, ptr %i.h, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make6tokens11SOURCE_FILE, i64 24) acquire, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtB1G_3ast9generated5nodes10SourceFileEE5force0EB1G_.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make6tokens11SOURCE_FILE, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @_RNvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make6tokens11SOURCE_FILE, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtB1G_3ast9generated5nodes10SourceFileEE5force0EB1G_.exit

_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtB1G_3ast9generated5nodes10SourceFileEE5force0EB1G_.exit: ; preds = %bb.a, %bb.b
  %i.k = call noundef nonnull ptr @_RNvMs0_CsjJXvCMGntp8_6syntaxINtB5_5ParseNtNtNtNtB5_3ast9generated5nodes10SourceFileE4treeB5_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make6tokens11SOURCE_FILE) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 6 uses
  %i.m = load i32, ptr %i.l, align 4, !noalias !1371, !noundef !7 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtB1G_3ast9generated5nodes10SourceFileEE5force0EB1G_.exit
  %i.o = add nuw i32 %i.m, 1
  store i32 %i.o, ptr %i.l, align 4, !noalias !1371
  invoke void @_RNvMso_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokens3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull %i.k)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit unwind label %bb.f

bb.d:                                             ; preds = %_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtB1G_3ast9generated5nodes10SourceFileEE5force0EB1G_.exit
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #19
          to label %.noexc12 unwind label %bb.f

.noexc12:                                         ; preds = %bb.d
  unreachable

.body20:                                          ; preds = %bb.r, %bb.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.i, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.s, %bb.f ], [ %i.ax, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.i ], [ %i.ax, %bb.s ], [ %i.ax, %bb.r ]
  %i.p = load i32, ptr %i.l, align 4, !noundef !7
  %i.q = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.q, ptr %i.l, align 4
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEBJ_.exit

bb.e:                                             ; preds = %.body20
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.k) #20
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEBJ_.exit unwind label %bb.x

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i7.i.i.i.i, %bb.d, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body20

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1372
  invoke void @_RNvXsp_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokensNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit
  %i.t = load i64, ptr %i.b, align 8, !range !11, !noalias !1372, !noundef !7 ; 2 uses
  %.not10.i.i = icmp eq i64 %i.t, 2
  br i1 %.not10.i.i, label %.loopexit34, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc13
  %.sroa.52.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.noexc17, %.lr.ph.i.i
  %i.u = phi i64 [ %i.t, %.lr.ph.i.i ], [ %i.ar, %.noexc17 ]
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.52.0..sroa_idx.i.i.a, align 8, !noalias !1372 ; 11 uses
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i, i64 48 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !noalias !1373, !noundef !7
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 4, !noalias !1373
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.invoke, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtB4m_3ast4make5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.invoke: ; preds = %bb.j, %bb.h
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i.i) #20
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtB4m_3ast4make5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread.i.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.g
  %.sroa.52.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1372
  switch i64 %.sroa.52.0.copyload.i.i, label %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast4make5token0B7_.exit.i.i.i.i.i [
    i64 2, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtB4m_3ast4make5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread.i.i
    i64 0, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i, i64 48 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !1374, !noundef !7
  %i.ac = add i32 %i.ab, -1                       ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 4, !noalias !1374
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.invoke, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtB4m_3ast4make5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread.i.i

_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast4make5token0B7_.exit.i.i.i.i.i: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1375
  store ptr %.sroa.6.0.copyload.i.i, ptr %i.a, align 8, !noalias !1375
  %i.ae = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.m unwind label %bb.k, !noalias !1374

bb.k:                                             ; preds = %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast4make5token0B7_.exit.i.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i, i64 48 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !1374, !noundef !7
  %i.ai = add i32 %i.ah, -1                       ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 4, !noalias !1374
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %.body

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i.i) #20
          to label %.body unwind label %bb.p, !noalias !1374

bb.m:                                             ; preds = %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast4make5token0B7_.exit.i.i.i.i.i
  %i.ak = load i16, ptr %i.h, align 2, !range !20, !noalias !1376, !noundef !7
  %i.al = icmp eq i16 %i.ae, %i.ak
  br i1 %i.al, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !noalias !1374, !noundef !7
  %i.ao = add i32 %i.an, -1                       ; 2 uses
  store i32 %i.ao, ptr %i.am, align 4, !noalias !1374
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.o, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtB4m_3ast4make5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread6.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i.i) #20
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtB4m_3ast4make5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread6.i.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #21, !noalias !1374
  unreachable

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtB4m_3ast4make5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread6.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1375
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtB4m_3ast4make5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtB4m_3ast4make5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.invoke, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtB4m_3ast4make5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread6.i.i, %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1372
  invoke void @_RNvXsp_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokensNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtB4m_3ast4make5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread.i.i
  %i.ar = load i64, ptr %i.b, align 8, !range !11, !noalias !1372, !noundef !7 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ar, 2
  br i1 %.not.i.i, label %.loopexit34, label %bb.g

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.invoke, %bb.o, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNvNtNtB4m_3ast4make5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B4m_.exit.thread.i.i, %.loopexit34, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit
  %lpad.loopexit.split-lp51 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, %bb.k, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.k ], [ %i.af, %bb.l ], [ %lpad.loopexit.split-lp51, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtNtB4y_3ast4make5token0EEB4y_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.g) #22
          to label %.body20 unwind label %bb.x

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1372
  call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !1381, !nonnull !7, !noundef !7 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 48 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !noalias !1381, !noundef !7
  %i.av = add i32 %i.au, -1                       ; 2 uses
  store i32 %i.av, ptr %i.at, align 4, !noalias !1381
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i: ; preds = %bb.q
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i.i.i.i) #20
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.i.i.i.i unwind label %bb.r, !noalias !1381

bb.r:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.ay, align 8, !range !11, !alias.scope !1381, !noundef !7
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.val5.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !1381 ; 3 uses
  %i.ba = icmp eq i64 %.val4.i.i.i.i, 2
  br i1 %i.ba, label %.body20, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 48 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !noalias !1382, !noundef !7
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !noalias !1382
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.i, label %.body20

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.s
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5.i.i.i.i) #20
          to label %.body20 unwind label %bb.u, !noalias !1381

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i, %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val2.i.i.i.i = load i64, ptr %i.bf, align 8, !range !11, !alias.scope !1381, !noundef !7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.val3.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !1381 ; 3 uses
  %i.bh = icmp eq i64 %.val2.i.i.i.i, 2
  br i1 %i.bh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtNtB4y_3ast4make5token0EEB4y_.exit, label %bb.t

bb.t:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i.i) ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 48 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !noalias !1383, !noundef !7
  %i.bk = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 4, !noalias !1383
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i7.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtNtB4y_3ast4make5token0EEB4y_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i7.i.i.i.i: ; preds = %bb.t
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i.i.i.i) #20
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtNtB4y_3ast4make5token0EEB4y_.exit unwind label %bb.f

bb.u:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i.i.i.i.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #21, !noalias !1381
  unreachable

.loopexit34:                                      ; preds = %.noexc17, %.noexc13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs6_NtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB5_10SyntaxKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @244, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #19
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.loopexit34
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtNtB4y_3ast4make5token0EEB4y_.exit: ; preds = %bb.t, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsjJXvCMGntp8_6syntax.exit.sink.split.i.i7.i.i.i.i
  %i.bn = load i32, ptr %i.l, align 4, !noundef !7
  %i.bo = add i32 %i.bn, -1                       ; 2 uses
  store i32 %i.bo, ptr %i.l, align 4
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.w, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEBJ_.exit22

bb.w:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtNtB4y_3ast4make5token0EEB4y_.exit
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.k) #20
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEBJ_.exit22

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEBJ_.exit22: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNvNtNtB4y_3ast4make5token0EEB4y_.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %.sroa.6.0.copyload.i.i

bb.x:                                             ; preds = %bb.e, %.body
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEBJ_.exit: ; preds = %.body20, %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast4make6trait_(i1 noundef zeroext %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1409 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 15 uses
  %i.ac = alloca [8 x i8], align 8                ; 2 uses
  %i.ad = alloca [16 x i8], align 8               ; 3 uses
  store ptr %1, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %2, ptr %i.ae, align 8
  store ptr %5, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 0, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsjJXvCMGntp8_6syntax.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ad, ptr %i.aa, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsjJXvCMGntp8_6syntax, ptr %.sroa.420.0..sroa_idx, align 8
  %i.af = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @118, ptr noundef nonnull @246, ptr noundef nonnull %i.aa)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef 7)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsjJXvCMGntp8_6syntax.exit unwind label %bb.d

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsjJXvCMGntp8_6syntax.exit: ; preds = %bb.c
  %i.ag = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1410, !noundef !7 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  call void @llvm.assume(i1 %i.ah)
  %i.ai = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1410, !nonnull !7, !noundef !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.aj, ptr noundef nonnull align 1 dereferenceable(7) @144, i64 7, i1 false)
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1410
  %i.ak = add i64 %.pre.i, 7
  store i64 %i.ak, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1410
  br label %bb.b

.body112:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEBJ_.exit.i, %bb.aq, %.body107, %bb.af, %bb.ab, %.body, %bb.l, %bb.d, %bb.ao
  %.pn86 = phi { ptr, i32 } [ %i.cj, %bb.aq ], [ %i.ci, %bb.ao ], [ %i.bs, %bb.ab ], [ %.pn, %.body ], [ %.pn84, %.body107 ], [ %i.al, %bb.d ], [ %.pn, %bb.l ], [ %.pn84, %bb.af ], [ %.pn15.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEBJ_.exit.i ]
  %.sroa.04.0 = phi i1 [ %.not, %bb.aq ], [ %.not, %bb.ao ], [ %.not, %bb.ab ], [ false, %.body ], [ %.not, %.body107 ], [ %.sroa.04.1, %bb.d ], [ false, %bb.l ], [ %.not, %bb.af ], [ %.not, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEBJ_.exit.i ]
  %.sroa.0.0 = phi i1 [ %.not83, %bb.aq ], [ %.not83, %bb.ao ], [ %.not83, %bb.ab ], [ true, %.body ], [ false, %.body107 ], [ %.sroa.0.1, %bb.d ], [ true, %bb.l ], [ false, %bb.af ], [ %.not83, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileEBJ_.exit.i ]
end_hunk_0
