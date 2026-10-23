Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.05?download=true
inline.NumInlined: 4400
inline.NumDeleted: 1749
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector11collect_pat:bb.a
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 3 uses
  %.sink10.i.i.i = select i1 %i.jw, ptr %i.jx, ptr %i.jt
  %.sink9.i.i.i = select i1 %i.jw, ptr %i.jy, ptr %i.ju ; 2 uses
  %.sink.i.i.i = call i64 @llvm.umax.i64(i64 %i.jv, i64 4)
  %i.jz = load i64, ptr %.sink9.i.i.i, align 8, !alias.scope !3794, !noundef !8 ; 2 uses
  %i.ka = icmp eq i64 %i.jz, %.sink.i.i.i
  br i1 %i.ka, label %bb.db, label %_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector25add_definition_to_binding.exit, !prof !15

bb.db:                                            ; preds = %.noexc244
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEj4_E21reserve_one_uncheckedB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jt)
          to label %.noexc245 unwind label %bb.ls

.noexc245:                                        ; preds = %bb.db
  %i.kb = load ptr, ptr %i.jt, align 8, !alias.scope !3794, !nonnull !8, !noundef !8
  %.pre.i.i = load i64, ptr %i.jy, align 8, !alias.scope !3794
  br label %_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector25add_definition_to_binding.exit

_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector25add_definition_to_binding.exit: ; preds = %.noexc244, %.noexc245
  %i.kc = phi i64 [ %.pre.i.i, %.noexc245 ], [ %i.jz, %.noexc244 ]
  %.sroa.01.0.i.i = phi ptr [ %i.jy, %.noexc245 ], [ %.sink9.i.i.i, %.noexc244 ] ; 2 uses
  %.sroa.0.0.i.i242 = phi ptr [ %i.kb, %.noexc245 ], [ %.sink10.i.i.i, %.noexc244 ]
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i242, i64 %i.kc
  store i32 %i.jo, ptr %i.kd, align 4
  %i.ke = load i64, ptr %.sroa.01.0.i.i, align 8, !alias.scope !3794, !noundef !8
  %i.kf = add i64 %i.ke, 1
  store i64 %i.kf, ptr %.sroa.01.0.i.i, align 8, !alias.scope !3794
  br label %bb.dc

bb.dc:                                            ; preds = %_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector25add_definition_to_binding.exit, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br label %_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector15collect_pat_opt.exit300

_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector15collect_pat_opt.exit300: ; preds = %.noexc299, %bb.hr, %bb.lr, %bb.kb, %bb.gp, %bb.fa, %bb.dc
  %.sroa.0.0 = phi i32 [ %i.jo, %bb.dc ], [ %.sroa.0.1.i258, %bb.fa ], [ %i.rf, %bb.gp ], [ %i.acp, %bb.lr ], [ %i.yd, %bb.kb ], [ %i.tk, %.noexc299 ], [ %i.tb, %bb.hr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.kg = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !noundef !8
  %i.ki = add i32 %i.kh, -1                       ; 2 uses
  store i32 %i.ki, ptr %i.kg, align 4
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECsileJQcQObtj_7hir_def.exit247.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECsileJQcQObtj_7hir_def.exit247

bb.dd:                                            ; preds = %bb.cx
  %lpad.thr_comm.split-lp469 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir3PatEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ca) #39
          to label %.body unwind label %bb.de

bb.de:                                            ; preds = %bb.lq, %bb.la, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsileJQcQObtj_7hir_def.exit.sink.split.i.i, %bb.jh, %.body268.thread, %bb.hp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsileJQcQObtj_7hir_def.exit.sink.split.i282, %bb.gj, %bb.gb, %bb.fc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i, %bb.ck, %bb.bx, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsileJQcQObtj_7hir_def.exit.sink.split.i, %.body332, %.thread447, %bb.lw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes3PatEECsileJQcQObtj_7hir_def.exit360, %bb.kt, %.thread537, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes3PatEECsileJQcQObtj_7hir_def.exit293, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit.thread, %bb.dd
  %i.kk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread447:                                       ; preds = %bb.ck, %bb.bw, %bb.by, %bb.bx, %bb.br, %bb.bq, %.thread451
  %.pn144442 = phi { ptr, i32 } [ %i.gy, %bb.br ], [ %lpad.thr_comm, %.thread451 ], [ %i.gy, %bb.bq ], [ %i.ht, %bb.bw ], [ %i.ht, %bb.bx ], [ %i.ht, %bb.by ], [ %i.ix, %bb.ck ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr nonnull %storemerge137) #39
          to label %.body unwind label %bb.de

bb.df:                                            ; preds = %bb.f
  %i.kl = load i8, ptr %i.ay, align 16, !range !45, !noundef !8
  %.not133 = icmp eq i8 %i.kl, -1
  br i1 %.not133, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  store i8 0, ptr %i.cc, align 8
  br label %bb.lt

bb.dh:                                            ; preds = %bb.di
  %i.km = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kt, i64 48 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !noalias !3795, !noundef !8
  %i.kp = add i32 %i.ko, -1                       ; 2 uses
  store i32 %i.kp, ptr %i.kn, align 4, !noalias !3795
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i: ; preds = %bb.dh
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.kt) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit.thread unwind label %bb.de

bb.di:                                            ; preds = %bb.df
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.kr, ptr noundef nonnull align 16 dereferenceable(32) %i.ay, i64 32, i1 false)
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.kt = load ptr, ptr %i.ks, align 16, !nonnull !8, !noundef !8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  store i32 32, ptr %i.ax, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.ku = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  store ptr %i.kt, ptr %i.ku, align 8
  store i64 18, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ku)
          to label %bb.dj unwind label %bb.dh

bb.dj:                                            ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aw, ptr noundef nonnull align 4 dereferenceable(12) %i.ai, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 48 ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4, !noalias !3796, !noundef !8
  %i.kx = add i32 %i.kw, -1                       ; 2 uses
  store i32 %i.kx, ptr %i.kv, align 4, !noalias !3796
  %i.ky = icmp eq i32 %i.kx, 0
  br i1 %i.ky, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i251, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit253

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i251: ; preds = %bb.dj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.kt) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit253 unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit.thread477

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit.thread477: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i251
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit253: ; preds = %bb.dj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.au, ptr noundef nonnull align 16 dereferenceable(48) %i.ax, i64 48, i1 false)
  %i.la = invoke fastcc noundef i32 @_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector10alloc_expr(ptr noalias nofree noundef align 8 dereferenceable(1120) %0, ptr noalias nofree noundef align 16 captures(address) dereferenceable(48) %i.au, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.aw)
          to label %bb.dk unwind label %bb.ls

bb.dk:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 %i.la, ptr %i.lb, align 4
  store i8 9, ptr %i.cc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.lt

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit.thread: ; preds = %bb.dh, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit.thread477
  %.pn134476 = phi { ptr, i32 } [ %i.kz, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit.thread477 ], [ %i.km, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i ], [ %i.km, %bb.dh ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir4ExprEBF_(ptr noalias nofree noundef align 16 dereferenceable(48) %i.ax) #39
          to label %.body unwind label %bb.de

bb.dl:                                            ; preds = %bb.g
  %.not132 = icmp eq ptr %i.cj, null
  br i1 %.not132, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr %i.cj, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.at)
          to label %bb.do unwind label %bb.fb

bb.dn:                                            ; preds = %bb.dl
  store i8 0, ptr %i.cc, align 8
  br label %bb.lt

bb.do:                                            ; preds = %bb.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.as, ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ce)
          to label %bb.dq unwind label %bb.fb

bb.dp:                                            ; preds = %bb.el, %bb.dv, %bb.du, %bb.ds, %bb.dr, %bb.dq
  %.sroa.019.0.i = phi i8 [ 1, %bb.dr ], [ %.sroa.019.1.i, %bb.el ], [ 1, %bb.du ], [ 0, %bb.dv ], [ 1, %bb.ds ], [ 1, %bb.dq ]
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit385

bb.dq:                                            ; preds = %bb.do
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ld, ptr noundef nonnull align 4 dereferenceable(12) %i.ag, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ar, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.le, i64 12, i1 false), !alias.scope !3797
  call void @llvm.experimental.noalias.scope.decl(metadata !3798)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !3799
  %i.lf = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.lf, ptr noundef nonnull align 4 dereferenceable(12) %i.as, i64 12, i1 false), !noalias !3800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.le, i64 12, i1 false), !alias.scope !3801, !noalias !3802
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !alias.scope !3798, !nonnull !8, !align !9, !noundef !8
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 8, !range !11, !alias.scope !3798, !noundef !8
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.ll = load i32, ptr %i.lk, align 4, !alias.scope !3798, !noundef !8
  %i.lm = invoke noundef nonnull align 8 ptr @_RNvXsc_NtCsileJQcQObtj_7hir_def7nameresNtB5_10ModulesMapINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB7_10ModuleIdLtE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.lh, i32 noundef %i.lj, i32 noundef %i.ll, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %bb.dr unwind label %bb.dp, !noalias !3802, !inline_history !3733

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3799
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val34.i = load ptr, ptr %i.ln, align 8, !alias.scope !3798, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.o, ptr noundef nonnull align 4 dereferenceable(12) %i.as, i64 12, i1 false), !noalias !3803
  %i.lo = invoke noundef i32 @_RNvMsf_NtCsdovh4xi6v3I_4span6ast_idNtB5_8AstIdMap13erased_ast_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.val34.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.o)
          to label %bb.ds unwind label %bb.dp, !noalias !3802, !inline_history !3733

bb.ds:                                            ; preds = %bb.dr
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3799
  call void @llvm.experimental.noalias.scope.decl(metadata !3804)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.le, i64 12, i1 false), !alias.scope !3805, !noalias !3802
  %i.lq = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 %i.lo, ptr %i.lq, align 4, !alias.scope !3806, !noalias !3802
  %i.lr = invoke { i32, i32 } @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope11macro_invoc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.lp, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.z)
          to label %bb.dt unwind label %bb.dp, !noalias !3802, !inline_history !3733 ; 2 uses

bb.dt:                                            ; preds = %bb.ds
  %i.ls = extractvalue { i32, i32 } %i.lr, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3799
  %.not.i255 = icmp eq i32 %i.ls, 0
  br i1 %.not.i255, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.lt = extractvalue { i32, i32 } %i.lr, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3799
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.lv = load ptr, ptr %i.lu, align 8, !alias.scope !3798, !nonnull !8, !noundef !8
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.lx = load ptr, ptr %i.lw, align 8, !alias.scope !3798, !nonnull !8, !align !9, !noundef !8
  invoke void @_RINvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB3_8Expander15enter_expand_idNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEB7_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.lv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.lx, i32 noundef %i.ls, i32 noundef %i.lt)
          to label %bb.dy unwind label %bb.dp, !noalias !3802, !inline_history !3733

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3799
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ma = load <2 x ptr>, ptr %i.ly, align 8, !alias.scope !3798
  %i.mb = load ptr, ptr %i.lz, align 8, !alias.scope !3798, !nonnull !8, !align !9, !noundef !8
  %i.mc = load ptr, ptr %i.ly, align 8, !alias.scope !3798, !nonnull !8, !noundef !8
  %i.md = load <2 x ptr>, ptr %i.lg, align 8, !alias.scope !3798
  %i.me = shufflevector <2 x ptr> %i.ma, <2 x ptr> %i.md, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x ptr> %i.me, ptr %i.x, align 8, !noalias !3799
  %i.mf = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.li, ptr %i.mf, align 8, !noalias !3799
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.mh = load i32, ptr %i.mg, align 8, !range !11, !alias.scope !3798, !noundef !8
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %i.mj = load i32, ptr %i.mi, align 4, !alias.scope !3798, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3799
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.mk, ptr %i.w, align 8, !noalias !3799
  invoke void @_RINvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB3_8Expander12enter_expandNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatNCINvMs2_NtB5_5lowerNtB2g_13ExprCollector18collect_macro_callB1g_INtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir3PatENCNvB2c_11collect_pats9_0E0EB7_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.mc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.mb, ptr noundef nonnull %i.cj, i32 noundef %i.mh, i32 noundef %i.mj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.x, ptr noundef nonnull %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @7)
          to label %bb.dw unwind label %bb.dp, !inline_history !3733

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3799
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dy, %bb.dw
  %.sroa.019.1.i = phi i8 [ 1, %bb.dy ], [ 0, %bb.dw ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3799
  %i.ml = load i64, ptr %i.q, align 8, !range !21, !noundef !8
  %i.mm = icmp eq i64 %i.ml, -1
  br i1 %i.mm, label %bb.et, label %bb.dz

bb.dy:                                            ; preds = %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.q, ptr noundef nonnull align 8 dereferenceable(112) %i.y, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3799
  br label %bb.dx

bb.dz:                                            ; preds = %bb.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.v, ptr noundef nonnull align 8 dereferenceable(112) %i.q, i64 112, i1 false)
  %i.mn = load i64, ptr %i.v, align 8, !range !22, !noalias !3799, !noundef !8
  %.not27.i = icmp eq i64 %i.mn, 2
  br i1 %.not27.i, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %bb.dz
  %i.mo = invoke noundef i32 @_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector11missing_pat(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0)
          to label %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector11collect_pats9_0Bb_.exit387 unwind label %bb.eo, !inline_history !3737

bb.eb:                                            ; preds = %bb.eo, %.thread493
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i256491496, %.thread493 ], [ %i.nl, %bb.eo ] ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.v, i64 104 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !alias.scope !3807, !noalias !3808, !noundef !8
  %i.mr = icmp eq ptr %i.mq, null
  br i1 %i.mr, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit385, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.mp)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit385 unwind label %bb.er

bb.ed:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3799
  %i.ms = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.ms, i64 32, i1 false)
  %.sroa.0430.0.copyload = load i32, ptr %i.le, align 8, !alias.scope !3809, !noalias !3802
  %i.mt = trunc nuw i32 %.sroa.0430.0.copyload to i1
  br i1 %i.mt, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3809, !noalias !3802
  %.sroa.5431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.5431.0.copyload = load i32, ptr %.sroa.5431.0..sroa_idx, align 4, !alias.scope !3809, !noalias !3802
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.mv = invoke { i32, i32 } @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBS_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB1X_3ast9generated5nodes9MacroCallEENtBS_11MacroCallIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.mu, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(24) %i.aa, i32 noundef %.sroa.5431.0.copyload, i32 noundef %.sroa.6.0.copyload)
          to label %bb.ef unwind label %bb.ep, !noalias !3802, !inline_history !3733 ; 0 uses

bb.ef:                                            ; preds = %bb.ed, %bb.ee
  %.sroa.012.0.copyload.i = load i64, ptr %i.r, align 8, !noalias !3799
  %i.mw = trunc nuw i64 %.sroa.012.0.copyload.i to i1
  br i1 %i.mw, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.mx = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.mx, i64 24, i1 false)
  %i.my = invoke fastcc { i64, ptr } @_RNCINvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB8_13ExprCollector18collect_macro_callNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtBc_3hir3PatENCNvB4_11collect_pats9_0Es0_0Bc_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.ei unwind label %.thread497, !noalias !3802, !inline_history !3733 ; 2 uses

bb.eh:                                            ; preds = %bb.ei, %bb.ef
  %.sroa.511.0.i = phi ptr [ %i.nc, %bb.ei ], [ undef, %bb.ef ]
  %.sroa.010.0.i = phi i64 [ %i.nb, %bb.ei ], [ -1, %bb.ef ]
  %i.mz = invoke fastcc noundef i32 @_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector11collect_pats9_0Bb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, i64 noundef %.sroa.010.0.i, ptr %.sroa.511.0.i)
          to label %bb.ej unwind label %.thread497, !noalias !3808, !inline_history !3733

.thread497:                                       ; preds = %bb.eg, %bb.eh
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %.thread493

bb.ei:                                            ; preds = %bb.eg
  %i.nb = extractvalue { i64, ptr } %i.my, 0
  %i.nc = extractvalue { i64, ptr } %i.my, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3799
  br label %bb.eh

bb.ej:                                            ; preds = %bb.eh
  invoke void @_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB2_8Expander4exit(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.q)
          to label %bb.ek unwind label %bb.eo

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3799
  br label %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector11collect_pats9_0Bb_.exit387

_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector11collect_pats9_0Bb_.exit387: ; preds = %bb.ea, %bb.ek
  %.sroa.0.0.i257 = phi i32 [ %i.mz, %bb.ek ], [ %i.mo, %bb.ea ] ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.v, i64 104 ; 2 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !alias.scope !3810, !noalias !3808, !noundef !8
  %i.nf = icmp eq ptr %i.ne, null
  br i1 %i.nf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit, label %bb.el

bb.el:                                            ; preds = %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector11collect_pats9_0Bb_.exit387
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.nd)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit unwind label %bb.dp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit: ; preds = %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector11collect_pats9_0Bb_.exit387, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3799
  %i.ng = trunc nuw i8 %.sroa.019.1.i to i1
  br i1 %i.ng, label %bb.em, label %bb.ez

bb.em:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit
  %i.nh = getelementptr inbounds nuw i8, ptr %i.cj, i64 48 ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 4, !noundef !8
  %i.nj = add i32 %i.ni, -1                       ; 2 uses
  store i32 %i.nj, ptr %i.nh, align 4
  %i.nk = icmp eq i32 %i.nj, 0
  br i1 %i.nk, label %bb.en, label %bb.ez

bb.en:                                            ; preds = %bb.em
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cj) #37
          to label %bb.ez unwind label %bb.ls

bb.eo:                                            ; preds = %bb.ea, %bb.ej
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.ep:                                            ; preds = %bb.ee
  %i.nm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nn = load i64, ptr %i.r, align 8, !range !16, !alias.scope !3811, !noalias !3808, !noundef !8
  %i.no = icmp eq i64 %i.nn, 0
  br i1 %i.no, label %.thread493, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.np = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtBE_3ast9generated5nodes3PatEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %i.np)
          to label %.thread493 unwind label %bb.er

bb.er:                                            ; preds = %bb.ec, %bb.eq, %bb.ey, %.thread493
  %i.nq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !3808, !inline_history !3733
  unreachable

.thread493:                                       ; preds = %bb.eq, %bb.ep, %.thread497
  %.pn.i256491496 = phi { ptr, i32 } [ %i.na, %.thread497 ], [ %i.nm, %bb.ep ], [ %i.nm, %bb.eq ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def10expr_store8expander4MarkEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.s) #39
          to label %bb.eb unwind label %bb.er, !noalias !3808, !inline_history !3733
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector14collect_ty_pat:bb.a
  %i.n = alloca [56 x i8], align 8                ; 5 uses
  %i.o = alloca [56 x i8], align 8                ; 5 uses
  %i.p = alloca [56 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 16               ; 5 uses
  %i.r = alloca [24 x i8], align 16               ; 5 uses
  %i.s = alloca [12 x i8], align 4                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [112 x i8], align 8               ; 9 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [72 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 4                ; 5 uses
  %i.y = alloca [80 x i8], align 8                ; 7 uses
  %i.z = alloca [112 x i8], align 8               ; 7 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [40 x i8], align 8               ; 5 uses
  %i.ac = alloca [112 x i8], align 8              ; 4 uses
  %i.ad = alloca [16 x i8], align 4               ; 5 uses
  %i.ae = alloca [24 x i8], align 4               ; 6 uses
  %i.af = alloca [56 x i8], align 8               ; 5 uses
  %i.ag = alloca [12 x i8], align 4               ; 4 uses
  %i.ah = alloca [12 x i8], align 4               ; 4 uses
  %i.ai = alloca [56 x i8], align 8               ; 4 uses
  %i.aj = alloca [12 x i8], align 4               ; 6 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [56 x i8], align 8               ; 9 uses
  %i.am = alloca [8 x i8], align 8                ; 6 uses
  %i.an = alloca [56 x i8], align 8               ; 6 uses
  %i.ao = alloca [56 x i8], align 8               ; 4 uses
  %i.ap = alloca [12 x i8], align 4               ; 10 uses
  %i.aq = alloca [16 x i8], align 8               ; 2 uses
  store i64 %1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %2, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar)
          to label %bb.c unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8RangePatECsileJQcQObtj_7hir_def.exit: ; preds = %.body62, %bb.by, %bb.b
  %.pn23 = phi { ptr, i32 } [ %i.as, %bb.b ], [ %eh.lpad-body63, %bb.by ], [ %eh.lpad-body63, %.body62 ] ; 8 uses
  %.sroa.018.0 = phi i1 [ %.sroa.018.1, %bb.b ], [ true, %bb.by ], [ true, %.body62 ]
  %.sroa.017.0 = phi i1 [ %.sroa.017.1, %bb.b ], [ false, %bb.by ], [ false, %.body62 ]
  %.sroa.016.0 = phi i1 [ %.sroa.016.1, %bb.b ], [ true, %bb.by ], [ true, %.body62 ]
  switch i64 %1, label %bb.ed [
    i64 5, label %.thread
    i64 7, label %.thread198
    i64 10, label %bb.ee
  ]

bb.b:                                             ; preds = %bb.ea, %bb.bx, %bb.bs, %bb.bn, %bb.f, %bb.d, %bb.a
  %.sroa.018.1 = phi i1 [ true, %bb.d ], [ false, %bb.bn ], [ false, %bb.bs ], [ true, %bb.f ], [ true, %bb.bx ], [ true, %bb.ea ], [ true, %bb.a ]
  %.sroa.017.1 = phi i1 [ true, %bb.d ], [ true, %bb.bn ], [ true, %bb.bs ], [ true, %bb.f ], [ true, %bb.bx ], [ false, %bb.ea ], [ true, %bb.a ]
  %.sroa.016.1 = phi i1 [ true, %bb.d ], [ true, %bb.bn ], [ true, %bb.bs ], [ true, %bb.f ], [ false, %bb.bx ], [ true, %bb.ea ], [ true, %bb.a ]
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8RangePatECsileJQcQObtj_7hir_def.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ap, ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  switch i64 %1, label %bb.d [
    i64 5, label %bb.e
    i64 6, label %bb.f
    i64 7, label %bb.g
    i64 10, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i8 0, ptr %i.ai, align 8
  %i.at = invoke fastcc noundef i32 @_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector9alloc_pat(ptr noalias nofree noundef align 8 dereferenceable(1120) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.ai, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.ap)
          to label %bb.eb unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.au = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes9MacroCallECsileJQcQObtj_7hir_def(ptr nonnull %2)
          to label %bb.l unwind label %.body46.thread207 ; 11 uses

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i8 15, ptr %i.ao, align 8
  %i.av = invoke fastcc noundef i32 @_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector9alloc_pat(ptr noalias nofree noundef align 8 dereferenceable(1120) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.ao, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.ap)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8MacroPatECsileJQcQObtj_7hir_def.exit49.thread231 unwind label %bb.b

bb.g:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %i.ax = load i32, ptr %i.aw, align 4, !noundef !8 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, -1
  br i1 %i.ay, label %bb.i, label %bb.h, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.az = add nuw i32 %i.ax, 1
  store i32 %i.az, ptr %i.aw, align 4
  %i.ba = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %2)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit unwind label %bb.bt

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #40
          to label %.noexc43 unwind label %bb.bt

.noexc43:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr %2, ptr %i.am, align 8
  %i.bb = invoke { i64, ptr } @_RNvXsL_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes8RangePatNtB7_9RangeItem5start(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am)
          to label %bb.bz unwind label %bb.dq     ; 2 uses

.body:                                            ; preds = %bb.bo, %bb.bp, %bb.bl, %bb.bm, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit100, %.body46.thread207, %bb.p
  %.pn = phi { ptr, i32 } [ %.pn30.i, %bb.bl ], [ %lpad.thr_comm, %.body46.thread207 ], [ %lpad.thr_comm.split-lp, %bb.bo ], [ %i.bm, %bb.p ], [ %.pn30.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit100 ], [ %.pn30.i, %bb.bm ], [ %lpad.thr_comm.split-lp, %bb.bp ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !noundef !8
  %i.be = add i32 %i.bd, -1                       ; 2 uses
  store i32 %i.be, ptr %i.bc, align 4
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECsileJQcQObtj_7hir_def.exit74

bb.k:                                             ; preds = %.body
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECsileJQcQObtj_7hir_def.exit74 unwind label %bb.bq

bb.l:                                             ; preds = %bb.e
  %.not21 = icmp eq ptr %i.au, null
  br i1 %.not21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %i.au, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak)
          to label %bb.s unwind label %bb.bo

bb.n:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !4162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !4162
  store i8 0, ptr %i.af, align 8, !noalias !4162
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !4162, !noundef !8 ; 5 uses
  %i.bj = icmp ult i64 %i.bi, 164703072086692426
  call void @llvm.assume(i1 %i.bj)
  %i.bk = load i64, ptr %i.bg, align 8, !range !13, !alias.scope !4163, !noundef !8
  %i.bl = icmp eq i64 %i.bi, %i.bk
  br i1 %i.bl, label %bb.o, label %bb.br

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def3hir3PatE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %bb.br unwind label %bb.p, !noalias !4164

bb.p:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir3PatEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.af) #39
          to label %.body unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

.body46.thread207:                                ; preds = %bb.e, %bb.bk, %bb.av
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.at, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s
  %.sroa.019.0.i = phi i8 [ 1, %bb.t ], [ %.sroa.019.1.i, %bb.at ], [ 1, %bb.w ], [ 0, %bb.x ], [ 1, %bb.u ], [ 1, %bb.s ]
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit100

bb.s:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aj, ptr noundef nonnull align 4 dereferenceable(12) %i.ag, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.experimental.noalias.scope.decl(metadata !4165)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !4166
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bp, ptr noundef nonnull align 4 dereferenceable(12) %i.aj, i64 12, i1 false), !noalias !8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.bq, i64 12, i1 false), !alias.scope !4167, !noalias !4168
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !4165, !nonnull !8, !align !9, !noundef !8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !range !11, !alias.scope !4165, !noundef !8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.bw = load i32, ptr %i.bv, align 4, !alias.scope !4165, !noundef !8
  %i.bx = invoke noundef nonnull align 8 ptr @_RNvXsc_NtCsileJQcQObtj_7hir_def7nameresNtB5_10ModulesMapINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB7_10ModuleIdLtE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bs, i32 noundef %i.bu, i32 noundef %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %bb.t unwind label %bb.r, !noalias !4168, !inline_history !4039

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !4166
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val34.i = load ptr, ptr %i.by, align 8, !alias.scope !4165, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.aj, i64 12, i1 false), !noalias !4165
  %i.bz = invoke noundef i32 @_RNvMsf_NtCsdovh4xi6v3I_4span6ast_idNtB5_8AstIdMap13erased_ast_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.val34.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.s)
          to label %bb.u unwind label %bb.r, !noalias !4168, !inline_history !4039

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4166
  call void @llvm.experimental.noalias.scope.decl(metadata !4169)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.bq, i64 12, i1 false), !alias.scope !4170, !noalias !4168
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 %i.bz, ptr %i.cb, align 4, !alias.scope !4171, !noalias !4168
  %i.cc = invoke { i32, i32 } @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope11macro_invoc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.ca, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ad)
          to label %bb.v unwind label %bb.r, !noalias !4168, !inline_history !4039 ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.cd = extractvalue { i32, i32 } %i.cc, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !4166
  %.not.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = extractvalue { i32, i32 } %i.cc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !4166
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !4165, !nonnull !8, !noundef !8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !4165, !nonnull !8, !align !9, !noundef !8
  invoke void @_RINvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB3_8Expander15enter_expand_idNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEB7_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.ci, i32 noundef %i.cd, i32 noundef %i.ce)
          to label %bb.aa unwind label %bb.r, !noalias !4168, !inline_history !4039

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !4166
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.cl = load <2 x ptr>, ptr %i.cj, align 8, !alias.scope !4165
  %i.cm = load ptr, ptr %i.ck, align 8, !alias.scope !4165, !nonnull !8, !align !9, !noundef !8
  %i.cn = load ptr, ptr %i.cj, align 8, !alias.scope !4165, !nonnull !8, !noundef !8
  %i.co = load <2 x ptr>, ptr %i.br, align 8, !alias.scope !4165
  %i.cp = shufflevector <2 x ptr> %i.cl, <2 x ptr> %i.co, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x ptr> %i.cp, ptr %i.ab, align 8, !noalias !4166
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.bt, ptr %i.cq, align 8, !noalias !4166
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.cs = load i32, ptr %i.cr, align 8, !range !11, !alias.scope !4165, !noundef !8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %i.cu = load i32, ptr %i.ct, align 4, !alias.scope !4165, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !4166
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.cv, ptr %i.aa, align 8, !noalias !4166
  invoke void @_RINvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB3_8Expander12enter_expandNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatNCINvMs2_NtB5_5lowerNtB2g_13ExprCollector18collect_macro_callB1g_INtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir3PatENCNvB2c_14collect_ty_pats3_0E0EB7_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.cn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.cm, ptr noundef nonnull %i.au, i32 noundef %i.cs, i32 noundef %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ab, ptr noundef nonnull %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @8)
          to label %bb.y unwind label %bb.r, !inline_history !4039

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4166
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  %.sroa.019.1.i = phi i8 [ 1, %bb.aa ], [ 0, %bb.y ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4166
  %i.cw = load i64, ptr %i.u, align 8, !range !21, !noundef !8
  %i.cx = icmp eq i64 %i.cw, -1
  br i1 %i.cx, label %bb.ba, label %bb.ab

bb.aa:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.u, ptr noundef nonnull align 8 dereferenceable(112) %i.ac, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !4166
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.z, ptr noundef nonnull align 8 dereferenceable(112) %i.u, i64 112, i1 false)
  %i.cy = load i64, ptr %i.z, align 8, !range !22, !noalias !4166, !noundef !8
  %.not27.i = icmp eq i64 %i.cy, 2
  br i1 %.not27.i, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !4172)
  call void @llvm.experimental.noalias.scope.decl(metadata !4173), !noalias !4168
  call void @llvm.experimental.noalias.scope.decl(metadata !4174), !noalias !4168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4175
  store i8 0, ptr %i.n, align 8, !noalias !4175
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !4176, !noalias !4168, !noundef !8 ; 5 uses
  %i.dc = icmp ult i64 %i.db, 164703072086692426
  call void @llvm.assume(i1 %i.dc), !noalias !4168
  %i.dd = load i64, ptr %i.cz, align 8, !range !13, !alias.scope !4177, !noalias !4168, !noundef !8
  %i.de = icmp eq i64 %i.db, %i.dd
  br i1 %i.de, label %bb.ad, label %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector14collect_ty_pats3_0Bb_.exit105

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def3hir3PatE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cz)
          to label %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector14collect_ty_pats3_0Bb_.exit105 unwind label %bb.ae, !noalias !4178, !inline_history !4052

bb.ae:                                            ; preds = %bb.ad
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir3PatEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.n) #39
          to label %.body103 unwind label %bb.af, !noalias !4168, !inline_history !4052

bb.af:                                            ; preds = %bb.ae
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !4168, !inline_history !4052
  unreachable

_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector14collect_ty_pats3_0Bb_.exit105: ; preds = %bb.ac, %bb.ad
  %i.dh = trunc i64 %i.db to i32
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !4177, !noalias !4168, !nonnull !8, !noundef !8
  %i.dk = getelementptr inbounds nuw [56 x i8], ptr %i.dj, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dk, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false), !noalias !4168
  %i.dl = add nuw nsw i64 %i.db, 1
  store i64 %i.dl, ptr %i.da, align 8, !alias.scope !4177, !noalias !4168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4175
  br label %bb.as

.body103:                                         ; preds = %bb.aw, %bb.ae, %.thread220
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i214223, %.thread220 ], [ %i.ev, %bb.aw ], [ %i.df, %bb.ae ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.z, i64 104 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !4179, !noalias !4168, !noundef !8
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit100, label %bb.ag

bb.ag:                                            ; preds = %.body103
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dm)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit100 unwind label %bb.az

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4166
  %i.dp = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.dp, i64 32, i1 false)
  %.sroa.0167.0.copyload = load i32, ptr %i.bq, align 8, !alias.scope !4180, !noalias !4168
  %i.dq = trunc nuw i32 %.sroa.0167.0.copyload to i1
  br i1 %i.dq, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4180, !noalias !4168
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !alias.scope !4180, !noalias !4168
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ds = invoke { i32, i32 } @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBS_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB1X_3ast9generated5nodes9MacroCallEENtBS_11MacroCallIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dr, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(24) %i.ae, i32 noundef %.sroa.5.0.copyload, i32 noundef %.sroa.6.0.copyload)
          to label %bb.aj unwind label %bb.ax, !noalias !4168, !inline_history !4039 ; 0 uses

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.sroa.012.0.copyload.i = load i64, ptr %i.v, align 8, !noalias !4166
  %i.dt = trunc nuw i64 %.sroa.012.0.copyload.i to i1
  br i1 %i.dt, label %bb.ak, label %.thread216

bb.ak:                                            ; preds = %bb.aj
  %i.du = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.du, i64 24, i1 false)
  %i.dv = invoke fastcc { i64, ptr } @_RNCINvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB8_13ExprCollector18collect_macro_callNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtBc_3hir3PatENCNvB4_14collect_ty_pats3_0Es0_0Bc_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t)
          to label %bb.al unwind label %bb.aq, !noalias !4168, !inline_history !4039 ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.dw = extractvalue { i64, ptr } %i.dv, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4166
  call void @llvm.experimental.noalias.scope.decl(metadata !4181)
  call void @llvm.experimental.noalias.scope.decl(metadata !4182), !noalias !4168
  %.not.i.i = icmp eq i64 %i.dw, -1
  br i1 %.not.i.i, label %.thread216, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dx = extractvalue { i64, ptr } %i.dv, 1
  %i.dy = invoke noundef i32 @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector14collect_ty_pat(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, i64 noundef range(i64 -1, 18) %i.dw, ptr noundef %i.dx)
          to label %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector14collect_ty_pats3_0Bb_.exit98 unwind label %bb.aq, !inline_history !4062

.thread216:                                       ; preds = %bb.aj, %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !4183), !noalias !4168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4184
  store i8 0, ptr %i.o, align 8, !noalias !4184
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !alias.scope !4185, !noalias !4168, !noundef !8 ; 5 uses
  %i.ec = icmp ult i64 %i.eb, 164703072086692426
  call void @llvm.assume(i1 %i.ec), !noalias !4168
  %i.ed = load i64, ptr %i.dz, align 8, !range !13, !alias.scope !4186, !noalias !4168, !noundef !8
  %i.ee = icmp eq i64 %i.eb, %i.ed
  br i1 %i.ee, label %bb.an, label %_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector11missing_pat.exit.i.i

bb.an:                                            ; preds = %.thread216
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def3hir3PatE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector11missing_pat.exit.i.i unwind label %bb.ao, !noalias !4187, !inline_history !4052

bb.ao:                                            ; preds = %bb.an
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir3PatEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o) #39
          to label %.thread220 unwind label %bb.ap, !noalias !4168, !inline_history !4052

bb.ap:                                            ; preds = %bb.ao
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !4168, !inline_history !4052
  unreachable

_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector11missing_pat.exit.i.i: ; preds = %bb.an, %.thread216
  %i.eh = trunc i64 %i.eb to i32
end_hunk_1
begin_hunk_2_@_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector14lower_type_ref:bb.a
bb.fa:                                            ; preds = %bb.ex
  %i.ok = extractvalue { i64, ptr } %i.oh, 0      ; 2 uses
  %.not.i220 = icmp eq i64 %i.ok, -1
  br i1 %.not.i220, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ol = extractvalue { i64, ptr } %i.oh, 1
  %i.om = invoke noundef i32 @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector14lower_type_ref(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, i64 noundef range(i64 -1, 15) %i.ok, ptr noundef %i.ol, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4)
          to label %_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector18lower_type_ref_opt.exit224 unwind label %bb.ez, !inline_history !26

bb.fc:                                            ; preds = %bb.fa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4396)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4396
  store i32 16, ptr %i.i, align 8, !noalias !4396
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.op = load i64, ptr %i.oo, align 8, !alias.scope !4396, !noundef !8 ; 5 uses
  %i.oq = icmp ult i64 %i.op, 384307168202282326
  tail call void @llvm.assume(i1 %i.oq)
  %i.or = load i64, ptr %i.on, align 8, !range !13, !alias.scope !4397, !noundef !8
  %i.os = icmp eq i64 %i.op, %i.or
  br i1 %i.os, label %bb.fd, label %.noexc223

bb.fd:                                            ; preds = %bb.fc
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.on)
          to label %.noexc223 unwind label %bb.fe, !noalias !4398

bb.fe:                                            ; preds = %bb.fd
  %i.ot = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #39
          to label %.thread396 unwind label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ou = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

.noexc223:                                        ; preds = %bb.fd, %bb.fc
  %i.ov = trunc i64 %i.op to i32
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ox = load ptr, ptr %i.ow, align 8, !alias.scope !4397, !nonnull !8, !noundef !8
  %i.oy = getelementptr inbounds nuw [24 x i8], ptr %i.ox, i64 %i.op
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oy, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.oz = add nuw nsw i64 %i.op, 1
  store i64 %i.oz, ptr %i.oo, align 8, !alias.scope !4397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4396
  br label %_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector18lower_type_ref_opt.exit224

_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector18lower_type_ref_opt.exit224: ; preds = %.noexc223, %bb.fb
  %.sroa.03.0.i221 = phi i32 [ %i.ov, %.noexc223 ], [ %i.om, %bb.fb ]
  %i.pa = load ptr, ptr %i.of, align 8, !alias.scope !4399, !noundef !8 ; 2 uses
  %i.pb = icmp eq ptr %i.pa, null
  %i.pc = icmp eq ptr %i.pa, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  %or.cond.i = or i1 %i.pb, %i.pc
  br i1 %or.cond.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtCs33K2ylI4knu_10hir_expand4name4NameEEECsileJQcQObtj_7hir_def.exit, label %bb.fg, !prof !35

bb.fg:                                            ; preds = %_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector18lower_type_ref_opt.exit224
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.of) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtCs33K2ylI4knu_10hir_expand4name4NameEEECsileJQcQObtj_7hir_def.exit unwind label %bb.ey

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtCs33K2ylI4knu_10hir_expand4name4NameEEECsileJQcQObtj_7hir_def.exit: ; preds = %_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector18lower_type_ref_opt.exit224, %bb.fg
  store i64 %i.og, ptr %i.of, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector18lower_type_ref_opt.exit248

_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector18lower_type_ref_opt.exit248: ; preds = %.noexc247, %bb.he, %bb.ha, %bb.fm, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtCs33K2ylI4knu_10hir_expand4name4NameEEECsileJQcQObtj_7hir_def.exit
  %.sroa.0.0 = phi i32 [ %.sroa.03.0.i221, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtCs33K2ylI4knu_10hir_expand4name4NameEEECsileJQcQObtj_7hir_def.exit ], [ %i.pv, %bb.fm ], [ %.sroa.0.1.i, %bb.ha ], [ %i.tt, %.noexc247 ], [ %i.tk, %bb.he ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.pe = load i32, ptr %i.pd, align 4, !noundef !8
  %i.pf = add i32 %i.pe, -1                       ; 2 uses
  store i32 %i.pf, ptr %i.pd, align 4
  %i.pg = icmp eq i32 %i.pf, 0
  br i1 %i.pg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsileJQcQObtj_7hir_def.exit227.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsileJQcQObtj_7hir_def.exit227

.thread396:                                       ; preds = %bb.fe, %bb.ez
  %eh.lpad-body298 = phi { ptr, i32 } [ %i.oj, %bb.ez ], [ %i.ot, %bb.fe ] ; 2 uses
  %i.ph = icmp eq i64 %i.og, 0
  %i.pi = icmp eq i64 %i.og, ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64)
  %or.cond.i228 = or i1 %i.ph, %i.pi
  br i1 %or.cond.i228, label %.body153, label %bb.fh, !prof !35

bb.fh:                                            ; preds = %.thread396
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.av) #37
          to label %.body153 unwind label %bb.cr

bb.fi:                                            ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4400)
  store i8 1, ptr %i.cp, align 1, !alias.scope !4400
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4401)
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 3 uses
  %.val.i.i = load i8, ptr %i.pj, align 8, !range !23, !alias.scope !4402, !noundef !8 ; 2 uses
  %i.pk = icmp eq i8 %.val.i.i, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !4403
  %i.pl = zext i1 %i.pk to i8
  store i8 %i.pl, ptr %i.pj, align 8, !alias.scope !4404
  %i.pm = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes13TypeBoundListECsileJQcQObtj_7hir_def(ptr nonnull %2) #42
          to label %.noexc231 unwind label %.body285.thread425

.noexc231:                                        ; preds = %bb.fi
  %i.pn = invoke fastcc noundef i64 @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector20type_bounds_from_ast(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef %i.pm, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4)
          to label %.noexc232 unwind label %.body285.thread425 ; 4 uses

.noexc232:                                        ; preds = %.noexc231
  store i8 %.val.i.i, ptr %i.pj, align 8, !alias.scope !4404
  store i64 %i.pn, ptr %i.ac, align 8, !noalias !4403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !4403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !4403
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bf)
          to label %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector14lower_type_refs7_0Bb_.exit.i unwind label %bb.fj, !noalias !4405

bb.fj:                                            ; preds = %.noexc232
  %i.po = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pp = icmp eq i64 %i.pn, ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64)
  br i1 %i.pp, label %.body153, label %bb.fk, !prof !18

bb.fk:                                            ; preds = %bb.fj
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #37
          to label %.body153 unwind label %bb.fl, !noalias !4405

bb.fl:                                            ; preds = %bb.fk
  %i.pq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !4405
  unreachable

_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector14lower_type_refs7_0Bb_.exit.i: ; preds = %.noexc232
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pr, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false), !noalias !4403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4403
  store ptr %0, ptr %i.ab, align 8, !noalias !4403
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 %i.pn, ptr %i.ps, align 8, !noalias !4403
  %i.pt = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.pu = load ptr, ptr %i.pt, align 8, !invariant.load !8, !noalias !4405, !nonnull !8
  %i.pv = invoke noundef i32 %i.pu(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.pr, i64 noundef %i.pn)
          to label %bb.fm unwind label %.body285.thread425, !inline_history !4304

bb.fm:                                            ; preds = %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector14lower_type_refs7_0Bb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !4403
  store i8 0, ptr %i.cp, align 1, !alias.scope !4400
  br label %_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector18lower_type_ref_opt.exit248

bb.fn:                                            ; preds = %bb.r
  %.not95 = icmp eq ptr %i.cs, null
  br i1 %.not95, label %_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector18lower_type_ref_opt.exit284, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store ptr %i.cs, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au)
          to label %bb.fp unwind label %bb.hb

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.at, ptr noundef nonnull align 4 dereferenceable(12) %i.ao, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bf)
          to label %bb.fr unwind label %bb.hb

bb.fq:                                            ; preds = %bb.gm, %bb.fw, %bb.fv, %bb.ft, %bb.fs, %bb.fr
  %.sroa.019.0.i = phi i8 [ 1, %bb.fs ], [ %.sroa.019.1.i, %bb.gm ], [ 1, %bb.fv ], [ 0, %bb.fw ], [ 1, %bb.ft ], [ 1, %bb.fr ]
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit311

bb.fr:                                            ; preds = %bb.fp
  %i.px = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.px, ptr noundef nonnull align 4 dereferenceable(12) %i.an, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.as, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.py, i64 12, i1 false), !alias.scope !4406
  call void @llvm.experimental.noalias.scope.decl(metadata !4407)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4408
  %i.pz = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pz, ptr noundef nonnull align 4 dereferenceable(12) %i.at, i64 12, i1 false), !noalias !4409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.py, i64 12, i1 false), !alias.scope !4410, !noalias !4411
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.qb = load ptr, ptr %i.qa, align 8, !alias.scope !4407, !nonnull !8, !align !9, !noundef !8
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.qd = load i32, ptr %i.qc, align 8, !range !11, !alias.scope !4407, !noundef !8
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.qf = load i32, ptr %i.qe, align 4, !alias.scope !4407, !noundef !8
  %i.qg = invoke noundef nonnull align 8 ptr @_RNvXsc_NtCsileJQcQObtj_7hir_def7nameresNtB5_10ModulesMapINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB7_10ModuleIdLtE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.qb, i32 noundef %i.qd, i32 noundef %i.qf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %bb.fs unwind label %bb.fq, !noalias !4411, !inline_history !4315

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4408
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val34.i = load ptr, ptr %i.qh, align 8, !alias.scope !4407, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.n, ptr noundef nonnull align 4 dereferenceable(12) %i.at, i64 12, i1 false), !noalias !4412
  %i.qi = invoke noundef i32 @_RNvMsf_NtCsdovh4xi6v3I_4span6ast_idNtB5_8AstIdMap13erased_ast_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.val34.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.n)
          to label %bb.ft unwind label %bb.fq, !noalias !4411, !inline_history !4315

bb.ft:                                            ; preds = %bb.fs
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qg, i64 56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4408
  call void @llvm.experimental.noalias.scope.decl(metadata !4413)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.py, i64 12, i1 false), !alias.scope !4414, !noalias !4411
  %i.qk = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 %i.qi, ptr %i.qk, align 4, !alias.scope !4415, !noalias !4411
  %i.ql = invoke { i32, i32 } @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope11macro_invoc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.qj, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.y)
          to label %bb.fu unwind label %bb.fq, !noalias !4411, !inline_history !4315 ; 2 uses

bb.fu:                                            ; preds = %bb.ft
  %i.qm = extractvalue { i32, i32 } %i.ql, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4408
  %.not.i237 = icmp eq i32 %i.qm, 0
  br i1 %.not.i237, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.qn = extractvalue { i32, i32 } %i.ql, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4408
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.qp = load ptr, ptr %i.qo, align 8, !alias.scope !4407, !nonnull !8, !noundef !8
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.qr = load ptr, ptr %i.qq, align 8, !alias.scope !4407, !nonnull !8, !align !9, !noundef !8
  invoke void @_RINvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB3_8Expander15enter_expand_idNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeEB7_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.qp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.qr, i32 noundef %i.qm, i32 noundef %i.qn)
          to label %bb.fz unwind label %bb.fq, !noalias !4411, !inline_history !4315

bb.fw:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4408
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.qu = load <2 x ptr>, ptr %i.qs, align 8, !alias.scope !4407
  %i.qv = load ptr, ptr %i.qt, align 8, !alias.scope !4407, !nonnull !8, !align !9, !noundef !8
  %i.qw = load ptr, ptr %i.qs, align 8, !alias.scope !4407, !nonnull !8, !noundef !8
  %i.qx = load <2 x ptr>, ptr %i.qa, align 8, !alias.scope !4407
  %i.qy = shufflevector <2 x ptr> %i.qu, <2 x ptr> %i.qx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x ptr> %i.qy, ptr %i.w, align 8, !noalias !4408
  %i.qz = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.qc, ptr %i.qz, align 8, !noalias !4408
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.rb = load i32, ptr %i.ra, align 8, !range !11, !alias.scope !4407, !noundef !8
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %i.rd = load i32, ptr %i.rc, align 4, !alias.scope !4407, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4408
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.re, ptr %i.v, align 8, !noalias !4408
  invoke void @_RINvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB3_8Expander12enter_expandNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeNCINvMs2_NtB5_5lowerNtB2h_13ExprCollector18collect_macro_callB1g_INtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtB7_3hir8type_ref7TypeRefENCNvB2d_14lower_type_refs8_0E0EB7_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.qw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.qv, ptr noundef nonnull %i.cs, i32 noundef %i.rb, i32 noundef %i.rd, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.w, ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @14)
          to label %bb.fx unwind label %bb.fq, !inline_history !4315

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4408
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fz, %bb.fx
  %.sroa.019.1.i = phi i8 [ 1, %bb.fz ], [ 0, %bb.fx ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4408
  %i.rf = load i64, ptr %i.p, align 8, !range !21, !noundef !8
  %i.rg = icmp eq i64 %i.rf, -1
  br i1 %i.rg, label %bb.gu, label %bb.ga

bb.fz:                                            ; preds = %bb.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.p, ptr noundef nonnull align 8 dereferenceable(112) %i.x, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4408
  br label %bb.fy

bb.ga:                                            ; preds = %bb.fy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.u, ptr noundef nonnull align 8 dereferenceable(112) %i.p, i64 112, i1 false)
  %i.rh = load i64, ptr %i.u, align 8, !range !22, !noalias !4408, !noundef !8
  %.not27.i = icmp eq i64 %i.rh, 2
  br i1 %.not27.i, label %bb.gb, label %bb.ge

bb.gb:                                            ; preds = %bb.ga
  %i.ri = invoke fastcc noundef i32 @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector16alloc_error_type(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0)
          to label %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector14lower_type_refs8_0Bb_.exit313 unwind label %bb.gp, !inline_history !4319

bb.gc:                                            ; preds = %bb.gp, %.thread414
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i412417, %.thread414 ], [ %i.sf, %bb.gp ] ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.u, i64 104 ; 2 uses
  %i.rk = load ptr, ptr %i.rj, align 8, !alias.scope !4416, !noalias !4417, !noundef !8
  %i.rl = icmp eq ptr %i.rk, null
  br i1 %i.rl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit311, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.rj)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit311 unwind label %bb.gs

bb.ge:                                            ; preds = %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4408
  %i.rm = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.rm, i64 32, i1 false)
  %.sroa.0371.0.copyload = load i32, ptr %i.py, align 8, !alias.scope !4418, !noalias !4411
  %i.rn = trunc nuw i32 %.sroa.0371.0.copyload to i1
  br i1 %i.rn, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %.sroa.6373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6373.0.copyload = load i32, ptr %.sroa.6373.0..sroa_idx, align 8, !alias.scope !4418, !noalias !4411
  %.sroa.5372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.5372.0.copyload = load i32, ptr %.sroa.5372.0..sroa_idx, align 4, !alias.scope !4418, !noalias !4411
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.rp = invoke { i32, i32 } @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBS_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB1X_3ast9generated5nodes9MacroCallEENtBS_11MacroCallIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ro, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(24) %i.z, i32 noundef %.sroa.5372.0.copyload, i32 noundef %.sroa.6373.0.copyload)
          to label %bb.gg unwind label %bb.gq, !noalias !4411, !inline_history !4315 ; 0 uses

bb.gg:                                            ; preds = %bb.ge, %bb.gf
  %.sroa.012.0.copyload.i = load i64, ptr %i.q, align 8, !noalias !4408
  %i.rq = trunc nuw i64 %.sroa.012.0.copyload.i to i1
  br i1 %i.rq, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.rr = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.rr, i64 24, i1 false)
  %i.rs = invoke fastcc { i64, ptr } @_RNCINvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB8_13ExprCollector18collect_macro_callNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtBc_3hir8type_ref7TypeRefENCNvB4_14lower_type_refs8_0Es0_0Bc_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.gj unwind label %.thread418, !noalias !4411, !inline_history !4315 ; 2 uses

bb.gi:                                            ; preds = %bb.gj, %bb.gg
  %.sroa.511.0.i = phi ptr [ %i.rw, %bb.gj ], [ undef, %bb.gg ]
  %.sroa.010.0.i = phi i64 [ %i.rv, %bb.gj ], [ -1, %bb.gg ]
  %i.rt = invoke fastcc noundef i32 @_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector14lower_type_refs8_0Bb_(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, i64 noundef %.sroa.010.0.i, ptr %.sroa.511.0.i)
          to label %bb.gk unwind label %.thread418, !noalias !4417, !inline_history !4315

.thread418:                                       ; preds = %bb.gh, %bb.gi
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %.thread414

bb.gj:                                            ; preds = %bb.gh
  %i.rv = extractvalue { i64, ptr } %i.rs, 0
  %i.rw = extractvalue { i64, ptr } %i.rs, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4408
  br label %bb.gi

bb.gk:                                            ; preds = %bb.gi
  invoke void @_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB2_8Expander4exit(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.p)
          to label %bb.gl unwind label %bb.gp

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4408
  br label %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector14lower_type_refs8_0Bb_.exit313

_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector14lower_type_refs8_0Bb_.exit313: ; preds = %bb.gb, %bb.gl
  %.sroa.0.0.i238 = phi i32 [ %i.rt, %bb.gl ], [ %i.ri, %bb.gb ] ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.u, i64 104 ; 2 uses
  %i.ry = load ptr, ptr %i.rx, align 8, !alias.scope !4419, !noalias !4417, !noundef !8
  %i.rz = icmp eq ptr %i.ry, null
  br i1 %i.rz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit, label %bb.gm

bb.gm:                                            ; preds = %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector14lower_type_refs8_0Bb_.exit313
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.rx)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit unwind label %bb.fq

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit: ; preds = %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector14lower_type_refs8_0Bb_.exit313, %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !4408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4408
  %i.sa = trunc nuw i8 %.sroa.019.1.i to i1
  br i1 %i.sa, label %bb.gn, label %_RINvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector18collect_macro_callNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtBa_3hir8type_ref7TypeRefENCNvB2_14lower_type_refs8_0EBa_.exit

bb.gn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit
  %i.sb = getelementptr inbounds nuw i8, ptr %i.cs, i64 48 ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 4, !noundef !8
  %i.sd = add i32 %i.sc, -1                       ; 2 uses
  store i32 %i.sd, ptr %i.sb, align 4
  %i.se = icmp eq i32 %i.sd, 0
  br i1 %i.se, label %bb.go, label %_RINvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector18collect_macro_callNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtBa_3hir8type_ref7TypeRefENCNvB2_14lower_type_refs8_0EBa_.exit

bb.go:                                            ; preds = %bb.gn
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cs) #37
          to label %_RINvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector18collect_macro_callNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtBa_3hir8type_ref7TypeRefENCNvB2_14lower_type_refs8_0EBa_.exit unwind label %.body285.thread425

bb.gp:                                            ; preds = %bb.gb, %bb.gk
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.gq:                                            ; preds = %bb.gf
  %i.sg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sh = load i64, ptr %i.q, align 8, !range !16, !alias.scope !4420, !noalias !4417, !noundef !8
  %i.si = icmp eq i64 %i.sh, 0
  br i1 %i.si, label %.thread414, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.sj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtBE_3ast9generated5nodes4TypeEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %i.sj)
          to label %.thread414 unwind label %bb.gs

bb.gs:                                            ; preds = %bb.gd, %bb.gr, %bb.gz, %.thread414
  %i.sk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !4417, !inline_history !4315
  unreachable

.thread414:                                       ; preds = %bb.gr, %bb.gq, %.thread418
  %.pn.i412417 = phi { ptr, i32 } [ %i.ru, %.thread418 ], [ %i.sg, %bb.gq ], [ %i.sg, %bb.gr ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def10expr_store8expander4MarkEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.r) #39
          to label %bb.gc unwind label %bb.gs, !noalias !4417, !inline_history !4315
end_hunk_2
begin_hunk_3_@_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector21collect_macro_as_stmt:bb.a
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [72 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [112 x i8], align 8               ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 5 uses
  %i.m = alloca [112 x i8], align 8               ; 4 uses
  %i.n = alloca [16 x i8], align 4                ; 5 uses
  %i.o = alloca [24 x i8], align 4                ; 6 uses
  %i.p = alloca [12 x i8], align 4                ; 4 uses
  %i.q = alloca [12 x i8], align 4                ; 4 uses
  %i.r = alloca [12 x i8], align 4                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [12 x i8], align 4                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.x = invoke noundef nonnull ptr @_RNvXsd7_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9MacroExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i17, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i13, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit19, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  store ptr %i.x, ptr %i.z, align 8
  store i64 20, ptr %i.v, align 8
  %i.aa = invoke noundef zeroext i1 @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector9check_cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @109)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5653)
  %.val.i = load ptr, ptr %i.z, align 8, !alias.scope !5653, !nonnull !8, !noundef !8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i, i64 48 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !5653, !noundef !8
  %i.ae = add i32 %i.ad, -1                       ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 4, !noalias !5653
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i, label %bb.bw

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i: ; preds = %bb.d
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i) #37
          to label %bb.bw unwind label %bb.bu

bb.e:                                             ; preds = %bb.c
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !5654)
  %.val.i12 = load ptr, ptr %i.z, align 8, !alias.scope !5654, !nonnull !8, !noundef !8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i12, i64 48 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !5654, !noundef !8
  %i.ai = add i32 %i.ah, -1                       ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 4, !noalias !5654
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i13, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit15

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i13: ; preds = %bb.f
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i12) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit15 unwind label %bb.b

bb.g:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !5655)
  %.val.i16 = load ptr, ptr %i.z, align 8, !alias.scope !5655, !nonnull !8, !noundef !8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i16, i64 48 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !noalias !5655, !noundef !8
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !noalias !5655
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i17, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit19

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i17: ; preds = %bb.g
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i16) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit19 unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit15: ; preds = %bb.f, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit15
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !8
  %i.aq = add i32 %i.ap, -1                       ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 4
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroExprECsileJQcQObtj_7hir_def.exit

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #37
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroExprECsileJQcQObtj_7hir_def.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit19: ; preds = %bb.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.as = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes9MacroCallECsileJQcQObtj_7hir_def(ptr nonnull %2)
          to label %bb.j unwind label %bb.b       ; 10 uses

bb.j:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit19
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroExprECsileJQcQObtj_7hir_def.exit: ; preds = %bb.i, %bb.h, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEE7inspectNCNvMs2_NtNtB1g_10expr_store5lowerNtB23_13ExprCollector21collect_macro_as_stmts_0EB1g_.exit
  %.sroa.4.1 = phi i32 [ %i.fn, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEE7inspectNCNvMs2_NtNtB1g_10expr_store5lowerNtB23_13ExprCollector21collect_macro_as_stmts_0EB1g_.exit ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i32 [ %i.fm, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEE7inspectNCNvMs2_NtNtB1g_10expr_store5lowerNtB23_13ExprCollector21collect_macro_as_stmts_0EB1g_.exit ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.at = insertvalue { i32, i32 } poison, i32 %.sroa.0.1, 0
  %i.au = insertvalue { i32, i32 } %i.at, i32 %.sroa.4.1, 1
  ret { i32, i32 } %i.au

bb.l:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !noalias !5656, !noundef !8
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !noalias !5656
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i21, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit23.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i21: ; preds = %bb.l
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit23.thread unwind label %bb.bu

bb.m:                                             ; preds = %bb.j
  store ptr %i.as, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %2, ptr %i.ba, align 8
  store i64 20, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.q, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !noalias !5657, !noundef !8
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !noalias !5657
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i25, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit27

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i25: ; preds = %bb.n
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit27 unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit23

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit23: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit27, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i25
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit23.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit27: ; preds = %bb.n, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
          to label %bb.p unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit23

bb.o:                                             ; preds = %bb.bj, %bb.bq, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p
  %.sroa.010.0.i = phi i8 [ %.sroa.010.1.i, %bb.bq ], [ %.sroa.010.1.i, %bb.bj ], [ 1, %bb.t ], [ 0, %bb.u ], [ 1, %bb.r ], [ 1, %bb.p ], [ 1, %bb.q ]
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit50

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) %i.p, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !5658)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5659
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bg, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false), !noalias !5660
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.bh, i64 12, i1 false), !alias.scope !5661, !noalias !5662
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !5658, !nonnull !8, !align !9, !noundef !8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !range !11, !alias.scope !5658, !noundef !8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.bn = load i32, ptr %i.bm, align 4, !alias.scope !5658, !noundef !8
  %i.bo = invoke noundef nonnull align 8 ptr @_RNvXsc_NtCsileJQcQObtj_7hir_def7nameresNtB5_10ModulesMapINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB7_10ModuleIdLtE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bj, i32 noundef %i.bl, i32 noundef %i.bn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %bb.q unwind label %bb.o, !noalias !5662, !inline_history !5625

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5659
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val29.i = load ptr, ptr %i.bp, align 8, !alias.scope !5658, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5659
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false), !noalias !5663
  %i.bq = invoke noundef i32 @_RNvMsf_NtCsdovh4xi6v3I_4span6ast_idNtB5_8AstIdMap13erased_ast_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.val29.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.d)
          to label %bb.r unwind label %bb.o, !noalias !5662, !inline_history !5625

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5659
  call void @llvm.experimental.noalias.scope.decl(metadata !5664)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.bh, i64 12, i1 false), !alias.scope !5665, !noalias !5662
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 %i.bq, ptr %i.bs, align 4, !alias.scope !5666, !noalias !5662
  %i.bt = invoke { i32, i32 } @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope11macro_invoc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.br, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.n)
          to label %bb.s unwind label %bb.o, !noalias !5662, !inline_history !5625 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.bu = extractvalue { i32, i32 } %i.bt, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5659
  %.not.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = extractvalue { i32, i32 } %i.bt, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5659
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !5658, !nonnull !8, !noundef !8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !5658, !nonnull !8, !align !9, !noundef !8
  invoke void @_RINvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB3_8Expander15enter_expand_idNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10MacroStmtsEB7_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.bx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.bz, i32 noundef %i.bu, i32 noundef %i.bv)
          to label %bb.x unwind label %bb.o, !noalias !5662, !inline_history !5625

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5659
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.cc = load <2 x ptr>, ptr %i.ca, align 8, !alias.scope !5658
  %i.cd = load ptr, ptr %i.cb, align 8, !alias.scope !5658, !nonnull !8, !align !9, !noundef !8
  %i.ce = load ptr, ptr %i.ca, align 8, !alias.scope !5658, !nonnull !8, !noundef !8
  %i.cf = load <2 x ptr>, ptr %i.bi, align 8, !alias.scope !5658
  %i.cg = shufflevector <2 x ptr> %i.cc, <2 x ptr> %i.cf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x ptr> %i.cg, ptr %i.l, align 8, !noalias !5659
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.bk, ptr %i.ch, align 8, !noalias !5659
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.cj = load i32, ptr %i.ci, align 8, !range !11, !alias.scope !5658, !noundef !8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %i.cl = load i32, ptr %i.ck, align 4, !alias.scope !5658, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5659
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.cm, ptr %i.k, align 8, !noalias !5659
  invoke void @_RINvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB3_8Expander12enter_expandNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10MacroStmtsNCINvMs2_NtB5_5lowerNtB2o_13ExprCollector18collect_macro_callB1g_INtNtCshzWfHUSfYae_4core6option6OptionINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir4ExprEENCNvB2k_21collect_macro_as_stmt0E0EB7_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.ce, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.cd, ptr noundef nonnull %i.as, i32 noundef %i.cj, i32 noundef %i.cl, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.l, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @5)
          to label %bb.v unwind label %bb.o, !inline_history !5625

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5659
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %.sroa.010.1.i = phi i8 [ 1, %bb.x ], [ 0, %bb.v ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5659
  %i.cn = load i64, ptr %i.f, align 8, !range !21, !noundef !8
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %bb.bq, label %bb.y

bb.x:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %i.m, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5659
  br label %bb.w

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.j, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  %i.cp = load i64, ptr %i.j, align 8, !range !22, !noalias !5659, !noundef !8
  %.not18.i = icmp eq i64 %i.cp, 2
  br i1 %.not18.i, label %bb.bi, label %bb.ab

bb.z:                                             ; preds = %bb.bl, %.thread75
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i7378, %.thread75 ], [ %i.ev, %bb.bl ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !5667, !noalias !5668, !noundef !8
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit50, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cq)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit50 unwind label %bb.bo

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5659
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5659
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i64 32, i1 false)
  %.sroa.052.0.copyload = load i32, ptr %i.bh, align 8, !alias.scope !5669, !noalias !5662
  %i.cu = trunc nuw i32 %.sroa.052.0.copyload to i1
  br i1 %i.cu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.653.0.copyload = load i32, ptr %.sroa.653.0..sroa_idx, align 8, !alias.scope !5669, !noalias !5662
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !alias.scope !5669, !noalias !5662
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.cw = invoke { i32, i32 } @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBS_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB1X_3ast9generated5nodes9MacroCallEENtBS_11MacroCallIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(24) %i.o, i32 noundef %.sroa.5.0.copyload, i32 noundef %.sroa.653.0.copyload)
          to label %bb.ad unwind label %bb.bm, !noalias !5662, !inline_history !5625 ; 0 uses

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.sroa.06.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !5659
  %i.cx = trunc nuw i64 %.sroa.06.0.copyload.i to i1
  br i1 %i.cx, label %bb.ae, label %.thread

.thread:                                          ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.bg

bb.ae:                                            ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5659
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 24, i1 false)
  %i.cz = invoke noundef nonnull ptr @_RNvMs0_CsjJXvCMGntp8_6syntaxINtB5_5ParseNtNtNtNtB5_3ast9generated5nodes10MacroStmtsE4treeCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.ag unwind label %bb.af, !noalias !5662 ; 5 uses

bb.af:                                            ; preds = %bb.ae
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtBE_3ast9generated5nodes10MacroStmtsEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #39
          to label %.thread75 unwind label %bb.ah, !noalias !5662

bb.ag:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtBE_3ast9generated5nodes10MacroStmtsEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.ai unwind label %bb.bf

bb.ah:                                            ; preds = %bb.af
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !5662
  unreachable

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 48 ; 6 uses
  %i.dd = load i32, ptr %i.dc, align 4, !noalias !5670, !noundef !8 ; 2 uses
  %i.de = icmp eq i32 %i.dd, -1
  br i1 %i.de, label %bb.ak, label %bb.aj, !prof !15

bb.aj:                                            ; preds = %bb.ai
  %i.df = add nuw i32 %i.dd, 1
  store i32 %i.df, ptr %i.dc, align 4, !noalias !5670
  %i.dg = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %i.cz)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i unwind label %bb.bb, !noalias !5670, !inline_history !5637

bb.ak:                                            ; preds = %bb.ai
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #40
          to label %.noexc12.i unwind label %bb.bb, !noalias !5670, !inline_history !5637

.noexc12.i:                                       ; preds = %bb.ak
  unreachable

.body.i:                                          ; preds = %bb.bb, %bb.ap, %bb.ao, %bb.an
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dk, %bb.ap ], [ %i.ed, %bb.bb ], [ %i.dk, %bb.ao ], [ %i.dk, %bb.an ] ; 2 uses
  %i.dh = load i32, ptr %i.dc, align 4, !noalias !5670, !noundef !8
  %i.di = add i32 %i.dh, -1                       ; 2 uses
  store i32 %i.di, ptr %i.dc, align 4, !noalias !5670
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.al, label %.thread75

bb.al:                                            ; preds = %.body.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cz) #37
          to label %.thread75 unwind label %bb.be, !noalias !5668, !inline_history !5637

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i: ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5670
  store ptr %i.dg, ptr %i.b, align 8, !noalias !5671
  br label %bb.am

bb.am:                                            ; preds = %bb.ar, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i
  invoke void @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4StmtENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.aq unwind label %bb.an, !noalias !5668, !inline_history !5641

bb.an:                                            ; preds = %bb.ar, %bb.am
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val.i.i = load ptr, ptr %i.b, align 8, !noalias !5671, !noundef !8 ; 3 uses
  %i.dl = icmp eq ptr %.val.i.i, null
  br i1 %i.dl, label %.body.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !noalias !5668, !noundef !8
  %i.do = add i32 %i.dn, -1                       ; 2 uses
  store i32 %i.do, ptr %i.dm, align 4, !noalias !5668
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.ap, label %.body.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i) #37
          to label %.body.i unwind label %bb.av, !noalias !5668, !inline_history !5637

bb.aq:                                            ; preds = %bb.am
  %i.dq = load i64, ptr %i.a, align 8, !range !14, !noalias !5670, !noundef !8
  %.not.i.i = icmp eq i64 %i.dq, -1
  br i1 %.not.i.i, label %bb.as, label %bb.ar

end_hunk_3
begin_hunk_4_@_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector23expand_macros_to_string:bb.a
  invoke void @_RNvMsa_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7Literal4kind(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.s = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes9MacroCallECsileJQcQObtj_7hir_def(ptr nonnull %2)
          to label %bb.q unwind label %.body.thread78 ; 11 uses

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsileJQcQObtj_7hir_def.exit.sink.split.i, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !noundef !8
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.u, align 4
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LiteralECsileJQcQObtj_7hir_def.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LiteralECsileJQcQObtj_7hir_def.exit.thread unwind label %bb.o

bb.f:                                             ; preds = %bb.b
  %i.y = load i8, ptr %i.q, align 8, !range !34, !noundef !8 ; 2 uses
  %i.z = icmp eq i8 %i.y, 0                       ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 14 uses
  %.sroa.7.0 = select i1 %i.z, i8 1, i8 2
  %.sroa.0.0 = select i1 %i.z, ptr %i.ab, ptr undef
  br i1 %i.z, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext11LiteralKindECsileJQcQObtj_7hir_def.exit, label %bb.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext11LiteralKindECsileJQcQObtj_7hir_def.exit: ; preds = %bb.h, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsileJQcQObtj_7hir_def.exit.sink.split.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !noundef !8
  %i.ae = add i32 %i.ad, -1                       ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 4
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LiteralECsileJQcQObtj_7hir_def.exit24

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext11LiteralKindECsileJQcQObtj_7hir_def.exit
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #37
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LiteralECsileJQcQObtj_7hir_def.exit24

bb.h:                                             ; preds = %bb.f
  switch i8 %i.y, label %default.unreachable [
    i8 7, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext11LiteralKindECsileJQcQObtj_7hir_def.exit
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
    i8 5, label %bb.m
    i8 6, label %bb.n
  ]

default.unreachable:                              ; preds = %bb.h
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsileJQcQObtj_7hir_def.exit.sink.split.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ab) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext11LiteralKindECsileJQcQObtj_7hir_def.exit unwind label %bb.d

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !8
  %i.ai = add i32 %i.ah, -1                       ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 4
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsileJQcQObtj_7hir_def.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext11LiteralKindECsileJQcQObtj_7hir_def.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !noundef !8
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsileJQcQObtj_7hir_def.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext11LiteralKindECsileJQcQObtj_7hir_def.exit

bb.k:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !8
  %i.aq = add i32 %i.ap, -1                       ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 4
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsileJQcQObtj_7hir_def.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext11LiteralKindECsileJQcQObtj_7hir_def.exit

bb.l:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !noundef !8
  %i.au = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.au, ptr %i.as, align 4
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsileJQcQObtj_7hir_def.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext11LiteralKindECsileJQcQObtj_7hir_def.exit

bb.m:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !noundef !8
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsileJQcQObtj_7hir_def.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext11LiteralKindECsileJQcQObtj_7hir_def.exit

bb.n:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !noundef !8
  %i.bc = add i32 %i.bb, -1                       ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 4
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsileJQcQObtj_7hir_def.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext11LiteralKindECsileJQcQObtj_7hir_def.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LiteralECsileJQcQObtj_7hir_def.exit24: ; preds = %bb.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8expr_ext11LiteralKindECsileJQcQObtj_7hir_def.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroExprECsileJQcQObtj_7hir_def.exit32

bb.o:                                             ; preds = %bb.bo, %bb.p, %bb.e
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

.body.thread:                                     ; preds = %bb.bn, %bb.bo, %bb.bi, %bb.bj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit60, %.body.thread78
  %.pn = phi { ptr, i32 } [ %.pn31.i, %bb.bi ], [ %lpad.thr_comm, %.body.thread78 ], [ %lpad.thr_comm.split-lp, %bb.bn ], [ %.pn31.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit60 ], [ %.pn31.i, %bb.bj ], [ %lpad.thr_comm.split-lp, %bb.bo ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !8
  %i.bh = add i32 %i.bg, -1                       ; 2 uses
  store i32 %i.bh, ptr %i.bf, align 4
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LiteralECsileJQcQObtj_7hir_def.exit.thread

bb.p:                                             ; preds = %.body.thread
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LiteralECsileJQcQObtj_7hir_def.exit.thread unwind label %bb.o

bb.q:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.s, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %bb.v unwind label %bb.bn

bb.s:                                             ; preds = %bb.q, %.thread104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !noundef !8
  %i.bl = add i32 %i.bk, -1                       ; 2 uses
  store i32 %i.bl, ptr %i.bj, align 4
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.t, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroExprECsileJQcQObtj_7hir_def.exit32

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #37
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroExprECsileJQcQObtj_7hir_def.exit32

.body.thread78:                                   ; preds = %bb.c, %bb.bh, %bb.ax
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.u:                                             ; preds = %bb.av, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.v
  %.sroa.020.0.i = phi i8 [ 1, %bb.w ], [ %.sroa.020.1.i, %bb.av ], [ 1, %bb.z ], [ 0, %bb.aa ], [ 1, %bb.x ], [ 1, %bb.v ]
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit60

bb.v:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.o, ptr noundef nonnull align 4 dereferenceable(12) %i.n, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !5769)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5770
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bo, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false), !noalias !8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.bp, i64 12, i1 false), !alias.scope !5771, !noalias !5772
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !5769, !nonnull !8, !align !9, !noundef !8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !range !11, !alias.scope !5769, !noundef !8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.bv = load i32, ptr %i.bu, align 4, !alias.scope !5769, !noundef !8
  %i.bw = invoke noundef nonnull align 8 ptr @_RNvXsc_NtCsileJQcQObtj_7hir_def7nameresNtB5_10ModulesMapINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB7_10ModuleIdLtE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.br, i32 noundef %i.bt, i32 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %bb.w unwind label %bb.u, !noalias !5772, !inline_history !5746

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5770
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val35.i = load ptr, ptr %i.bx, align 8, !alias.scope !5769, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false), !noalias !5769
  %i.by = invoke noundef i32 @_RNvMsf_NtCsdovh4xi6v3I_4span6ast_idNtB5_8AstIdMap13erased_ast_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.val35.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a)
          to label %bb.x unwind label %bb.u, !noalias !5772, !inline_history !5746

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5770
  call void @llvm.experimental.noalias.scope.decl(metadata !5773)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.bp, i64 12, i1 false), !alias.scope !5774, !noalias !5772
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 %i.by, ptr %i.ca, align 4, !alias.scope !5775, !noalias !5772
  %i.cb = invoke { i32, i32 } @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope11macro_invoc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.bz, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.l)
          to label %bb.y unwind label %bb.u, !noalias !5772, !inline_history !5746 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.cc = extractvalue { i32, i32 } %i.cb, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5770
  %.not.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = extractvalue { i32, i32 } %i.cb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5770
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !5769, !nonnull !8, !noundef !8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !5769, !nonnull !8, !align !9, !noundef !8
  invoke void @_RINvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB3_8Expander15enter_expand_idNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEB7_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.cf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.ch, i32 noundef %i.cc, i32 noundef %i.cd)
          to label %bb.ad unwind label %bb.u, !noalias !5772, !inline_history !5746

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5770
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ck = load <2 x ptr>, ptr %i.ci, align 8, !alias.scope !5769
  %i.cl = load ptr, ptr %i.cj, align 8, !alias.scope !5769, !nonnull !8, !align !9, !noundef !8
  %i.cm = load ptr, ptr %i.ci, align 8, !alias.scope !5769, !nonnull !8, !noundef !8
  %i.cn = load <2 x ptr>, ptr %i.bq, align 8, !alias.scope !5769
  %i.co = shufflevector <2 x ptr> %i.ck, <2 x ptr> %i.cn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x ptr> %i.co, ptr %i.j, align 8, !noalias !5770
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.bs, ptr %i.cp, align 8, !noalias !5770
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.cr = load i32, ptr %i.cq, align 8, !range !11, !alias.scope !5769, !noundef !8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %i.ct = load i32, ptr %i.cs, align 4, !alias.scope !5769, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5770
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.cu, ptr %i.i, align 8, !noalias !5770
  invoke void @_RINvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB3_8Expander12enter_expandNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprNCINvMs2_NtB5_5lowerNtB2h_13ExprCollector18collect_macro_callB1g_INtNtCshzWfHUSfYae_4core6option6OptionTNtNtB1k_6tokens6StringbEENCNvB2d_23expand_macros_to_string0E0EB7_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.cm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.cl, ptr noundef nonnull %i.s, i32 noundef %i.cr, i32 noundef %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.j, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @13)
          to label %bb.ab unwind label %bb.u, !inline_history !5746

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5770
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %.sroa.020.1.i = phi i8 [ 1, %bb.ad ], [ 0, %bb.ab ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5770
  %i.cv = load i64, ptr %i.c, align 8, !range !21, !noundef !8
  %i.cw = icmp eq i64 %i.cv, -1
  br i1 %i.cw, label %bb.bb, label %bb.ae

bb.ad:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.k, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5770
  br label %bb.ac

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false)
  %i.cx = load i64, ptr %i.h, align 8, !range !22, !noalias !5770, !noundef !8
  %.not28.i = icmp eq i64 %i.cx, 2
  br i1 %.not28.i, label %bb.au, label %bb.ag

.thread97:                                        ; preds = %bb.ar, %bb.aq, %bb.as, %.thread92
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i8695, %.thread92 ], [ %i.dr, %bb.ar ], [ %i.dr, %bb.as ], [ %i.dr, %bb.aq ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !5776, !noalias !5772, !noundef !8
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit60, label %bb.af

bb.af:                                            ; preds = %.thread97
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cy)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit60 unwind label %bb.ay

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5770
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.db, i64 32, i1 false)
  %.sroa.068.0.copyload = load i32, ptr %i.bp, align 8, !alias.scope !5777, !noalias !5772
  %i.dc = trunc nuw i32 %.sroa.068.0.copyload to i1
  br i1 %i.dc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5777, !noalias !5772
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !alias.scope !5777, !noalias !5772
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.de = invoke { i32, i32 } @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBS_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB1X_3ast9generated5nodes9MacroCallEENtBS_11MacroCallIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dd, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(24) %i.m, i32 noundef %.sroa.5.0.copyload, i32 noundef %.sroa.6.0.copyload)
          to label %bb.ai unwind label %bb.az, !noalias !5772, !inline_history !5746 ; 0 uses

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.sroa.013.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !5770
  %i.df = trunc nuw i64 %.sroa.013.0.copyload.i to i1
  br i1 %i.df, label %bb.aj, label %.thread88

bb.aj:                                            ; preds = %bb.ai
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false)
  %i.dh = invoke { i64, ptr } @_RNvMs0_CsjJXvCMGntp8_6syntaxINtB5_5ParseNtNtNtNtB5_3ast9generated5nodes4ExprE4treeCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %bb.al unwind label %bb.ak, !noalias !5772 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtBE_3ast9generated5nodes4ExprEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #39
          to label %.thread92 unwind label %bb.am, !noalias !5772

bb.al:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtBE_3ast9generated5nodes4ExprEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.an unwind label %bb.ap

bb.am:                                            ; preds = %bb.ak
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !5772
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.dk = extractvalue { i64, ptr } %i.dh, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5770
  %.not.i54 = icmp eq i64 %i.dk, -1
  br i1 %.not.i54, label %.thread88, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dl = extractvalue { i64, ptr } %i.dh, 1
  %i.dm = invoke fastcc { ptr, i8 } @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector23expand_macros_to_string(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, i64 noundef range(i64 0, 37) %i.dk, ptr noundef %i.dl)
          to label %.noexc55 unwind label %bb.ap, !inline_history !5755 ; 2 uses

.noexc55:                                         ; preds = %bb.ao
  %i.dn = extractvalue { ptr, i8 } %i.dm, 0
  %i.do = extractvalue { ptr, i8 } %i.dm, 1
  %i.dp = icmp eq i8 %i.do, 2
  br label %.thread88

bb.ap:                                            ; preds = %bb.al, %bb.ao
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.thread92

.thread88:                                        ; preds = %bb.ai, %.noexc55, %bb.an
  %.sroa.03.0.i = phi ptr [ %i.dn, %.noexc55 ], [ undef, %bb.an ], [ undef, %bb.ai ] ; 4 uses
  %.sroa.34.0.i = phi i1 [ %i.dp, %.noexc55 ], [ true, %bb.an ], [ true, %bb.ai ] ; 2 uses
  invoke void @_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB2_8Expander4exit(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.c)
          to label %bb.at unwind label %bb.aq

bb.aq:                                            ; preds = %.thread88
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %.sroa.34.0.i, label %.thread97, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.i) ], !noalias !5772
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 48 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !noalias !5772, !noundef !8
  %i.du = add i32 %i.dt, -1                       ; 2 uses
  store i32 %i.du, ptr %i.ds, align 4, !noalias !5772
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.as, label %.thread97

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.03.0.i) #37
          to label %.thread97 unwind label %bb.ay

bb.at:                                            ; preds = %.thread88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5770
  br label %bb.au

bb.au:                                            ; preds = %bb.ae, %bb.at
  %.sroa.4.0.i = phi i1 [ %.sroa.34.0.i, %bb.at ], [ true, %bb.ae ]
  %.sroa.0.0.i = phi ptr [ %.sroa.03.0.i, %bb.at ], [ undef, %bb.ae ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !5778, !noalias !5772, !noundef !8
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dw)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit unwind label %bb.u

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5770
  %i.dz = trunc nuw i8 %.sroa.020.1.i to i1
  br i1 %i.dz, label %bb.aw, label %bb.bk

bb.aw:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit
end_hunk_4
begin_hunk_5_@_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector23lower_ty_pat_range_side:bb.a

bb.bg:                                            ; preds = %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector23lower_ty_pat_range_sides_0Bb_.exit, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 2, ptr %i.m, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.n, ptr noundef nonnull align 16 dereferenceable(48) %i.m, i64 48, i1 false)
  br label %bb.bi

_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector23lower_ty_pat_range_sides_0Bb_.exit: ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ed = load i32, ptr %i.i, align 8, !range !46, !noundef !8
  %.not15 = icmp eq i32 %i.ed, -1
  br i1 %.not15, label %bb.bg, label %bb.bh

bb.bh:                                            ; preds = %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector23lower_ty_pat_range_sides_0Bb_.exit
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 2, ptr %i.m, align 16
  store i32 3, ptr %i.n, align 16
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4, i64 28, i1 false)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir4ExprEBF_(ptr noalias nofree noundef align 16 dereferenceable(48) %i.m)
          to label %bb.bi unwind label %bb.ay

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ee = invoke fastcc noundef i32 @_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector19alloc_expr_from_pat(ptr noalias nofree noundef align 8 dereferenceable(1120) %0, ptr noalias nofree noundef align 16 captures(address) dereferenceable(48) %i.n, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.s)
          to label %bb.bj unwind label %bb.ay

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECsileJQcQObtj_7hir_def.exit: ; preds = %.body, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsileJQcQObtj_7hir_def.exit.sink.split.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector24alloc_type_ref_desugared(ptr noalias nofree noundef align 8 dereferenceable(1120) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 5 uses
  %i.d = icmp ult i64 %i.c, 384307168202282326
  tail call void @llvm.assume(i1 %i.d)
  %i.e = load i64, ptr %i.a, align 8, !range !13, !alias.scope !5842, !noundef !8
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefE8push_mutBL_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefE8push_mutBL_.exit unwind label %bb.c, !noalias !5843

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #39
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefE8push_mutBL_.exit: ; preds = %bb.a, %bb.b
  %i.i = trunc i64 %i.c to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !5842, !nonnull !8, !noundef !8
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.m = add nuw nsw i64 %i.c, 1
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !5842
  ret i32 %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector25collect_pat_possibly_rest(ptr noalias nofree noundef align 8 dereferenceable(1120) %0, i64 noundef range(i64 0, 18) %1, ptr noundef %2, ptr noalias nofree noundef align 8 dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [112 x i8], align 8               ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [72 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 4                ; 5 uses
  %i.j = alloca [80 x i8], align 8                ; 7 uses
  %i.k = alloca [112 x i8], align 8               ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 5 uses
  %i.n = alloca [112 x i8], align 8               ; 4 uses
  %i.o = alloca [16 x i8], align 4                ; 5 uses
  %i.p = alloca [24 x i8], align 4                ; 6 uses
  %i.q = alloca [12 x i8], align 4                ; 4 uses
  %i.r = alloca [12 x i8], align 4                ; 4 uses
  %i.s = alloca [12 x i8], align 4                ; 4 uses
  %i.t = alloca [56 x i8], align 8                ; 4 uses
  %i.u = alloca [12 x i8], align 4                ; 4 uses
  %i.v = alloca [24 x i8], align 4                ; 5 uses
  %i.w = alloca [12 x i8], align 4                ; 6 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 2 uses
  store i64 %1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  store ptr %2, ptr %i.z, align 8
  switch i64 %1, label %bb.b [
    i64 5, label %bb.c
    i64 13, label %bb.bk
  ]

bb.b:                                             ; preds = %bb.a
  %i.aa = tail call noundef i32 @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector11collect_pat(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, i64 noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %3)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECsileJQcQObtj_7hir_def.exit

bb.c:                                             ; preds = %bb.a
  %i.ab = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes9MacroCallECsileJQcQObtj_7hir_def(ptr %2)
          to label %bb.d unwind label %.body.thread65 ; 11 uses

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.ab, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
          to label %bb.i unwind label %bb.bl

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z)
          to label %bb.g unwind label %.body.thread65

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.u, ptr noundef nonnull align 4 dereferenceable(12) %i.s, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i8 0, ptr %i.t, align 8
  %i.ac = invoke fastcc noundef i32 @_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector9alloc_pat(ptr noalias nofree noundef align 8 dereferenceable(1120) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.t, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.u)
          to label %bb.h unwind label %.body.thread65

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bk

.body.thread65:                                   ; preds = %bb.c, %bb.f, %bb.g, %bb.bi, %bb.aq, %bb.bf
  %lpad.thr_comm63 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.w, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z)
          to label %bb.k unwind label %bb.bl

bb.j:                                             ; preds = %bb.ao, %bb.p, %bb.o, %bb.m, %bb.l, %bb.k
  %.sroa.020.0.i = phi i8 [ 1, %bb.l ], [ %.sroa.020.1.i, %bb.ao ], [ 1, %bb.o ], [ 0, %bb.p ], [ 1, %bb.m ], [ 1, %bb.k ]
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit45

bb.k:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %i.q, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.af, i64 12, i1 false), !alias.scope !5899
  call void @llvm.experimental.noalias.scope.decl(metadata !5900)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5901
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false), !noalias !5902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.af, i64 12, i1 false), !alias.scope !5903, !noalias !5904
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !5900, !nonnull !8, !align !9, !noundef !8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !range !11, !alias.scope !5900, !noundef !8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.am = load i32, ptr %i.al, align 4, !alias.scope !5900, !noundef !8
  %i.an = invoke noundef nonnull align 8 ptr @_RNvXsc_NtCsileJQcQObtj_7hir_def7nameresNtB5_10ModulesMapINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB7_10ModuleIdLtE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ai, i32 noundef %i.ak, i32 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %bb.l unwind label %bb.j, !noalias !5904, !inline_history !5854

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5901
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val39.i = load ptr, ptr %i.ao, align 8, !alias.scope !5900, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false), !noalias !5905
  %i.ap = invoke noundef i32 @_RNvMsf_NtCsdovh4xi6v3I_4span6ast_idNtB5_8AstIdMap13erased_ast_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.val39.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.d)
          to label %bb.m unwind label %bb.j, !noalias !5904, !inline_history !5854

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5901
  call void @llvm.experimental.noalias.scope.decl(metadata !5906)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.af, i64 12, i1 false), !alias.scope !5907, !noalias !5904
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 %i.ap, ptr %i.ar, align 4, !alias.scope !5908, !noalias !5904
  %i.as = invoke { i32, i32 } @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope11macro_invoc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.aq, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.o)
          to label %bb.n unwind label %bb.j, !noalias !5904, !inline_history !5854 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.at = extractvalue { i32, i32 } %i.as, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5901
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = extractvalue { i32, i32 } %i.as, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5901
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !5900, !nonnull !8, !noundef !8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !5900, !nonnull !8, !align !9, !noundef !8
  invoke void @_RINvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB3_8Expander15enter_expand_idNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatEB7_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.ay, i32 noundef %i.at, i32 noundef %i.au)
          to label %bb.s unwind label %bb.j, !noalias !5904, !inline_history !5854

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5901
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.bb = load <2 x ptr>, ptr %i.az, align 8, !alias.scope !5900
  %i.bc = load ptr, ptr %i.ba, align 8, !alias.scope !5900, !nonnull !8, !align !9, !noundef !8
  %i.bd = load ptr, ptr %i.az, align 8, !alias.scope !5900, !nonnull !8, !noundef !8
  %i.be = load <2 x ptr>, ptr %i.ah, align 8, !alias.scope !5900
  %i.bf = shufflevector <2 x ptr> %i.bb, <2 x ptr> %i.be, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x ptr> %i.bf, ptr %i.m, align 8, !noalias !5901
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.aj, ptr %i.bg, align 8, !noalias !5901
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.bi = load i32, ptr %i.bh, align 8, !range !11, !alias.scope !5900, !noundef !8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !5900, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5901
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.bl, ptr %i.l, align 8, !noalias !5901
  invoke void @_RINvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB3_8Expander12enter_expandNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatNCINvMs2_NtB5_5lowerNtB2g_13ExprCollector18collect_macro_callB1g_INtCs83ee1IJTiSq_6either6EitherINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir3PatEuENCNvB2c_25collect_pat_possibly_rest0E0EB7_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.bc, ptr noundef nonnull %i.ab, i32 noundef %i.bi, i32 noundef %i.bk, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.m, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @6)
          to label %bb.q unwind label %bb.j, !inline_history !5854

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5901
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %.sroa.020.1.i = phi i8 [ 1, %bb.s ], [ 0, %bb.q ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5901
  %i.bm = load i64, ptr %i.f, align 8, !range !21, !noundef !8
  %i.bn = icmp eq i64 %i.bm, -1
  br i1 %i.bn, label %bb.av, label %bb.t

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %i.n, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5901
  br label %bb.r

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.k, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  %i.bo = load i64, ptr %i.k, align 8, !range !22, !noalias !5901, !noundef !8
  %.not28.i = icmp eq i64 %i.bo, 2
  br i1 %.not28.i, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !5909)
  call void @llvm.experimental.noalias.scope.decl(metadata !5910), !noalias !5911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5912
  store i8 0, ptr %i.a, align 8, !noalias !5912
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !5913, !noalias !5911, !noundef !8 ; 5 uses
  %i.bs = icmp ult i64 %i.br, 164703072086692426
  call void @llvm.assume(i1 %i.bs), !noalias !5911
  %i.bt = load i64, ptr %i.bp, align 8, !range !13, !alias.scope !5914, !noalias !5911, !noundef !8
  %i.bu = icmp eq i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.v, label %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25collect_pat_possibly_rest0Bb_.exit50

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def3hir3PatE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25collect_pat_possibly_rest0Bb_.exit50 unwind label %bb.w, !noalias !5915, !inline_history !5866

bb.w:                                             ; preds = %bb.v
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir3PatEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a) #39
          to label %.body48 unwind label %bb.x, !noalias !5916, !inline_history !5866

bb.x:                                             ; preds = %bb.w
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !5916, !inline_history !5866
  unreachable

_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25collect_pat_possibly_rest0Bb_.exit50: ; preds = %bb.u, %bb.v
  %i.bx = trunc i64 %i.br to i32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !5914, !noalias !5911, !nonnull !8, !noundef !8
  %i.ca = getelementptr inbounds nuw [56 x i8], ptr %i.bz, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ca, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !5916
  %i.cb = add nuw nsw i64 %i.br, 1
  store i64 %i.cb, ptr %i.bq, align 8, !alias.scope !5914, !noalias !5911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5912
  %i.cc = insertvalue { i32, i32 } { i32 0, i32 poison }, i32 %i.bx, 1
  br label %bb.an

.body48:                                          ; preds = %bb.ar, %bb.w, %.thread79
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i7382, %.thread79 ], [ %i.dp, %bb.ar ], [ %i.bv, %bb.w ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 104 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !5917, !noalias !5911, !noundef !8
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit45, label %bb.y

bb.y:                                             ; preds = %.body48
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit45 unwind label %bb.au

bb.z:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5901
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 32, i1 false)
  %.sroa.051.0.copyload = load i32, ptr %i.af, align 8, !alias.scope !5918, !noalias !5904
  %i.ch = trunc nuw i32 %.sroa.051.0.copyload to i1
  br i1 %i.ch, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5918, !noalias !5904
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !alias.scope !5918, !noalias !5904
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.cj = invoke { i32, i32 } @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBS_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB1X_3ast9generated5nodes9MacroCallEENtBS_11MacroCallIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(24) %i.p, i32 noundef %.sroa.5.0.copyload, i32 noundef %.sroa.6.0.copyload)
          to label %bb.ab unwind label %bb.as, !noalias !5904, !inline_history !5854 ; 0 uses

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.sroa.013.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !5901
  %i.ck = trunc nuw i64 %.sroa.013.0.copyload.i to i1
  br i1 %i.ck, label %bb.ac, label %.thread75

bb.ac:                                            ; preds = %bb.ab
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false)
  %i.cm = invoke { i64, ptr } @_RNvMs0_CsjJXvCMGntp8_6syntaxINtB5_5ParseNtNtNtNtB5_3ast9generated5nodes3PatE4treeCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.ae unwind label %bb.ad, !noalias !5904 ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtBE_3ast9generated5nodes3PatEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #39
          to label %.thread79 unwind label %bb.af, !noalias !5904

bb.ae:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtBE_3ast9generated5nodes3PatEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.ag unwind label %bb.al

bb.af:                                            ; preds = %bb.ad
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !5904
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cp = extractvalue { i64, ptr } %i.cm, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5901
  call void @llvm.experimental.noalias.scope.decl(metadata !5919)
  %.not.i36 = icmp eq i64 %i.cp, -1
  br i1 %.not.i36, label %.thread75, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cq = extractvalue { i64, ptr } %i.cm, 1
  %i.cr = invoke { i32, i32 } @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector25collect_pat_possibly_rest(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, i64 noundef range(i64 -1, 18) %i.cp, ptr noundef %i.cq, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25collect_pat_possibly_rest0Bb_.exit40 unwind label %bb.al, !inline_history !5866

.thread75:                                        ; preds = %bb.ab, %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !5920), !noalias !5911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5921
  store i8 0, ptr %i.b, align 8, !noalias !5921
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !5922, !noalias !5911, !noundef !8 ; 5 uses
  %i.cv = icmp ult i64 %i.cu, 164703072086692426
  call void @llvm.assume(i1 %i.cv), !noalias !5911
  %i.cw = load i64, ptr %i.cs, align 8, !range !13, !alias.scope !5923, !noalias !5911, !noundef !8
  %i.cx = icmp eq i64 %i.cu, %i.cw
  br i1 %i.cx, label %bb.ai, label %_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector11missing_pat.exit.i

bb.ai:                                            ; preds = %.thread75
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def3hir3PatE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector11missing_pat.exit.i unwind label %bb.aj, !noalias !5924, !inline_history !5866
end_hunk_5
begin_hunk_6_@_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector25maybe_collect_expr_as_pat:bb.a

_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25maybe_collect_expr_as_pats2_0Bb_.exit: ; preds = %bb.ai
  %i.eb = load i32, ptr %i.ap, align 8, !range !46, !noundef !8
  %.not79 = icmp eq i32 %i.eb, -1
  br i1 %.not79, label %bb.aj, label %bb.ak

bb.ak:                                            ; preds = %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25maybe_collect_expr_as_pats2_0Bb_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.ec = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes7ArgListECsileJQcQObtj_7hir_def(ptr nonnull %.val105)
          to label %bb.am unwind label %bb.al     ; 6 uses

bb.al:                                            ; preds = %bb.ak
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.am:                                            ; preds = %bb.ak
  %.not80 = icmp eq ptr %i.ec, null
  br i1 %.not80, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr %i.ec, ptr %i.an, align 8
  %i.ee = invoke noundef ptr @_RNvMsm_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7ArgList4args(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an)
          to label %bb.au unwind label %bb.as

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def10expr_store4path4PathEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao)
          to label %bb.ap unwind label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aj, %bb.ap
  %.sroa.17.4 = phi i32 [ undef, %bb.ap ], [ %i.ea, %bb.aj ] ; 2 uses
  %.sroa.0.4 = phi i32 [ 0, %bb.ap ], [ 1, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 48 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !noundef !8
  %i.eh = add i32 %i.eg, -1                       ; 2 uses
  store i32 %i.eh, ptr %i.ef, align 4
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.ar, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit127

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.du) #37
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit127

bb.as:                                            ; preds = %bb.au, %bb.an
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 48 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !noundef !8
  %i.em = add i32 %i.el, -1                       ; 2 uses
  store i32 %i.em, ptr %i.ek, align 4
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.at, label %bb.bc

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ec) #37
          to label %bb.bc unwind label %bb.x

bb.au:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !6003
  store i32 0, ptr %i.s, align 8, !noalias !6003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !6003
  %i.eo = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.ee, ptr %i.eo, align 8, !noalias !6003
  %i.ep = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 0, ptr %i.ep, align 8, !noalias !6003
  store ptr %0, ptr %i.r, align 8, !noalias !6003
  %i.eq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.s, ptr %i.eq, align 8, !noalias !6003
  %i.er = invoke { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB21_8adapters10filter_map9FilterMapINtNtB3d_9enumerate9EnumerateINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB4k_9generated5nodes4ExprEENCNvNvMs2_NtNtB1o_10expr_store5lowerNtB5F_13ExprCollector25maybe_collect_expr_as_pat13collect_tuple0EEB1o_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.r)
          to label %bb.av unwind label %bb.as     ; 2 uses

bb.av:                                            ; preds = %bb.au
  %i.es = extractvalue { ptr, i64 } %i.er, 0      ; 3 uses
  %i.et = extractvalue { ptr, i64 } %i.er, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6003
  %i.eu = load <2 x i32>, ptr %i.s, align 8, !noalias !6003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !6003
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.es) ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ec, i64 48 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !noundef !8
  %i.ex = add i32 %i.ew, -1                       ; 2 uses
  store i32 %i.ex, ptr %i.ev, align 4
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.aw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsileJQcQObtj_7hir_def.exit135

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ec) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsileJQcQObtj_7hir_def.exit135 unwind label %bb.ba

bb.ax:                                            ; preds = %bb.aj, %bb.ao, %bb.ae, %bb.ai, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsileJQcQObtj_7hir_def.exit135
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsileJQcQObtj_7hir_def.exit135: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.es, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.et, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store <2 x i32> %i.eu, ptr %i.fd, align 8
  store i8 11, ptr %i.am, align 8
  %i.fe = invoke fastcc noundef i32 @_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector19alloc_pat_from_expr(ptr noalias nofree noundef align 8 dereferenceable(1120) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.am, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.ay)
          to label %bb.ay unwind label %bb.ax     ; 2 uses

bb.ay:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsileJQcQObtj_7hir_def.exit135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.du, i64 48 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !noundef !8
  %i.fh = add i32 %i.fg, -1                       ; 2 uses
  store i32 %i.fh, ptr %i.ff, align 4
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.az, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit127

bb.az:                                            ; preds = %bb.ay
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.du) #37
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit127

bb.ba:                                            ; preds = %bb.aw
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = icmp eq i64 %i.et, 0
  br i1 %i.fk, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fl = shl nuw nsw i64 %i.et, 2
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.es, i64 noundef range(i64 1, 0) %i.fl, i64 noundef 4) #31
  br label %bb.bc

bb.bc:                                            ; preds = %bb.al, %bb.at, %bb.as, %bb.ba, %bb.bb
  %.pn81.ph = phi { ptr, i32 } [ %i.ed, %bb.al ], [ %i.ej, %bb.as ], [ %i.ej, %bb.at ], [ %i.fj, %bb.ba ], [ %i.fj, %bb.bb ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def10expr_store4path4PathEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao) #39
          to label %bb.af unwind label %bb.x

bb.bd:                                            ; preds = %bb.f
  store ptr %i.bh, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai)
          to label %bb.bf unwind label %bb.co

bb.be:                                            ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit127

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ah, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba)
          to label %bb.bh unwind label %bb.co

bb.bg:                                            ; preds = %bb.cb, %bb.bm, %bb.bl, %bb.bj, %bb.bi, %bb.bh
  %.sroa.019.0.i = phi i8 [ 1, %bb.bi ], [ %.sroa.019.1.i, %bb.cb ], [ 1, %bb.bl ], [ 0, %bb.bm ], [ 1, %bb.bj ], [ 1, %bb.bh ]
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit184

bb.bh:                                            ; preds = %bb.bf
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fn, ptr noundef nonnull align 4 dereferenceable(12) %i.x, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.fo, i64 12, i1 false), !alias.scope !6004
  call void @llvm.experimental.noalias.scope.decl(metadata !6005)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6006
  %i.fp = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fp, ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i64 12, i1 false), !noalias !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.fo, i64 12, i1 false), !alias.scope !6007, !noalias !6008
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !6005, !nonnull !8, !align !9, !noundef !8
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !range !11, !alias.scope !6005, !noundef !8
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.fv = load i32, ptr %i.fu, align 4, !alias.scope !6005, !noundef !8
  %i.fw = invoke noundef nonnull align 8 ptr @_RNvXsc_NtCsileJQcQObtj_7hir_def7nameresNtB5_10ModulesMapINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB7_10ModuleIdLtE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fr, i32 noundef %i.ft, i32 noundef %i.fv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %bb.bi unwind label %bb.bg, !noalias !6008, !inline_history !5959

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6006
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val34.i = load ptr, ptr %i.fx, align 8, !alias.scope !6005, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i64 12, i1 false), !noalias !6005
  %i.fy = invoke noundef i32 @_RNvMsf_NtCsdovh4xi6v3I_4span6ast_idNtB5_8AstIdMap13erased_ast_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.val34.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.e)
          to label %bb.bj unwind label %bb.bg, !noalias !6008, !inline_history !5959

bb.bj:                                            ; preds = %bb.bi
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6006
  call void @llvm.experimental.noalias.scope.decl(metadata !6009)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.fo, i64 12, i1 false), !alias.scope !6010, !noalias !6008
  %i.ga = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 %i.fy, ptr %i.ga, align 4, !alias.scope !6011, !noalias !6008
  %i.gb = invoke { i32, i32 } @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope11macro_invoc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.fz, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.p)
          to label %bb.bk unwind label %bb.bg, !noalias !6008, !inline_history !5959 ; 2 uses

bb.bk:                                            ; preds = %bb.bj
  %i.gc = extractvalue { i32, i32 } %i.gb, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6006
  %.not.i = icmp eq i32 %i.gc, 0
  br i1 %.not.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gd = extractvalue { i32, i32 } %i.gb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6006
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.gf = load ptr, ptr %i.ge, align 8, !alias.scope !6005, !nonnull !8, !noundef !8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.gh = load ptr, ptr %i.gg, align 8, !alias.scope !6005, !nonnull !8, !align !9, !noundef !8
  invoke void @_RINvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB3_8Expander15enter_expand_idNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEB7_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.gf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.gh, i32 noundef %i.gc, i32 noundef %i.gd)
          to label %bb.bp unwind label %bb.bg, !noalias !6008, !inline_history !5959

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6006
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.gk = load <2 x ptr>, ptr %i.gi, align 8, !alias.scope !6005
  %i.gl = load ptr, ptr %i.gj, align 8, !alias.scope !6005, !nonnull !8, !align !9, !noundef !8
  %i.gm = load ptr, ptr %i.gi, align 8, !alias.scope !6005, !nonnull !8, !noundef !8
  %i.gn = load <2 x ptr>, ptr %i.fq, align 8, !alias.scope !6005
  %i.go = shufflevector <2 x ptr> %i.gk, <2 x ptr> %i.gn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x ptr> %i.go, ptr %i.n, align 8, !noalias !6006
  %i.gp = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.fs, ptr %i.gp, align 8, !noalias !6006
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.gr = load i32, ptr %i.gq, align 8, !range !11, !alias.scope !6005, !noundef !8
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %i.gt = load i32, ptr %i.gs, align 4, !alias.scope !6005, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6006
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.gu, ptr %i.m, align 8, !noalias !6006
  invoke void @_RINvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB3_8Expander12enter_expandNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprNCINvMs2_NtB5_5lowerNtB2h_13ExprCollector18collect_macro_callB1g_INtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir3PatENCNvB2d_25maybe_collect_expr_as_pats3_0E0EB7_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.gm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.gl, ptr noundef nonnull %i.bh, i32 noundef %i.gr, i32 noundef %i.gt, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.n, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10)
          to label %bb.bn unwind label %bb.bg, !inline_history !5959

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6006
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bp, %bb.bn
  %.sroa.019.1.i = phi i8 [ 1, %bb.bp ], [ 0, %bb.bn ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6006
  %i.gv = load i64, ptr %i.g, align 8, !range !21, !noundef !8
  %i.gw = icmp eq i64 %i.gv, -1
  br i1 %i.gw, label %bb.ci, label %bb.bq

bb.bp:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.g, ptr noundef nonnull align 8 dereferenceable(112) %i.o, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6006
  br label %bb.bo

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.l, ptr noundef nonnull align 8 dereferenceable(112) %i.g, i64 112, i1 false)
  %i.gx = load i64, ptr %i.l, align 8, !range !22, !noalias !6006, !noundef !8
  %.not27.i = icmp eq i64 %i.gx, 2
  br i1 %.not27.i, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.gy = invoke fastcc noundef i32 @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector23collect_expr_as_pat_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, i64 noundef -1, ptr undef)
          to label %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25maybe_collect_expr_as_pats3_0Bb_.exit186 unwind label %bb.cd, !inline_history !5963

bb.bs:                                            ; preds = %bb.cd, %.thread245
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i243248, %.thread245 ], [ %i.hv, %bb.cd ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.l, i64 104 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !6012, !noalias !6008, !noundef !8
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit184, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gz)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit184 unwind label %bb.cg

bb.bu:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6006
  %i.hc = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.hc, i64 32, i1 false)
  %.sroa.0213.0.copyload = load i32, ptr %i.fo, align 8, !alias.scope !6013, !noalias !6008
  %i.hd = trunc nuw i32 %.sroa.0213.0.copyload to i1
  br i1 %i.hd, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %.sroa.6215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6215.0.copyload = load i32, ptr %.sroa.6215.0..sroa_idx, align 8, !alias.scope !6013, !noalias !6008
  %.sroa.5214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.5214.0.copyload = load i32, ptr %.sroa.5214.0..sroa_idx, align 4, !alias.scope !6013, !noalias !6008
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.hf = invoke { i32, i32 } @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBS_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB1X_3ast9generated5nodes9MacroCallEENtBS_11MacroCallIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.he, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(24) %i.q, i32 noundef %.sroa.5214.0.copyload, i32 noundef %.sroa.6215.0.copyload)
          to label %bb.bw unwind label %bb.ce, !noalias !6008, !inline_history !5959 ; 0 uses

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  %.sroa.012.0.copyload.i = load i64, ptr %i.h, align 8, !noalias !6006
  %i.hg = trunc nuw i64 %.sroa.012.0.copyload.i to i1
  br i1 %i.hg, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.hh = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.hh, i64 24, i1 false)
  %i.hi = invoke fastcc { i64, ptr } @_RNCINvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB8_13ExprCollector18collect_macro_callNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtBc_3hir3PatENCNvB4_25maybe_collect_expr_as_pats3_0Es0_0Bc_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.bz unwind label %.thread249, !noalias !6008, !inline_history !5959 ; 2 uses

bb.by:                                            ; preds = %bb.bz, %bb.bw
  %.sroa.511.0.i = phi ptr [ %i.hm, %bb.bz ], [ undef, %bb.bw ]
  %.sroa.010.0.i = phi i64 [ %i.hl, %bb.bz ], [ -1, %bb.bw ]
  %i.hj = invoke fastcc noundef i32 @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector23collect_expr_as_pat_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, i64 noundef range(i64 -1, 37) %.sroa.010.0.i, ptr %.sroa.511.0.i)
          to label %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25maybe_collect_expr_as_pats3_0Bb_.exit182 unwind label %.thread249, !inline_history !5963

.thread249:                                       ; preds = %bb.bx, %bb.by
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %.thread245

bb.bz:                                            ; preds = %bb.bx
  %i.hl = extractvalue { i64, ptr } %i.hi, 0
  %i.hm = extractvalue { i64, ptr } %i.hi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6006
  br label %bb.by

_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25maybe_collect_expr_as_pats3_0Bb_.exit182: ; preds = %bb.by
  invoke void @_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB2_8Expander4exit(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.g)
          to label %bb.ca unwind label %bb.cd

bb.ca:                                            ; preds = %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25maybe_collect_expr_as_pats3_0Bb_.exit182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6006
  br label %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25maybe_collect_expr_as_pats3_0Bb_.exit186

_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25maybe_collect_expr_as_pats3_0Bb_.exit186: ; preds = %bb.br, %bb.ca
  %.sroa.0.0.i = phi i32 [ %i.hj, %bb.ca ], [ %i.gy, %bb.br ] ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.l, i64 104 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !alias.scope !6014, !noalias !6008, !noundef !8
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit, label %bb.cb

bb.cb:                                            ; preds = %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25maybe_collect_expr_as_pats3_0Bb_.exit186
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hn)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit unwind label %bb.bg

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit: ; preds = %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25maybe_collect_expr_as_pats3_0Bb_.exit186, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6006
  %i.hq = trunc nuw i8 %.sroa.019.1.i to i1
  br i1 %i.hq, label %bb.cc, label %bb.cn

bb.cc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bh, i64 48 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !noundef !8
  %i.ht = add i32 %i.hs, -1                       ; 2 uses
  store i32 %i.ht, ptr %i.hr, align 4
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %.sink.split, label %bb.cn

bb.cd:                                            ; preds = %bb.br, %_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25maybe_collect_expr_as_pats3_0Bb_.exit182
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.ce:                                            ; preds = %bb.bv
  %i.hw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hx = load i64, ptr %i.h, align 8, !range !16, !alias.scope !6015, !noalias !6008, !noundef !8
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %.thread245, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtBE_3ast9generated5nodes4ExprEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hz)
          to label %.thread245 unwind label %bb.cg

bb.cg:                                            ; preds = %bb.bt, %bb.cf, %bb.cm, %.thread245
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !6008, !inline_history !5959
  unreachable

.thread245:                                       ; preds = %bb.cf, %bb.ce, %.thread249
  %.pn.i243248 = phi { ptr, i32 } [ %i.hk, %.thread249 ], [ %i.hw, %bb.ce ], [ %i.hw, %bb.cf ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def10expr_store8expander4MarkEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i) #39
          to label %bb.bs unwind label %bb.cg, !noalias !6008, !inline_history !5959

bb.ch:                                            ; preds = %bb.ci, %bb.cj
  %i.ib = landingpad { ptr, i32 }
          cleanup
end_hunk_6
begin_hunk_7_@_RNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token:bb.a
          to label %.body unwind label %bb.l, !noalias !6898

bb.i:                                             ; preds = %bb.f
  %i.y = icmp eq i16 %i.s, %0
  br i1 %i.y, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0CsileJQcQObtj_7hir_def.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !noalias !6898, !noundef !8
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.z, align 4, !noalias !6898
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0CsileJQcQObtj_7hir_def.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.m) #37
          to label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0CsileJQcQObtj_7hir_def.exit.i.i unwind label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !6898
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0CsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.m, %bb.i ], [ null, %bb.j ], [ null, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6899
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0CsileJQcQObtj_7hir_def.exit.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0CsileJQcQObtj_7hir_def.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit.sink.split.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0CsileJQcQObtj_7hir_def.exit.i.i, %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0CsileJQcQObtj_7hir_def.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0CsileJQcQObtj_7hir_def.exit.i.i ], [ null, %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0CsileJQcQObtj_7hir_def.exit.i.i ], [ null, %bb.e ], [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit.sink.split.i.i.i.i ] ; 2 uses
  %.not7.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not7.i, label %bb.c, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECsileJQcQObtj_7hir_def.exit

bb.m:                                             ; preds = %bb.k, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit.sink.split.i.i.i.i, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.m ], [ %i.t, %bb.h ], [ %i.t, %bb.g ]
  %.val5 = load i64, ptr %i.b, align 8, !range !22, !noundef !8
  %.val6 = load ptr, ptr %i.j, align 8            ; 3 uses
  %i.af = icmp eq i64 %.val5, 2
  br i1 %i.af, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsileJQcQObtj_7hir_def.exit, label %bb.n

bb.n:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.val6, i64 48 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !8
  %i.ai = add i32 %i.ah, -1                       ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 4
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsileJQcQObtj_7hir_def.exit.sink.split.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsileJQcQObtj_7hir_def.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsileJQcQObtj_7hir_def.exit.sink.split.i.i.i.i.i: ; preds = %bb.n
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val6) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsileJQcQObtj_7hir_def.exit unwind label %bb.p

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECsileJQcQObtj_7hir_def.exit: ; preds = %.noexc, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0CsileJQcQObtj_7hir_def.exit.i
  %.sroa.0.0.i5 = phi ptr [ %.sroa.0.0.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0CsileJQcQObtj_7hir_def.exit.i ], [ null, %.noexc ]
  %.val3 = load i64, ptr %i.b, align 8, !range !22, !noundef !8
  %.val4 = load ptr, ptr %i.j, align 8            ; 3 uses
  %i.ak = icmp eq i64 %.val3, 2
  br i1 %i.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsileJQcQObtj_7hir_def.exit12, label %bb.o

bb.o:                                             ; preds = %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECsileJQcQObtj_7hir_def.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.val4, i64 48 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !noundef !8
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.al, align 4
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsileJQcQObtj_7hir_def.exit.sink.split.i.i.i.i.i11, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsileJQcQObtj_7hir_def.exit12

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsileJQcQObtj_7hir_def.exit.sink.split.i.i.i.i.i11: ; preds = %bb.o
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4) #37
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsileJQcQObtj_7hir_def.exit12

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsileJQcQObtj_7hir_def.exit12: ; preds = %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECsileJQcQObtj_7hir_def.exit, %bb.o, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsileJQcQObtj_7hir_def.exit.sink.split.i.i.i.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0.i5

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsileJQcQObtj_7hir_def.exit.sink.split.i.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsileJQcQObtj_7hir_def.exit: ; preds = %bb.n, %.body, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsileJQcQObtj_7hir_def.exit.sink.split.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25maybe_collect_expr_as_pat12collect_path(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, i64 noundef range(i64 0, 37) %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [112 x i8], align 8               ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 4                ; 5 uses
  %i.g = alloca [80 x i8], align 8                ; 7 uses
  %i.h = alloca [112 x i8], align 8               ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 5 uses
  %i.k = alloca [112 x i8], align 8               ; 4 uses
  %i.l = alloca [16 x i8], align 4                ; 5 uses
  %i.m = alloca [24 x i8], align 4                ; 6 uses
  %i.n = alloca [12 x i8], align 4                ; 4 uses
  %i.o = alloca [12 x i8], align 4                ; 6 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  switch i64 %1, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroExprECsileJQcQObtj_7hir_def.exit19 [
    i64 20, label %bb.b
    i64 25, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroExprECsileJQcQObtj_7hir_def.exit14
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.q = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes9MacroCallECsileJQcQObtj_7hir_def(ptr nonnull %2)
          to label %bb.d unwind label %.body.thread56 ; 11 uses

.body.thread:                                     ; preds = %bb.ay, %bb.az, %bb.av, %bb.aw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit46, %.body.thread56
  %.pn = phi { ptr, i32 } [ %.pn30.i, %bb.av ], [ %lpad.thr_comm, %.body.thread56 ], [ %lpad.thr_comm.split-lp, %bb.ay ], [ %.pn30.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit46 ], [ %.pn30.i, %bb.aw ], [ %lpad.thr_comm.split-lp, %bb.az ]
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !noundef !8
  %i.t = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.t, ptr %i.r, align 4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.bb

bb.c:                                             ; preds = %.body.thread
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #37
          to label %bb.bb unwind label %bb.ba

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.q, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %bb.i unwind label %bb.ay

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !noundef !8
  %i.x = add i32 %i.w, -1                         ; 2 uses
  store i32 %i.x, ptr %i.v, align 4
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroExprECsileJQcQObtj_7hir_def.exit14

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #37
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroExprECsileJQcQObtj_7hir_def.exit14

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroExprECsileJQcQObtj_7hir_def.exit14: ; preds = %bb.g, %bb.ax, %bb.a, %_RINvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector18collect_macro_callNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprINtNtCshzWfHUSfYae_4core6option6OptionNtB1u_8PathExprENCNvNvMs2_B6_BO_25maybe_collect_expr_as_pat12collect_path0EBa_.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i26, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroExprECsileJQcQObtj_7hir_def.exit19, %bb.f
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i26 ], [ %2, %bb.a ], [ %.sroa.0.1.i, %_RINvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector18collect_macro_callNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprINtNtCshzWfHUSfYae_4core6option6OptionNtB1u_8PathExprENCNvNvMs2_B6_BO_25maybe_collect_expr_as_pat12collect_path0EBa_.exit ], [ null, %bb.g ], [ null, %bb.f ], [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroExprECsileJQcQObtj_7hir_def.exit19 ], [ %.sroa.0.1.i, %bb.ax ]
  ret ptr %.sroa.0.0

.body.thread56:                                   ; preds = %bb.b, %bb.au, %bb.ak
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.h:                                             ; preds = %bb.ai, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i
  %.sroa.019.0.i = phi i8 [ 1, %bb.j ], [ %.sroa.019.1.i, %bb.ai ], [ 1, %bb.m ], [ 0, %bb.n ], [ 1, %bb.k ], [ 1, %bb.i ]
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit46

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.o, ptr noundef nonnull align 4 dereferenceable(12) %i.n, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !6929)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6930
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aa, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false), !noalias !8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.ab, i64 12, i1 false), !alias.scope !6931, !noalias !6932
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !6929, !nonnull !8, !align !9, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !range !11, !alias.scope !6929, !noundef !8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !6929, !noundef !8
  %i.ai = invoke noundef nonnull align 8 ptr @_RNvXsc_NtCsileJQcQObtj_7hir_def7nameresNtB5_10ModulesMapINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB7_10ModuleIdLtE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ad, i32 noundef %i.af, i32 noundef %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %bb.j unwind label %bb.h, !noalias !6932, !inline_history !6906

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6930
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val34.i = load ptr, ptr %i.aj, align 8, !alias.scope !6929, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false), !noalias !6929
  %i.ak = invoke noundef i32 @_RNvMsf_NtCsdovh4xi6v3I_4span6ast_idNtB5_8AstIdMap13erased_ast_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.val34.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a)
          to label %bb.k unwind label %bb.h, !noalias !6932, !inline_history !6906

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6930
  call void @llvm.experimental.noalias.scope.decl(metadata !6933)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.ab, i64 12, i1 false), !alias.scope !6934, !noalias !6932
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 %i.ak, ptr %i.am, align 4, !alias.scope !6935, !noalias !6932
  %i.an = invoke { i32, i32 } @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope11macro_invoc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.al, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.l)
          to label %bb.l unwind label %bb.h, !noalias !6932, !inline_history !6906 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ao = extractvalue { i32, i32 } %i.an, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6930
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = extractvalue { i32, i32 } %i.an, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6930
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !6929, !nonnull !8, !noundef !8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !6929, !nonnull !8, !align !9, !noundef !8
  invoke void @_RINvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB3_8Expander15enter_expand_idNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEB7_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.at, i32 noundef %i.ao, i32 noundef %i.ap)
          to label %bb.q unwind label %bb.h, !noalias !6932, !inline_history !6906

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6930
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.aw = load <2 x ptr>, ptr %i.au, align 8, !alias.scope !6929
  %i.ax = load ptr, ptr %i.av, align 8, !alias.scope !6929, !nonnull !8, !align !9, !noundef !8
  %i.ay = load ptr, ptr %i.au, align 8, !alias.scope !6929, !nonnull !8, !noundef !8
  %i.az = load <2 x ptr>, ptr %i.ac, align 8, !alias.scope !6929
  %i.ba = shufflevector <2 x ptr> %i.aw, <2 x ptr> %i.az, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x ptr> %i.ba, ptr %i.j, align 8, !noalias !6930
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.ae, ptr %i.bb, align 8, !noalias !6930
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.bd = load i32, ptr %i.bc, align 8, !range !11, !alias.scope !6929, !noundef !8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !6929, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6930
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.bg, ptr %i.i, align 8, !noalias !6930
  invoke void @_RINvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB3_8Expander12enter_expandNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprNCINvMs2_NtB5_5lowerNtB2h_13ExprCollector18collect_macro_callB1g_INtNtCshzWfHUSfYae_4core6option6OptionNtB1i_8PathExprENCNvNvMs2_B2h_B2s_25maybe_collect_expr_as_pat12collect_path0E0EB7_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.ax, ptr noundef nonnull %i.q, i32 noundef %i.bd, i32 noundef %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.j, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @12)
          to label %bb.o unwind label %bb.h, !inline_history !6906

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6930
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.sroa.019.1.i = phi i8 [ 1, %bb.q ], [ 0, %bb.o ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6930
  %i.bh = load i64, ptr %i.c, align 8, !range !21, !noundef !8
  %i.bi = icmp eq i64 %i.bh, -1
  br i1 %i.bi, label %bb.ao, label %bb.r

bb.q:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.k, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6930
  br label %bb.p

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false)
  %i.bj = load i64, ptr %i.h, align 8, !range !22, !noalias !6930, !noundef !8
  %.not27.i = icmp eq i64 %i.bj, 2
  br i1 %.not27.i, label %bb.ah, label %bb.t

.thread73:                                        ; preds = %bb.ae, %bb.ad, %bb.af, %.thread68
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i6271, %.thread68 ], [ %i.ca, %bb.ae ], [ %i.ca, %bb.af ], [ %i.ca, %bb.ad ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !6936, !noalias !6932, !noundef !8
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit46, label %bb.s

bb.s:                                             ; preds = %.thread73
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bk)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit46 unwind label %bb.al

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6930
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 32, i1 false)
  %.sroa.052.0.copyload = load i32, ptr %i.ab, align 8, !alias.scope !6937, !noalias !6932
  %i.bo = trunc nuw i32 %.sroa.052.0.copyload to i1
  br i1 %i.bo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !6937, !noalias !6932
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !alias.scope !6937, !noalias !6932
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.bq = invoke { i32, i32 } @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBS_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB1X_3ast9generated5nodes9MacroCallEENtBS_11MacroCallIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(24) %i.m, i32 noundef %.sroa.5.0.copyload, i32 noundef %.sroa.6.0.copyload)
          to label %bb.v unwind label %bb.am, !noalias !6932, !inline_history !6906 ; 0 uses

bb.v:                                             ; preds = %bb.t, %bb.u
  %.sroa.012.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !6930
  %i.br = trunc nuw i64 %.sroa.012.0.copyload.i to i1
  br i1 %i.br, label %bb.w, label %_RNCNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB9_13ExprCollector25maybe_collect_expr_as_pat12collect_path0Bd_.exit

bb.w:                                             ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  %i.bt = invoke { i64, ptr } @_RNvMs0_CsjJXvCMGntp8_6syntaxINtB5_5ParseNtNtNtNtB5_3ast9generated5nodes4ExprE4treeCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %bb.y unwind label %bb.x, !noalias !6932 ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtBE_3ast9generated5nodes4ExprEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #39
          to label %.thread68 unwind label %bb.z, !noalias !6932

bb.y:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtBE_3ast9generated5nodes4ExprEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.aa unwind label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !6932
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.bw = extractvalue { i64, ptr } %i.bt, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6930
  %.not.i40 = icmp eq i64 %i.bw, -1
  br i1 %.not.i40, label %_RNCNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB9_13ExprCollector25maybe_collect_expr_as_pat12collect_path0Bd_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bx = extractvalue { i64, ptr } %i.bt, 1
  %i.by = invoke fastcc noundef ptr @_RNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25maybe_collect_expr_as_pat12collect_path(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, i64 noundef range(i64 -1, 37) %i.bw, ptr noundef %i.bx)
          to label %_RNCNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB9_13ExprCollector25maybe_collect_expr_as_pat12collect_path0Bd_.exit unwind label %bb.ac, !inline_history !6915

bb.ac:                                            ; preds = %bb.y, %bb.ab
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

_RNCNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB9_13ExprCollector25maybe_collect_expr_as_pat12collect_path0Bd_.exit: ; preds = %bb.v, %bb.aa, %bb.ab
  %.sroa.03.0.i = phi ptr [ %i.by, %bb.ab ], [ null, %bb.aa ], [ null, %bb.v ] ; 4 uses
  invoke void @_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB2_8Expander4exit(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.c)
          to label %bb.ag unwind label %bb.ad

bb.ad:                                            ; preds = %_RNCNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB9_13ExprCollector25maybe_collect_expr_as_pat12collect_path0Bd_.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cb = icmp eq ptr %.sroa.03.0.i, null
  br i1 %i.cb, label %.thread73, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 48 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !noalias !6932, !noundef !8
  %i.ce = add i32 %i.cd, -1                       ; 2 uses
  store i32 %i.ce, ptr %i.cc, align 4, !noalias !6932
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.af, label %.thread73

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.03.0.i) #37
          to label %.thread73 unwind label %bb.al

bb.ag:                                            ; preds = %_RNCNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB9_13ExprCollector25maybe_collect_expr_as_pat12collect_path0Bd_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6930
  br label %bb.ah

bb.ah:                                            ; preds = %bb.r, %bb.ag
  %.sroa.0.0.i = phi ptr [ %.sroa.03.0.i, %bb.ag ], [ null, %bb.r ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !6938, !noalias !6932, !noundef !8
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cg)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit unwind label %bb.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6930
  %i.cj = trunc nuw i8 %.sroa.019.1.i to i1
  br i1 %i.cj, label %bb.aj, label %_RINvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector18collect_macro_callNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprINtNtCshzWfHUSfYae_4core6option6OptionNtB1u_8PathExprENCNvNvMs2_B6_BO_25maybe_collect_expr_as_pat12collect_path0EBa_.exit

bb.aj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !noundef !8
  %i.cm = add i32 %i.cl, -1                       ; 2 uses
  store i32 %i.cm, ptr %i.ck, align 4
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.ak, label %_RINvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector18collect_macro_callNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprINtNtCshzWfHUSfYae_4core6option6OptionNtB1u_8PathExprENCNvNvMs2_B6_BO_25maybe_collect_expr_as_pat12collect_path0EBa_.exit

bb.ak:                                            ; preds = %bb.aj
end_hunk_7
begin_hunk_8_@_RNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25maybe_collect_expr_as_pat12collect_path:bb.a
bb.ba:                                            ; preds = %bb.az, %bb.c
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.bb:                                            ; preds = %bb.c, %.body.thread
  resume { ptr, i32 } %.pn

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroExprECsileJQcQObtj_7hir_def.exit19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !noalias !6946, !noundef !8
  %i.ed = add i32 %i.ec, -1                       ; 2 uses
  store i32 %i.ed, ptr %i.eb, align 4, !noalias !6946
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i26, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroExprECsileJQcQObtj_7hir_def.exit14

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i26: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroExprECsileJQcQObtj_7hir_def.exit19
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #37, !noalias !6946
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroExprECsileJQcQObtj_7hir_def.exit14
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25maybe_collect_expr_as_pat21collect_possibly_rest(ptr noalias nofree noundef align 8 dereferenceable(1120) %0, i64 noundef range(i64 0, 37) %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [112 x i8], align 8               ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [72 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 4                ; 5 uses
  %i.j = alloca [80 x i8], align 8                ; 7 uses
  %i.k = alloca [112 x i8], align 8               ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 5 uses
  %i.n = alloca [112 x i8], align 8               ; 4 uses
  %i.o = alloca [16 x i8], align 4                ; 5 uses
  %i.p = alloca [24 x i8], align 4                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [12 x i8], align 4                ; 2 uses
  %i.t = alloca [12 x i8], align 4                ; 4 uses
  %i.u = alloca [12 x i8], align 4                ; 4 uses
  %i.v = alloca [56 x i8], align 8                ; 4 uses
  %i.w = alloca [12 x i8], align 4                ; 4 uses
  %i.x = alloca [24 x i8], align 4                ; 3 uses
  %i.y = alloca [24 x i8], align 4                ; 5 uses
  %i.z = alloca [12 x i8], align 4                ; 6 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 2 uses
  store i64 %1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  store ptr %2, ptr %i.ac, align 8
  switch i64 %1, label %bb.b [
    i64 20, label %bb.g
    i64 27, label %bb.h
  ]

bb.b:                                             ; preds = %bb.bu, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %1, ptr %i.r, align 8, !noalias !7008
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %2, ptr %i.ad, align 8, !noalias !7008
  %i.ae = invoke fastcc { i32, i32 } @_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector25maybe_collect_expr_as_pat(ptr noalias nofree noundef align 8 dereferenceable(1120) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %bb.c unwind label %bb.e, !inline_history !53 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.af = extractvalue { i32, i32 } %i.ae, 0
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %bb.d, label %.noexc12

bb.d:                                             ; preds = %bb.c
  %i.ah = extractvalue { i32, i32 } %i.ae, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !noalias !7009, !noundef !8
  %i.ak = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 4, !noalias !7009
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i.i.i, label %_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector19collect_expr_as_pat.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i.i.i: ; preds = %bb.d
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #37, !inline_history !53
  br label %_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector19collect_expr_as_pat.exit

.noexc12:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7008
  store i64 %1, ptr %i.q, align 8, !noalias !7008
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7008
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !7008
  %i.am = call fastcc noundef i32 @_RNCNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector19collect_expr_as_pat0Bb_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.q), !inline_history !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7008
  br label %_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector19collect_expr_as_pat.exit

bb.e:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !noalias !7010, !noundef !8
  %i.ap = add i32 %i.ao, -1                       ; 2 uses
  store i32 %i.ap, ptr %i.an, align 4, !noalias !7010
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit22

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i.i: ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit22 unwind label %bb.f, !inline_history !53

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !inline_history !53
  unreachable

_RNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector19collect_expr_as_pat.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i.i.i, %bb.d, %.noexc12
  %.sroa.0.0.i = phi i32 [ %i.am, %.noexc12 ], [ %i.ah, %bb.d ], [ %i.ah, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsileJQcQObtj_7hir_def.exit.sink.split.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsileJQcQObtj_7hir_def.exit

bb.g:                                             ; preds = %bb.a
  %i.as = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes9MacroCallECsileJQcQObtj_7hir_def(ptr %2)
          to label %bb.i unwind label %.body15.thread70 ; 11 uses

bb.h:                                             ; preds = %bb.a
  %i.at = invoke noundef zeroext i1 @_RNvMs6_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes9RangeExpr13is_range_full(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac)
          to label %bb.bu unwind label %.body15.thread70

bb.i:                                             ; preds = %bb.g
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.as, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
          to label %bb.o unwind label %bb.br

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac)
          to label %bb.l unwind label %.body15.thread70

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.w, ptr noundef nonnull align 4 dereferenceable(12) %i.u, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i8 0, ptr %i.v, align 8
  %i.au = invoke fastcc noundef i32 @_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector19alloc_pat_from_expr(ptr noalias nofree noundef align 8 dereferenceable(1120) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.v, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.w)
          to label %bb.m unwind label %.body15.thread70

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.bq

.body15.thread70:                                 ; preds = %bb.h, %bb.g, %bb.k, %bb.l, %bb.bo, %bb.bn, %bb.au, %bb.bj
  %lpad.thr_comm68 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.n:                                             ; preds = %bb.as, %bb.t, %bb.s, %bb.q, %bb.p, %bb.o
  %.sroa.020.0.i = phi i8 [ 1, %bb.p ], [ %.sroa.020.1.i, %bb.as ], [ 1, %bb.s ], [ 0, %bb.t ], [ 1, %bb.q ], [ 1, %bb.o ]
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit46

bb.o:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.z, ptr noundef nonnull align 4 dereferenceable(12) %i.t, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !7011)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7012
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aw, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false), !noalias !8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.ax, i64 12, i1 false), !alias.scope !7013, !noalias !7014
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !7011, !nonnull !8, !align !9, !noundef !8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !range !11, !alias.scope !7011, !noundef !8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.bd = load i32, ptr %i.bc, align 4, !alias.scope !7011, !noundef !8
  %i.be = invoke noundef nonnull align 8 ptr @_RNvXsc_NtCsileJQcQObtj_7hir_def7nameresNtB5_10ModulesMapINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtB7_10ModuleIdLtE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.az, i32 noundef %i.bb, i32 noundef %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %bb.p unwind label %bb.n, !noalias !7014, !inline_history !6959

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7012
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val39.i = load ptr, ptr %i.bf, align 8, !alias.scope !7011, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false), !noalias !7011
  %i.bg = invoke noundef i32 @_RNvMsf_NtCsdovh4xi6v3I_4span6ast_idNtB5_8AstIdMap13erased_ast_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.val39.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.d)
          to label %bb.q unwind label %bb.n, !noalias !7014, !inline_history !6959

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7012
  call void @llvm.experimental.noalias.scope.decl(metadata !7015)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.ax, i64 12, i1 false), !alias.scope !7016, !noalias !7014
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 %i.bg, ptr %i.bi, align 4, !alias.scope !7017, !noalias !7014
  %i.bj = invoke { i32, i32 } @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope11macro_invoc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.bh, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.o)
          to label %bb.r unwind label %bb.n, !noalias !7014, !inline_history !6959 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bk = extractvalue { i32, i32 } %i.bj, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7012
  %.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = extractvalue { i32, i32 } %i.bj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7012
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !7011, !nonnull !8, !noundef !8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !7011, !nonnull !8, !align !9, !noundef !8
  invoke void @_RINvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB3_8Expander15enter_expand_idNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEB7_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.bn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.bp, i32 noundef %i.bk, i32 noundef %i.bl)
          to label %bb.w unwind label %bb.n, !noalias !7014, !inline_history !6959

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7012
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.bs = load <2 x ptr>, ptr %i.bq, align 8, !alias.scope !7011
  %i.bt = load ptr, ptr %i.br, align 8, !alias.scope !7011, !nonnull !8, !align !9, !noundef !8
  %i.bu = load ptr, ptr %i.bq, align 8, !alias.scope !7011, !nonnull !8, !noundef !8
  %i.bv = load <2 x ptr>, ptr %i.ay, align 8, !alias.scope !7011
  %i.bw = shufflevector <2 x ptr> %i.bs, <2 x ptr> %i.bv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x ptr> %i.bw, ptr %i.m, align 8, !noalias !7012
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.ba, ptr %i.bx, align 8, !noalias !7012
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.bz = load i32, ptr %i.by, align 8, !range !11, !alias.scope !7011, !noundef !8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %i.cb = load i32, ptr %i.ca, align 4, !alias.scope !7011, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7012
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.cc, ptr %i.l, align 8, !noalias !7012
  invoke void @_RINvMNtNtCsileJQcQObtj_7hir_def10expr_store8expanderNtB3_8Expander12enter_expandNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprNCINvMs2_NtB5_5lowerNtB2h_13ExprCollector18collect_macro_callB1g_INtCs83ee1IJTiSq_6either6EitherINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir3PatEuENCNvNvMs2_B2h_B2s_25maybe_collect_expr_as_pat21collect_possibly_rest0E0EB7_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, ptr noundef nonnull %i.bu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.bt, ptr noundef nonnull %i.as, i32 noundef %i.bz, i32 noundef %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.m, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @9)
          to label %bb.u unwind label %bb.n, !inline_history !6959

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7012
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %.sroa.020.1.i = phi i8 [ 1, %bb.w ], [ 0, %bb.u ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7012
  %i.cd = load i64, ptr %i.f, align 8, !range !21, !noundef !8
  %i.ce = icmp eq i64 %i.cd, -1
  br i1 %i.ce, label %bb.az, label %bb.x

bb.w:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %i.n, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7012
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.k, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  %i.cf = load i64, ptr %i.k, align 8, !range !22, !noalias !7012, !noundef !8
  %.not28.i = icmp eq i64 %i.cf, 2
  br i1 %.not28.i, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !7018)
  call void @llvm.experimental.noalias.scope.decl(metadata !7019), !noalias !7014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7020
  store i8 0, ptr %i.a, align 8, !noalias !7020
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !7021, !noalias !7014, !noundef !8 ; 5 uses
  %i.cj = icmp ult i64 %i.ci, 164703072086692426
  call void @llvm.assume(i1 %i.cj), !noalias !7014
  %i.ck = load i64, ptr %i.cg, align 8, !range !13, !alias.scope !7022, !noalias !7014, !noundef !8
  %i.cl = icmp eq i64 %i.ci, %i.ck
  br i1 %i.cl, label %bb.z, label %_RNCNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB9_13ExprCollector25maybe_collect_expr_as_pat21collect_possibly_rest0Bd_.exit51

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def3hir3PatE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %_RNCNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB9_13ExprCollector25maybe_collect_expr_as_pat21collect_possibly_rest0Bd_.exit51 unwind label %bb.aa, !noalias !7023, !inline_history !6970

bb.aa:                                            ; preds = %bb.z
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir3PatEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a) #39
          to label %.body49 unwind label %bb.ab, !noalias !7014, !inline_history !6970

bb.ab:                                            ; preds = %bb.aa
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !7014, !inline_history !6970
  unreachable

_RNCNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB9_13ExprCollector25maybe_collect_expr_as_pat21collect_possibly_rest0Bd_.exit51: ; preds = %bb.y, %bb.z
  %i.co = trunc i64 %i.ci to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !7022, !noalias !7014, !nonnull !8, !noundef !8
  %i.cr = getelementptr inbounds nuw [56 x i8], ptr %i.cq, i64 %i.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cr, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !7014
  %i.cs = add nuw nsw i64 %i.ci, 1
  store i64 %i.cs, ptr %i.ch, align 8, !alias.scope !7022, !noalias !7014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7020
  %i.ct = insertvalue { i32, i32 } { i32 0, i32 poison }, i32 %i.co, 1
  br label %bb.ar

.body49:                                          ; preds = %bb.av, %bb.aa, %.thread84
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i7887, %.thread84 ], [ %i.eg, %bb.av ], [ %i.cm, %bb.aa ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 104 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !7024, !noalias !7014, !noundef !8
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit46, label %bb.ac

bb.ac:                                            ; preds = %.body49
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcTNtCs33K2ylI4knu_10hir_expand15ExpandErrorKindNtCsdovh4xi6v3I_4span4SpanEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cu)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs33K2ylI4knu_10hir_expand11ExpandErrorEECsileJQcQObtj_7hir_def.exit46 unwind label %bb.ay

bb.ad:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7012
  %i.cx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.cx, i64 32, i1 false)
  %.sroa.052.0.copyload = load i32, ptr %i.ax, align 8, !alias.scope !7025, !noalias !7014
  %i.cy = trunc nuw i32 %.sroa.052.0.copyload to i1
  br i1 %i.cy, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !7025, !noalias !7014
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !alias.scope !7025, !noalias !7014
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.da = invoke { i32, i32 } @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBS_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB1X_3ast9generated5nodes9MacroCallEENtBS_11MacroCallIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(24) %i.p, i32 noundef %.sroa.5.0.copyload, i32 noundef %.sroa.6.0.copyload)
          to label %bb.af unwind label %bb.aw, !noalias !7014, !inline_history !6959 ; 0 uses

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.sroa.013.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !7012
  %i.db = trunc nuw i64 %.sroa.013.0.copyload.i to i1
  br i1 %i.db, label %bb.ag, label %.thread80

bb.ag:                                            ; preds = %bb.af
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 24, i1 false)
  %i.dd = invoke { i64, ptr } @_RNvMs0_CsjJXvCMGntp8_6syntaxINtB5_5ParseNtNtNtNtB5_3ast9generated5nodes4ExprE4treeCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.ai unwind label %bb.ah, !noalias !7014 ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtBE_3ast9generated5nodes4ExprEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #39
          to label %.thread84 unwind label %bb.aj, !noalias !7014

bb.ai:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtBE_3ast9generated5nodes4ExprEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.ak unwind label %bb.ap

bb.aj:                                            ; preds = %bb.ah
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !7014
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.dg = extractvalue { i64, ptr } %i.dd, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7012
  call void @llvm.experimental.noalias.scope.decl(metadata !7026)
  %.not.i37 = icmp eq i64 %i.dg, -1
  br i1 %.not.i37, label %.thread80, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dh = extractvalue { i64, ptr } %i.dd, 1
  %i.di = invoke { i32, i32 } @_RNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB7_13ExprCollector25maybe_collect_expr_as_pat21collect_possibly_rest(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %0, i64 noundef range(i64 -1, 37) %i.dg, ptr noundef %i.dh)
          to label %_RNCNvNvMs2_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB9_13ExprCollector25maybe_collect_expr_as_pat21collect_possibly_rest0Bd_.exit41 unwind label %bb.ap, !inline_history !6970

.thread80:                                        ; preds = %bb.af, %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !7027), !noalias !7014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7028
  store i8 0, ptr %i.b, align 8, !noalias !7028
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !7029, !noalias !7014, !noundef !8 ; 5 uses
  %i.dm = icmp ult i64 %i.dl, 164703072086692426
  call void @llvm.assume(i1 %i.dm), !noalias !7014
  %i.dn = load i64, ptr %i.dj, align 8, !range !13, !alias.scope !7030, !noalias !7014, !noundef !8
  %i.do = icmp eq i64 %i.dl, %i.dn
  br i1 %i.do, label %bb.am, label %_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector11missing_pat.exit.i

bb.am:                                            ; preds = %.thread80
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def3hir3PatE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %_RNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB5_13ExprCollector11missing_pat.exit.i unwind label %bb.an, !noalias !7031, !inline_history !6970
end_hunk_8
